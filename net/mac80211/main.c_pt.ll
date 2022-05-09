; ModuleID = '/llk/IR_all_yes/net/mac80211/main.c_pt.bc'
source_filename = "../net/mac80211/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_restart_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_restart_hw\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_restart_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_restart_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_restart_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_restart_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_alloc_hw_nm\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_alloc_hw_nm\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_alloc_hw_nm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_alloc_hw_nm:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_alloc_hw_nm\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_alloc_hw_nm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_register_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_register_hw\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_register_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_register_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_register_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_register_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_unregister_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_unregister_hw\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_unregister_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_unregister_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_unregister_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_unregister_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_free_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_free_hw\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_free_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_free_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_free_hw\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_free_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.117 }
%union.anon.117 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.153, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.153 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.165, i32 }
%union.anon.165 = type { ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.185, %struct.anon.219, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.147, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.147 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.185 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.anon.219 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.155, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.155 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.156] }
%struct.anon.156 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.152, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.152 = type { i64, i64, i8 }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.150 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.150 = type { ptr, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rate_control_ref = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.149 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mac80211/main.c\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_restart_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 322, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hardware restart was requested\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ieee80211_restart_hw\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ieee80211_restart_hw._entry_ptr = internal global ptr @ieee80211_restart_hw._entry, section ".printk_index", align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ieee80211_restart_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_restart_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_restart_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_restart_hw to i32), ptr @__kstrtab_ieee80211_restart_hw, ptr @__kstrtabns_ieee80211_restart_hw }, section "___ksymtab+ieee80211_restart_hw", align 4
@mac80211_config_ops = external dso_local constant %struct.cfg80211_ops, align 4
@ieee80211_default_mgmt_stypes = internal constant { [13 x %struct.ieee80211_txrx_stypes], [44 x i8] } { [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 14352 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 10256 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 14336 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mac80211_wiphy_privid = external dso_local local_unnamed_addr constant ptr, align 4
@mac80211_ht_capa_mod_mask = internal constant { %struct.ieee80211_ht_cap, [38 x i8] } { %struct.ieee80211_ht_cap <{ i16 -7349, i8 31, %struct.ieee80211_mcs_info { [10 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", i16 0, i8 0, [3 x i8] zeroinitializer }, i16 0, i32 0, i8 0 }>, [38 x i8] zeroinitializer }, align 32
@mac80211_vht_capa_mod_mask = internal constant { %struct.ieee80211_vht_cap, [20 x i8] } { %struct.ieee80211_vht_cap { i32 -266371021, %struct.ieee80211_vht_mcs_info { i16 -1, i16 0, i16 -1, i16 0 } }, [20 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&local->iflist_mtx\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&local->mtx\00", [20 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&local->key_mtx\00", [16 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&local->filter_lock\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&local->rx_path_lock\00", [43 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&local->queue_stop_reason_lock\00", [33 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&air_sched->lock\00", [47 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&local->chanctx_mtx\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&local->scan_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&local->scan_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&local->restart_work)\00", [56 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&local->radar_detected_work)\00", [49 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&local->reconfig_filter)\00", [53 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&local->dynamic_ps_enable_work)\00", [46 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&local->dynamic_ps_disable_work)\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&local->dynamic_ps_timer)\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&local->sched_scan_stopped_work)\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_alloc_hw_nm.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&local->ack_status_lock\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_alloc_hw_nm = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_alloc_hw_nm = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_alloc_hw_nm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm to i32), ptr @__kstrtab_ieee80211_alloc_hw_nm, ptr @__kstrtabns_ieee80211_alloc_hw_nm }, section "___ksymtab+ieee80211_alloc_hw_nm", align 4
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ieee80211_register_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 1248, ptr @.str.43, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to initialize rate control algorithm\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ieee80211_register_hw\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@ieee80211_register_hw._entry_ptr = internal global ptr @ieee80211_register_hw._entry, section ".printk_index", align 4
@ieee80211_register_hw.__UNIQUE_ID_ddebug982 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.42, ptr @.str, ptr @.str.45, i8 1, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac80211\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"copying sband (band %d) due to VHT EXT NSS BW flag\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@ieee80211_register_hw._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str, i32 1318, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add default virtual iface\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ieee80211_register_hw._entry_ptr.50 = internal global ptr @ieee80211_register_hw._entry.47, section ".printk_index", align 4
@__kstrtab_ieee80211_register_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_register_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_register_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_register_hw to i32), ptr @__kstrtab_ieee80211_register_hw, ptr @__kstrtabns_ieee80211_register_hw }, section "___ksymtab+ieee80211_register_hw", align 4
@ieee80211_unregister_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 1403, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"skb_queue not empty\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ieee80211_unregister_hw\00", [40 x i8] zeroinitializer }, align 32
@ieee80211_unregister_hw._entry_ptr = internal global ptr @ieee80211_unregister_hw._entry, section ".printk_index", align 4
@__kstrtab_ieee80211_unregister_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_unregister_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_unregister_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_unregister_hw to i32), ptr @__kstrtab_ieee80211_unregister_hw, ptr @__kstrtabns_ieee80211_unregister_hw }, section "___ksymtab+ieee80211_unregister_hw", align 4
@__kstrtab_ieee80211_free_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_free_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_free_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_free_hw to i32), ptr @__kstrtab_ieee80211_free_hw, ptr @__kstrtabns_ieee80211_free_hw }, section "___ksymtab+ieee80211_free_hw", align 4
@__initcall__kmod_mac80211__985_1486_ieee80211_init4 = internal global ptr @ieee80211_init, section ".initcall4.init", align 4
@__exitcall_ieee80211_exit = internal global ptr @ieee80211_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description986 = internal constant [43 x i8] c"mac80211.description=IEEE 802.11 subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file987 = internal constant [36 x i8] c"mac80211.file=net/mac80211/mac80211\00", section ".modinfo", align 1
@__UNIQUE_ID_license988 = internal constant [21 x i8] c"mac80211.license=GPL\00", section ".modinfo", align 1
@__tracepoint_drv_prepare_multicast = external dso_local global %struct.tracepoint, align 4
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_prepare_multicast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_drv_return_u64 = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_u64.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_drv_configure_filter = external dso_local global %struct.tracepoint, align 4
@trace_drv_configure_filter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"control:%d.%03d MHz width:%d center: %d.%03d/%d MHz\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_hw_conf_chan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_drv_config = external dso_local global %struct.tracepoint, align 4
@trace_drv_config.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_bss_info_changed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_bss_info_changed.__already_done.62 = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_bss_info_changed.__already_done.63 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_drv_bss_info_changed = external dso_local global %struct.tracepoint, align 4
@trace_drv_bss_info_changed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_api_restart_hw = external dso_local global %struct.tracepoint, align 4
@trace_api_restart_hw.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s called with hardware scan in progress\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.ieee80211_restart_work = private unnamed_addr constant [23 x i8] c"ieee80211_restart_work\00", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mac80211: Packet is of unknown type %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ieee80211_init_cipher_suites.cipher_suites = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076, i32 1027082, i32 1027080, i32 1027081, i32 1027078, i32 1027085, i32 1027083, i32 1027084], [52 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rc\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@rcname_ops = external dso_local constant %struct.file_operations, align 4
@ieee80211_ifa_changed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_ifa_changed.__warned.72 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_drv_ipv6_addr_change = external dso_local global %struct.tracepoint, align 4
@trace_drv_ipv6_addr_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_free_ack_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Have pending ack frames!\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 10, i64 12]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 81, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 321, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [30 x i8] c"ieee80211_default_mgmt_stypes\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 432, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"mac80211_ht_capa_mod_mask\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 507, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"mac80211_vht_capa_mod_mask\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 525, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 701, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 702, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 704, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 705, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 706, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 707, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 714, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 725, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 727, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 729, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 731, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 734, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 737, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 739, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 741, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 743, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 746, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1201, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1247, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1289, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1314, i32 36 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1317, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1403, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 488, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 108, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 201, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 114, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 149, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 695, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 723, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 172, i32 7 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 266, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 378, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1984, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 242, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant [14 x i8] c"cipher_suites\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 783, i32 19 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 76, i32 34 }
@___asan_gen_.312 = private unnamed_addr constant [23 x i8] c"../net/mac80211/rate.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 78, i32 22 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 378, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 249, i32 9 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.321 = private constant [23 x i8] c"../net/mac80211/main.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1416, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_description986, ptr @__UNIQUE_ID_file987, ptr @__UNIQUE_ID_license988, ptr @__exitcall_ieee80211_exit, ptr @__initcall__kmod_mac80211__985_1486_ieee80211_init4, ptr @__ksymtab_ieee80211_alloc_hw_nm, ptr @__ksymtab_ieee80211_free_hw, ptr @__ksymtab_ieee80211_register_hw, ptr @__ksymtab_ieee80211_restart_hw, ptr @__ksymtab_ieee80211_unregister_hw, ptr @ieee80211_exit, ptr @ieee80211_register_hw._entry, ptr @ieee80211_register_hw._entry.47, ptr @ieee80211_register_hw._entry_ptr, ptr @ieee80211_register_hw._entry_ptr.50, ptr @ieee80211_restart_hw._entry, ptr @ieee80211_restart_hw._entry_ptr, ptr @ieee80211_unregister_hw._entry, ptr @ieee80211_unregister_hw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ieee80211_default_mgmt_stypes, ptr @mac80211_ht_capa_mod_mask, ptr @mac80211_vht_capa_mod_mask, ptr @ieee80211_alloc_hw_nm.__key, ptr @.str.5, ptr @ieee80211_alloc_hw_nm.__key.6, ptr @.str.7, ptr @ieee80211_alloc_hw_nm.__key.8, ptr @.str.9, ptr @ieee80211_alloc_hw_nm.__key.10, ptr @.str.11, ptr @ieee80211_alloc_hw_nm.__key.12, ptr @.str.13, ptr @ieee80211_alloc_hw_nm.__key.14, ptr @.str.15, ptr @ieee80211_alloc_hw_nm.__key.16, ptr @.str.17, ptr @ieee80211_alloc_hw_nm.__key.18, ptr @.str.19, ptr @ieee80211_alloc_hw_nm.__key.20, ptr @.str.21, ptr @ieee80211_alloc_hw_nm.__key.22, ptr @.str.23, ptr @ieee80211_alloc_hw_nm.__key.24, ptr @.str.25, ptr @ieee80211_alloc_hw_nm.__key.26, ptr @.str.27, ptr @ieee80211_alloc_hw_nm.__key.28, ptr @.str.29, ptr @ieee80211_alloc_hw_nm.__key.30, ptr @.str.31, ptr @ieee80211_alloc_hw_nm.__key.32, ptr @.str.33, ptr @ieee80211_alloc_hw_nm.__key.34, ptr @.str.35, ptr @ieee80211_alloc_hw_nm.__key.36, ptr @.str.37, ptr @ieee80211_alloc_hw_nm.__key.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @xa_init_flags.__key, ptr @.str.66, ptr @skb_queue_head_init.__key, ptr @.str.67, ptr @.str.68, ptr @ieee80211_init_cipher_suites.cipher_suites, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_restart_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_default_mgmt_stypes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac80211_ht_capa_mod_mask to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac80211_vht_capa_mod_mask to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_alloc_hw_nm.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_register_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_register_hw._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_unregister_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_init_cipher_suites.cipher_suites to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_configure_filter(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  %new_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_flags) #10
  %0 = ptrtoint ptr %new_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %new_flags, align 4
  %iff_allmultis = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 57
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %iff_allmultis, i32 noundef 4) #10
  %1 = ptrtoint ptr %iff_allmultis to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %iff_allmultis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %new_flags, align 4
  %or = or i32 %4, 2
  store i32 %or, ptr %new_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %monitors = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 14
  %5 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %monitors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %scanning = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 67
  %7 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %scanning, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %scanning, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %lor.lhs.false4.if.end10_crit_edge, label %lor.lhs.false4.if.then8_crit_edge

lor.lhs.false4.if.then8_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false4.if.end10_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %lor.lhs.false4.if.then8_crit_edge, %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %12 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_flags, align 4
  %or9 = or i32 %13, 16
  store i32 %or9, ptr %new_flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false4.if.end10_crit_edge
  %fif_probe_req = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 21
  %14 = ptrtoint ptr %fif_probe_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fif_probe_req, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.end10.if.then14_crit_edge

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false12:                                  ; preds = %if.end10
  %probe_req_reg = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 22
  %16 = ptrtoint ptr %probe_req_reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %probe_req_reg, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %lor.lhs.false12.if.end16_crit_edge, label %lor.lhs.false12.if.then14_crit_edge

lor.lhs.false12.if.then14_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false12.if.end16_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %lor.lhs.false12.if.then14_crit_edge, %if.end10.if.then14_crit_edge
  %18 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %new_flags, align 4
  %or15 = or i32 %19, 256
  store i32 %or15, ptr %new_flags, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %lor.lhs.false12.if.end16_crit_edge
  %fif_fcsfail = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 16
  %20 = ptrtoint ptr %fif_fcsfail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fif_fcsfail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %new_flags, align 4
  %or19 = or i32 %23, 4
  store i32 %or19, ptr %new_flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %fif_plcpfail = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 17
  %24 = ptrtoint ptr %fif_plcpfail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fif_plcpfail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool21.not = icmp eq i32 %25, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %new_flags, align 4
  %or23 = or i32 %27, 8
  store i32 %or23, ptr %new_flags, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %fif_control = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 18
  %28 = ptrtoint ptr %fif_control to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fif_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_flags, align 4
  %or27 = or i32 %31, 32
  store i32 %or27, ptr %new_flags, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %fif_other_bss = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 19
  %32 = ptrtoint ptr %fif_other_bss to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fif_other_bss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool29.not = icmp eq i32 %33, 0
  br i1 %tobool29.not, label %if.end28.if.end32_crit_edge, label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %new_flags, align 4
  %or31 = or i32 %35, 64
  store i32 %or31, ptr %new_flags, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %fif_pspoll = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 20
  %36 = ptrtoint ptr %fif_pspoll to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fif_pspoll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool33.not = icmp eq i32 %37, 0
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %new_flags, align 4
  %or35 = or i32 %39, 128
  store i32 %or35, ptr %new_flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %rx_mcast_action_reg = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 23
  %40 = ptrtoint ptr %rx_mcast_action_reg to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rx_mcast_action_reg, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool37.not = icmp eq i8 %41, 0
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %if.then38

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %new_flags, align 4
  %or39 = or i32 %43, 512
  store i32 %or39, ptr %new_flags, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %filter_lock = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #10
  %filter_flags = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 24
  %44 = ptrtoint ptr %filter_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %filter_flags, align 8
  %46 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %new_flags, align 4
  %xor = xor i32 %47, %45
  %count.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 29, i32 1
  %48 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i, align 4
  tail call fastcc void @trace_drv_prepare_multicast(ptr noundef %local, i32 noundef %49) #10
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %prepare_multicast.i = getelementptr inbounds %struct.ieee80211_ops, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %prepare_multicast.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prepare_multicast.i, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end40.drv_prepare_multicast.exit_crit_edge, label %if.then.i

if.end40.drv_prepare_multicast.exit_crit_edge:    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %drv_prepare_multicast.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %mc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 29
  %call.i = tail call i64 %53(ptr noundef %local, ptr noundef %mc_list) #10
  br label %drv_prepare_multicast.exit

drv_prepare_multicast.exit:                       ; preds = %if.then.i, %if.end40.drv_prepare_multicast.exit_crit_edge
  %ret.0.i = phi i64 [ %call.i, %if.then.i ], [ 0, %if.end40.drv_prepare_multicast.exit_crit_edge ]
  tail call fastcc void @trace_drv_return_u64(ptr noundef %local, i64 noundef %ret.0.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #10
  %54 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %new_flags, align 4
  %or43 = or i32 %55, -2147483648
  store i32 %or43, ptr %new_flags, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 201) #10
  call fastcc void @trace_drv_configure_filter(ptr noundef %local, i32 noundef %xor, ptr noundef nonnull %new_flags, i64 noundef %ret.0.i) #10
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %configure_filter.i = getelementptr inbounds %struct.ieee80211_ops, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %configure_filter.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %configure_filter.i, align 4
  call void %59(ptr noundef %local, i32 noundef %xor, ptr noundef nonnull %new_flags, i64 noundef %ret.0.i) #10
  call fastcc void @trace_drv_return_void(ptr noundef %local) #10
  %60 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %new_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %tobool44.not = icmp sgt i32 %61, -1
  br i1 %tobool44.not, label %drv_prepare_multicast.exit.if.end59_crit_edge, label %do.end, !prof !203

drv_prepare_multicast.exit.if.end59_crit_edge:    ; preds = %drv_prepare_multicast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.end:                                           ; preds = %drv_prepare_multicast.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef null) #10
  br label %if.end59

if.end59:                                         ; preds = %do.end, %drv_prepare_multicast.exit.if.end59_crit_edge
  %62 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %new_flags, align 4
  %and66 = and i32 %63, 2147483647
  %64 = ptrtoint ptr %filter_flags to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and66, ptr %filter_flags, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_flags) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  %chandef.i = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 172) #10
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %0 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_chanctx, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef.i) #10
  %2 = getelementptr inbounds i8, ptr %chandef.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local, align 8
  %scan_chandef.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 72
  %6 = ptrtoint ptr %scan_chandef.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scan_chandef.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %chandef.i, ptr %scan_chandef.i, i32 28)
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then
  %tmp_channel.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 87
  %9 = ptrtoint ptr %tmp_channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tmp_channel.i, align 8
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.else8.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %chandef.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %chandef.i, align 4
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 1
  %12 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %width.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %center_freq.i, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %2, align 4
  %freq_offset.i = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %freq_offset.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %freq_offset.i, align 4
  %freq1_offset.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 5
  %18 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %freq1_offset.i, align 4
  br label %if.end9.i

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %_oper_chandef.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86
  %19 = call ptr @memcpy(ptr %chandef.i, ptr %_oper_chandef.i, i32 28)
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else8.i, %if.then3.i, %if.then.i
  %call.i = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %chandef.i) #10
  br i1 %call.i, label %if.end9.i.if.end33.i_crit_edge, label %do.end.i, !prof !203

if.end9.i.if.end33.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chandef.i, align 4
  %center_freq21.i = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %center_freq21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_freq21.i, align 4
  %freq_offset23.i = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %freq_offset23.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %freq_offset23.i, align 4
  %conv.i = zext i16 %25 to i32
  %width24.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 1
  %26 = ptrtoint ptr %width24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width24.i, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 4
  %freq1_offset26.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 5
  %30 = ptrtoint ptr %freq1_offset26.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %freq1_offset26.i, align 4
  %conv27.i = zext i16 %31 to i32
  %center_freq2.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 3
  %32 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %center_freq2.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.57, i32 noundef %23, i32 noundef %conv.i, i32 noundef %27, i32 noundef %29, i32 noundef %conv27.i, i32 noundef %33) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end.i, %if.end9.i.if.end33.i_crit_edge
  %_oper_chandef40.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86
  %34 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chandef.i, align 4
  %36 = ptrtoint ptr %_oper_chandef40.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_oper_chandef40.i, align 4
  %cmp.i.i = icmp eq ptr %35, %37
  br i1 %cmp.i.i, label %land.lhs.true.i191.i, label %if.end33.i.if.then42.i_crit_edge

if.end33.i.if.then42.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

land.lhs.true.i191.i:                             ; preds = %if.end33.i
  %width.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 1
  %38 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %width.i.i, align 4
  %width2.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 1
  %40 = ptrtoint ptr %width2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp3.i.i = icmp eq i32 %39, %41
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i191.i.if.then42.i_crit_edge

land.lhs.true.i191.i.if.then42.i_crit_edge:       ; preds = %land.lhs.true.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i191.i
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %2, align 4
  %center_freq15.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 2
  %44 = ptrtoint ptr %center_freq15.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %center_freq15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp6.i.i = icmp eq i32 %43, %45
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true4.i.i.if.then42.i_crit_edge

land.lhs.true4.i.i.if.then42.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true4.i.i
  %freq1_offset.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 5
  %46 = ptrtoint ptr %freq1_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %freq1_offset.i.i, align 4
  %freq1_offset8.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 5
  %48 = ptrtoint ptr %freq1_offset8.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %freq1_offset8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp10.i.i = icmp eq i16 %47, %49
  br i1 %cmp10.i.i, label %cfg80211_chandef_identical.exit.i, label %land.lhs.true7.i.i.if.then42.i_crit_edge

land.lhs.true7.i.i.if.then42.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

cfg80211_chandef_identical.exit.i:                ; preds = %land.lhs.true7.i.i
  %center_freq2.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 3
  %50 = ptrtoint ptr %center_freq2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %center_freq2.i.i, align 4
  %center_freq212.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 3
  %52 = ptrtoint ptr %center_freq212.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %center_freq212.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp13.i.i = icmp eq i32 %51, %53
  br i1 %cmp13.i.i, label %if.else46.i, label %cfg80211_chandef_identical.exit.i.if.then42.i_crit_edge

cfg80211_chandef_identical.exit.i.if.then42.i_crit_edge: ; preds = %cfg80211_chandef_identical.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

if.then42.i:                                      ; preds = %cfg80211_chandef_identical.exit.i.if.then42.i_crit_edge, %land.lhs.true7.i.i.if.then42.i_crit_edge, %land.lhs.true4.i.i.if.then42.i_crit_edge, %land.lhs.true.i191.i.if.then42.i_crit_edge, %if.end33.i.if.then42.i_crit_edge
  %54 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %local, align 8
  %or.i = or i32 %55, 8
  br label %if.end51.i

if.else46.i:                                      ; preds = %cfg80211_chandef_identical.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %local, align 8
  %and50.i = and i32 %57, -9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else46.i, %if.then42.i
  %storemerge.i = phi i32 [ %or.i, %if.then42.i ], [ %and50.i, %if.else46.i ]
  %58 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %storemerge.i, ptr %local, align 8
  %and189.i = xor i32 %storemerge.i, %5
  %xor.i = and i32 %and189.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool56.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool56.not.i, label %lor.lhs.false.i, label %if.end51.i.if.then62.i_crit_edge

if.end51.i.if.then62.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i

lor.lhs.false.i:                                  ; preds = %if.end51.i
  %chandef59.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 7
  %59 = ptrtoint ptr %chandef59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chandef59.i, align 4
  %cmp.i192.i = icmp eq ptr %60, %37
  br i1 %cmp.i192.i, label %land.lhs.true.i196.i, label %lor.lhs.false.i.if.then62.i_crit_edge

lor.lhs.false.i.if.then62.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i

land.lhs.true.i196.i:                             ; preds = %lor.lhs.false.i
  %width.i193.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %width.i193.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %width.i193.i, align 4
  %width2.i194.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 1
  %63 = ptrtoint ptr %width2.i194.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %width2.i194.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp3.i195.i = icmp eq i32 %62, %64
  br i1 %cmp3.i195.i, label %land.lhs.true4.i200.i, label %land.lhs.true.i196.i.if.then62.i_crit_edge

land.lhs.true.i196.i.if.then62.i_crit_edge:       ; preds = %land.lhs.true.i196.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i

land.lhs.true4.i200.i:                            ; preds = %land.lhs.true.i196.i
  %center_freq1.i197.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %center_freq1.i197.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %center_freq1.i197.i, align 4
  %center_freq15.i198.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 2
  %67 = ptrtoint ptr %center_freq15.i198.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %center_freq15.i198.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp6.i199.i = icmp eq i32 %66, %68
  br i1 %cmp6.i199.i, label %land.lhs.true7.i204.i, label %land.lhs.true4.i200.i.if.then62.i_crit_edge

land.lhs.true4.i200.i.if.then62.i_crit_edge:      ; preds = %land.lhs.true4.i200.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i

land.lhs.true7.i204.i:                            ; preds = %land.lhs.true4.i200.i
  %freq1_offset.i201.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 7, i32 5
  %69 = ptrtoint ptr %freq1_offset.i201.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %freq1_offset.i201.i, align 4
  %freq1_offset8.i202.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 5
  %71 = ptrtoint ptr %freq1_offset8.i202.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %freq1_offset8.i202.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %cmp10.i203.i = icmp eq i16 %70, %72
  br i1 %cmp10.i203.i, label %cfg80211_chandef_identical.exit209.i, label %land.lhs.true7.i204.i.if.then62.i_crit_edge

land.lhs.true7.i204.i.if.then62.i_crit_edge:      ; preds = %land.lhs.true7.i204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i

cfg80211_chandef_identical.exit209.i:             ; preds = %land.lhs.true7.i204.i
  %center_freq2.i205.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 7, i32 3
  %73 = ptrtoint ptr %center_freq2.i205.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %center_freq2.i205.i, align 4
  %center_freq212.i206.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 3
  %75 = ptrtoint ptr %center_freq212.i206.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %center_freq212.i206.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp13.i207.i = icmp eq i32 %74, %76
  br i1 %cmp13.i207.i, label %cfg80211_chandef_identical.exit209.i.if.end67.i_crit_edge, label %cfg80211_chandef_identical.exit209.i.if.then62.i_crit_edge

cfg80211_chandef_identical.exit209.i.if.then62.i_crit_edge: ; preds = %cfg80211_chandef_identical.exit209.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62.i

cfg80211_chandef_identical.exit209.i.if.end67.i_crit_edge: ; preds = %cfg80211_chandef_identical.exit209.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.then62.i:                                      ; preds = %cfg80211_chandef_identical.exit209.i.if.then62.i_crit_edge, %land.lhs.true7.i204.i.if.then62.i_crit_edge, %land.lhs.true4.i200.i.if.then62.i_crit_edge, %land.lhs.true.i196.i.if.then62.i_crit_edge, %lor.lhs.false.i.if.then62.i_crit_edge, %if.end51.i.if.then62.i_crit_edge
  %chandef65.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 7
  %77 = call ptr @memcpy(ptr %chandef65.i, ptr %chandef.i, i32 28)
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then62.i, %cfg80211_chandef_identical.exit209.i.if.end67.i_crit_edge
  %changed.0.i = phi i32 [ 64, %if.then62.i ], [ 0, %cfg80211_chandef_identical.exit209.i.if.end67.i_crit_edge ]
  %width.i210.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %width.i210.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %width.i210.i, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i32 %79, label %if.else74.i [
    i32 6, label %if.end67.i.if.then71.i_crit_edge
    i32 7, label %if.end67.i.if.then71.i_crit_edge16
    i32 0, label %if.end67.i.if.then71.i_crit_edge17
  ]

if.end67.i.if.then71.i_crit_edge17:               ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71.i

if.end67.i.if.then71.i_crit_edge16:               ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71.i

if.end67.i.if.then71.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71.i

if.then71.i:                                      ; preds = %if.end67.i.if.then71.i_crit_edge, %if.end67.i.if.then71.i_crit_edge16, %if.end67.i.if.then71.i_crit_edge17
  %smps_mode.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 9
  %81 = ptrtoint ptr %smps_mode.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %smps_mode.i, align 4
  br label %if.end87.i

if.else74.i:                                      ; preds = %if.end67.i
  %smps_mode77.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 9
  %82 = ptrtoint ptr %smps_mode77.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %smps_mode77.i, align 4
  %smps_mode78.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 134
  %84 = ptrtoint ptr %smps_mode78.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %smps_mode78.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp.not.i = icmp eq i32 %83, %85
  br i1 %cmp.not.i, label %if.else74.i.if.end87.i_crit_edge, label %if.then80.i

if.else74.i.if.end87.i_crit_edge:                 ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.then80.i:                                      ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %smps_mode77.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %smps_mode77.i, align 4
  %or85.i = or i32 %changed.0.i, 2
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then80.i, %if.else74.i.if.end87.i_crit_edge, %if.then71.i
  %changed.1.i = phi i32 [ %or85.i, %if.then80.i ], [ %changed.0.i, %if.else74.i.if.end87.i_crit_edge ], [ %changed.0.i, %if.then71.i ]
  %width.i212.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 1
  %87 = ptrtoint ptr %width.i212.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %width.i212.i, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %88, label %sw.epilog.i.i [
    i32 6, label %sw.bb.i.i
    i32 7, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_reg_power.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 7
  %90 = ptrtoint ptr %max_reg_power.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_reg_power.i.i, align 4
  %sub.i.i = add i32 %91, -6
  %max_power.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 6
  %92 = ptrtoint ptr %max_power.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_power.i.i, align 4
  %94 = call i32 @llvm.smin.i32(i32 %sub.i.i, i32 %93) #10
  br label %ieee80211_chandef_max_power.exit.i

sw.bb2.i.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_reg_power4.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 7
  %95 = ptrtoint ptr %max_reg_power4.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_reg_power4.i.i, align 4
  %sub5.i.i = add i32 %96, -3
  %max_power7.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 6
  %97 = ptrtoint ptr %max_power7.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_power7.i.i, align 4
  %99 = call i32 @llvm.smin.i32(i32 %sub5.i.i, i32 %98) #10
  br label %ieee80211_chandef_max_power.exit.i

sw.epilog.i.i:                                    ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_power15.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 6
  %100 = ptrtoint ptr %max_power15.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_power15.i.i, align 4
  br label %ieee80211_chandef_max_power.exit.i

ieee80211_chandef_max_power.exit.i:               ; preds = %sw.epilog.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %101, %sw.epilog.i.i ], [ %99, %sw.bb2.i.i ], [ %94, %sw.bb.i.i ]
  %102 = call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %105, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %ieee80211_chandef_max_power.exit.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

ieee80211_chandef_max_power.exit.i.rcu_read_lock.exit.i_crit_edge: ; preds = %ieee80211_chandef_max_power.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %ieee80211_chandef_max_power.exit.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %ieee80211_chandef_max_power.exit.i.rcu_read_lock.exit.i_crit_edge
  %call90.i = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end99.i_crit_edge

rcu_read_lock.exit.i.do.end99.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call92.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %land.lhs.true.i.do.end99.i_crit_edge, label %land.lhs.true94.i

land.lhs.true.i.do.end99.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99.i

land.lhs.true94.i:                                ; preds = %land.lhs.true.i
  %.b190.i = load i1, ptr @ieee80211_hw_conf_chan.__warned, align 1
  br i1 %.b190.i, label %land.lhs.true94.i.do.end99.i_crit_edge, label %if.then96.i

land.lhs.true94.i.do.end99.i_crit_edge:           ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99.i

if.then96.i:                                      ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee80211_hw_conf_chan.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.58) #10
  br label %do.end99.i

do.end99.i:                                       ; preds = %if.then96.i, %land.lhs.true94.i.do.end99.i_crit_edge, %land.lhs.true.i.do.end99.i_crit_edge, %rcu_read_lock.exit.i.do.end99.i_crit_edge
  %interfaces.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %106 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %sdata.0222.i = load volatile ptr, ptr %interfaces.i, align 8
  %cmp106.not223.i = icmp eq ptr %sdata.0222.i, %interfaces.i
  br i1 %cmp106.not223.i, label %do.end99.i.for.end.i_crit_edge, label %do.end99.i.for.body.i_crit_edge

do.end99.i.for.body.i_crit_edge:                  ; preds = %do.end99.i
  br label %for.body.i

do.end99.i.for.end.i_crit_edge:                   ; preds = %do.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end99.i.for.body.i_crit_edge
  %sdata.0225.i = phi ptr [ %sdata.0.i, %for.inc.i.for.body.i_crit_edge ], [ %sdata.0222.i, %do.end99.i.for.body.i_crit_edge ]
  %power.0224.i = phi i32 [ %power.1.i, %for.inc.i.for.body.i_crit_edge ], [ %retval.0.i.i, %do.end99.i.for.body.i_crit_edge ]
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0225.i, i32 0, i32 59, i32 9
  %107 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %chanctx_conf.i, align 4
  %tobool113.not.i = icmp eq ptr %108, null
  br i1 %tobool113.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end115.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end115.i:                                      ; preds = %for.body.i
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0225.i, i32 0, i32 59
  %109 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %110)
  %cmp117.i = icmp eq i32 %110, 4
  br i1 %cmp117.i, label %if.end115.i.for.inc.i_crit_edge, label %if.end120.i

if.end115.i.for.inc.i_crit_edge:                  ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end120.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  %txpower.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0225.i, i32 0, i32 59, i32 1, i32 42
  %111 = ptrtoint ptr %txpower.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %txpower.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %112)
  %cmp122.i = icmp eq i32 %112, -2147483648
  %113 = call i32 @llvm.smin.i32(i32 %power.0224.i, i32 %112) #10
  %spec.select.i = select i1 %cmp122.i, i32 %power.0224.i, i32 %113
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end120.i, %if.end115.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %power.1.i = phi i32 [ %power.0224.i, %if.end115.i.for.inc.i_crit_edge ], [ %power.0224.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end120.i ]
  %114 = ptrtoint ptr %sdata.0225.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %sdata.0.i = load volatile ptr, ptr %sdata.0225.i, align 8
  %cmp106.not.i = icmp eq ptr %sdata.0.i, %interfaces.i
  br i1 %cmp106.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end99.i.for.end.i_crit_edge
  %power.0.lcssa.i = phi i32 [ %retval.0.i.i, %do.end99.i.for.end.i_crit_edge ], [ %power.1.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i213.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i213.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i216.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i216.i:                             ; preds = %for.end.i
  %call1.i214.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i214.i)
  %tobool.not.i215.i = icmp eq i32 %call1.i214.i, 0
  br i1 %tobool.not.i215.i, label %land.lhs.true.i216.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i218.i

land.lhs.true.i216.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i218.i:                            ; preds = %land.lhs.true.i216.i
  %.b4.i217.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i217.i, label %land.lhs.true2.i218.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i219.i

land.lhs.true2.i218.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i218.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i219.i:                                   ; preds = %land.lhs.true2.i218.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i219.i, %land.lhs.true2.i218.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i216.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  %115 = call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i.i220.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i220.i to ptr
  %preempt_count.i.i.i.i221.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i.i.i221.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i.i.i221.i, align 4
  %sub.i.i.i.i = add i32 %118, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i221.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %power_level.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 1
  %119 = ptrtoint ptr %power_level.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %power_level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %power.0.lcssa.i)
  %cmp143.not.i = icmp eq i32 %120, %power.0.lcssa.i
  br i1 %cmp143.not.i, label %rcu_read_unlock.exit.i.ieee80211_hw_conf_chan.exit_crit_edge, label %if.then145.i

rcu_read_unlock.exit.i.ieee80211_hw_conf_chan.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_hw_conf_chan.exit

if.then145.i:                                     ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %or146.i = or i32 %changed.1.i, 32
  %121 = ptrtoint ptr %power_level.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %power.0.lcssa.i, ptr %power_level.i, align 4
  br label %ieee80211_hw_conf_chan.exit

ieee80211_hw_conf_chan.exit:                      ; preds = %if.then145.i, %rcu_read_unlock.exit.i.ieee80211_hw_conf_chan.exit_crit_edge
  %changed.2.i = phi i32 [ %or146.i, %if.then145.i ], [ %changed.1.i, %rcu_read_unlock.exit.i.ieee80211_hw_conf_chan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i) #10
  %or = or i32 %changed.2.i, %changed
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %changed, -97
  br label %if.end

if.end:                                           ; preds = %if.else, %ieee80211_hw_conf_chan.exit
  %changed.addr.0 = phi i32 [ %and, %if.else ], [ %or, %ieee80211_hw_conf_chan.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.addr.0)
  %tobool4.not = icmp eq i32 %changed.addr.0, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %open_count = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 13
  %122 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool5.not = icmp eq i32 %123, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end8_crit_edge, label %if.then6

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 142) #10
  call fastcc void @trace_drv_config(ptr noundef %local, i32 noundef %changed.addr.0) #10
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %124 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i, align 4
  %config.i = getelementptr inbounds %struct.ieee80211_ops, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %config.i, align 4
  %call.i15 = call i32 %127(ptr noundef %local, i32 noundef %changed.addr.0) #10
  call fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %call.i15) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call.i15, %if.then6 ], [ 0, %land.lhs.true.if.end8_crit_edge ], [ 0, %if.end.if.end8_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed)
  %tobool.not = icmp eq i32 %changed, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bss_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 155) #10
  %and.i = and i32 %changed, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %vif, align 8
  br i1 %tobool.not.i, label %if.end.if.end55.critedge.i_crit_edge, label %land.lhs.true.i

if.end.if.end55.critedge.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.critedge.i

land.lhs.true.i:                                  ; preds = %if.end
  %5 = add i32 %.pr, -1
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 31) #10
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %6, label %land.rhs.i [
    i32 1, label %land.lhs.true.i.if.end55.critedge.i_crit_edge
    i32 0, label %land.lhs.true.i.if.end55.critedge.i_crit_edge7
    i32 3, label %land.lhs.true.i.if.end55.critedge.i_crit_edge8
    i32 5, label %land.lhs.true.i.if.end55.critedge.i_crit_edge9
  ]

land.lhs.true.i.if.end55.critedge.i_crit_edge9:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.critedge.i

land.lhs.true.i.if.end55.critedge.i_crit_edge8:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.critedge.i

land.lhs.true.i.if.end55.critedge.i_crit_edge7:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.critedge.i

land.lhs.true.i.if.end55.critedge.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.critedge.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %.b240.i = load i1, ptr @drv_bss_info_changed.__already_done, align 1
  br i1 %.b240.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !203

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @drv_bss_info_changed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 162, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end55.critedge.i:                              ; preds = %land.lhs.true.i.if.end55.critedge.i_crit_edge, %land.lhs.true.i.if.end55.critedge.i_crit_edge7, %land.lhs.true.i.if.end55.critedge.i_crit_edge8, %land.lhs.true.i.if.end55.critedge.i_crit_edge9, %if.end.if.end55.critedge.i_crit_edge
  %8 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %.pr, label %if.end55.critedge.i.if.end129.critedge.i_crit_edge [
    i32 10, label %if.end55.critedge.i.land.rhs81.i_crit_edge
    i32 12, label %if.end55.critedge.i.land.rhs81.i_crit_edge10
    i32 6, label %land.lhs.true66.i
  ]

if.end55.critedge.i.land.rhs81.i_crit_edge10:     ; preds = %if.end55.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs81.i

if.end55.critedge.i.land.rhs81.i_crit_edge:       ; preds = %if.end55.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs81.i

if.end55.critedge.i.if.end129.critedge.i_crit_edge: ; preds = %if.end55.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129.critedge.i

land.lhs.true66.i:                                ; preds = %if.end55.critedge.i
  %mu_mimo_owner.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 5
  %9 = ptrtoint ptr %mu_mimo_owner.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mu_mimo_owner.i, align 8, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool68.not.i = icmp eq i8 %10, 0
  %and70.i = and i32 %changed, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  %or.cond.i = and i1 %tobool71.not.i, %tobool68.not.i
  br i1 %or.cond.i, label %land.lhs.true66.i.land.rhs81.i_crit_edge, label %land.lhs.true66.i.if.end129.critedge.i_crit_edge

land.lhs.true66.i.if.end129.critedge.i_crit_edge: ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129.critedge.i

land.lhs.true66.i.land.rhs81.i_crit_edge:         ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs81.i

land.rhs81.i:                                     ; preds = %land.lhs.true66.i.land.rhs81.i_crit_edge, %if.end55.critedge.i.land.rhs81.i_crit_edge, %if.end55.critedge.i.land.rhs81.i_crit_edge10
  %.b236239.i = load i1, ptr @drv_bss_info_changed.__already_done.62, align 1
  br i1 %.b236239.i, label %land.rhs81.i.cleanup_crit_edge, label %if.then92.i, !prof !203

land.rhs81.i.cleanup_crit_edge:                   ; preds = %land.rhs81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then92.i:                                      ; preds = %land.rhs81.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @drv_bss_info_changed.__already_done.62, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 169, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end129.critedge.i:                             ; preds = %land.lhs.true66.i.if.end129.critedge.i_crit_edge, %if.end55.critedge.i.if.end129.critedge.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 8
  %and132.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i)
  %tobool133.not.i = icmp eq i32 %and132.i, 0
  br i1 %tobool133.not.i, label %land.rhs142.i, label %if.end198.i

land.rhs142.i:                                    ; preds = %if.end129.critedge.i
  %.b237238.i = load i1, ptr @drv_bss_info_changed.__already_done.63, align 1
  br i1 %.b237238.i, label %land.rhs142.i.cleanup_crit_edge, label %return.critedge.i, !prof !203

land.rhs142.i.cleanup_crit_edge:                  ; preds = %land.rhs142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end198.i:                                      ; preds = %if.end129.critedge.i
  tail call fastcc void @trace_drv_bss_info_changed(ptr noundef %1, ptr noundef %sdata, ptr noundef %bss_conf, i32 noundef %changed) #10
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %bss_info_changed.i = getelementptr inbounds %struct.ieee80211_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %bss_info_changed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bss_info_changed.i, align 4
  %tobool199.not.i = icmp eq ptr %16, null
  br i1 %tobool199.not.i, label %if.end198.i.if.end204.i_crit_edge, label %if.then200.i

if.end198.i.if.end204.i_crit_edge:                ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204.i

if.then200.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %16(ptr noundef %1, ptr noundef %vif, ptr noundef %bss_conf, i32 noundef %changed) #10
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.then200.i, %if.end198.i.if.end204.i_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %1) #10
  br label %cleanup

return.critedge.i:                                ; preds = %land.rhs142.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @drv_bss_info_changed.__already_done.63, align 1
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %17 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.c.i, align 8
  %tobool167.not.c.i = icmp eq ptr %18, null
  %name169.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %cond.c.i = select i1 %tobool167.not.c.i, ptr %name169.c.i, ptr %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 172, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %cond.c.i, i32 noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %return.critedge.i, %if.end204.i, %land.rhs142.i.cleanup_crit_edge, %if.then92.i, %land.rhs81.i.cleanup_crit_edge, %if.then.i, %land.rhs.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ieee80211_reset_erp_info(ptr nocapture noundef writeonly %sdata) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 14
  %0 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %use_cts_prot, align 4
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 15
  %1 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %use_short_preamble, align 1
  %use_short_slot = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 16
  %2 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %use_short_slot, align 2
  ret i32 14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_restart_hw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_api_restart_hw(ptr noundef %hw)
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  tail call void @ieee80211_stop_queues_by_reason(ptr noundef %hw, i32 noundef 65535, i32 noundef 4, i1 noundef zeroext false) #10
  %in_reconfig = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 36
  %2 = ptrtoint ptr %in_reconfig to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %in_reconfig, align 2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %3 = load ptr, ptr @system_freezable_wq, align 4
  %restart_work = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 135
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %restart_work) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_restart_hw(ptr noundef %local) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_restart_hw, i32 0, i32 1), ptr blockaddress(@trace_api_restart_hw, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !208
  %call42 = tail call i32 @__traceiter_api_restart_hw(ptr noundef null, ptr noundef %local) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !209
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_restart_hw, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_restart_hw, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_restart_hw.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_api_restart_hw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 2070, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef %priv_data_len, ptr noundef %ops, ptr noundef %requested_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %start = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %stop = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 2
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %lor.lhs.false4

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %config = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 9
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false4.do.end_crit_edge, label %lor.lhs.false6

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %add_interface = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 6
  %8 = ptrtoint ptr %add_interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add_interface, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false6.do.end_crit_edge, label %lor.lhs.false8

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %remove_interface = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 8
  %10 = ptrtoint ptr %remove_interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_interface, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %lor.lhs.false8.do.end_crit_edge, label %lor.rhs

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false8
  %configure_filter = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 14
  %12 = ptrtoint ptr %configure_filter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %configure_filter, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %lor.rhs.do.end_crit_edge, label %if.end33, !prof !212

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false8.do.end_crit_edge, %lor.lhs.false6.do.end_crit_edge, %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 554, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end33:                                         ; preds = %lor.rhs
  %sta_state = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 36
  %14 = ptrtoint ptr %sta_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sta_state, align 4
  %tobool35.not = icmp eq ptr %15, null
  br i1 %tobool35.not, label %if.end33.if.end71_crit_edge, label %land.rhs

if.end33.if.end71_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.rhs:                                         ; preds = %if.end33
  %sta_add = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 31
  %16 = ptrtoint ptr %sta_add to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sta_add, align 4
  %tobool36.not = icmp eq ptr %17, null
  br i1 %tobool36.not, label %lor.rhs37, label %land.rhs.do.end55_crit_edge

land.rhs.do.end55_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

lor.rhs37:                                        ; preds = %land.rhs
  %sta_remove = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 32
  %18 = ptrtoint ptr %sta_remove to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sta_remove, align 4
  %tobool38.not = icmp eq ptr %19, null
  br i1 %tobool38.not, label %lor.rhs37.if.end71_crit_edge, label %lor.rhs37.do.end55_crit_edge, !prof !203

lor.rhs37.do.end55_crit_edge:                     ; preds = %lor.rhs37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

lor.rhs37.if.end71_crit_edge:                     ; preds = %lor.rhs37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.end55:                                         ; preds = %lor.rhs37.do.end55_crit_edge, %land.rhs.do.end55_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end71:                                         ; preds = %lor.rhs37.if.end71_crit_edge, %if.end33.if.end71_crit_edge
  %add_chanctx = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 72
  %20 = ptrtoint ptr %add_chanctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add_chanctx, align 4
  %tobool72 = icmp ne ptr %21, null
  %lnot.ext76 = zext i1 %tobool72 to i32
  %remove_chanctx = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 73
  %22 = ptrtoint ptr %remove_chanctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remove_chanctx, align 4
  %tobool77 = icmp ne ptr %23, null
  %lnot.ext81 = zext i1 %tobool77 to i32
  %add = add nuw nsw i32 %lnot.ext81, %lnot.ext76
  %change_chanctx = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 74
  %24 = ptrtoint ptr %change_chanctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %change_chanctx, align 4
  %tobool82 = icmp ne ptr %25, null
  %lnot.ext86 = zext i1 %tobool82 to i32
  %add87 = add nuw nsw i32 %add, %lnot.ext86
  %assign_vif_chanctx = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 75
  %26 = ptrtoint ptr %assign_vif_chanctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %assign_vif_chanctx, align 4
  %tobool88 = icmp ne ptr %27, null
  %lnot.ext92 = zext i1 %tobool88 to i32
  %add93 = add nuw nsw i32 %add87, %lnot.ext92
  %unassign_vif_chanctx = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 76
  %28 = ptrtoint ptr %unassign_vif_chanctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unassign_vif_chanctx, align 4
  %tobool94 = icmp ne ptr %29, null
  %lnot.ext98 = zext i1 %tobool94 to i32
  %add99 = add nuw nsw i32 %add93, %lnot.ext98
  %30 = zext i32 %add99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %add99, label %do.end119 [
    i32 5, label %if.end71.if.end135_crit_edge
    i32 0, label %if.end71.if.end135_crit_edge540
  ]

if.end71.if.end135_crit_edge540:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.end71.if.end135_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

do.end119:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end135:                                        ; preds = %if.end71.if.end135_crit_edge, %if.end71.if.end135_crit_edge540
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add99)
  %cmp136 = icmp eq i32 %add99, 5
  %frombool = zext i1 %cmp136 to i8
  %add137 = add i32 %priv_data_len, 7296
  %call = tail call ptr @wiphy_new_nm(ptr noundef nonnull @mac80211_config_ops, i32 noundef %add137, ptr noundef %requested_name) #10
  %tobool138.not = icmp eq ptr %call, null
  br i1 %tobool138.not, label %if.end135.cleanup_crit_edge, label %if.end140

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end140:                                        ; preds = %if.end135
  %mgmt_stypes = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 4
  %31 = ptrtoint ptr %mgmt_stypes to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ieee80211_default_mgmt_stypes, ptr %mgmt_stypes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mac80211_wiphy_privid to i32))
  %32 = load ptr, ptr @mac80211_wiphy_privid, align 4
  %privid = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 52
  %33 = ptrtoint ptr %privid to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %privid, align 4
  %flags = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 11
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 32
  %or = or i32 %35, 1310824
  store i32 %or, ptr %flags, align 32
  br i1 %cmp136, label %lor.lhs.false142, label %if.end140.if.then144_crit_edge

if.end140.if.then144_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then144

lor.lhs.false142:                                 ; preds = %if.end140
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 57
  %36 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remain_on_channel, align 4
  %tobool143.not = icmp eq ptr %37, null
  br i1 %tobool143.not, label %lor.lhs.false142.if.end147_crit_edge, label %lor.lhs.false142.if.then144_crit_edge

lor.lhs.false142.if.then144_crit_edge:            ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then144

lor.lhs.false142.if.end147_crit_edge:             ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then144:                                       ; preds = %lor.lhs.false142.if.then144_crit_edge, %if.end140.if.then144_crit_edge
  %or146 = or i32 %35, 3407976
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or146, ptr %flags, align 32
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %lor.lhs.false142.if.end147_crit_edge
  %features = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 13
  %39 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %features, align 8
  %or148 = or i32 %40, 134316579
  store i32 %or148, ptr %features, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %call, i32 0, i32 14, i32 1
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = or i8 %42, 2
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %arrayidx.i506 = getelementptr %struct.wiphy, ptr %call, i32 0, i32 14, i32 3
  %43 = ptrtoint ptr %arrayidx.i506 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i506, align 1
  %conv1.i507 = or i8 %44, 4
  store i8 %conv1.i507, ptr %arrayidx.i506, align 1
  %arrayidx.i508 = getelementptr %struct.wiphy, ptr %call, i32 0, i32 14, i32 5
  %45 = ptrtoint ptr %arrayidx.i508 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i508, align 1
  %arrayidx.i510 = getelementptr %struct.wiphy, ptr %call, i32 0, i32 14, i32 6
  %47 = ptrtoint ptr %arrayidx.i510 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i510, align 1
  %conv1.i511 = or i8 %48, 1
  store i8 %conv1.i511, ptr %arrayidx.i510, align 1
  %conv1.i513 = or i8 %46, -124
  store i8 %conv1.i513, ptr %arrayidx.i508, align 1
  %hw_scan = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 21
  %49 = ptrtoint ptr %hw_scan to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_scan, align 4
  %tobool149.not = icmp eq ptr %50, null
  br i1 %tobool149.not, label %if.then150, label %if.end147.if.end153_crit_edge

if.end147.if.end153_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  %or152 = or i32 %40, 134316899
  %51 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or152, ptr %features, align 8
  %conv1.i517 = or i8 %44, 100
  %52 = ptrtoint ptr %arrayidx.i506 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv1.i517, ptr %arrayidx.i506, align 1
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end147.if.end153_crit_edge
  %set_key = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 17
  %53 = ptrtoint ptr %set_key to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_key, align 4
  %tobool154.not = icmp eq ptr %54, null
  br i1 %tobool154.not, label %if.then155, label %if.end153.if.end158_crit_edge

if.end153.if.end158_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.then155:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 32
  %or157 = or i32 %56, 256
  store i32 %or157, ptr %flags, align 32
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end153.if.end158_crit_edge
  %wake_tx_queue = getelementptr inbounds %struct.ieee80211_ops, ptr %ops, i32 0, i32 92
  %57 = ptrtoint ptr %wake_tx_queue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wake_tx_queue, align 4
  %tobool159.not = icmp eq ptr %58, null
  br i1 %tobool159.not, label %if.end158.wiphy_priv.exit_crit_edge, label %if.then160

if.end158.wiphy_priv.exit_crit_edge:              ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %wiphy_priv.exit

if.then160:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %arrayidx.i506 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i506, align 1
  %conv1.i519 = or i8 %60, 16
  store i8 %conv1.i519, ptr %arrayidx.i506, align 1
  br label %wiphy_priv.exit

wiphy_priv.exit:                                  ; preds = %if.then160, %if.end158.wiphy_priv.exit_crit_edge
  %arrayidx.i520 = getelementptr %struct.wiphy, ptr %call, i32 0, i32 14, i32 0
  %61 = ptrtoint ptr %arrayidx.i520 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i520, align 1
  %conv1.i521 = or i8 %62, 2
  store i8 %conv1.i521, ptr %arrayidx.i520, align 1
  %bss_priv_size = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 17
  %63 = ptrtoint ptr %bss_priv_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 60, ptr %bss_priv_size, align 4
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 86
  %call163 = tail call i32 @sta_info_init(ptr noundef %priv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %err_free

if.end166:                                        ; preds = %wiphy_priv.exit
  %wiphy167 = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %wiphy167 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call, ptr %wiphy167, align 8
  %add.ptr = getelementptr %struct.wiphy, ptr %call, i32 6, i32 40
  %priv = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 0, i32 5
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr, ptr %priv, align 8
  %ops169 = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 56, i32 12, i32 3
  %66 = ptrtoint ptr %ops169 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ops, ptr %ops169, align 4
  %use_chanctx171 = getelementptr inbounds %struct.ieee80211_local, ptr %priv.i, i32 0, i32 26
  %67 = ptrtoint ptr %use_chanctx171 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool, ptr %use_chanctx171, align 1
  %tx_sk_pacing_shift = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 14, i32 5
  %68 = ptrtoint ptr %tx_sk_pacing_shift to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 7, ptr %tx_sk_pacing_shift, align 1
  %queues = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 2, i32 2
  %69 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %queues, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %priv.i, i32 0, i32 14
  %70 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %max_rates, align 1
  %max_report_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %priv.i, i32 0, i32 15
  %71 = ptrtoint ptr %max_report_rates to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %max_report_rates, align 2
  %max_rx_aggregation_subframes = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 4
  %72 = ptrtoint ptr %max_rx_aggregation_subframes to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 64, ptr %max_rx_aggregation_subframes, align 4
  %max_tx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_hw, ptr %priv.i, i32 0, i32 18
  %73 = ptrtoint ptr %max_tx_aggregation_subframes to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 64, ptr %max_tx_aggregation_subframes, align 2
  %offchannel_tx_hw_queue = getelementptr inbounds %struct.ieee80211_hw, ptr %priv.i, i32 0, i32 20
  %74 = ptrtoint ptr %offchannel_tx_hw_queue to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %offchannel_tx_hw_queue, align 1
  %retry_long = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 34
  %75 = ptrtoint ptr %retry_long to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %retry_long, align 1
  %long_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %priv.i, i32 0, i32 5
  %77 = ptrtoint ptr %long_frame_max_tx_count to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %long_frame_max_tx_count, align 1
  %retry_short = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 33
  %78 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %retry_short, align 4
  %short_frame_max_tx_count = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %short_frame_max_tx_count, align 8
  %radiotap_mcs_details = getelementptr inbounds %struct.ieee80211_hw, ptr %priv.i, i32 0, i32 21
  %81 = ptrtoint ptr %radiotap_mcs_details to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 7, ptr %radiotap_mcs_details, align 2
  %radiotap_vht_details = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 6
  %82 = ptrtoint ptr %radiotap_vht_details to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 68, ptr %radiotap_vht_details, align 4
  %uapsd_queues = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 13
  %83 = ptrtoint ptr %uapsd_queues to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %uapsd_queues, align 8
  %uapsd_max_sp_len = getelementptr inbounds %struct.ieee80211_hw, ptr %priv.i, i32 0, i32 26
  %84 = ptrtoint ptr %uapsd_max_sp_len to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %uapsd_max_sp_len, align 1
  %max_mtu = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 15
  %85 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2304, ptr %max_mtu, align 4
  %user_power_level = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 32
  %86 = ptrtoint ptr %user_power_level to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -2147483648, ptr %user_power_level, align 4
  %ht_capa_mod_mask = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 59
  %87 = ptrtoint ptr %ht_capa_mod_mask to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @mac80211_ht_capa_mod_mask, ptr %ht_capa_mod_mask, align 8
  %vht_capa_mod_mask = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 60
  %88 = ptrtoint ptr %vht_capa_mod_mask to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @mac80211_vht_capa_mod_mask, ptr %vht_capa_mod_mask, align 4
  %ext_capa = getelementptr inbounds %struct.wiphy, ptr %call, i32 6, i32 38, i32 19
  %arrayidx = getelementptr %struct.wiphy, ptr %call, i32 6, i32 38, i32 26
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 64, ptr %arrayidx, align 1
  %extended_capabilities = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 47
  %90 = ptrtoint ptr %extended_capabilities to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %ext_capa, ptr %extended_capabilities, align 8
  %extended_capabilities_mask = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 48
  %91 = ptrtoint ptr %extended_capabilities_mask to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %ext_capa, ptr %extended_capabilities_mask, align 4
  %extended_capabilities_len = getelementptr inbounds %struct.wiphy, ptr %call, i32 0, i32 49
  %92 = ptrtoint ptr %extended_capabilities_len to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 8, ptr %extended_capabilities_len, align 32
  %interfaces = getelementptr inbounds %struct.wiphy, ptr %call, i32 4, i32 56, i32 32, i32 1
  %93 = ptrtoint ptr %interfaces to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %interfaces, ptr %interfaces, align 4
  %prev.i = getelementptr inbounds %struct.wiphy, ptr %call, i32 4, i32 56, i32 33
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %interfaces, ptr %prev.i, align 4
  %mon_list = getelementptr inbounds %struct.wiphy, ptr %call, i32 4, i32 56, i32 34
  %95 = ptrtoint ptr %mon_list to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %mon_list, ptr %mon_list, align 4
  %prev.i522 = getelementptr inbounds %struct.wiphy, ptr %call, i32 4, i32 56, i32 35
  %96 = ptrtoint ptr %prev.i522 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %mon_list, ptr %prev.i522, align 4
  %mc_list = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 47
  tail call void @__hw_addr_init(ptr noundef %mc_list) #10
  %iflist_mtx = getelementptr inbounds %struct.wiphy, ptr %call, i32 4, i32 56, i32 36
  tail call void @__mutex_init(ptr noundef %iflist_mtx, ptr noundef nonnull @.str.5, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key) #10
  %mtx = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 0, i32 1, i32 4, i32 1
  tail call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str.7, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.6) #10
  %key_mtx = getelementptr inbounds %struct.wiphy, ptr %call, i32 4, i32 76
  tail call void @__mutex_init(ptr noundef %key_mtx, ptr noundef nonnull @.str.9, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.8) #10
  %filter_lock = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %filter_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.10, i16 noundef signext 3) #10
  %rx_path_lock = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %rx_path_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.12, i16 noundef signext 3) #10
  %queue_stop_reason_lock = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %queue_stop_reason_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.14, i16 noundef signext 3) #10
  %arrayidx213 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 45
  %active_txqs = getelementptr %struct.wiphy, ptr %call, i32 1, i32 53, i32 3
  %97 = ptrtoint ptr %active_txqs to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %active_txqs, align 4
  %.compoundliteral.sroa.2.0.active_txqs.sroa_idx = getelementptr %struct.wiphy, ptr %call, i32 1, i32 53, i32 4
  %98 = ptrtoint ptr %.compoundliteral.sroa.2.0.active_txqs.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %.compoundliteral.sroa.2.0.active_txqs.sroa_idx, align 4
  %active_list = getelementptr %struct.wiphy, ptr %call, i32 1, i32 54
  %99 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i523 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 55
  %100 = ptrtoint ptr %prev.i523 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %active_list, ptr %prev.i523, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx213, ptr noundef nonnull @.str.17, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.16, i16 noundef signext 3) #10
  %aql_txq_limit_low = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 0, i32 7, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %aql_txq_limit_low to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 5000, ptr %aql_txq_limit_low, align 8
  %aql_txq_limit_high = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 0, i32 7, i32 0, i32 2
  %102 = ptrtoint ptr %aql_txq_limit_high to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 12000, ptr %aql_txq_limit_high, align 4
  %arrayidx213.1 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 0, i32 7, i32 0, i32 3
  %active_txqs.1 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 0, i32 7, i32 1, i32 3
  %103 = ptrtoint ptr %active_txqs.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %active_txqs.1, align 4
  %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.1 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 0, i32 7, i32 1, i32 4
  %104 = ptrtoint ptr %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.1, align 4
  %active_list.1 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %105 = ptrtoint ptr %active_list.1 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %active_list.1, ptr %active_list.1, align 4
  %prev.i523.1 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 0, i32 7, i32 1, i32 4, i32 2
  %106 = ptrtoint ptr %prev.i523.1 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %active_list.1, ptr %prev.i523.1, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx213.1, ptr noundef nonnull @.str.17, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.16, i16 noundef signext 3) #10
  %aql_txq_limit_low.1 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 5
  %107 = ptrtoint ptr %aql_txq_limit_low.1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 5000, ptr %aql_txq_limit_low.1, align 8
  %aql_txq_limit_high.1 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 6
  %108 = ptrtoint ptr %aql_txq_limit_high.1 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 12000, ptr %aql_txq_limit_high.1, align 4
  %arrayidx213.2 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 7
  %active_txqs.2 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 9, i32 1, i32 4, i32 3
  %109 = ptrtoint ptr %active_txqs.2 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %active_txqs.2, align 4
  %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.2 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 9, i32 1, i32 4, i32 6
  %110 = ptrtoint ptr %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.2, align 4
  %active_list.2 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 9, i32 2
  %111 = ptrtoint ptr %active_list.2 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %active_list.2, ptr %active_list.2, align 4
  %prev.i523.2 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 9, i32 3
  %112 = ptrtoint ptr %prev.i523.2 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %active_list.2, ptr %prev.i523.2, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx213.2, ptr noundef nonnull @.str.17, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.16, i16 noundef signext 3) #10
  %aql_txq_limit_low.2 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 10, i32 1
  %113 = ptrtoint ptr %aql_txq_limit_low.2 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 5000, ptr %aql_txq_limit_low.2, align 8
  %aql_txq_limit_high.2 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 10, i32 1, i32 1
  %114 = ptrtoint ptr %aql_txq_limit_high.2 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 12000, ptr %aql_txq_limit_high.2, align 4
  %arrayidx213.3 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 10, i32 1, i32 2
  %active_txqs.3 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 10, i32 3, i32 1
  %115 = ptrtoint ptr %active_txqs.3 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %active_txqs.3, align 4
  %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.3 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 10, i32 4
  %116 = ptrtoint ptr %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.3 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %.compoundliteral.sroa.2.0.active_txqs.sroa_idx.3, align 4
  %active_list.3 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 10, i32 5, i32 1
  %117 = ptrtoint ptr %active_list.3 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %active_list.3, ptr %active_list.3, align 4
  %prev.i523.3 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 10, i32 5, i32 1, i32 1
  %118 = ptrtoint ptr %prev.i523.3 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %active_list.3, ptr %prev.i523.3, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx213.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.16, i16 noundef signext 3) #10
  %aql_txq_limit_low.3 = getelementptr %struct.wiphy, ptr %call, i32 1, i32 56, i32 11, i32 3
  %119 = ptrtoint ptr %aql_txq_limit_low.3 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 5000, ptr %aql_txq_limit_low.3, align 8
  %aql_txq_limit_high.3 = getelementptr %struct.ieee80211_local, ptr %priv.i, i32 0, i32 4, i32 3, i32 10
  %120 = ptrtoint ptr %aql_txq_limit_high.3 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 12000, ptr %aql_txq_limit_high.3, align 4
  %airtime_flags = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 56, i32 12
  %121 = ptrtoint ptr %airtime_flags to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 3, ptr %airtime_flags, align 8
  %aql_threshold = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 56, i32 12, i32 1
  %122 = ptrtoint ptr %aql_threshold to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 24000, ptr %aql_threshold, align 4
  %aql_total_pending_airtime = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 56, i32 12, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aql_total_pending_airtime, i32 noundef 4) #10
  %123 = ptrtoint ptr %aql_total_pending_airtime to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 0, ptr %aql_total_pending_airtime, align 4
  %chanctx_list = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 0, i32 7, i32 1, i32 4, i32 1
  %124 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %chanctx_list, ptr %chanctx_list, align 4
  %prev.i524 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %125 = ptrtoint ptr %prev.i524 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %chanctx_list, ptr %prev.i524, align 4
  %chanctx_mtx = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 0, i32 7, i32 1, i32 4, i32 2
  tail call void @__mutex_init(ptr noundef %chanctx_mtx, ptr noundef nonnull @.str.19, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.18) #10
  %scan_work = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 52
  tail call void @__init_work(ptr noundef %scan_work, i32 noundef 0) #10
  %126 = ptrtoint ptr %scan_work to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -64, ptr %scan_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 53, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry230 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 53
  %127 = ptrtoint ptr %entry230 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %entry230, ptr %entry230, align 4
  %prev.i525 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 53, i32 1
  %128 = ptrtoint ptr %prev.i525 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %entry230, ptr %prev.i525, align 4
  %func = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 53, i32 2
  %129 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @ieee80211_scan_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.23, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.22) #10
  %restart_work = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 33
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #10
  %130 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -64, ptr %restart_work, align 4
  %lockdep_map247 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 37
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map247, ptr noundef nonnull @.str.25, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry249 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 34
  %131 = ptrtoint ptr %entry249 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %entry249, ptr %entry249, align 4
  %prev.i526 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 35
  %132 = ptrtoint ptr %prev.i526 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %entry249, ptr %prev.i526, align 4
  %func251 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 36
  %133 = ptrtoint ptr %func251 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @ieee80211_restart_work, ptr %func251, align 4
  %radar_detected_work = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 53
  tail call void @__init_work(ptr noundef %radar_detected_work, i32 noundef 0) #10
  %134 = ptrtoint ptr %radar_detected_work to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -64, ptr %radar_detected_work, align 8
  %lockdep_map260 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 53, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map260, ptr noundef nonnull @.str.27, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry262 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 53, i32 1
  %135 = ptrtoint ptr %entry262 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %entry262, ptr %entry262, align 4
  %prev.i527 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 53, i32 2
  %136 = ptrtoint ptr %prev.i527 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %entry262, ptr %prev.i527, align 4
  %func264 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 53, i32 3
  %137 = ptrtoint ptr %func264 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @ieee80211_dfs_radar_detected_work, ptr %func264, align 4
  %reconfig_filter = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 38, i32 19
  tail call void @__init_work(ptr noundef %reconfig_filter, i32 noundef 0) #10
  %138 = ptrtoint ptr %reconfig_filter to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -64, ptr %reconfig_filter, align 4
  %lockdep_map273 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 39
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map273, ptr noundef nonnull @.str.29, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry275 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 38, i32 23
  %139 = ptrtoint ptr %entry275 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %entry275, ptr %entry275, align 4
  %prev.i528 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 38, i32 27
  %140 = ptrtoint ptr %prev.i528 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %entry275, ptr %prev.i528, align 4
  %func277 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 38, i32 31
  %141 = ptrtoint ptr %func277 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @ieee80211_reconfig_filter, ptr %func277, align 4
  %smps_mode = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 32, i32 1
  %142 = ptrtoint ptr %smps_mode to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %smps_mode, align 8
  %dynamic_ps_enable_work = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 12, i32 25
  tail call void @__init_work(ptr noundef %dynamic_ps_enable_work, i32 noundef 0) #10
  %143 = ptrtoint ptr %dynamic_ps_enable_work to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -64, ptr %dynamic_ps_enable_work, align 8
  %lockdep_map286 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 12, i32 28
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map286, ptr noundef nonnull @.str.31, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry288 = getelementptr inbounds %struct.ieee80211_local, ptr %priv.i, i32 0, i32 127, i32 1
  %144 = ptrtoint ptr %entry288 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %entry288, ptr %entry288, align 4
  %prev.i529 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 12, i32 26
  %145 = ptrtoint ptr %prev.i529 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %entry288, ptr %prev.i529, align 4
  %func290 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 12, i32 27
  %146 = ptrtoint ptr %func290 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @ieee80211_dynamic_ps_enable_work, ptr %func290, align 4
  %dynamic_ps_disable_work = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 17
  tail call void @__init_work(ptr noundef %dynamic_ps_disable_work, i32 noundef 0) #10
  %147 = ptrtoint ptr %dynamic_ps_disable_work to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -64, ptr %dynamic_ps_disable_work, align 4
  %lockdep_map299 = getelementptr inbounds %struct.ieee80211_local, ptr %priv.i, i32 0, i32 128, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map299, ptr noundef nonnull @.str.33, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry301 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 18
  %148 = ptrtoint ptr %entry301 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %entry301, ptr %entry301, align 4
  %prev.i530 = getelementptr inbounds %struct.list_head, ptr %entry301, i32 0, i32 1
  %149 = ptrtoint ptr %prev.i530 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %entry301, ptr %prev.i530, align 4
  %func303 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 19
  %150 = ptrtoint ptr %func303 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @ieee80211_dynamic_ps_disable_work, ptr %func303, align 4
  %dynamic_ps_timer = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 56, i32 24
  tail call void @init_timer_key(ptr noundef %dynamic_ps_timer, ptr noundef nonnull @ieee80211_dynamic_ps_timer, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.34) #10
  %sched_scan_stopped_work = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 38, i32 15
  tail call void @__init_work(ptr noundef %sched_scan_stopped_work, i32 noundef 0) #10
  %151 = ptrtoint ptr %sched_scan_stopped_work to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -64, ptr %sched_scan_stopped_work, align 8
  %lockdep_map315 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 38, i32 31
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map315, ptr noundef nonnull @.str.37, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry317 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 38, i32 19
  %152 = ptrtoint ptr %entry317 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %entry317, ptr %entry317, align 4
  %prev.i531 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 38, i32 23
  %153 = ptrtoint ptr %prev.i531 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %entry317, ptr %prev.i531, align 4
  %func319 = getelementptr inbounds %struct.wiphy, ptr %call, i32 5, i32 38, i32 27
  %154 = ptrtoint ptr %func319 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @ieee80211_sched_scan_stopped_work, ptr %func319, align 4
  %ack_status_lock = getelementptr inbounds %struct.wiphy, ptr %call, i32 6, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %ack_status_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @ieee80211_alloc_hw_nm.__key.38, i16 noundef signext 3) #10
  %ack_status_frames = getelementptr inbounds %struct.wiphy, ptr %call, i32 6, i32 1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %ack_status_frames, ptr noundef nonnull @.str.66, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i.i = getelementptr inbounds %struct.wiphy, ptr %call, i32 6, i32 14
  %155 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.wiphy, ptr %call, i32 6, i32 14, i32 4
  %156 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.wiphy, ptr %call, i32 6, i32 15
  %157 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.wiphy, ptr %call, i32 6, i32 16
  %158 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %idr_next.i.i, align 4
  br label %for.body328

for.body328:                                      ; preds = %for.body328.for.body328_crit_edge, %if.end166
  %i.1539 = phi i32 [ 0, %if.end166 ], [ %inc332, %for.body328.for.body328_crit_edge ]
  %arrayidx329 = getelementptr %struct.ieee80211_local, ptr %priv.i, i32 0, i32 53, i32 %i.1539
  %lock.i = getelementptr %struct.ieee80211_local, ptr %priv.i, i32 0, i32 53, i32 %i.1539, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %159 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %arrayidx329, ptr %arrayidx329, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.77, ptr %arrayidx329, i32 0, i32 1
  %160 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %arrayidx329, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.ieee80211_local, ptr %priv.i, i32 0, i32 53, i32 %i.1539, i32 1
  %161 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %qlen.i.i, align 4
  %arrayidx330 = getelementptr %struct.ieee80211_local, ptr %priv.i, i32 0, i32 56, i32 %i.1539
  %call.i.i505 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx330, i32 noundef 4) #10
  %162 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 0, ptr %arrayidx330, align 4
  %inc332 = add nuw nsw i32 %i.1539, 1
  %exitcond.not = icmp eq i32 %inc332, 16
  br i1 %exitcond.not, label %for.end333, label %for.body328.for.body328_crit_edge

for.body328.for.body328_crit_edge:                ; preds = %for.body328
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body328

for.end333:                                       ; preds = %for.body328
  %tx_pending_tasklet = getelementptr inbounds %struct.wiphy, ptr %call, i32 3, i32 56, i32 0, i32 7, i32 1, i32 4, i32 6
  tail call void @tasklet_setup(ptr noundef %tx_pending_tasklet, ptr noundef nonnull @ieee80211_tx_pending) #10
  %163 = ptrtoint ptr %wake_tx_queue to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %wake_tx_queue, align 4
  %tobool335.not = icmp eq ptr %164, null
  br i1 %tobool335.not, label %for.end333.if.end337_crit_edge, label %if.then336

for.end333.if.end337_crit_edge:                   ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end337

if.then336:                                       ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #12
  %wake_txqs_tasklet = getelementptr inbounds %struct.wiphy, ptr %call, i32 3, i32 56, i32 2
  tail call void @tasklet_setup(ptr noundef %wake_txqs_tasklet, ptr noundef nonnull @ieee80211_wake_txqs) #10
  br label %if.end337

if.end337:                                        ; preds = %if.then336, %for.end333.if.end337_crit_edge
  %tasklet = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 4
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @ieee80211_tasklet_handler) #10
  %skb_queue = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 7, i32 0, i32 2
  %lock.i532 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i532, ptr noundef nonnull @.str.67, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %165 = ptrtoint ptr %skb_queue to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %skb_queue, ptr %skb_queue, align 4
  %prev.i.i533 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 7, i32 0, i32 3
  %166 = ptrtoint ptr %prev.i.i533 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %skb_queue, ptr %prev.i.i533, align 4
  %qlen.i.i534 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 7, i32 0, i32 3, i32 1
  %167 = ptrtoint ptr %qlen.i.i534 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %qlen.i.i534, align 4
  %skb_queue_unreliable = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 7, i32 1, i32 4, i32 1
  %lock.i535 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 7, i32 1, i32 4, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i535, ptr noundef nonnull @.str.67, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %168 = ptrtoint ptr %skb_queue_unreliable to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %skb_queue_unreliable, ptr %skb_queue_unreliable, align 4
  %prev.i.i536 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %169 = ptrtoint ptr %prev.i.i536 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %skb_queue_unreliable, ptr %prev.i.i536, align 4
  %qlen.i.i537 = getelementptr inbounds %struct.wiphy, ptr %call, i32 2, i32 56, i32 0, i32 7, i32 1, i32 4, i32 2
  %170 = ptrtoint ptr %qlen.i.i537 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %qlen.i.i537, align 4
  tail call void @ieee80211_alloc_led_names(ptr noundef %priv.i) #10
  tail call void @ieee80211_roc_setup(ptr noundef %priv.i) #10
  %radiotap_timestamp = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 7
  %171 = ptrtoint ptr %radiotap_timestamp to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -1, ptr %radiotap_timestamp, align 8
  %accuracy = getelementptr inbounds %struct.wiphy, ptr %call, i32 1, i32 9
  %172 = ptrtoint ptr %accuracy to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 -1, ptr %accuracy, align 4
  br label %cleanup

err_free:                                         ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wiphy_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end337, %if.end135.cleanup_crit_edge, %do.end119, %do.end55, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end55 ], [ null, %do.end119 ], [ null, %err_free ], [ %priv.i, %if.end337 ], [ null, %if.end135.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_restart_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6868
  %workqueue = getelementptr i8, ptr %work, i32 -6132
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 8
  tail call void @flush_workqueue(ptr noundef %1) #10
  %sched_scan_stopped_work = getelementptr i8, ptr %work, i32 -1004
  %call = tail call zeroext i1 @flush_work(ptr noundef %sched_scan_stopped_work) #10
  %radar_detected_work = getelementptr i8, ptr %work, i32 -5156
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %radar_detected_work) #10
  tail call void @rtnl_lock() #10
  %wiphy = getelementptr i8, ptr %work, i32 -6812
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %scanning = getelementptr i8, ptr %work, i32 -1120
  %4 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %scanning, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !203

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.ieee80211_restart_work) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %interfaces = getelementptr i8, ptr %work, i32 -1412
  %7 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %7)
  %sdata.077 = load ptr, ptr %interfaces, align 8
  %cmp.not78 = icmp eq ptr %sdata.077, %interfaces
  br i1 %cmp.not78, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %if.end.for.body_crit_edge
  %sdata.079 = phi ptr [ %sdata.0, %if.end37.for.body_crit_edge ], [ %sdata.077, %if.end.for.body_crit_edge ]
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.079, i32 0, i32 59
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp29 = icmp eq i32 %9, 2
  br i1 %cmp29, label %if.then30, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then30:                                        ; preds = %for.body
  %csa_connection_drop_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.079, i32 0, i32 57, i32 0, i32 24, i32 4
  %call31 = tail call zeroext i1 @cancel_work_sync(ptr noundef %csa_connection_drop_work) #10
  %csa_active = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.079, i32 0, i32 59, i32 4
  %10 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %csa_active, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool33.not = icmp eq i8 %11, 0
  br i1 %tobool33.not, label %if.then30.if.end37_crit_edge, label %if.then34

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %mtx.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.079, i32 0, i32 1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #10
  %associated = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.079, i32 0, i32 57, i32 0, i32 24, i32 28
  %12 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %associated, align 8
  %bssid = getelementptr inbounds %struct.cfg80211_bss, ptr %13, i32 0, i32 11
  tail call void @ieee80211_sta_connection_lost(ptr noundef %sdata.079, ptr noundef %bssid, i8 noundef zeroext 1, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %mtx.i) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then30.if.end37_crit_edge, %for.body.if.end37_crit_edge
  %dec_tailroom_needed_wk = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.079, i32 0, i32 5
  %call38 = tail call zeroext i1 @flush_delayed_work(ptr noundef %dec_tailroom_needed_wk) #10
  %14 = ptrtoint ptr %sdata.079 to i32
  call void @__asan_load4_noabort(i32 %14)
  %sdata.0 = load ptr, ptr %sdata.079, align 8
  %cmp.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp.not, label %if.end37.for.end_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end37.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @ieee80211_scan_cancel(ptr noundef %add.ptr) #10
  %roc_work = getelementptr i8, ptr %work, i32 56
  %call44 = tail call zeroext i1 @flush_delayed_work(ptr noundef %roc_work) #10
  %hw_roc_done = getelementptr i8, ptr %work, i32 208
  %call45 = tail call zeroext i1 @flush_work(ptr noundef %hw_roc_done) #10
  tail call void @synchronize_net() #10
  %call46 = tail call i32 @ieee80211_reconfig(ptr noundef %add.ptr) #10
  %15 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_unlock(ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool49.not = icmp eq i32 %call46, 0
  br i1 %tobool49.not, label %for.end.if.end53_crit_edge, label %if.then50

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy, align 8
  tail call void @cfg80211_shutdown_all_interfaces(ptr noundef %18) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %for.end.if.end53_crit_edge
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dfs_radar_detected_work(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_reconfig_filter(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1644
  tail call void @ieee80211_configure_filter(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dynamic_ps_enable_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dynamic_ps_disable_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dynamic_ps_timer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sched_scan_stopped_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_pending(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_txqs(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_tasklet_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1764
  %skb_queue_unreliable = getelementptr i8, ptr %t, i32 80
  %skb_queue = getelementptr i8, ptr %t, i32 24
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call ptr @skb_dequeue(ptr noundef %skb_queue) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %call1 = tail call ptr @skb_dequeue(ptr noundef %skb_queue_unreliable) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %skb.0 = phi ptr [ %call, %while.cond.while.body_crit_edge ], [ %call1, %lor.rhs.while.body_crit_edge ]
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.cast = zext i16 %bf.lshr to i32
  %1 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %bf.cast, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear = and i16 %bf.load, 8191
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %bf.clear, ptr %pkt_type, align 8
  tail call void @ieee80211_rx_napi(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull %skb.0, ptr noundef null) #10
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear8 = and i16 %bf.load, 8191
  %3 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %bf.clear8, ptr %pkt_type, align 8
  tail call void @ieee80211_tx_status(ptr noundef %add.ptr, ptr noundef nonnull %skb.0) #10
  br label %while.cond.backedge

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.68, i32 noundef %bf.cast) #10
  tail call void @consume_skb(ptr noundef nonnull %skb.0) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end, %sw.bb5, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_alloc_led_names(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_roc_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_register_hw(ptr noundef %hw) #0 align 64 {
entry:
  %dflt_chandef = alloca %struct.cfg80211_chan_def, align 4
  %params = alloca %struct.vif_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dflt_chandef) #10
  %0 = call ptr @memset(ptr %dflt_chandef, i32 0, i32 28)
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %offchannel_tx_hw_queue = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 20
  %4 = ptrtoint ptr %offchannel_tx_hw_queue to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offchannel_tx_hw_queue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %land.lhs.true.cleanup814_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup814_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

lor.lhs.false:                                    ; preds = %land.lhs.true
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 11
  %6 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queues, align 4
  %8 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp9.not = icmp ugt i16 %7, %8
  br i1 %cmp9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup814_crit_edge

lor.lhs.false.cleanup814_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %features = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features, align 8
  %and = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %land.lhs.true11

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true11:                                  ; preds = %if.end
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 8
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %tdls_channel_switch = getelementptr inbounds %struct.ieee80211_ops, ptr %14, i32 0, i32 89
  %15 = ptrtoint ptr %tdls_channel_switch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tdls_channel_switch, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %land.lhs.true11.cleanup814_crit_edge, label %lor.lhs.false13

land.lhs.true11.cleanup814_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

lor.lhs.false13:                                  ; preds = %land.lhs.true11
  %tdls_cancel_channel_switch = getelementptr inbounds %struct.ieee80211_ops, ptr %14, i32 0, i32 90
  %17 = ptrtoint ptr %tdls_cancel_channel_switch to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tdls_cancel_channel_switch, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %lor.lhs.false13.cleanup814_crit_edge, label %lor.lhs.false16

lor.lhs.false13.cleanup814_crit_edge:             ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %tdls_recv_channel_switch = getelementptr inbounds %struct.ieee80211_ops, ptr %14, i32 0, i32 91
  %19 = ptrtoint ptr %tdls_recv_channel_switch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tdls_recv_channel_switch, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %lor.lhs.false16.cleanup814_crit_edge, label %lor.lhs.false16.if.end20_crit_edge

lor.lhs.false16.if.end20_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

lor.lhs.false16.cleanup814_crit_edge:             ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

if.end20:                                         ; preds = %lor.lhs.false16.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %arrayidx.i.i = getelementptr %struct.ieee80211_hw, ptr %hw, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i1070.not = icmp eq i32 %23, 0
  br i1 %tobool.i1070.not, label %if.end20.if.end49_crit_edge, label %land.rhs

if.end20.if.end49_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.rhs:                                         ; preds = %if.end20
  %ops23 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 8
  %24 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops23, align 4
  %set_frag_threshold = getelementptr inbounds %struct.ieee80211_ops, ptr %25, i32 0, i32 29
  %26 = ptrtoint ptr %set_frag_threshold to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_frag_threshold, align 4
  %tobool24.not = icmp eq ptr %27, null
  br i1 %tobool24.not, label %do.end, label %land.rhs.if.end49_crit_edge, !prof !212

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 927, i32 noundef 9, ptr noundef null) #10
  br label %cleanup814

if.end49:                                         ; preds = %land.rhs.if.end49_crit_edge, %if.end20.if.end49_crit_edge
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 9
  %28 = ptrtoint ptr %interface_modes to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %interface_modes, align 4
  %30 = and i16 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool55.not = icmp eq i16 %30, 0
  br i1 %tobool55.not, label %if.end49.if.end95_crit_edge, label %land.rhs56

if.end49.if.end95_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

land.rhs56:                                       ; preds = %if.end49
  %ops57 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 8
  %31 = ptrtoint ptr %ops57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops57, align 4
  %start_nan = getelementptr inbounds %struct.ieee80211_ops, ptr %32, i32 0, i32 94
  %33 = ptrtoint ptr %start_nan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %start_nan, align 4
  %tobool58.not = icmp eq ptr %34, null
  br i1 %tobool58.not, label %land.rhs56.do.end79_crit_edge, label %lor.rhs

land.rhs56.do.end79_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

lor.rhs:                                          ; preds = %land.rhs56
  %stop_nan = getelementptr inbounds %struct.ieee80211_ops, ptr %32, i32 0, i32 95
  %35 = ptrtoint ptr %stop_nan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stop_nan, align 4
  %tobool60.not = icmp eq ptr %36, null
  br i1 %tobool60.not, label %lor.rhs.do.end79_crit_edge, label %lor.rhs.if.end95_crit_edge, !prof !212

lor.rhs.if.end95_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

lor.rhs.do.end79_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end79:                                         ; preds = %lor.rhs.do.end79_crit_edge, %land.rhs56.do.end79_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 932, i32 noundef 9, ptr noundef null) #10
  br label %cleanup814

if.end95:                                         ; preds = %lor.rhs.if.end95_crit_edge, %if.end49.if.end95_crit_edge
  %wowlan = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 40
  %37 = ptrtoint ptr %wowlan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wowlan, align 32
  %tobool97.not = icmp eq ptr %38, null
  br i1 %tobool97.not, label %if.end95.if.end105_crit_edge, label %land.lhs.true98

if.end95.if.end105_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

land.lhs.true98:                                  ; preds = %if.end95
  %ops99 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 8
  %39 = ptrtoint ptr %ops99 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops99, align 4
  %suspend = getelementptr inbounds %struct.ieee80211_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %suspend, align 4
  %tobool100.not = icmp eq ptr %42, null
  br i1 %tobool100.not, label %land.lhs.true98.cleanup814_crit_edge, label %lor.lhs.false101

land.lhs.true98.cleanup814_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

lor.lhs.false101:                                 ; preds = %land.lhs.true98
  %resume = getelementptr inbounds %struct.ieee80211_ops, ptr %40, i32 0, i32 4
  %43 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resume, align 4
  %tobool103.not = icmp eq ptr %44, null
  br i1 %tobool103.not, label %lor.lhs.false101.cleanup814_crit_edge, label %lor.lhs.false101.if.end105_crit_edge

lor.lhs.false101.if.end105_crit_edge:             ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

lor.lhs.false101.cleanup814_crit_edge:            ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

if.end105:                                        ; preds = %lor.lhs.false101.if.end105_crit_edge, %if.end95.if.end105_crit_edge
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 26
  %45 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %use_chanctx, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool106.not = icmp eq i8 %46, 0
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 6
  %47 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_iface_combinations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp1101122 = icmp sgt i32 %48, 0
  br i1 %tobool106.not, label %for.cond.preheader, label %for.cond118.preheader

for.cond118.preheader:                            ; preds = %if.end105
  br i1 %cmp1101122, label %for.body124.lr.ph, label %for.cond118.preheader.if.end144_crit_edge

for.cond118.preheader.if.end144_crit_edge:        ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

for.body124.lr.ph:                                ; preds = %for.cond118.preheader
  %iface_combinations128 = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 5
  %49 = ptrtoint ptr %iface_combinations128 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iface_combinations128, align 16
  br label %for.body124

for.cond.preheader:                               ; preds = %if.end105
  br i1 %cmp1101122, label %for.body.lr.ph, label %for.cond.preheader.if.end144_crit_edge

for.cond.preheader.if.end144_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 5
  %51 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iface_combinations, align 16
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.01123, 1
  %exitcond1152.not = icmp eq i32 %inc, %48
  br i1 %exitcond1152.not, label %for.cond.if.end144_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.if.end144_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.01123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %num_different_channels = getelementptr %struct.ieee80211_iface_combination, ptr %52, i32 %i.01123, i32 1
  %53 = ptrtoint ptr %num_different_channels to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_different_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp114 = icmp ugt i32 %54, 1
  br i1 %cmp114, label %for.body.cleanup814_crit_edge, label %for.cond

for.body.cleanup814_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

for.body124:                                      ; preds = %for.inc141.critedge.for.body124_crit_edge, %for.body124.lr.ph
  %i.11120 = phi i32 [ 0, %for.body124.lr.ph ], [ %inc142, %for.inc141.critedge.for.body124_crit_edge ]
  %radar_detect_widths = getelementptr %struct.ieee80211_iface_combination, ptr %50, i32 %i.11120, i32 5
  %55 = ptrtoint ptr %radar_detect_widths to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %radar_detect_widths, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool131.not = icmp eq i8 %56, 0
  br i1 %tobool131.not, label %for.body124.for.inc141.critedge_crit_edge, label %land.lhs.true132

for.body124.for.inc141.critedge_crit_edge:        ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc141.critedge

land.lhs.true132:                                 ; preds = %for.body124
  %num_different_channels133 = getelementptr %struct.ieee80211_iface_combination, ptr %50, i32 %i.11120, i32 1
  %57 = ptrtoint ptr %num_different_channels133 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_different_channels133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp134 = icmp ugt i32 %58, 1
  br i1 %cmp134, label %land.lhs.true132.cleanup814_crit_edge, label %land.lhs.true132.for.inc141.critedge_crit_edge

land.lhs.true132.for.inc141.critedge_crit_edge:   ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc141.critedge

land.lhs.true132.cleanup814_crit_edge:            ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

for.inc141.critedge:                              ; preds = %land.lhs.true132.for.inc141.critedge_crit_edge, %for.body124.for.inc141.critedge_crit_edge
  %inc142 = add nuw nsw i32 %i.11120, 1
  %exitcond.not = icmp eq i32 %inc142, %48
  br i1 %exitcond.not, label %for.inc141.critedge.if.end144_crit_edge, label %for.inc141.critedge.for.body124_crit_edge

for.inc141.critedge.for.body124_crit_edge:        ; preds = %for.inc141.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body124

for.inc141.critedge.if.end144_crit_edge:          ; preds = %for.inc141.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.end144:                                        ; preds = %for.inc141.critedge.if.end144_crit_edge, %for.cond.if.end144_crit_edge, %for.cond.preheader.if.end144_crit_edge, %for.cond118.preheader.if.end144_crit_edge
  %netdev_features = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 24
  %59 = ptrtoint ptr %netdev_features to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %netdev_features, align 8
  %and146 = and i64 %60, -1126357073980
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and146)
  %tobool147.not = icmp eq i64 %and146, 0
  br i1 %tobool147.not, label %if.end179, label %do.end163, !prof !203

do.end163:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 963, i32 noundef 9, ptr noundef null) #10
  br label %cleanup814

if.end179:                                        ; preds = %if.end144
  %max_report_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 15
  %61 = ptrtoint ptr %max_report_rates to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %max_report_rates, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp181 = icmp eq i8 %62, 0
  br i1 %cmp181, label %if.then183, label %if.end179.if.end185_crit_edge

if.end179.if.end185_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

if.then183:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 14
  %63 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %max_rates, align 1
  %65 = ptrtoint ptr %max_report_rates to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %max_report_rates, align 2
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.end179.if.end185_crit_edge
  %rx_chains = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 39
  %66 = ptrtoint ptr %rx_chains to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %rx_chains, align 4
  %_oper_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 86
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %monitor_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 148
  %queues265 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 11
  br label %for.body189

for.body189:                                      ; preds = %for.inc335.for.body189_crit_edge, %if.end185
  %band.01139 = phi i32 [ 0, %if.end185 ], [ %inc336, %for.inc335.for.body189_crit_edge ]
  %channels.01138 = phi i32 [ 0, %if.end185 ], [ %channels.1.ph, %for.inc335.for.body189_crit_edge ]
  %max_bitrates.01137 = phi i32 [ 0, %if.end185 ], [ %max_bitrates.2.ph, %for.inc335.for.body189_crit_edge ]
  %supp_ht.0.off01136 = phi i1 [ false, %if.end185 ], [ %supp_ht.1.off0.ph, %for.inc335.for.body189_crit_edge ]
  %supp_vht.0.off01135 = phi i1 [ false, %if.end185 ], [ %supp_vht.1.off0.ph, %for.inc335.for.body189_crit_edge ]
  %supp_he.0.off01134 = phi i1 [ false, %if.end185 ], [ %supp_he.2.off0.ph, %for.inc335.for.body189_crit_edge ]
  %67 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wiphy, align 8
  %arrayidx192 = getelementptr %struct.wiphy, ptr %68, i32 0, i32 53, i32 %band.01139
  %69 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx192, align 4
  %tobool193.not = icmp eq ptr %70, null
  br i1 %tobool193.not, label %for.body189.for.inc335_crit_edge, label %if.end195

for.body189.for.inc335_crit_edge:                 ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc335

if.end195:                                        ; preds = %for.body189
  %71 = ptrtoint ptr %dflt_chandef to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dflt_chandef, align 4
  %tobool196.not = icmp eq ptr %72, null
  br i1 %tobool196.not, label %for.cond198.preheader, label %if.end195.if.end227_crit_edge

if.end195.if.end227_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

for.cond198.preheader:                            ; preds = %if.end195
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 3
  %73 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp1991124 = icmp sgt i32 %74, 0
  br i1 %cmp1991124, label %for.body201.lr.ph, label %for.cond198.preheader.for.end210_crit_edge

for.cond198.preheader.for.end210_crit_edge:       ; preds = %for.cond198.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end210

for.body201.lr.ph:                                ; preds = %for.cond198.preheader
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %70, align 4
  br label %for.body201

for.body201:                                      ; preds = %for.inc208.for.body201_crit_edge, %for.body201.lr.ph
  %i.21125 = phi i32 [ 0, %for.body201.lr.ph ], [ %inc209, %for.inc208.for.body201_crit_edge ]
  %flags = getelementptr %struct.ieee80211_channel, ptr %76, i32 %i.21125, i32 4
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %and204 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %for.body201.for.end210_crit_edge, label %for.inc208

for.body201.for.end210_crit_edge:                 ; preds = %for.body201
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end210

for.inc208:                                       ; preds = %for.body201
  %inc209 = add nuw nsw i32 %i.21125, 1
  %exitcond1153.not = icmp eq i32 %inc209, %74
  br i1 %exitcond1153.not, label %for.inc208.for.end210_crit_edge, label %for.inc208.for.body201_crit_edge

for.inc208.for.body201_crit_edge:                 ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body201

for.inc208.for.end210_crit_edge:                  ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end210

for.end210:                                       ; preds = %for.inc208.for.end210_crit_edge, %for.body201.for.end210_crit_edge, %for.cond198.preheader.for.end210_crit_edge
  %i.2.lcssa = phi i32 [ 0, %for.cond198.preheader.for.end210_crit_edge ], [ %i.21125, %for.body201.for.end210_crit_edge ], [ %74, %for.inc208.for.end210_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.lcssa, i32 %74)
  %cmp212 = icmp eq i32 %i.2.lcssa, %74
  %spec.select = select i1 %cmp212, i32 0, i32 %i.2.lcssa
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %70, align 4
  %arrayidx217 = getelementptr %struct.ieee80211_channel, ptr %80, i32 %spec.select
  call void @cfg80211_chandef_create(ptr noundef nonnull %dflt_chandef, ptr noundef %arrayidx217, i32 noundef 0) #10
  %81 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %use_chanctx, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool219.not = icmp eq i8 %82, 0
  br i1 %tobool219.not, label %land.lhs.true220, label %for.end210.if.end226_crit_edge

for.end210.if.end226_crit_edge:                   ; preds = %for.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end226

land.lhs.true220:                                 ; preds = %for.end210
  %83 = ptrtoint ptr %_oper_chandef to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %_oper_chandef, align 4
  %tobool222.not = icmp eq ptr %84, null
  br i1 %tobool222.not, label %if.then223, label %land.lhs.true220.if.end226_crit_edge

land.lhs.true220.if.end226_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end226

if.then223:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #12
  %85 = call ptr @memcpy(ptr %chandef, ptr %dflt_chandef, i32 28)
  %86 = call ptr @memcpy(ptr %_oper_chandef, ptr %dflt_chandef, i32 28)
  br label %if.end226

if.end226:                                        ; preds = %if.then223, %land.lhs.true220.if.end226_crit_edge, %for.end210.if.end226_crit_edge
  %87 = call ptr @memcpy(ptr %monitor_chandef, ptr %dflt_chandef, i32 28)
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %if.end195.if.end227_crit_edge
  %n_channels228 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 3
  %88 = ptrtoint ptr %n_channels228 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_channels228, align 4
  %add = add i32 %89, %channels.01138
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 4
  %90 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n_bitrates, align 4
  %92 = call i32 @llvm.smax.i32(i32 %max_bitrates.01137, i32 %91)
  br i1 %supp_ht.0.off01136, label %if.end227.lor.end239_crit_edge, label %lor.rhs236

if.end227.lor.end239_crit_edge:                   ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end239

lor.rhs236:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  %ht_supported = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 5, i32 1
  %93 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ht_supported, align 2, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool237 = icmp ne i8 %94, 0
  br label %lor.end239

lor.end239:                                       ; preds = %lor.rhs236, %if.end227.lor.end239_crit_edge
  %95 = phi i1 [ true, %if.end227.lor.end239_crit_edge ], [ %tobool237, %lor.rhs236 ]
  br i1 %supp_vht.0.off01135, label %lor.end239.lor.end245_crit_edge, label %lor.rhs242

lor.end239.lor.end245_crit_edge:                  ; preds = %lor.end239
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end245

lor.rhs242:                                       ; preds = %lor.end239
  call void @__sanitizer_cov_trace_pc() #12
  %vht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 6
  %96 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %vht_cap, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool243 = icmp ne i8 %97, 0
  br label %lor.end245

lor.end245:                                       ; preds = %lor.rhs242, %lor.end239.lor.end245_crit_edge
  %98 = phi i1 [ true, %lor.end239.lor.end245_crit_edge ], [ %tobool243, %lor.rhs242 ]
  %n_iftype_data = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 9
  %99 = ptrtoint ptr %n_iftype_data to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %n_iftype_data, align 4
  %conv248 = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp2491129.not = icmp eq i16 %100, 0
  br i1 %cmp2491129.not, label %lor.end245.for.end262_crit_edge, label %for.body251.lr.ph

lor.end245.for.end262_crit_edge:                  ; preds = %lor.end245
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end262

for.body251.lr.ph:                                ; preds = %lor.end245
  %iftype_data = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 10
  br label %for.body251

for.body251:                                      ; preds = %lor.end258.for.body251_crit_edge, %for.body251.lr.ph
  %i.41131 = phi i32 [ 0, %for.body251.lr.ph ], [ %inc261, %lor.end258.for.body251_crit_edge ]
  %supp_he.1.off01130 = phi i1 [ %supp_he.0.off01134, %for.body251.lr.ph ], [ %105, %lor.end258.for.body251_crit_edge ]
  br i1 %supp_he.1.off01130, label %for.body251.lor.end258_crit_edge, label %lor.rhs255

for.body251.lor.end258_crit_edge:                 ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end258

lor.rhs255:                                       ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %iftype_data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %iftype_data, align 4
  %he_cap = getelementptr %struct.ieee80211_sband_iftype_data, ptr %102, i32 %i.41131, i32 1
  %103 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %he_cap, align 2, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool256 = icmp ne i8 %104, 0
  br label %lor.end258

lor.end258:                                       ; preds = %lor.rhs255, %for.body251.lor.end258_crit_edge
  %105 = phi i1 [ true, %for.body251.lor.end258_crit_edge ], [ %tobool256, %lor.rhs255 ]
  %inc261 = add nuw nsw i32 %i.41131, 1
  %exitcond1154.not = icmp eq i32 %inc261, %conv248
  br i1 %exitcond1154.not, label %lor.end258.for.end262_crit_edge, label %lor.end258.for.body251_crit_edge

lor.end258.for.body251_crit_edge:                 ; preds = %lor.end258
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body251

lor.end258.for.end262_crit_edge:                  ; preds = %lor.end258
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end262

for.end262:                                       ; preds = %lor.end258.for.end262_crit_edge, %lor.end245.for.end262_crit_edge
  %supp_he.1.off0.lcssa = phi i1 [ %supp_he.0.off01134, %lor.end245.for.end262_crit_edge ], [ %105, %lor.end258.for.end262_crit_edge ]
  %106 = ptrtoint ptr %queues265 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %queues265, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %107)
  %cmp267 = icmp ugt i16 %107, 3
  %brmerge = select i1 %cmp267, i1 true, i1 %95
  %not.cmp267 = xor i1 %cmp267, true
  %spec.select1066 = select i1 %98, i1 true, i1 %supp_he.1.off0.lcssa
  %spec.select1068 = select i1 %brmerge, i1 %not.cmp267, i1 %spec.select1066
  br i1 %spec.select1068, label %cleanup332, label %if.end311, !prof !212

if.end311:                                        ; preds = %for.end262
  %ht_supported313 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %ht_supported313 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %ht_supported313, align 2, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool314.not = icmp eq i8 %109, 0
  br i1 %tobool314.not, label %if.end311.for.inc335_crit_edge, label %if.end316

if.end311.for.inc335_crit_edge:                   ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc335

if.end316:                                        ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #12
  %ht_cap312 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 5
  %mcs = getelementptr inbounds %struct.ieee80211_supported_band, ptr %70, i32 0, i32 5, i32 4
  %call318 = call zeroext i8 @ieee80211_mcs_to_chains(ptr noundef %mcs) #10
  %110 = ptrtoint ptr %rx_chains to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %rx_chains, align 4
  %112 = call i8 @llvm.umax.i8(i8 %call318, i8 %111)
  %113 = ptrtoint ptr %rx_chains to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %rx_chains, align 4
  %114 = ptrtoint ptr %ht_cap312 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ht_cap312, align 4
  %116 = or i16 %115, 12
  store i16 %116, ptr %ht_cap312, align 4
  br label %for.inc335

cleanup332:                                       ; preds = %for.end262
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1028, i32 noundef 9, ptr noundef null) #10
  br label %cleanup814

for.inc335:                                       ; preds = %if.end316, %if.end311.for.inc335_crit_edge, %for.body189.for.inc335_crit_edge
  %supp_he.2.off0.ph = phi i1 [ %supp_he.1.off0.lcssa, %if.end311.for.inc335_crit_edge ], [ %supp_he.0.off01134, %for.body189.for.inc335_crit_edge ], [ %supp_he.1.off0.lcssa, %if.end316 ]
  %supp_vht.1.off0.ph = phi i1 [ %98, %if.end311.for.inc335_crit_edge ], [ %supp_vht.0.off01135, %for.body189.for.inc335_crit_edge ], [ %98, %if.end316 ]
  %supp_ht.1.off0.ph = phi i1 [ %95, %if.end311.for.inc335_crit_edge ], [ %supp_ht.0.off01136, %for.body189.for.inc335_crit_edge ], [ %95, %if.end316 ]
  %max_bitrates.2.ph = phi i32 [ %92, %if.end311.for.inc335_crit_edge ], [ %max_bitrates.01137, %for.body189.for.inc335_crit_edge ], [ %92, %if.end316 ]
  %channels.1.ph = phi i32 [ %add, %if.end311.for.inc335_crit_edge ], [ %channels.01138, %for.body189.for.inc335_crit_edge ], [ %add, %if.end316 ]
  %inc336 = add nuw nsw i32 %band.01139, 1
  %exitcond1155.not = icmp eq i32 %inc336, 6
  br i1 %exitcond1155.not, label %for.end337, label %for.inc335.for.body189_crit_edge

for.inc335.for.body189_crit_edge:                 ; preds = %for.inc335
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body189

for.end337:                                       ; preds = %for.inc335
  %117 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wiphy, align 8
  %interface_modes340 = getelementptr inbounds %struct.wiphy, ptr %118, i32 0, i32 9
  %119 = ptrtoint ptr %interface_modes340 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %interface_modes340, align 4
  %121 = and i16 %120, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool343.not = icmp eq i16 %121, 0
  br i1 %tobool343.not, label %for.end337.if.end357_crit_edge, label %land.lhs.true344

for.end337.if.end357_crit_edge:                   ; preds = %for.end337
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end357

land.lhs.true344:                                 ; preds = %for.end337
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %flags.i, align 4
  %124 = and i32 %123, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.i1072.not = icmp eq i32 %124, 0
  br i1 %tobool.i1072.not, label %if.then347, label %land.lhs.true344.if.end357_crit_edge

land.lhs.true344.if.end357_crit_edge:             ; preds = %land.lhs.true344
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end357

if.then347:                                       ; preds = %land.lhs.true344
  call void @__sanitizer_cov_trace_pc() #12
  %125 = or i16 %120, 16
  %126 = ptrtoint ptr %interface_modes340 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %interface_modes340, align 4
  %127 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %wiphy, align 8
  %software_iftypes = getelementptr inbounds %struct.wiphy, ptr %128, i32 0, i32 7
  %129 = ptrtoint ptr %software_iftypes to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %software_iftypes, align 8
  %131 = or i16 %130, 16
  store i16 %131, ptr %software_iftypes, align 8
  br label %if.end357

if.end357:                                        ; preds = %if.then347, %land.lhs.true344.if.end357_crit_edge, %for.end337.if.end357_crit_edge
  %132 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wiphy, align 8
  %interface_modes359 = getelementptr inbounds %struct.wiphy, ptr %133, i32 0, i32 9
  %134 = ptrtoint ptr %interface_modes359 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %interface_modes359, align 4
  %136 = or i16 %135, 64
  store i16 %136, ptr %interface_modes359, align 4
  %137 = load ptr, ptr %wiphy, align 8
  %software_iftypes364 = getelementptr inbounds %struct.wiphy, ptr %137, i32 0, i32 7
  %138 = ptrtoint ptr %software_iftypes364 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %software_iftypes364, align 8
  %140 = or i16 %139, 64
  store i16 %140, ptr %software_iftypes364, align 8
  %141 = load ptr, ptr %wiphy, align 8
  %n_iface_combinations370 = getelementptr inbounds %struct.wiphy, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %n_iface_combinations370 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %n_iface_combinations370, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp3711143 = icmp sgt i32 %143, 0
  br i1 %cmp3711143, label %for.body373.lr.ph, label %if.end357.if.end8.i.i_crit_edge

if.end357.if.end8.i.i_crit_edge:                  ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

for.body373.lr.ph:                                ; preds = %if.end357
  %iface_combinations375 = getelementptr inbounds %struct.wiphy, ptr %141, i32 0, i32 5
  %144 = ptrtoint ptr %iface_combinations375 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %iface_combinations375, align 16
  br label %for.body373

for.body373:                                      ; preds = %for.inc401.critedge.for.body373_crit_edge, %for.body373.lr.ph
  %i.51144 = phi i32 [ 0, %for.body373.lr.ph ], [ %inc402, %for.inc401.critedge.for.body373_crit_edge ]
  %n_limits = getelementptr %struct.ieee80211_iface_combination, ptr %145, i32 %i.51144, i32 3
  %146 = ptrtoint ptr %n_limits to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %n_limits, align 2
  %conv378 = zext i8 %147 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp3791140.not = icmp eq i8 %147, 0
  br i1 %cmp3791140.not, label %for.body373.for.inc401.critedge_crit_edge, label %for.body381.lr.ph

for.body373.for.inc401.critedge_crit_edge:        ; preds = %for.body373
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc401.critedge

for.body381.lr.ph:                                ; preds = %for.body373
  %arrayidx376 = getelementptr %struct.ieee80211_iface_combination, ptr %145, i32 %i.51144
  %148 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx376, align 4
  br label %for.body381

for.body381:                                      ; preds = %for.inc394.for.body381_crit_edge, %for.body381.lr.ph
  %j.01141 = phi i32 [ 0, %for.body381.lr.ph ], [ %inc395, %for.inc394.for.body381_crit_edge ]
  %types = getelementptr %struct.ieee80211_iface_limit, ptr %149, i32 %j.01141, i32 1
  %150 = ptrtoint ptr %types to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %types, align 2
  %152 = and i16 %151, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool385.not = icmp eq i16 %152, 0
  br i1 %tobool385.not, label %for.body381.for.inc394_crit_edge, label %land.lhs.true386

for.body381.for.inc394_crit_edge:                 ; preds = %for.body381
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc394

land.lhs.true386:                                 ; preds = %for.body381
  %arrayidx382 = getelementptr %struct.ieee80211_iface_limit, ptr %149, i32 %j.01141
  %153 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx382, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %154)
  %cmp390 = icmp ugt i16 %154, 1
  br i1 %cmp390, label %land.lhs.true386.cleanup814_crit_edge, label %land.lhs.true386.for.inc394_crit_edge

land.lhs.true386.for.inc394_crit_edge:            ; preds = %land.lhs.true386
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc394

land.lhs.true386.cleanup814_crit_edge:            ; preds = %land.lhs.true386
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

for.inc394:                                       ; preds = %land.lhs.true386.for.inc394_crit_edge, %for.body381.for.inc394_crit_edge
  %inc395 = add nuw nsw i32 %j.01141, 1
  %exitcond1156.not = icmp eq i32 %inc395, %conv378
  br i1 %exitcond1156.not, label %for.inc394.for.inc401.critedge_crit_edge, label %for.inc394.for.body381_crit_edge

for.inc394.for.body381_crit_edge:                 ; preds = %for.inc394
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body381

for.inc394.for.inc401.critedge_crit_edge:         ; preds = %for.inc394
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc401.critedge

for.inc401.critedge:                              ; preds = %for.inc394.for.inc401.critedge_crit_edge, %for.body373.for.inc401.critedge_crit_edge
  %inc402 = add nuw nsw i32 %i.51144, 1
  %exitcond1157.not = icmp eq i32 %inc402, %143
  br i1 %exitcond1157.not, label %for.inc401.critedge.if.end8.i.i_crit_edge, label %for.inc401.critedge.for.body373_crit_edge

for.inc401.critedge.for.body373_crit_edge:        ; preds = %for.inc401.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body373

for.inc401.critedge.if.end8.i.i_crit_edge:        ; preds = %for.inc401.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.inc401.critedge.if.end8.i.i_crit_edge, %if.end357.if.end8.i.i_crit_edge
  %mul = shl i32 %channels.1.ph, 2
  %add404 = add i32 %mul, 120
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add404, i32 noundef 3520) #14
  %int_scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 69
  %155 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call9.i.i, ptr %int_scan_req, align 4
  %tobool407.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool407.not, label %if.end8.i.i.cleanup814_crit_edge, label %for.body413.preheader

if.end8.i.i.cleanup814_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

for.body413.preheader:                            ; preds = %if.end8.i.i
  %156 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wiphy, align 8
  %arrayidx417 = getelementptr %struct.wiphy, ptr %157, i32 0, i32 53, i32 0
  %158 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx417, align 4
  %tobool418.not = icmp eq ptr %159, null
  br i1 %tobool418.not, label %for.body413.preheader.for.inc423_crit_edge, label %if.end420

for.body413.preheader.for.inc423_crit_edge:       ; preds = %for.body413.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc423

if.end420:                                        ; preds = %for.body413.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %int_scan_req, align 4
  %arrayidx422 = getelementptr %struct.cfg80211_scan_request, ptr %161, i32 0, i32 9, i32 0
  %162 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %arrayidx422, align 4
  br label %for.inc423

for.inc423:                                       ; preds = %if.end420, %for.body413.preheader.for.inc423_crit_edge
  %163 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %wiphy, align 8
  %arrayidx417.1 = getelementptr %struct.wiphy, ptr %164, i32 0, i32 53, i32 1
  %165 = ptrtoint ptr %arrayidx417.1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx417.1, align 4
  %tobool418.not.1 = icmp eq ptr %166, null
  br i1 %tobool418.not.1, label %for.inc423.for.inc423.1_crit_edge, label %if.end420.1

for.inc423.for.inc423.1_crit_edge:                ; preds = %for.inc423
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc423.1

if.end420.1:                                      ; preds = %for.inc423
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %int_scan_req, align 4
  %arrayidx422.1 = getelementptr %struct.cfg80211_scan_request, ptr %168, i32 0, i32 9, i32 1
  %169 = ptrtoint ptr %arrayidx422.1 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %arrayidx422.1, align 4
  br label %for.inc423.1

for.inc423.1:                                     ; preds = %if.end420.1, %for.inc423.for.inc423.1_crit_edge
  %170 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wiphy, align 8
  %arrayidx417.2 = getelementptr %struct.wiphy, ptr %171, i32 0, i32 53, i32 2
  %172 = ptrtoint ptr %arrayidx417.2 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx417.2, align 4
  %tobool418.not.2 = icmp eq ptr %173, null
  br i1 %tobool418.not.2, label %for.inc423.1.for.inc423.2_crit_edge, label %if.end420.2

for.inc423.1.for.inc423.2_crit_edge:              ; preds = %for.inc423.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc423.2

if.end420.2:                                      ; preds = %for.inc423.1
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %int_scan_req, align 4
  %arrayidx422.2 = getelementptr %struct.cfg80211_scan_request, ptr %175, i32 0, i32 9, i32 2
  %176 = ptrtoint ptr %arrayidx422.2 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %arrayidx422.2, align 4
  br label %for.inc423.2

for.inc423.2:                                     ; preds = %if.end420.2, %for.inc423.1.for.inc423.2_crit_edge
  %177 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wiphy, align 8
  %arrayidx417.3 = getelementptr %struct.wiphy, ptr %178, i32 0, i32 53, i32 3
  %179 = ptrtoint ptr %arrayidx417.3 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx417.3, align 4
  %tobool418.not.3 = icmp eq ptr %180, null
  br i1 %tobool418.not.3, label %for.inc423.2.for.inc423.3_crit_edge, label %if.end420.3

for.inc423.2.for.inc423.3_crit_edge:              ; preds = %for.inc423.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc423.3

if.end420.3:                                      ; preds = %for.inc423.2
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %int_scan_req, align 4
  %arrayidx422.3 = getelementptr %struct.cfg80211_scan_request, ptr %182, i32 0, i32 9, i32 3
  %183 = ptrtoint ptr %arrayidx422.3 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -1, ptr %arrayidx422.3, align 4
  br label %for.inc423.3

for.inc423.3:                                     ; preds = %if.end420.3, %for.inc423.2.for.inc423.3_crit_edge
  %184 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wiphy, align 8
  %arrayidx417.4 = getelementptr %struct.wiphy, ptr %185, i32 0, i32 53, i32 4
  %186 = ptrtoint ptr %arrayidx417.4 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx417.4, align 4
  %tobool418.not.4 = icmp eq ptr %187, null
  br i1 %tobool418.not.4, label %for.inc423.3.for.inc423.4_crit_edge, label %if.end420.4

for.inc423.3.for.inc423.4_crit_edge:              ; preds = %for.inc423.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc423.4

if.end420.4:                                      ; preds = %for.inc423.3
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %int_scan_req, align 4
  %arrayidx422.4 = getelementptr %struct.cfg80211_scan_request, ptr %189, i32 0, i32 9, i32 4
  %190 = ptrtoint ptr %arrayidx422.4 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %arrayidx422.4, align 4
  br label %for.inc423.4

for.inc423.4:                                     ; preds = %if.end420.4, %for.inc423.3.for.inc423.4_crit_edge
  %191 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %wiphy, align 8
  %arrayidx417.5 = getelementptr %struct.wiphy, ptr %192, i32 0, i32 53, i32 5
  %193 = ptrtoint ptr %arrayidx417.5 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx417.5, align 4
  %tobool418.not.5 = icmp eq ptr %194, null
  br i1 %tobool418.not.5, label %for.inc423.4.for.inc423.5_crit_edge, label %if.end420.5

for.inc423.4.for.inc423.5_crit_edge:              ; preds = %for.inc423.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc423.5

if.end420.5:                                      ; preds = %for.inc423.4
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %int_scan_req, align 4
  %arrayidx422.5 = getelementptr %struct.cfg80211_scan_request, ptr %196, i32 0, i32 9, i32 5
  %197 = ptrtoint ptr %arrayidx422.5 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1, ptr %arrayidx422.5, align 4
  br label %for.inc423.5

for.inc423.5:                                     ; preds = %if.end420.5, %for.inc423.4.for.inc423.5_crit_edge
  %198 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wiphy, align 8
  %interface_modes428 = getelementptr inbounds %struct.wiphy, ptr %199, i32 0, i32 9
  %200 = ptrtoint ptr %interface_modes428 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %interface_modes428, align 4
  %202 = and i16 %201, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool431.not = icmp eq i16 %202, 0
  br i1 %tobool431.not, label %for.inc423.5.if.end437_crit_edge, label %if.then432

for.inc423.5.if.end437_crit_edge:                 ; preds = %for.inc423.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end437

if.then432:                                       ; preds = %for.inc423.5
  call void @__sanitizer_cov_trace_pc() #12
  %flags435 = getelementptr inbounds %struct.wiphy, ptr %199, i32 0, i32 11
  %203 = ptrtoint ptr %flags435 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %flags435, align 32
  %or436 = or i32 %204, 1024
  store i32 %or436, ptr %flags435, align 32
  br label %if.end437

if.end437:                                        ; preds = %if.then432, %for.inc423.5.if.end437_crit_edge
  %205 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %wiphy, align 8
  %flags440 = getelementptr inbounds %struct.wiphy, ptr %206, i32 0, i32 11
  %207 = ptrtoint ptr %flags440 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %flags440, align 32
  %or441 = or i32 %208, 128
  store i32 %or441, ptr %flags440, align 32
  %209 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %flags.i, align 4
  %211 = and i32 %210, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool.i1074.not = icmp eq i32 %211, 0
  br i1 %tobool.i1074.not, label %if.else447, label %if.then444

if.then444:                                       ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #12
  %212 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %wiphy, align 8
  %signal_type = getelementptr inbounds %struct.wiphy, ptr %213, i32 0, i32 16
  %214 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %signal_type, align 8
  br label %if.end460

if.else447:                                       ; preds = %if.end437
  %215 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %flags.i, align 4
  %217 = and i32 %216, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.i1076.not = icmp eq i32 %217, 0
  br i1 %tobool.i1076.not, label %if.else447.if.end460_crit_edge, label %if.then450

if.else447.if.end460_crit_edge:                   ; preds = %if.else447
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end460

if.then450:                                       ; preds = %if.else447
  %218 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %wiphy, align 8
  %signal_type453 = getelementptr inbounds %struct.wiphy, ptr %219, i32 0, i32 16
  %220 = ptrtoint ptr %signal_type453 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 2, ptr %signal_type453, align 8
  %max_signal = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 13
  %221 = ptrtoint ptr %max_signal to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %max_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %222)
  %cmp455 = icmp slt i8 %222, 1
  br i1 %cmp455, label %if.then450.fail_workqueue_crit_edge, label %if.then450.if.end460_crit_edge

if.then450.if.end460_crit_edge:                   ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end460

if.then450.fail_workqueue_crit_edge:              ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_workqueue

if.end460:                                        ; preds = %if.then450.if.end460_crit_edge, %if.else447.if.end460_crit_edge, %if.then444
  %ops461 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 8
  %223 = ptrtoint ptr %ops461 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ops461, align 4
  %set_key = getelementptr inbounds %struct.ieee80211_ops, ptr %224, i32 0, i32 17
  %225 = ptrtoint ptr %set_key to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %set_key, align 4
  %tobool462.not = icmp eq ptr %226, null
  br i1 %tobool462.not, label %if.then463, label %if.end460.if.end468_crit_edge

if.end460.if.end468_crit_edge:                    ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end468

if.then463:                                       ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %wiphy, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %228, i32 0, i32 14, i32 3
  %229 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = or i8 %230, -128
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %231 = load ptr, ptr %wiphy, align 8
  %arrayidx.i1077 = getelementptr %struct.wiphy, ptr %231, i32 0, i32 14, i32 4
  %232 = ptrtoint ptr %arrayidx.i1077 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i1077, align 1
  %conv1.i1078 = or i8 %233, 16
  store i8 %conv1.i1078, ptr %arrayidx.i1077, align 1
  br label %if.end468

if.end468:                                        ; preds = %if.then463, %if.end460.if.end468_crit_edge
  %234 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %wiphy, align 8
  %interface_modes471 = getelementptr inbounds %struct.wiphy, ptr %235, i32 0, i32 9
  %236 = ptrtoint ptr %interface_modes471 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %interface_modes471, align 4
  %238 = and i16 %237, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool474.not = icmp eq i16 %238, 0
  br i1 %tobool474.not, label %if.end468.if.end478_crit_edge, label %if.then475

if.end468.if.end478_crit_edge:                    ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end478

if.then475:                                       ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i1079 = getelementptr %struct.wiphy, ptr %235, i32 0, i32 14, i32 5
  %239 = ptrtoint ptr %arrayidx.i1079 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx.i1079, align 1
  %conv1.i1080 = or i8 %240, 16
  store i8 %conv1.i1080, ptr %arrayidx.i1079, align 1
  br label %if.end478

if.end478:                                        ; preds = %if.then475, %if.end468.if.end478_crit_edge
  %scan_ies_len = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 75
  %spec.select1067.v = select i1 %supp_ht.1.off0.ph, i32 35, i32 7
  %spec.select1067 = add i32 %max_bitrates.2.ph, %spec.select1067.v
  %add489 = add i32 %spec.select1067, 14
  %spec.select1110 = select i1 %supp_vht.1.off0.ph, i32 %add489, i32 %spec.select1067
  %241 = ptrtoint ptr %scan_ies_len to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %spec.select1110, ptr %scan_ies_len, align 4
  br i1 %supp_he.2.off0.ph, label %if.then492, label %if.end478.if.end495_crit_edge

if.end478.if.end495_crit_edge:                    ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end495

if.then492:                                       ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #12
  %242 = ptrtoint ptr %scan_ies_len to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %scan_ies_len, align 4
  %add494 = add i32 %243, 57
  store i32 %add494, ptr %scan_ies_len, align 4
  br label %if.end495

if.end495:                                        ; preds = %if.then492, %if.end478.if.end495_crit_edge
  %244 = ptrtoint ptr %ops461 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ops461, align 4
  %hw_scan = getelementptr inbounds %struct.ieee80211_ops, ptr %245, i32 0, i32 21
  %246 = ptrtoint ptr %hw_scan to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hw_scan, align 4
  %tobool497.not = icmp eq ptr %247, null
  br i1 %tobool497.not, label %if.then498, label %if.end495.if.end503_crit_edge

if.end495.if.end503_crit_edge:                    ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end503

if.then498:                                       ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #12
  %248 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %wiphy, align 8
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %249, i32 0, i32 18
  %250 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 4, ptr %max_scan_ssids, align 32
  %251 = load ptr, ptr %wiphy, align 8
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %251, i32 0, i32 22
  %252 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 2304, ptr %max_scan_ie_len, align 4
  br label %if.end503

if.end503:                                        ; preds = %if.then498, %if.end495.if.end503_crit_edge
  %253 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %wiphy, align 8
  %max_scan_ie_len506 = getelementptr inbounds %struct.wiphy, ptr %254, i32 0, i32 22
  %255 = ptrtoint ptr %max_scan_ie_len506 to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %max_scan_ie_len506, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %tobool507.not = icmp eq i16 %256, 0
  br i1 %tobool507.not, label %if.end503.if.end515_crit_edge, label %if.then508

if.end503.if.end515_crit_edge:                    ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end515

if.then508:                                       ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #12
  %257 = ptrtoint ptr %scan_ies_len to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %scan_ies_len, align 4
  %259 = trunc i32 %258 to i16
  %conv514 = sub i16 %256, %259
  %260 = ptrtoint ptr %max_scan_ie_len506 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %conv514, ptr %max_scan_ie_len506, align 4
  br label %if.end515

if.end515:                                        ; preds = %if.then508, %if.end503.if.end515_crit_edge
  %cipher_schemes = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 28
  %261 = ptrtoint ptr %cipher_schemes to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %cipher_schemes, align 4
  %n_cipher_schemes = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 27
  %263 = ptrtoint ptr %n_cipher_schemes to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %n_cipher_schemes, align 2
  %conv519 = zext i8 %264 to i32
  %call520 = call zeroext i1 @ieee80211_cs_list_valid(ptr noundef %262, i32 noundef %conv519) #10
  br i1 %call520, label %if.end554, label %do.end538, !prof !203

do.end538:                                        ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1160, i32 noundef 9, ptr noundef null) #10
  br label %fail_workqueue

if.end554:                                        ; preds = %if.end515
  %call555 = call fastcc i32 @ieee80211_init_cipher_suites(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call555)
  %cmp556 = icmp slt i32 %call555, 0
  br i1 %cmp556, label %if.end554.fail_workqueue_crit_edge, label %if.end559

if.end554.fail_workqueue_crit_edge:               ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_workqueue

if.end559:                                        ; preds = %if.end554
  %265 = ptrtoint ptr %ops461 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ops461, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %266, i32 0, i32 57
  %267 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %remain_on_channel, align 4
  %tobool561.not = icmp eq ptr %268, null
  br i1 %tobool561.not, label %if.then562, label %if.end559.if.end565_crit_edge

if.end559.if.end565_crit_edge:                    ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end565

if.then562:                                       ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #12
  %269 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %wiphy, align 8
  %max_remain_on_channel_duration = getelementptr inbounds %struct.wiphy, ptr %270, i32 0, i32 42
  %271 = ptrtoint ptr %max_remain_on_channel_duration to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 5000, ptr %max_remain_on_channel_duration, align 8
  br label %if.end565

if.end565:                                        ; preds = %if.then562, %if.end559.if.end565_crit_edge
  %272 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %wiphy, align 8
  %flags568 = getelementptr inbounds %struct.wiphy, ptr %273, i32 0, i32 11
  %274 = ptrtoint ptr %flags568 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %flags568, align 32
  %and569 = and i32 %275, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and569)
  %tobool570.not = icmp eq i32 %and569, 0
  br i1 %tobool570.not, label %if.end565.if.end576_crit_edge, label %if.then571

if.end565.if.end576_crit_edge:                    ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end576

if.then571:                                       ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #12
  %or575 = or i32 %275, 65536
  %276 = ptrtoint ptr %flags568 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %or575, ptr %flags568, align 32
  br label %if.end576

if.end576:                                        ; preds = %if.then571, %if.end565.if.end576_crit_edge
  %277 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load volatile i32, ptr %flags.i, align 4
  %279 = and i32 %278, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool.i1082.not = icmp eq i32 %279, 0
  br i1 %tobool.i1082.not, label %if.end576.if.end584_crit_edge, label %if.then579

if.end576.if.end584_crit_edge:                    ; preds = %if.end576
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end584

if.then579:                                       ; preds = %if.end576
  call void @__sanitizer_cov_trace_pc() #12
  %ext_capa = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 149
  %280 = ptrtoint ptr %ext_capa to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %ext_capa, align 4
  %282 = or i8 %281, 4
  store i8 %282, ptr %ext_capa, align 4
  br label %if.end584

if.end584:                                        ; preds = %if.then579, %if.end576.if.end584_crit_edge
  %283 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load volatile i32, ptr %arrayidx.i.i, align 4
  %285 = and i32 %284, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool.i1085.not = icmp eq i32 %285, 0
  br i1 %tobool.i1085.not, label %if.end584.if.end605_crit_edge, label %if.then587

if.end584.if.end605_crit_edge:                    ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end605

if.then587:                                       ; preds = %if.end584
  %286 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %wiphy, align 8
  %support_mbssid = getelementptr inbounds %struct.wiphy, ptr %287, i32 0, i32 77
  %288 = ptrtoint ptr %support_mbssid to i32
  call void @__asan_load1_noabort(i32 %288)
  %bf.load = load i8, ptr %support_mbssid, align 32
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %support_mbssid, align 32
  %289 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load volatile i32, ptr %arrayidx.i.i, align 4
  %291 = and i32 %290, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool.i1088.not = icmp eq i32 %291, 0
  br i1 %tobool.i1088.not, label %if.else598, label %if.then592

if.then592:                                       ; preds = %if.then587
  call void @__sanitizer_cov_trace_pc() #12
  %292 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %wiphy, align 8
  %support_only_he_mbssid = getelementptr inbounds %struct.wiphy, ptr %293, i32 0, i32 77
  %294 = ptrtoint ptr %support_only_he_mbssid to i32
  call void @__asan_load1_noabort(i32 %294)
  %bf.load595 = load i8, ptr %support_only_he_mbssid, align 32
  %bf.set597 = or i8 %bf.load595, 64
  store i8 %bf.set597, ptr %support_only_he_mbssid, align 32
  br label %if.end605

if.else598:                                       ; preds = %if.then587
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx600 = getelementptr %struct.ieee80211_local, ptr %hw, i32 0, i32 149, i32 2
  %295 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx600, align 2
  %297 = or i8 %296, 64
  store i8 %297, ptr %arrayidx600, align 2
  br label %if.end605

if.end605:                                        ; preds = %if.else598, %if.then592, %if.end584.if.end605_crit_edge
  %298 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %wiphy, align 8
  %max_num_csa_counters = getelementptr inbounds %struct.wiphy, ptr %299, i32 0, i32 70
  %300 = ptrtoint ptr %max_num_csa_counters to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 2, ptr %max_num_csa_counters, align 2
  %301 = ptrtoint ptr %queues265 to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %queues265, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %302)
  %cmp610 = icmp ugt i16 %302, 16
  br i1 %cmp610, label %if.then612, label %if.end605.if.end614_crit_edge

if.end605.if.end614_crit_edge:                    ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end614

if.then612:                                       ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #12
  %303 = ptrtoint ptr %queues265 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 16, ptr %queues265, align 4
  br label %if.end614

if.end614:                                        ; preds = %if.then612, %if.end605.if.end614_crit_edge
  %304 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %305, i32 0, i32 56, i32 3
  %306 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %307, null
  br i1 %tobool.not.i.i, label %if.end.i.i1089, label %if.end614.wiphy_name.exit_crit_edge

if.end614.wiphy_name.exit_crit_edge:              ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #12
  br label %wiphy_name.exit

if.end.i.i1089:                                   ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %305, i32 0, i32 56
  %308 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i1089, %if.end614.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %309, %if.end.i.i1089 ], [ %307, %if.end614.wiphy_name.exit_crit_edge ]
  %call618 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.40, i32 noundef 655362, i32 noundef 1, ptr noundef %retval.0.i.i) #10
  %workqueue = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 9
  %310 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %call618, ptr %workqueue, align 8
  %tobool620.not = icmp eq ptr %call618, null
  br i1 %tobool620.not, label %wiphy_name.exit.fail_workqueue_crit_edge, label %if.end622

wiphy_name.exit.fail_workqueue_crit_edge:         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_workqueue

if.end622:                                        ; preds = %wiphy_name.exit
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 5
  %311 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %extra_tx_headroom, align 4
  %313 = call i32 @llvm.umax.i32(i32 %312, i32 16)
  %tx_headroom = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 41
  %314 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %tx_headroom, align 8
  %max_listen_interval = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 12
  %315 = ptrtoint ptr %max_listen_interval to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %max_listen_interval, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %316)
  %cmp633 = icmp eq i16 %316, 0
  br i1 %cmp633, label %if.then635, label %if.end622.if.end638_crit_edge

if.end622.if.end638_crit_edge:                    ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end638

if.then635:                                       ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #12
  %317 = ptrtoint ptr %max_listen_interval to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 5, ptr %max_listen_interval, align 2
  br label %if.end638

if.end638:                                        ; preds = %if.then635, %if.end622.if.end638_crit_edge
  %318 = ptrtoint ptr %max_listen_interval to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %max_listen_interval, align 2
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 3
  %320 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %319, ptr %listen_interval, align 4
  %dynamic_ps_forced_timeout = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 132
  %321 = ptrtoint ptr %dynamic_ps_forced_timeout to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 -1, ptr %dynamic_ps_forced_timeout, align 8
  %max_nan_de_entries = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 29
  %322 = ptrtoint ptr %max_nan_de_entries to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %max_nan_de_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool644.not = icmp eq i8 %323, 0
  br i1 %tobool644.not, label %if.then645, label %if.end638.if.end648_crit_edge

if.end638.if.end648_crit_edge:                    ; preds = %if.end638
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end648

if.then645:                                       ; preds = %if.end638
  call void @__sanitizer_cov_trace_pc() #12
  %324 = ptrtoint ptr %max_nan_de_entries to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 -1, ptr %max_nan_de_entries, align 8
  br label %if.end648

if.end648:                                        ; preds = %if.then645, %if.end638.if.end648_crit_edge
  %weight_multiplier = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 31
  %325 = ptrtoint ptr %weight_multiplier to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %weight_multiplier, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %tobool650.not = icmp eq i8 %326, 0
  br i1 %tobool650.not, label %if.then651, label %if.end648.if.end654_crit_edge

if.end648.if.end654_crit_edge:                    ; preds = %if.end648
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end654

if.then651:                                       ; preds = %if.end648
  call void @__sanitizer_cov_trace_pc() #12
  %327 = ptrtoint ptr %weight_multiplier to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 1, ptr %weight_multiplier, align 2
  br label %if.end654

if.end654:                                        ; preds = %if.then651, %if.end648.if.end654_crit_edge
  call void @ieee80211_wep_init(ptr noundef %hw) #10
  %328 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 4, ptr %hw, align 8
  call void @ieee80211_led_init(ptr noundef %hw) #10
  %call658 = call i32 @ieee80211_txq_setup_flows(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call658)
  %tobool659.not = icmp eq i32 %call658, 0
  br i1 %tobool659.not, label %if.end661, label %if.end654.fail_flows_crit_edge

if.end654.fail_flows_crit_edge:                   ; preds = %if.end654
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_flows

if.end661:                                        ; preds = %if.end654
  call void @rtnl_lock() #10
  %rate_control_algorithm = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 2
  %329 = ptrtoint ptr %rate_control_algorithm to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %rate_control_algorithm, align 4
  %call662 = call i32 @ieee80211_init_rate_ctrl_alg(ptr noundef %hw, ptr noundef %330) #10
  call void @rtnl_unlock() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call662)
  %cmp663 = icmp slt i32 %call662, 0
  br i1 %cmp663, label %do.end668, label %if.end671

do.end668:                                        ; preds = %if.end661
  call void @__sanitizer_cov_trace_pc() #12
  %331 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %332, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %fail_flows

if.end671:                                        ; preds = %if.end661
  %rate_ctrl = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 58
  %333 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %rate_ctrl, align 8
  %tobool672.not = icmp eq ptr %334, null
  br i1 %tobool672.not, label %if.end671.do.end684_crit_edge, label %if.then673

if.end671.do.end684_crit_edge:                    ; preds = %if.end671
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end684

if.then673:                                       ; preds = %if.end671
  call void @_clear_bit(i32 noundef 43, ptr noundef %flags.i) #10
  %335 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %rate_ctrl, align 8
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %338, align 4
  %and677 = and i32 %340, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and677)
  %tobool678.not = icmp eq i32 %and677, 0
  br i1 %tobool678.not, label %if.then673.do.end684_crit_edge, label %if.then679

if.then673.do.end684_crit_edge:                   ; preds = %if.then673
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end684

if.then679:                                       ; preds = %if.then673
  call void @__sanitizer_cov_trace_pc() #12
  %341 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %342, 2048
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  br label %do.end684

do.end684:                                        ; preds = %if.then679, %if.then673.do.end684_crit_edge, %if.end671.do.end684_crit_edge
  %sband_allocated = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 40
  br label %for.body688

for.body688:                                      ; preds = %for.inc760.for.body688_crit_edge, %do.end684
  %band.21147 = phi i32 [ 0, %do.end684 ], [ %inc761, %for.inc760.for.body688_crit_edge ]
  %343 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load volatile i32, ptr %arrayidx.i.i, align 4
  %345 = and i32 %344, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool.i1092 = icmp ne i32 %345, 0
  %346 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %wiphy, align 8
  %arrayidx695 = getelementptr %struct.wiphy, ptr %347, i32 0, i32 53, i32 %band.21147
  %348 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx695, align 4
  %tobool696.not = icmp eq ptr %349, null
  br i1 %tobool696.not, label %for.body688.for.inc760_crit_edge, label %lor.lhs.false697

for.body688.for.inc760_crit_edge:                 ; preds = %for.body688
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc760

lor.lhs.false697:                                 ; preds = %for.body688
  %vht_cap698 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %349, i32 0, i32 6
  %350 = ptrtoint ptr %vht_cap698 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %vht_cap698, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool700.not = icmp eq i8 %351, 0
  br i1 %tobool700.not, label %lor.lhs.false697.for.inc760_crit_edge, label %if.end702

lor.lhs.false697.for.inc760_crit_edge:            ; preds = %lor.lhs.false697
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc760

if.end702:                                        ; preds = %lor.lhs.false697
  %tx_highest = getelementptr inbounds %struct.ieee80211_supported_band, ptr %349, i32 0, i32 6, i32 2, i32 3
  %352 = ptrtoint ptr %tx_highest to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %tx_highest, align 2
  %354 = and i16 %353, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %354)
  %355 = icmp eq i16 %354, 0
  %cmp716 = xor i1 %tobool.i1092, %355
  br i1 %cmp716, label %if.end702.for.inc760_crit_edge, label %if.end719

if.end702.for.inc760_crit_edge:                   ; preds = %if.end702
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc760

if.end719:                                        ; preds = %if.end702
  %call720 = call ptr @kmemdup(ptr noundef nonnull %349, i32 noundef 92, i32 noundef 3264) #10
  %tobool721.not = icmp eq ptr %call720, null
  br i1 %tobool721.not, label %if.end719.fail_flows_crit_edge, label %do.body724

if.end719.fail_flows_crit_edge:                   ; preds = %if.end719
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_flows

do.body724:                                       ; preds = %if.end719
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_register_hw.__UNIQUE_ID_ddebug982, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ieee80211_register_hw, %do.end742)) #10
          to label %if.then737 [label %do.end742], !srcloc !207

if.then737:                                       ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #12
  %356 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %wiphy, align 8
  %dev739 = getelementptr inbounds %struct.wiphy, ptr %357, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ieee80211_register_hw.__UNIQUE_ID_ddebug982, ptr noundef %dev739, ptr noundef nonnull @.str.45, i32 noundef %band.21147) #10
  br label %do.end742

do.end742:                                        ; preds = %if.then737, %do.body724
  %tx_highest745 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call720, i32 0, i32 6, i32 2, i32 3
  %358 = ptrtoint ptr %tx_highest745 to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %tx_highest745, align 2
  %360 = xor i16 %359, 32
  store i16 %360, ptr %tx_highest745, align 2
  %361 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %wiphy, align 8
  %arrayidx751 = getelementptr %struct.wiphy, ptr %362, i32 0, i32 53, i32 %band.21147
  %363 = ptrtoint ptr %arrayidx751 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %call720, ptr %arrayidx751, align 4
  %shl = shl nuw nsw i32 1, %band.21147
  %364 = ptrtoint ptr %sband_allocated to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %sband_allocated, align 1
  %366 = trunc i32 %shl to i8
  %conv754 = or i8 %365, %366
  store i8 %conv754, ptr %sband_allocated, align 1
  br label %for.inc760

for.inc760:                                       ; preds = %do.end742, %if.end702.for.inc760_crit_edge, %lor.lhs.false697.for.inc760_crit_edge, %for.body688.for.inc760_crit_edge
  %inc761 = add nuw nsw i32 %band.21147, 1
  %exitcond1159.not = icmp eq i32 %inc761, 6
  br i1 %exitcond1159.not, label %for.end762, label %for.inc760.for.body688_crit_edge

for.inc760.for.body688_crit_edge:                 ; preds = %for.inc760
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body688

for.end762:                                       ; preds = %for.inc760
  %367 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %wiphy, align 8
  %call765 = call i32 @wiphy_register(ptr noundef %368) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call765)
  %cmp766 = icmp slt i32 %call765, 0
  br i1 %cmp766, label %for.end762.fail_wiphy_register_crit_edge, label %if.end769

for.end762.fail_wiphy_register_crit_edge:         ; preds = %for.end762
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_wiphy_register

if.end769:                                        ; preds = %for.end762
  call void @debugfs_hw_add(ptr noundef %hw) #10
  call fastcc void @rate_control_add_debugfs(ptr noundef %hw)
  call void @rtnl_lock() #10
  %369 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %wiphy, align 8
  call void @mutex_lock_nested(ptr noundef %370, i32 noundef 0) #10
  %371 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %wiphy, align 8
  %interface_modes773 = getelementptr inbounds %struct.wiphy, ptr %372, i32 0, i32 9
  %373 = ptrtoint ptr %interface_modes773 to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %interface_modes773, align 4
  %375 = and i16 %374, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %375)
  %tobool776.not = icmp eq i16 %375, 0
  br i1 %tobool776.not, label %if.end769.if.end790_crit_edge, label %land.lhs.true777

if.end769.if.end790_crit_edge:                    ; preds = %if.end769
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end790

land.lhs.true777:                                 ; preds = %if.end769
  %376 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load volatile i32, ptr %flags.i, align 4
  %378 = and i32 %377, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %378)
  %tobool.i1094.not = icmp eq i32 %378, 0
  br i1 %tobool.i1094.not, label %if.then779, label %land.lhs.true777.if.end790_crit_edge

land.lhs.true777.if.end790_crit_edge:             ; preds = %land.lhs.true777
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end790

if.then779:                                       ; preds = %land.lhs.true777
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #10
  %379 = call ptr @memset(ptr %params, i32 0, i32 24)
  %call780 = call i32 @ieee80211_if_add(ptr noundef %hw, ptr noundef nonnull @.str.46, i8 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call780)
  %tobool781.not = icmp eq i32 %call780, 0
  br i1 %tobool781.not, label %if.then779.if.end789_crit_edge, label %do.end785

if.then779.if.end789_crit_edge:                   ; preds = %if.then779
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end789

do.end785:                                        ; preds = %if.then779
  call void @__sanitizer_cov_trace_pc() #12
  %380 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %wiphy, align 8
  %dev788 = getelementptr inbounds %struct.wiphy, ptr %381, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev788, ptr noundef nonnull @.str.48) #13
  br label %if.end789

if.end789:                                        ; preds = %do.end785, %if.then779.if.end789_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #10
  br label %if.end790

if.end790:                                        ; preds = %if.end789, %land.lhs.true777.if.end790_crit_edge, %if.end769.if.end790_crit_edge
  %382 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %wiphy, align 8
  call void @mutex_unlock(ptr noundef %383) #10
  call void @rtnl_unlock() #10
  %ifa_notifier = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 130
  %384 = ptrtoint ptr %ifa_notifier to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr @ieee80211_ifa_changed, ptr %ifa_notifier, align 8
  %call793 = call i32 @register_inetaddr_notifier(ptr noundef %ifa_notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call793)
  %tobool794.not = icmp eq i32 %call793, 0
  br i1 %tobool794.not, label %if.end796, label %if.end790.fail_ifa_crit_edge

if.end790.fail_ifa_crit_edge:                     ; preds = %if.end790
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_ifa

if.end796:                                        ; preds = %if.end790
  %ifa6_notifier = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 131
  %385 = ptrtoint ptr %ifa6_notifier to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr @ieee80211_ifa6_changed, ptr %ifa6_notifier, align 4
  %call799 = call i32 @register_inet6addr_notifier(ptr noundef %ifa6_notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call799)
  %tobool800.not = icmp eq i32 %call799, 0
  br i1 %tobool800.not, label %if.end796.cleanup814_crit_edge, label %fail_ifa6

if.end796.cleanup814_crit_edge:                   ; preds = %if.end796
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup814

fail_ifa6:                                        ; preds = %if.end796
  call void @__sanitizer_cov_trace_pc() #12
  %call804 = call i32 @unregister_inetaddr_notifier(ptr noundef %ifa_notifier) #10
  br label %fail_ifa

fail_ifa:                                         ; preds = %fail_ifa6, %if.end790.fail_ifa_crit_edge
  %result.2 = phi i32 [ %call793, %if.end790.fail_ifa_crit_edge ], [ %call799, %fail_ifa6 ]
  %386 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %wiphy, align 8
  call void @wiphy_unregister(ptr noundef %387) #10
  br label %fail_wiphy_register

fail_wiphy_register:                              ; preds = %fail_ifa, %for.end762.fail_wiphy_register_crit_edge
  %result.3 = phi i32 [ %call765, %for.end762.fail_wiphy_register_crit_edge ], [ %result.2, %fail_ifa ]
  call void @rtnl_lock() #10
  call void @rate_control_deinitialize(ptr noundef %hw) #10
  call void @ieee80211_remove_interfaces(ptr noundef %hw) #10
  call void @rtnl_unlock() #10
  br label %fail_flows

fail_flows:                                       ; preds = %fail_wiphy_register, %if.end719.fail_flows_crit_edge, %do.end668, %if.end654.fail_flows_crit_edge
  %result.4 = phi i32 [ %call658, %if.end654.fail_flows_crit_edge ], [ %call662, %do.end668 ], [ %result.3, %fail_wiphy_register ], [ -12, %if.end719.fail_flows_crit_edge ]
  call void @ieee80211_led_exit(ptr noundef %hw) #10
  %388 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %workqueue, align 8
  call void @destroy_workqueue(ptr noundef %389) #10
  br label %fail_workqueue

fail_workqueue:                                   ; preds = %fail_flows, %wiphy_name.exit.fail_workqueue_crit_edge, %if.end554.fail_workqueue_crit_edge, %do.end538, %if.then450.fail_workqueue_crit_edge
  %result.5 = phi i32 [ -22, %do.end538 ], [ %call555, %if.end554.fail_workqueue_crit_edge ], [ %result.4, %fail_flows ], [ -22, %if.then450.fail_workqueue_crit_edge ], [ -12, %wiphy_name.exit.fail_workqueue_crit_edge ]
  %wiphy_ciphers_allocated = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 25
  %390 = ptrtoint ptr %wiphy_ciphers_allocated to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %wiphy_ciphers_allocated, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool808.not = icmp eq i8 %391, 0
  br i1 %tobool808.not, label %fail_workqueue.if.end812_crit_edge, label %if.then809

fail_workqueue.if.end812_crit_edge:               ; preds = %fail_workqueue
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end812

if.then809:                                       ; preds = %fail_workqueue
  call void @__sanitizer_cov_trace_pc() #12
  %392 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %wiphy, align 8
  %cipher_suites = getelementptr inbounds %struct.wiphy, ptr %393, i32 0, i32 28
  %394 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %cipher_suites, align 8
  call void @kfree(ptr noundef %395) #10
  br label %if.end812

if.end812:                                        ; preds = %if.then809, %fail_workqueue.if.end812_crit_edge
  %396 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %int_scan_req, align 4
  call void @kfree(ptr noundef %397) #10
  br label %cleanup814

cleanup814:                                       ; preds = %if.end812, %if.end796.cleanup814_crit_edge, %if.end8.i.i.cleanup814_crit_edge, %land.lhs.true386.cleanup814_crit_edge, %cleanup332, %do.end163, %land.lhs.true132.cleanup814_crit_edge, %for.body.cleanup814_crit_edge, %lor.lhs.false101.cleanup814_crit_edge, %land.lhs.true98.cleanup814_crit_edge, %do.end79, %do.end, %lor.lhs.false16.cleanup814_crit_edge, %lor.lhs.false13.cleanup814_crit_edge, %land.lhs.true11.cleanup814_crit_edge, %lor.lhs.false.cleanup814_crit_edge, %land.lhs.true.cleanup814_crit_edge
  %retval.9 = phi i32 [ -22, %do.end ], [ -22, %do.end79 ], [ -22, %do.end163 ], [ -22, %cleanup332 ], [ %result.5, %if.end812 ], [ -22, %lor.lhs.false.cleanup814_crit_edge ], [ -22, %land.lhs.true.cleanup814_crit_edge ], [ -95, %lor.lhs.false16.cleanup814_crit_edge ], [ -95, %lor.lhs.false13.cleanup814_crit_edge ], [ -95, %land.lhs.true11.cleanup814_crit_edge ], [ -22, %lor.lhs.false101.cleanup814_crit_edge ], [ -22, %land.lhs.true98.cleanup814_crit_edge ], [ -12, %if.end8.i.i.cleanup814_crit_edge ], [ 0, %if.end796.cleanup814_crit_edge ], [ -22, %land.lhs.true386.cleanup814_crit_edge ], [ -22, %for.body.cleanup814_crit_edge ], [ -22, %land.lhs.true132.cleanup814_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dflt_chandef) #10
  ret i32 %retval.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ieee80211_mcs_to_chains(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_cs_list_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_init_cipher_suites(ptr noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i229.not = icmp eq i32 %5, 0
  br i1 %tobool.i229.not, label %lor.lhs.false, label %entry.cleanup155_crit_edge

entry.cleanup155_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

lor.lhs.false:                                    ; preds = %entry
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %cipher_suites = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cipher_suites, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.cleanup155_crit_edge

lor.lhs.false.cleanup155_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

if.else:                                          ; preds = %lor.lhs.false
  %cipher_schemes = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 28
  %10 = ptrtoint ptr %cipher_schemes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cipher_schemes, align 4
  %tobool35.not = icmp eq ptr %11, null
  br i1 %tobool35.not, label %if.then36, label %if.else59

if.then36:                                        ; preds = %if.else
  %12 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ieee80211_init_cipher_suites.cipher_suites, ptr %cipher_suites, align 8
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %n_cipher_suites42 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %n_cipher_suites42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 11, ptr %n_cipher_suites42, align 4
  br i1 %tobool.i.not, label %if.then44, label %if.then36.cleanup155_crit_edge

if.then36.cleanup155_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

if.then44:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy, align 8
  %n_cipher_suites47 = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %n_cipher_suites47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_cipher_suites47, align 4
  %sub = add i32 %19, -4
  store i32 %sub, ptr %n_cipher_suites47, align 4
  br label %cleanup155

if.else59:                                        ; preds = %if.else
  %n_cipher_schemes = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 27
  %n_suites.1.v = select i1 %tobool.i.not, i32 7, i32 11
  %20 = ptrtoint ptr %n_cipher_schemes to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %n_cipher_schemes, align 2
  %conv = zext i8 %21 to i32
  %n_suites.1 = add nuw nsw i32 %n_suites.1.v, %conv
  %22 = shl nuw nsw i32 %n_suites.1, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #14
  %tobool72.not = icmp eq ptr %call8.i, null
  br i1 %tobool72.not, label %if.else59.cleanup155_crit_edge, label %if.end74

if.else59.cleanup155_crit_edge:                   ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

if.end74:                                         ; preds = %if.else59
  %23 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1027076, ptr %call8.i, align 128
  %arrayidx78 = getelementptr i32, ptr %call8.i, i32 1
  %24 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1027082, ptr %arrayidx78, align 4
  %arrayidx80 = getelementptr i32, ptr %call8.i, i32 2
  %25 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1027074, ptr %arrayidx80, align 8
  %arrayidx82 = getelementptr i32, ptr %call8.i, i32 3
  %26 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1027080, ptr %arrayidx82, align 4
  %arrayidx84 = getelementptr i32, ptr %call8.i, i32 4
  %27 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1027081, ptr %arrayidx84, align 16
  %arrayidx88 = getelementptr i32, ptr %call8.i, i32 5
  %28 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1027073, ptr %arrayidx88, align 4
  %arrayidx90 = getelementptr i32, ptr %call8.i, i32 6
  %29 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1027077, ptr %arrayidx90, align 8
  br i1 %tobool.i.not, label %if.end74.if.end102_crit_edge, label %if.then93

if.end74.if.end102_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then93:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx95 = getelementptr i32, ptr %call8.i, i32 7
  %30 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1027078, ptr %arrayidx95, align 4
  %arrayidx97 = getelementptr i32, ptr %call8.i, i32 8
  %31 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1027085, ptr %arrayidx97, align 32
  %arrayidx99 = getelementptr i32, ptr %call8.i, i32 9
  %32 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1027083, ptr %arrayidx99, align 4
  %arrayidx101 = getelementptr i32, ptr %call8.i, i32 10
  %33 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1027084, ptr %arrayidx101, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then93, %if.end74.if.end102_crit_edge
  %w.3 = phi i32 [ 11, %if.then93 ], [ 7, %if.end74.if.end102_crit_edge ]
  %34 = ptrtoint ptr %n_cipher_schemes to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %n_cipher_schemes, align 2
  %conv106 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp107238.not = icmp eq i8 %35, 0
  br i1 %cmp107238.not, label %if.end102.if.end148_crit_edge, label %if.end102.for.body109_crit_edge

if.end102.for.body109_crit_edge:                  ; preds = %if.end102
  br label %for.body109

if.end102.if.end148_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

for.body109:                                      ; preds = %for.inc141.for.body109_crit_edge, %if.end102.for.body109_crit_edge
  %w.4240 = phi i32 [ %inc111, %for.inc141.for.body109_crit_edge ], [ %w.3, %if.end102.for.body109_crit_edge ]
  %r.1239 = phi i32 [ %inc142, %for.inc141.for.body109_crit_edge ], [ 0, %if.end102.for.body109_crit_edge ]
  %arrayidx110 = getelementptr %struct.ieee80211_cipher_scheme, ptr %11, i32 %r.1239
  %36 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx110, align 4
  %arrayidx112 = getelementptr i32, ptr %call8.i, i32 %w.4240
  %38 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx112, align 4
  %pn_len = getelementptr %struct.ieee80211_cipher_scheme, ptr %11, i32 %r.1239, i32 3
  %39 = ptrtoint ptr %pn_len to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pn_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %40)
  %cmp115 = icmp ugt i8 %40, 16
  br i1 %cmp115, label %do.end, label %for.inc141, !prof !212

do.end:                                           ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef null) #10
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %cleanup155

for.inc141:                                       ; preds = %for.body109
  %inc111 = add nuw nsw i32 %w.4240, 1
  %inc142 = add nuw nsw i32 %r.1239, 1
  %exitcond.not = icmp eq i32 %inc142, %conv106
  br i1 %exitcond.not, label %for.inc141.if.end148_crit_edge, label %for.inc141.for.body109_crit_edge

for.inc141.for.body109_crit_edge:                 ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body109

for.inc141.if.end148_crit_edge:                   ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.end148:                                        ; preds = %for.inc141.if.end148_crit_edge, %if.end102.if.end148_crit_edge
  %w.4.lcssa = phi i32 [ %w.3, %if.end102.if.end148_crit_edge ], [ %inc111, %for.inc141.if.end148_crit_edge ]
  %41 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy, align 8
  %cipher_suites151 = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 28
  %43 = ptrtoint ptr %cipher_suites151 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i, ptr %cipher_suites151, align 8
  %44 = load ptr, ptr %wiphy, align 8
  %n_cipher_suites154 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %n_cipher_suites154 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %w.4.lcssa, ptr %n_cipher_suites154, align 4
  %wiphy_ciphers_allocated = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 25
  %46 = ptrtoint ptr %wiphy_ciphers_allocated to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %wiphy_ciphers_allocated, align 4
  br label %cleanup155

cleanup155:                                       ; preds = %if.end148, %do.end, %if.else59.cleanup155_crit_edge, %if.then44, %if.then36.cleanup155_crit_edge, %lor.lhs.false.cleanup155_crit_edge, %entry.cleanup155_crit_edge
  %retval.1 = phi i32 [ 0, %if.end148 ], [ 0, %entry.cleanup155_crit_edge ], [ 0, %lor.lhs.false.cleanup155_crit_edge ], [ 0, %if.then36.cleanup155_crit_edge ], [ 0, %if.then44 ], [ -12, %if.else59.cleanup155_crit_edge ], [ -22, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wep_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_led_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_txq_setup_flows(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_init_rate_ctrl_alg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_hw_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rate_control_add_debugfs(ptr noundef %local) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %rate_ctrl = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 58
  %0 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ctrl, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add_debugfs = getelementptr inbounds %struct.rate_control_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %add_debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add_debugfs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %debugfsdir5 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %debugfsdir5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfsdir5, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.69, ptr noundef %9) #10
  %debugfs = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 136
  %10 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %debugfs, align 8
  %11 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rate_ctrl, align 8
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.70, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %12, ptr noundef nonnull @rcname_ops) #10
  %13 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rate_ctrl, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add_debugfs10 = getelementptr inbounds %struct.rate_control_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %add_debugfs10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add_debugfs10, align 4
  %priv = getelementptr inbounds %struct.rate_control_ref, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  tail call void %18(ptr noundef %local, ptr noundef %20, ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_if_add(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_ifa_changed(ptr nocapture noundef readonly %nb, i32 noundef %data, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %wiphy1 = getelementptr i8, ptr %nb, i32 -6776
  %8 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy1, align 8
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %vif = getelementptr i8, ptr %3, i32 6384
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp6.not = icmp eq i32 %11, 2
  br i1 %cmp6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %dev9 = getelementptr i8, ptr %3, i32 3392
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %if.end8.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end8.__in_dev_get_rtnl.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 249, ptr noundef nonnull @.str.71) #10
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end8.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 78
  %14 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip_ptr.i, align 32
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %__in_dev_get_rtnl.exit.cleanup_crit_edge, label %if.end13

__in_dev_get_rtnl.exit.cleanup_crit_edge:         ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %__in_dev_get_rtnl.exit
  %mtx.i = getelementptr i8, ptr %3, i32 2348
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #10
  %call14 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call14, label %if.end13.do.end_crit_edge, label %land.lhs.true

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end13
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b67 = load i1, ptr @ieee80211_ifa_changed.__warned, align 1
  br i1 %.b67, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee80211_ifa_changed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.71) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end13.do.end_crit_edge
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %ifa.069 = load ptr, ptr %ifa_list, align 4
  %tobool22.not70 = icmp eq ptr %ifa.069, null
  br i1 %tobool22.not70, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %do.end36.while.body_crit_edge, %do.end.while.body_crit_edge
  %ifa.073 = phi ptr [ %ifa.0, %do.end36.while.body_crit_edge ], [ %ifa.069, %do.end.while.body_crit_edge ]
  %c.071 = phi i32 [ %inc, %do.end36.while.body_crit_edge ], [ 0, %do.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %c.071)
  %cmp23 = icmp slt i32 %c.071, 4
  br i1 %cmp23, label %if.then24, label %while.body.do.body26_crit_edge

while.body.do.body26_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

if.then24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.073, i32 0, i32 5
  %17 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifa_address, align 4
  %arrayidx = getelementptr %struct.ieee80211_sub_if_data, ptr %add.ptr.i.i, i32 0, i32 59, i32 1, i32 34, i32 %c.071
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx, align 4
  br label %do.body26

do.body26:                                        ; preds = %if.then24, %while.body.do.body26_crit_edge
  %call27 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call27, label %do.body26.do.end36_crit_edge, label %land.lhs.true28

do.body26.do.end36_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

land.lhs.true28:                                  ; preds = %do.body26
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b6566 = load i1, ptr @ieee80211_ifa_changed.__warned.72, align 1
  br i1 %.b6566, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee80211_ifa_changed.__warned.72, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 382, ptr noundef nonnull @.str.71) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %do.body26.do.end36_crit_edge
  %ifa_next = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.073, i32 0, i32 1
  %inc = add i32 %c.071, 1
  %20 = ptrtoint ptr %ifa_next to i32
  call void @__asan_load4_noabort(i32 %20)
  %ifa.0 = load ptr, ptr %ifa_next, align 4
  %tobool22.not = icmp eq ptr %ifa.0, null
  br i1 %tobool22.not, label %do.end36.while.end_crit_edge, label %do.end36.while.body_crit_edge

do.end36.while.body_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end36.while.end_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end36.while.end_crit_edge, %do.end.while.end_crit_edge
  %c.0.lcssa = phi i32 [ 0, %do.end.while.end_crit_edge ], [ %inc, %do.end36.while.end_crit_edge ]
  %arp_addr_cnt = getelementptr i8, ptr %3, i32 6560
  %21 = ptrtoint ptr %arp_addr_cnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %c.0.lcssa, ptr %arp_addr_cnt, align 8
  %associated = getelementptr i8, ptr %3, i32 5240
  %22 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %associated, align 4
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %while.end.if.end40_crit_edge, label %if.then39

while.end.if.end40_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %add.ptr.i.i, i32 noundef 4096)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %while.end.if.end40_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %__in_dev_get_rtnl.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end40 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %__in_dev_get_rtnl.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_ifa6_changed(ptr noundef %nb, i32 noundef %data, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idev1 = getelementptr inbounds %struct.inet6_ifaddr, ptr %arg, i32 0, i32 16
  %0 = ptrtoint ptr %idev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %nb, i32 -6844
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %wiphy3 = getelementptr i8, ptr %nb, i32 -6788
  %8 = ptrtoint ptr %wiphy3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy3, align 8
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vif = getelementptr i8, ptr %3, i32 6384
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp4.not = icmp eq i32 %11, 2
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  tail call fastcc void @trace_drv_ipv6_addr_change(ptr noundef %add.ptr, ptr noundef %add.ptr.i.i) #10
  %ops.i = getelementptr i8, ptr %nb, i32 -6112
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %ipv6_addr_change.i = getelementptr inbounds %struct.ieee80211_ops, ptr %13, i32 0, i32 79
  %14 = ptrtoint ptr %ipv6_addr_change.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipv6_addr_change.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end6.drv_ipv6_addr_change.exit_crit_edge, label %if.then.i

if.end6.drv_ipv6_addr_change.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %drv_ipv6_addr_change.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %15(ptr noundef %add.ptr, ptr noundef %vif, ptr noundef %1) #10
  br label %drv_ipv6_addr_change.exit

drv_ipv6_addr_change.exit:                        ; preds = %if.then.i, %if.end6.drv_ipv6_addr_change.exit_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %drv_ipv6_addr_change.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %drv_ipv6_addr_change.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_deinitialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_remove_interfaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_led_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_unregister_hw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pending_tasklet = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 54
  tail call void @tasklet_kill(ptr noundef %tx_pending_tasklet) #10
  %tasklet = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 42
  tail call void @tasklet_kill(ptr noundef %tasklet) #10
  %ifa_notifier = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 130
  %call1 = tail call i32 @unregister_inetaddr_notifier(ptr noundef %ifa_notifier) #10
  %ifa6_notifier = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 131
  %call2 = tail call i32 @unregister_inet6addr_notifier(ptr noundef %ifa6_notifier) #10
  tail call void @rtnl_lock() #10
  tail call void @ieee80211_remove_interfaces(ptr noundef %hw) #10
  tail call void @rtnl_unlock() #10
  %roc_work = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 138
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %roc_work) #10
  %restart_work = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 135
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_work) #10
  %reconfig_filter = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 28
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reconfig_filter) #10
  %sched_scan_stopped_work = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 78
  %call6 = tail call zeroext i1 @flush_work(ptr noundef %sched_scan_stopped_work) #10
  %radar_detected_work = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 38
  %call7 = tail call zeroext i1 @flush_work(ptr noundef %radar_detected_work) #10
  tail call void @ieee80211_clear_tx_pending(ptr noundef %hw) #10
  tail call void @rate_control_deinitialize(ptr noundef %hw) #10
  %qlen.i = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %qlen.i36 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 44, i32 1
  %2 = ptrtoint ptr %qlen.i36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  %skb_queue = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 43
  tail call void @skb_queue_purge(ptr noundef %skb_queue) #10
  %skb_queue_unreliable13 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 44
  tail call void @skb_queue_purge(ptr noundef %skb_queue_unreliable13) #10
  %wiphy15 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy15, align 8
  tail call void @wiphy_unregister(ptr noundef %7) #10
  %workqueue = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 9
  %8 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %9) #10
  tail call void @ieee80211_led_exit(ptr noundef %hw) #10
  %int_scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 69
  %10 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %int_scan_req, align 4
  tail call void @kfree(ptr noundef %11) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_tx_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_free_hw(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 64
  tail call void @mutex_destroy(ptr noundef %iflist_mtx) #10
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 66
  tail call void @mutex_destroy(ptr noundef %mtx) #10
  %wiphy_ciphers_allocated = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 25
  %0 = ptrtoint ptr %wiphy_ciphers_allocated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wiphy_ciphers_allocated, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %cipher_suites = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cipher_suites, align 8
  tail call void @kfree(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ack_status_frames = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 144
  %call2 = tail call i32 @idr_for_each(ptr noundef %ack_status_frames, ptr noundef nonnull @ieee80211_free_ack_frame, ptr noundef null) #10
  tail call void @idr_destroy(ptr noundef %ack_status_frames) #10
  tail call void @sta_info_stop(ptr noundef %hw) #10
  tail call void @ieee80211_free_led_names(ptr noundef %hw) #10
  %sband_allocated = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 40
  %wiphy8 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %sband_allocated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sband_allocated, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %wiphy8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy8, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %10, i32 0, i32 53, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %12) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.end.for.inc_crit_edge
  %13 = ptrtoint ptr %sband_allocated to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sband_allocated, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.1 = icmp eq i8 %15, 0
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end6.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end6.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %wiphy8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy8, align 8
  %arrayidx.1 = getelementptr %struct.wiphy, ptr %17, i32 0, i32 53, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %19) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end6.1, %for.inc.for.inc.1_crit_edge
  %20 = ptrtoint ptr %sband_allocated to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sband_allocated, align 1
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool4.not.2 = icmp eq i8 %22, 0
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end6.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end6.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %wiphy8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy8, align 8
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %24, i32 0, i32 53, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %26) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end6.2, %for.inc.1.for.inc.2_crit_edge
  %27 = ptrtoint ptr %sband_allocated to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sband_allocated, align 1
  %29 = and i8 %28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool4.not.3 = icmp eq i8 %29, 0
  br i1 %tobool4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end6.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end6.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %wiphy8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy8, align 8
  %arrayidx.3 = getelementptr %struct.wiphy, ptr %31, i32 0, i32 53, i32 3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %33) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end6.3, %for.inc.2.for.inc.3_crit_edge
  %34 = ptrtoint ptr %sband_allocated to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sband_allocated, align 1
  %36 = and i8 %35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool4.not.4 = icmp eq i8 %36, 0
  br i1 %tobool4.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end6.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end6.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %wiphy8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy8, align 8
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %38, i32 0, i32 53, i32 4
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %40) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end6.4, %for.inc.3.for.inc.4_crit_edge
  %41 = ptrtoint ptr %sband_allocated to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sband_allocated, align 1
  %43 = and i8 %42, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool4.not.5 = icmp eq i8 %43, 0
  br i1 %tobool4.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end6.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end6.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %wiphy8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy8, align 8
  %arrayidx.5 = getelementptr %struct.wiphy, ptr %45, i32 0, i32 53, i32 5
  %46 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.5, align 4
  tail call void @kfree(ptr noundef %47) #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end6.5, %for.inc.4.for.inc.5_crit_edge
  %48 = ptrtoint ptr %wiphy8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy8, align 8
  tail call void @wiphy_free(ptr noundef %49) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_free_ack_frame(i32 noundef %id, ptr noundef %p, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @ieee80211_free_ack_frame.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !203

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee80211_free_ack_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1416, i32 noundef 9, ptr noundef nonnull @.str.74) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %p, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_led_names(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rc80211_minstrel_exit() #10
  tail call void @ieee80211s_stop() #10
  tail call void @ieee80211_iface_exit() #10
  tail call void @rcu_barrier() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc80211_minstrel_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211s_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iface_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc80211_minstrel_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @ieee80211_iface_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %err_netdev

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_netdev:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rc80211_minstrel_exit() #10
  br label %cleanup

cleanup:                                          ; preds = %err_netdev, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %err_netdev ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_prepare_multicast(ptr noundef %local, i32 noundef %mc_count) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_prepare_multicast, i32 0, i32 1), ptr blockaddress(@trace_drv_prepare_multicast, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !213
  %call42 = tail call i32 @__traceiter_drv_prepare_multicast(ptr noundef null, ptr noundef %local, i32 noundef %mc_count) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !214
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_prepare_multicast, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_prepare_multicast, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_prepare_multicast.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_prepare_multicast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 507, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
define internal fastcc void @trace_drv_return_u64(ptr noundef %local, i64 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_u64, i32 0, i32 1), ptr blockaddress(@trace_drv_return_u64, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !215
  %call42 = tail call i32 @__traceiter_drv_return_u64(ptr noundef null, ptr noundef %local, i64 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !216
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_u64, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_u64, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_u64.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_return_u64.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 262, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
declare dso_local i32 @__traceiter_drv_prepare_multicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_u64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_configure_filter(ptr noundef %local, i32 noundef %changed_flags, ptr noundef %total_flags, i64 noundef %multicast) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_configure_filter, i32 0, i32 1), ptr blockaddress(@trace_drv_configure_filter, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !217
  %call42 = tail call i32 @__traceiter_drv_configure_filter(ptr noundef null, ptr noundef %local, i32 noundef %changed_flags, ptr noundef %total_flags, i64 noundef %multicast) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !218
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_configure_filter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_configure_filter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_configure_filter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_configure_filter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 535, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
define internal fastcc void @trace_drv_return_void(ptr noundef %local) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), ptr blockaddress(@trace_drv_return_void, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !219
  %call42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %local) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !220
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 205, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
declare dso_local i32 @__traceiter_drv_configure_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_config(ptr noundef %local, i32 noundef %changed) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config, i32 0, i32 1), ptr blockaddress(@trace_drv_config, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !221
  %call42 = tail call i32 @__traceiter_drv_config(ptr noundef null, ptr noundef %local, i32 noundef %changed) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !222
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_config.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_config.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 391, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
define internal fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), ptr blockaddress(@trace_drv_return_int, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !223
  %call42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %local, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !224
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 219, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
declare dso_local i32 @__traceiter_drv_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_bss_info_changed(ptr noundef %local, ptr noundef %sdata, ptr noundef %info, i32 noundef %changed) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_bss_info_changed, i32 0, i32 1), ptr blockaddress(@trace_drv_bss_info_changed, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !225
  %call42 = tail call i32 @__traceiter_drv_bss_info_changed(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %info, i32 noundef %changed) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !226
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_bss_info_changed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_bss_info_changed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_bss_info_changed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_bss_info_changed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 486, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
declare dso_local i32 @__traceiter_drv_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_restart_hw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_connection_lost(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_shutdown_all_interfaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_ipv6_addr_change(ptr noundef %local, ptr noundef %sdata) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_ipv6_addr_change, i32 0, i32 1), ptr blockaddress(@trace_drv_ipv6_addr_change, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !207

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !227
  %call42 = tail call i32 @__traceiter_drv_ipv6_addr_change(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !228
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_ipv6_addr_change, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_ipv6_addr_change, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_ipv6_addr_change.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_ipv6_addr_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 1774, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !211
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
declare dso_local i32 @__traceiter_drv_ipv6_addr_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc80211_minstrel_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_iface_init() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !96, !98, !100, !102, !104, !105, !107, !108, !109, !110, !112, !113, !115, !116, !118, !120, !121, !123, !124, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !144, !146, !148, !149, !151, !152, !154, !155, !157, !159, !161, !163, !164, !166, !167, !169, !170, !172, !174, !176, !178, !180, !181, !183, !185, !186, !188, !189, !191}
!llvm.named.register.sp = !{!192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/main.c", i32 81, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/main.c", i32 321, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ieee80211_restart_hw._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @ieee80211_restart_hw._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_ieee80211_restart_hw, !10, !"__ksymtab_ieee80211_restart_hw", i1 false, i1 false}
!10 = !{!"../net/mac80211/main.c", i32 338, i32 1}
!11 = !{ptr @ieee80211_alloc_hw_nm.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/mac80211/main.c", i32 701, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ieee80211_alloc_hw_nm.__key.6, !15, !"__key", i1 false, i1 false}
!15 = !{!"../net/mac80211/main.c", i32 702, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ieee80211_alloc_hw_nm.__key.8, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/mac80211/main.c", i32 704, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ieee80211_alloc_hw_nm.__key.10, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/mac80211/main.c", i32 705, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ieee80211_alloc_hw_nm.__key.12, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/mac80211/main.c", i32 706, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ieee80211_alloc_hw_nm.__key.14, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/mac80211/main.c", i32 707, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ieee80211_alloc_hw_nm.__key.16, !30, !"__key", i1 false, i1 false}
!30 = !{!"../net/mac80211/main.c", i32 714, i32 3}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ieee80211_alloc_hw_nm.__key.18, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/mac80211/main.c", i32 725, i32 2}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ieee80211_alloc_hw_nm.__key.20, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/mac80211/main.c", i32 727, i32 2}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ieee80211_alloc_hw_nm.__key.22, !36, !"__key", i1 false, i1 false}
!39 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ieee80211_alloc_hw_nm.__key.24, !41, !"__key", i1 false, i1 false}
!41 = !{!"../net/mac80211/main.c", i32 729, i32 2}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ieee80211_alloc_hw_nm.__key.26, !44, !"__key", i1 false, i1 false}
!44 = !{!"../net/mac80211/main.c", i32 731, i32 2}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ieee80211_alloc_hw_nm.__key.28, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/mac80211/main.c", i32 734, i32 2}
!48 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ieee80211_alloc_hw_nm.__key.30, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/mac80211/main.c", i32 737, i32 2}
!51 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ieee80211_alloc_hw_nm.__key.32, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/mac80211/main.c", i32 739, i32 2}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ieee80211_alloc_hw_nm.__key.34, !56, !"__key", i1 false, i1 false}
!56 = !{!"../net/mac80211/main.c", i32 741, i32 2}
!57 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ieee80211_alloc_hw_nm.__key.36, !59, !"__key", i1 false, i1 false}
!59 = !{!"../net/mac80211/main.c", i32 743, i32 2}
!60 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ieee80211_alloc_hw_nm.__key.38, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/mac80211/main.c", i32 746, i32 2}
!63 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__ksymtab_ieee80211_alloc_hw_nm, !65, !"__ksymtab_ieee80211_alloc_hw_nm", i1 false, i1 false}
!65 = !{!"../net/mac80211/main.c", i32 775, i32 1}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/mac80211/main.c", i32 1201, i32 3}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/mac80211/main.c", i32 1247, i32 3}
!70 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ieee80211_register_hw._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @ieee80211_register_hw._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/mac80211/main.c", i32 1289, i32 3}
!76 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ieee80211_register_hw.__UNIQUE_ID_ddebug982, !75, !"__UNIQUE_ID_ddebug982", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/mac80211/main.c", i32 1314, i32 36}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/mac80211/main.c", i32 1317, i32 4}
!82 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ieee80211_register_hw._entry.47, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ieee80211_register_hw._entry_ptr.50, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @__ksymtab_ieee80211_register_hw, !86, !"__ksymtab_ieee80211_register_hw", i1 false, i1 false}
!86 = !{!"../net/mac80211/main.c", i32 1365, i32 1}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/mac80211/main.c", i32 1403, i32 3}
!89 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ieee80211_unregister_hw._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ieee80211_unregister_hw._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @__ksymtab_ieee80211_unregister_hw, !93, !"__ksymtab_ieee80211_unregister_hw", i1 false, i1 false}
!93 = !{!"../net/mac80211/main.c", i32 1412, i32 1}
!94 = !{ptr @__ksymtab_ieee80211_free_hw, !95, !"__ksymtab_ieee80211_free_hw", i1 false, i1 false}
!95 = !{!"../net/mac80211/main.c", i32 1448, i32 1}
!96 = !{ptr @__initcall__kmod_mac80211__985_1486_ieee80211_init4, !97, !"__initcall__kmod_mac80211__985_1486_ieee80211_init4", i1 false, i1 false}
!97 = !{!"../net/mac80211/main.c", i32 1486, i32 1}
!98 = !{ptr @__exitcall_ieee80211_exit, !99, !"__exitcall_ieee80211_exit", i1 false, i1 false}
!99 = !{!"../net/mac80211/main.c", i32 1487, i32 1}
!100 = !{ptr @__UNIQUE_ID_description986, !101, !"__UNIQUE_ID_description986", i1 false, i1 false}
!101 = !{!"../net/mac80211/main.c", i32 1489, i32 1}
!102 = !{ptr @__UNIQUE_ID_file987, !103, !"__UNIQUE_ID_file987", i1 false, i1 false}
!103 = !{!"../net/mac80211/main.c", i32 1490, i32 1}
!104 = !{ptr @__UNIQUE_ID_license988, !103, !"__UNIQUE_ID_license988", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../net/mac80211/trace.h", i32 488, i32 1}
!107 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!109 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../net/mac80211/trace.h", i32 250, i32 1}
!115 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/mac80211/driver-ops.h", i32 201, i32 2}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../net/mac80211/trace.h", i32 509, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../net/mac80211/trace.h", i32 202, i32 1}
!123 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/mac80211/main.c", i32 114, i32 2}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../net/mac80211/main.c", i32 149, i32 2}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!135 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../net/mac80211/trace.h", i32 353, i32 1}
!138 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../net/mac80211/trace.h", i32 207, i32 1}
!141 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../net/mac80211/driver-ops.h", i32 157, i32 6}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../net/mac80211/driver-ops.h", i32 165, i32 6}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../net/mac80211/driver-ops.h", i32 172, i32 7}
!148 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../net/mac80211/trace.h", i32 393, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../net/mac80211/trace.h", i32 2067, i32 1}
!154 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!155 = !{ptr @ieee80211_default_mgmt_stypes, !156, !"ieee80211_default_mgmt_stypes", i1 false, i1 false}
!156 = !{!"../net/mac80211/main.c", i32 432, i32 1}
!157 = !{ptr @mac80211_ht_capa_mod_mask, !158, !"mac80211_ht_capa_mod_mask", i1 false, i1 false}
!158 = !{!"../net/mac80211/main.c", i32 507, i32 38}
!159 = !{ptr @mac80211_vht_capa_mod_mask, !160, !"mac80211_vht_capa_mod_mask", i1 false, i1 false}
!160 = !{!"../net/mac80211/main.c", i32 525, i32 39}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/mac80211/main.c", i32 266, i32 2}
!163 = !{ptr @__func__.ieee80211_restart_work, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @xa_init_flags.__key, !165, !"__key", i1 false, i1 false}
!165 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!166 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @skb_queue_head_init.__key, !168, !"__key", i1 false, i1 false}
!168 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!169 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/mac80211/main.c", i32 242, i32 4}
!172 = !{ptr @ieee80211_init_cipher_suites.cipher_suites, !173, !"cipher_suites", i1 false, i1 false}
!173 = !{!"../net/mac80211/main.c", i32 783, i32 19}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/mac80211/rate.h", i32 76, i32 34}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/mac80211/rate.h", i32 78, i32 22}
!178 = distinct !{null, !179, !"__warned", i1 false, i1 false}
!179 = !{!"../net/mac80211/main.c", i32 378, i32 8}
!180 = !{ptr @.str.71, !179, !"<string literal>", i1 false, i1 false}
!181 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!182 = !{!"../net/mac80211/main.c", i32 382, i32 9}
!183 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!184 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!185 = !{ptr @.str.73, !184, !"<string literal>", i1 false, i1 false}
!186 = distinct !{null, !187, !"__already_done", i1 false, i1 false}
!187 = !{!"../net/mac80211/trace.h", i32 1770, i32 1}
!188 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../net/mac80211/main.c", i32 1416, i32 2}
!191 = !{ptr @.str.74, !190, !"<string literal>", i1 false, i1 false}
!192 = !{!"sp"}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i8 0, i8 2}
!203 = !{!"branch_weights", i32 2000, i32 1}
!204 = !{i64 2149963216}
!205 = !{i64 2149963482}
!206 = !{i64 2162677461}
!207 = !{i64 2148463502, i64 2148463507, i64 2148463520, i64 2148463564, i64 2148463598, i64 2148463619}
!208 = !{i64 2161741535}
!209 = !{i64 2161741736}
!210 = !{i64 2149971775}
!211 = !{i64 2149972811}
!212 = !{!"branch_weights", i32 1, i32 2000}
!213 = !{i64 2160308603}
!214 = !{i64 2160308838}
!215 = !{i64 2160063552}
!216 = !{i64 2160063763}
!217 = !{i64 2160330900}
!218 = !{i64 2160331191}
!219 = !{i64 2159994211}
!220 = !{i64 2159994414}
!221 = !{i64 2160273635}
!222 = !{i64 2160273846}
!223 = !{i64 2160010501}
!224 = !{i64 2160010712}
!225 = !{i64 2160291302}
!226 = !{i64 2160291559}
!227 = !{i64 2161468024}
!228 = !{i64 2161472312}
