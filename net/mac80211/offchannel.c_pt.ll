; ModuleID = '/llk/IR_all_yes/net/mac80211/offchannel.c_pt.bc'
source_filename = "../net/mac80211/offchannel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ieee80211_ready_on_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_ready_on_channel\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_ready_on_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_ready_on_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_ready_on_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_ready_on_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ieee80211_remain_on_channel_expired\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_remain_on_channel_expired\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_remain_on_channel_expired\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_remain_on_channel_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_remain_on_channel_expired\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_remain_on_channel_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.153, %struct.anon.187, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.122, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.122 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.153 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.anon.187 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_roc_work = type { %struct.list_head, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, ptr, i64, i64, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.154 }
%union.anon.154 = type { %struct.anon.160, [16 x i8] }
%struct.anon.160 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
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
%struct.beacon_data = type { ptr, ptr, i32, i32, ptr, [2 x i16], i8, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/offchannel.c\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_ieee80211_ready_on_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_ready_on_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_ready_on_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_ready_on_channel to i32), ptr @__kstrtab_ieee80211_ready_on_channel, ptr @__kstrtabns_ieee80211_ready_on_channel }, section "___ksymtab_gpl+ieee80211_ready_on_channel", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ieee80211_start_next_roc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_remain_on_channel_expired = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_remain_on_channel_expired = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_remain_on_channel_expired = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_remain_on_channel_expired to i32), ptr @__kstrtab_ieee80211_remain_on_channel_expired, ptr @__kstrtabns_ieee80211_remain_on_channel_expired }, section "___ksymtab_gpl+ieee80211_remain_on_channel_expired", align 4
@ieee80211_mgmt_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_mgmt_tx.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_mgmt_tx.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_mgmt_tx.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_roc_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&local->hw_roc_start)\00", [56 x i8] zeroinitializer }, align 32
@ieee80211_roc_setup.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&local->hw_roc_done)\00", [57 x i8] zeroinitializer }, align 32
@ieee80211_roc_setup.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&local->roc_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_roc_setup.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&local->roc_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_api_ready_on_channel = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_api_ready_on_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@_ieee80211_start_next_roc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 327, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to start next HW ROC (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_ieee80211_start_next_roc\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_ieee80211_start_next_roc._entry_ptr = internal global ptr @_ieee80211_start_next_roc._entry, section ".printk_index", align 4
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_drv_remain_on_channel = external dso_local global %struct.tracepoint, align 4
@trace_drv_remain_on_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_api_remain_on_channel_expired = external dso_local global %struct.tracepoint, align 4
@trace_api_remain_on_channel_expired.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ieee80211_cancel_roc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_drv_cancel_remain_on_channel = external dso_local global %struct.tracepoint, align 4
@trace_drv_cancel_remain_on_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 10, i64 12]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 15]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 87, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 848, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 959, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 960, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 961, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 2264, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 108, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private constant [29 x i8] c"../net/mac80211/offchannel.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 326, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 684, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 695, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 723, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 2199, i32 17 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_ieee80211_ready_on_channel, ptr @__ksymtab_ieee80211_remain_on_channel_expired, ptr @_ieee80211_start_next_roc._entry, ptr @_ieee80211_start_next_roc._entry_ptr, ptr @.str, ptr @.str.1, ptr @ieee80211_roc_setup.__key, ptr @.str.5, ptr @ieee80211_roc_setup.__key.6, ptr @.str.7, ptr @ieee80211_roc_setup.__key.8, ptr @.str.9, ptr @ieee80211_roc_setup.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_roc_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_roc_setup.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_roc_setup.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_roc_setup.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ieee80211_start_next_roc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_offchannel_stop_vifs(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %0 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_chanctx, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !79

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  tail call void @ieee80211_stop_queues_by_reason(ptr noundef %local, i32 noundef 65535, i32 noundef 6, i1 noundef zeroext false) #8
  tail call void @ieee80211_flush_queues(ptr noundef %local, ptr noundef null, i1 noundef zeroext false) #8
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #8
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %2 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %2)
  %sdata.080 = load ptr, ptr %interfaces, align 8
  %cmp.not81 = icmp eq ptr %sdata.080, %interfaces
  br i1 %cmp.not81, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %sdata.082 = phi ptr [ %sdata.0, %for.inc.for.body_crit_edge ], [ %sdata.080, %if.end22.for.body_crit_edge ]
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.082, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.082, i32 0, i32 59
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.then38 [
    i32 10, label %if.end28.for.inc_crit_edge
    i32 12, label %if.end28.for.inc_crit_edge83
    i32 6, label %if.end28.if.end39_crit_edge
  ]

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end28.for.inc_crit_edge83:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end28.if.end39_crit_edge
  %enable_beacon = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.082, i32 0, i32 59, i32 1, i32 17
  %8 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable_beacon, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool41.not = icmp eq i8 %9, 0
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %if.then42

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #8
  %10 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enable_beacon, align 1
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata.082, i32 noundef 512) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end39.if.end47_crit_edge
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp50 = icmp eq i32 %12, 2
  br i1 %cmp50, label %land.lhs.true, label %if.end47.for.inc_crit_edge

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end47
  %associated = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.082, i32 0, i32 57, i32 0, i32 24, i32 28
  %13 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %associated, align 8
  %tobool51.not = icmp eq ptr %14, null
  br i1 %tobool51.not, label %land.lhs.true.for.inc_crit_edge, label %if.then52

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then52:                                        ; preds = %land.lhs.true
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.082, i32 0, i32 7
  %15 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local1.i, align 4
  %dynamic_ps_timer.i = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 129
  %call.i = tail call i32 @del_timer_sync(ptr noundef %dynamic_ps_timer.i) #8
  %bcn_mon_timer.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.082, i32 0, i32 57, i32 0, i32 2
  %call2.i = tail call i32 @del_timer_sync(ptr noundef %bcn_mon_timer.i) #8
  %conn_mon_timer.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.082, i32 0, i32 57, i32 0, i32 1
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %conn_mon_timer.i) #8
  %dynamic_ps_enable_work.i = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 127
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %dynamic_ps_enable_work.i) #8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then52.if.then13.i_crit_edge, label %if.then.i

if.then52.if.then13.i_crit_edge:                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

if.then.i:                                        ; preds = %if.then52
  %and8.i = and i32 %18, -3
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and8.i, ptr %16, align 8
  %call9.i = tail call i32 @ieee80211_hw_config(ptr noundef %16, i32 noundef 16) #8
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i.i, align 4
  %22 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %if.then.i.if.then13.i_crit_edge, label %if.then.i.for.inc_crit_edge

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i.if.then13.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.then.i.if.then13.i_crit_edge, %if.then52.if.then13.i_crit_edge
  tail call void @ieee80211_send_nullfunc(ptr noundef %16, ptr noundef %sdata.082, i1 noundef zeroext true) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then13.i, %if.then.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end47.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %if.end28.for.inc_crit_edge83, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %sdata.082 to i32
  call void @__asan_load4_noabort(i32 %23)
  %sdata.0 = load ptr, ptr %sdata.082, align 8
  %cmp.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_offchannel_return(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %0 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_chanctx, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !79

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #8
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %2 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %2)
  %sdata.072 = load ptr, ptr %interfaces, align 8
  %cmp.not73 = icmp eq ptr %sdata.072, %interfaces
  br i1 %cmp.not73, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %sdata.074 = phi ptr [ %sdata.0, %for.inc.for.body_crit_edge ], [ %sdata.072, %if.end22.for.body_crit_edge ]
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.074, i32 0, i32 59
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %4, label %if.then33 [
    i32 10, label %for.body.for.inc_crit_edge
    i32 6, label %for.body.if.end34_crit_edge
  ]

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.074, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %for.body.if.end34_crit_edge
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.074, i32 0, i32 9
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end34.for.inc_crit_edge, label %if.end36

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end36:                                         ; preds = %if.end34
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp39 = icmp eq i32 %9, 2
  br i1 %cmp39, label %land.lhs.true, label %if.end36.if.end42_crit_edge

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end36
  %associated = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.074, i32 0, i32 57, i32 0, i32 24, i32 28
  %10 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %associated, align 8
  %tobool40.not = icmp eq ptr %11, null
  br i1 %tobool40.not, label %land.lhs.true.if.end42_crit_edge, label %if.then41

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then41:                                        ; preds = %land.lhs.true
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.074, i32 0, i32 7
  %12 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %local1.i, align 4
  %ps_sdata.i = getelementptr inbounds %struct.ieee80211_local, ptr %13, i32 0, i32 126
  %14 = ptrtoint ptr %ps_sdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ps_sdata.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_send_nullfunc(ptr noundef %13, ptr noundef %sdata.074, i1 noundef zeroext false) #8
  br label %ieee80211_offchannel_ps_disable.exit

if.else.i:                                        ; preds = %if.then41
  %dynamic_ps_timeout.i = getelementptr inbounds %struct.ieee80211_conf, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %dynamic_ps_timeout.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dynamic_ps_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp sgt i32 %17, 0
  br i1 %cmp.i, label %if.then2.i, label %if.else.i.ieee80211_offchannel_ps_disable.exit_crit_edge

if.else.i.ieee80211_offchannel_ps_disable.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_offchannel_ps_disable.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_send_nullfunc(ptr noundef %13, ptr noundef %sdata.074, i1 noundef zeroext false) #8
  %dynamic_ps_timer.i = getelementptr inbounds %struct.ieee80211_local, ptr %13, i32 0, i32 129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %dynamic_ps_timeout.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dynamic_ps_timeout.i, align 8
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %20) #8
  %add.i = add i32 %call2.i.i, %18
  %call6.i = tail call i32 @mod_timer(ptr noundef %dynamic_ps_timer.i, i32 noundef %add.i) #8
  br label %ieee80211_offchannel_ps_disable.exit

ieee80211_offchannel_ps_disable.exit:             ; preds = %if.then2.i, %if.else.i.ieee80211_offchannel_ps_disable.exit_crit_edge, %if.then.i
  tail call void @ieee80211_sta_reset_beacon_monitor(ptr noundef %sdata.074) #8
  tail call void @ieee80211_sta_reset_conn_monitor(ptr noundef %sdata.074) #8
  br label %if.end42

if.end42:                                         ; preds = %ieee80211_offchannel_ps_disable.exit, %land.lhs.true.if.end42_crit_edge, %if.end36.if.end42_crit_edge
  %call44 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end42.for.inc_crit_edge, label %if.then46

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %enable_beacon = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.074, i32 0, i32 59, i32 1, i32 17
  %21 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %enable_beacon, align 1
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata.074, i32 noundef 512) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %if.end42.for.inc_crit_edge, %if.end34.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %sdata.074 to i32
  call void @__asan_load4_noabort(i32 %22)
  %sdata.0 = load ptr, ptr %sdata.074, align 8
  %cmp.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #8
  tail call void @ieee80211_wake_queues_by_reason(ptr noundef %local, i32 noundef 65535, i32 noundef 6, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_ready_on_channel(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %hw_roc_start_time = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 142
  %1 = ptrtoint ptr %hw_roc_start_time to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %hw_roc_start_time, align 8
  tail call fastcc void @trace_api_ready_on_channel(ptr noundef %hw)
  %hw_roc_start = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 140
  tail call void @ieee80211_queue_work(ptr noundef %hw, ptr noundef %hw_roc_start) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_ready_on_channel(ptr noundef %local) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_ready_on_channel, i32 0, i32 1), ptr blockaddress(@trace_api_ready_on_channel, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  %call42 = tail call i32 @__traceiter_api_ready_on_channel(ptr noundef null, ptr noundef %local) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_ready_on_channel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_ready_on_channel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_ready_on_channel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_api_ready_on_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2267, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_start_next_roc(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !85

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %1 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %roc_list, align 4
  %cmp.i.not = icmp eq ptr %2, %roc_list
  br i1 %cmp.i.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_run_deferred_scan(ptr noundef %local) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %in_reconfig = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 36
  %3 = ptrtoint ptr %in_reconfig to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_reconfig, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool28.not = icmp eq i8 %4, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %started, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool33.not = icmp eq i8 %6, 0
  br i1 %tobool33.not, label %if.end87, label %land.rhs39

land.rhs39:                                       ; preds = %if.end30
  %.b103 = load i1, ptr @ieee80211_start_next_roc.__already_done, align 1
  br i1 %.b103, label %land.rhs39.cleanup_crit_edge, label %if.then50, !prof !79

land.rhs39.cleanup_crit_edge:                     ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_start_next_roc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 401, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end87:                                         ; preds = %if.end30
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 57
  %9 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remain_on_channel, align 4
  %tobool88.not = icmp eq ptr %10, null
  br i1 %tobool88.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_ieee80211_start_next_roc(ptr noundef %local)
  br label %cleanup

if.else:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %roc_work = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138
  %call90 = tail call i32 @round_jiffies_relative(i32 noundef 50) #8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %local, ptr noundef %roc_work, i32 noundef %call90) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then89, %if.then50, %land.rhs39.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_run_deferred_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ieee80211_start_next_roc(ptr noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !85

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %1 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %roc_list, align 4
  %cmp.i351.not = icmp eq ptr %2, %roc_list
  br i1 %cmp.i351.not, label %do.end43, label %if.end59, !prof !85

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #8
  br label %cleanup259

if.end59:                                         ; preds = %if.end
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %started, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool63.not = icmp eq i8 %4, 0
  br i1 %tobool63.not, label %if.end95, label %do.end79, !prof !79

do.end79:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef null) #8
  br label %cleanup259

if.end95:                                         ; preds = %if.end59
  %duration = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %duration, align 4
  %type97 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 14
  %7 = ptrtoint ptr %type97 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type97, align 8
  %9 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.0354 = load ptr, ptr %roc_list, align 8
  %cmp104.not355 = icmp eq ptr %tmp.0354, %roc_list
  br i1 %cmp104.not355, label %if.end95.for.end_crit_edge, label %for.body.lr.ph

if.end95.for.end_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end95
  %sdata110 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 1
  %chan112 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.0359 = phi ptr [ %tmp.0354, %for.body.lr.ph ], [ %tmp.0, %for.inc.for.body_crit_edge ]
  %type.0358 = phi i32 [ %8, %for.body.lr.ph ], [ %type.1, %for.inc.for.body_crit_edge ]
  %min_dur.0357 = phi i32 [ %6, %for.body.lr.ph ], [ %min_dur.1, %for.inc.for.body_crit_edge ]
  %max_dur.0356 = phi i32 [ %6, %for.body.lr.ph ], [ %max_dur.1, %for.inc.for.body_crit_edge ]
  %cmp107 = icmp eq ptr %tmp.0359, %2
  br i1 %cmp107, label %for.body.for.inc_crit_edge, label %if.end109

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end109:                                        ; preds = %for.body
  %sdata = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0359, i32 0, i32 1
  %10 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdata, align 8
  %12 = ptrtoint ptr %sdata110 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdata110, align 8
  %cmp111.not = icmp eq ptr %11, %13
  br i1 %cmp111.not, label %lor.lhs.false, label %if.end109.for.end_crit_edge

if.end109.for.end_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end109
  %chan = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0359, i32 0, i32 2
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  %16 = ptrtoint ptr %chan112 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan112, align 4
  %cmp113.not = icmp eq ptr %15, %17
  br i1 %cmp113.not, label %if.end115, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end115:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %duration116 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0359, i32 0, i32 9
  %18 = ptrtoint ptr %duration116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %duration116, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %max_dur.0356)
  %21 = tail call i32 @llvm.umin.i32(i32 %19, i32 %min_dur.0357)
  %type126 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0359, i32 0, i32 14
  %22 = ptrtoint ptr %type126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type126, align 8
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %type.0358)
  br label %for.inc

for.inc:                                          ; preds = %if.end115, %for.body.for.inc_crit_edge
  %max_dur.1 = phi i32 [ %max_dur.0356, %for.body.for.inc_crit_edge ], [ %20, %if.end115 ]
  %min_dur.1 = phi i32 [ %min_dur.0357, %for.body.for.inc_crit_edge ], [ %21, %if.end115 ]
  %type.1 = phi i32 [ %type.0358, %for.body.for.inc_crit_edge ], [ %24, %if.end115 ]
  %25 = ptrtoint ptr %tmp.0359 to i32
  call void @__asan_load4_noabort(i32 %25)
  %tmp.0 = load ptr, ptr %tmp.0359, align 8
  %cmp104.not = icmp eq ptr %tmp.0, %roc_list
  br i1 %cmp104.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end109.for.end_crit_edge, %if.end95.for.end_crit_edge
  %max_dur.0.lcssa = phi i32 [ %6, %if.end95.for.end_crit_edge ], [ %max_dur.0356, %if.end109.for.end_crit_edge ], [ %max_dur.0356, %lor.lhs.false.for.end_crit_edge ], [ %max_dur.1, %for.inc.for.end_crit_edge ]
  %min_dur.0.lcssa = phi i32 [ %6, %if.end95.for.end_crit_edge ], [ %min_dur.0357, %if.end109.for.end_crit_edge ], [ %min_dur.0357, %lor.lhs.false.for.end_crit_edge ], [ %min_dur.1, %for.inc.for.end_crit_edge ]
  %type.0.lcssa = phi i32 [ %8, %if.end95.for.end_crit_edge ], [ %type.0358, %if.end109.for.end_crit_edge ], [ %type.0358, %lor.lhs.false.for.end_crit_edge ], [ %type.1, %for.inc.for.end_crit_edge ]
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %27, i32 0, i32 57
  %28 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remain_on_channel, align 4
  %tobool138.not = icmp eq ptr %29, null
  br i1 %tobool138.not, label %if.else, label %if.then139

if.then139:                                       ; preds = %for.end
  %sdata140 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 1
  %30 = ptrtoint ptr %sdata140 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdata140, align 8
  %chan141 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 2
  %32 = ptrtoint ptr %chan141 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan141, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 684) #8
  tail call fastcc void @trace_drv_remain_on_channel(ptr noundef %local, ptr noundef %31, ptr noundef %33, i32 noundef %max_dur.0.lcssa, i32 noundef %type.0.lcssa) #8
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %remain_on_channel.i = getelementptr inbounds %struct.ieee80211_ops, ptr %35, i32 0, i32 57
  %36 = ptrtoint ptr %remain_on_channel.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remain_on_channel.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %31, i32 0, i32 59
  %call.i352 = tail call i32 %37(ptr noundef %local, ptr noundef %vif.i, ptr noundef %33, i32 noundef %max_dur.0.lcssa, i32 noundef %type.0.lcssa) #8
  tail call fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %call.i352) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %tobool143.not = icmp eq i32 %call.i352, 0
  br i1 %tobool143.not, label %for.cond184.preheader, label %do.end147

for.cond184.preheader:                            ; preds = %if.then139
  %38 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp.2371 = load ptr, ptr %roc_list, align 8
  %cmp187.not372 = icmp eq ptr %tmp.2371, %roc_list
  br i1 %cmp187.not372, label %for.cond184.preheader.cleanup259_crit_edge, label %for.cond184.preheader.for.body190_crit_edge

for.cond184.preheader.for.body190_crit_edge:      ; preds = %for.cond184.preheader
  br label %for.body190

for.cond184.preheader.cleanup259_crit_edge:       ; preds = %for.cond184.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup259

do.end147:                                        ; preds = %if.then139
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %39 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call.i352) #11
  %41 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %tmp.1368 = load ptr, ptr %roc_list, align 8
  %cmp156.not369 = icmp eq ptr %tmp.1368, %roc_list
  br i1 %cmp156.not369, label %do.end147.for.end176_crit_edge, label %do.end147.for.body159_crit_edge

do.end147.for.body159_crit_edge:                  ; preds = %do.end147
  br label %for.body159

do.end147.for.end176_crit_edge:                   ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end176

for.body159:                                      ; preds = %if.end168.for.body159_crit_edge, %do.end147.for.body159_crit_edge
  %tmp.1370 = phi ptr [ %tmp.1, %if.end168.for.body159_crit_edge ], [ %tmp.1368, %do.end147.for.body159_crit_edge ]
  %sdata160 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.1370, i32 0, i32 1
  %42 = ptrtoint ptr %sdata160 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdata160, align 8
  %44 = ptrtoint ptr %sdata140 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdata140, align 8
  %cmp162.not = icmp eq ptr %43, %45
  br i1 %cmp162.not, label %lor.lhs.false163, label %for.body159.for.end176_crit_edge

for.body159.for.end176_crit_edge:                 ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end176

lor.lhs.false163:                                 ; preds = %for.body159
  %chan164 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.1370, i32 0, i32 2
  %46 = ptrtoint ptr %chan164 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chan164, align 4
  %48 = ptrtoint ptr %chan141 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chan141, align 4
  %cmp166.not = icmp eq ptr %47, %49
  br i1 %cmp166.not, label %if.end168, label %lor.lhs.false163.for.end176_crit_edge

lor.lhs.false163.for.end176_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end176

if.end168:                                        ; preds = %lor.lhs.false163
  %started169 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.1370, i32 0, i32 3
  %50 = ptrtoint ptr %started169 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %started169, align 8
  %abort = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.1370, i32 0, i32 4
  %51 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %abort, align 1
  %52 = ptrtoint ptr %tmp.1370 to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp.1 = load ptr, ptr %tmp.1370, align 8
  %cmp156.not = icmp eq ptr %tmp.1, %roc_list
  br i1 %cmp156.not, label %if.end168.for.end176_crit_edge, label %if.end168.for.body159_crit_edge

if.end168.for.body159_crit_edge:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body159

if.end168.for.end176_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end176

for.end176:                                       ; preds = %if.end168.for.end176_crit_edge, %lor.lhs.false163.for.end176_crit_edge, %for.body159.for.end176_crit_edge, %do.end147.for.end176_crit_edge
  %hw_roc_done = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 141
  tail call void @ieee80211_queue_work(ptr noundef %local, ptr noundef %hw_roc_done) #8
  br label %cleanup259

for.body190:                                      ; preds = %if.end199.for.body190_crit_edge, %for.cond184.preheader.for.body190_crit_edge
  %tmp.2373 = phi ptr [ %tmp.2, %if.end199.for.body190_crit_edge ], [ %tmp.2371, %for.cond184.preheader.for.body190_crit_edge ]
  %sdata191 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.2373, i32 0, i32 1
  %53 = ptrtoint ptr %sdata191 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdata191, align 8
  %55 = ptrtoint ptr %sdata140 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdata140, align 8
  %cmp193.not = icmp eq ptr %54, %56
  br i1 %cmp193.not, label %lor.lhs.false194, label %for.body190.cleanup259_crit_edge

for.body190.cleanup259_crit_edge:                 ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup259

lor.lhs.false194:                                 ; preds = %for.body190
  %chan195 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.2373, i32 0, i32 2
  %57 = ptrtoint ptr %chan195 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan195, align 4
  %59 = ptrtoint ptr %chan141 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chan141, align 4
  %cmp197.not = icmp eq ptr %58, %60
  br i1 %cmp197.not, label %if.end199, label %lor.lhs.false194.cleanup259_crit_edge

lor.lhs.false194.cleanup259_crit_edge:            ; preds = %lor.lhs.false194
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup259

if.end199:                                        ; preds = %lor.lhs.false194
  %started200 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.2373, i32 0, i32 3
  %61 = ptrtoint ptr %started200 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %started200, align 8
  %62 = ptrtoint ptr %tmp.2373 to i32
  call void @__asan_load4_noabort(i32 %62)
  %tmp.2 = load ptr, ptr %tmp.2373, align 8
  %cmp187.not = icmp eq ptr %tmp.2, %roc_list
  br i1 %cmp187.not, label %if.end199.cleanup259_crit_edge, label %if.end199.for.body190_crit_edge

if.end199.for.body190_crit_edge:                  ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body190

if.end199.cleanup259_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup259

if.else:                                          ; preds = %for.end
  %chan208 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 2
  %63 = ptrtoint ptr %chan208 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chan208, align 4
  %_oper_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86
  %65 = ptrtoint ptr %_oper_chandef to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_oper_chandef, align 4
  %cmp210 = icmp eq ptr %64, %66
  br i1 %cmp210, label %land.lhs.true, label %if.else.land.end217_crit_edge

if.else.land.end217_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end217

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %width = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 1
  %67 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %width, align 4
  %69 = add i32 %68, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %69)
  %70 = icmp ult i32 %69, -2
  br label %land.end217

land.end217:                                      ; preds = %land.lhs.true, %if.else.land.end217_crit_edge
  %71 = phi i1 [ false, %if.else.land.end217_crit_edge ], [ %70, %land.lhs.true ]
  %on_channel = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 7
  %frombool = zext i1 %71 to i8
  %72 = ptrtoint ptr %on_channel to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %frombool, ptr %on_channel, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %local) #8
  %73 = ptrtoint ptr %on_channel to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %on_channel, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool219.not = icmp eq i8 %74, 0
  br i1 %tobool219.not, label %if.then220, label %land.end217.if.end223_crit_edge

land.end217.if.end223_crit_edge:                  ; preds = %land.end217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

if.then220:                                       ; preds = %land.end217
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_offchannel_stop_vifs(ptr noundef %local)
  %75 = ptrtoint ptr %chan208 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chan208, align 4
  %tmp_channel = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 87
  %77 = ptrtoint ptr %tmp_channel to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %tmp_channel, align 8
  %call222 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef 0) #8
  br label %if.end223

if.end223:                                        ; preds = %if.then220, %land.end217.if.end223_crit_edge
  %roc_work = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %min_dur.0.lcssa) #8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %local, ptr noundef %roc_work, i32 noundef %call2.i) #8
  %78 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %tmp.3374 = load ptr, ptr %roc_list, align 8
  %cmp234.not375 = icmp eq ptr %tmp.3374, %roc_list
  br i1 %cmp234.not375, label %if.end223.cleanup259_crit_edge, label %for.body237.lr.ph

if.end223.cleanup259_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup259

for.body237.lr.ph:                                ; preds = %if.end223
  %sdata239 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %2, i32 0, i32 1
  br label %for.body237

for.body237:                                      ; preds = %if.end246.for.body237_crit_edge, %for.body237.lr.ph
  %tmp.3376 = phi ptr [ %tmp.3374, %for.body237.lr.ph ], [ %tmp.3, %if.end246.for.body237_crit_edge ]
  %sdata238 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.3376, i32 0, i32 1
  %79 = ptrtoint ptr %sdata238 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sdata238, align 8
  %81 = ptrtoint ptr %sdata239 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sdata239, align 8
  %cmp240.not = icmp eq ptr %80, %82
  br i1 %cmp240.not, label %lor.lhs.false241, label %for.body237.cleanup259_crit_edge

for.body237.cleanup259_crit_edge:                 ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup259

lor.lhs.false241:                                 ; preds = %for.body237
  %chan242 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.3376, i32 0, i32 2
  %83 = ptrtoint ptr %chan242 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chan242, align 4
  %85 = ptrtoint ptr %chan208 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chan208, align 4
  %cmp244.not = icmp eq ptr %84, %86
  br i1 %cmp244.not, label %if.end246, label %lor.lhs.false241.cleanup259_crit_edge

lor.lhs.false241.cleanup259_crit_edge:            ; preds = %lor.lhs.false241
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup259

if.end246:                                        ; preds = %lor.lhs.false241
  %87 = ptrtoint ptr %on_channel to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %on_channel, align 4, !range !78
  %on_channel249 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.3376, i32 0, i32 7
  %89 = ptrtoint ptr %on_channel249 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %on_channel249, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef %tmp.3376, i32 noundef %90)
  %91 = ptrtoint ptr %tmp.3376 to i32
  call void @__asan_load4_noabort(i32 %91)
  %tmp.3 = load ptr, ptr %tmp.3376, align 8
  %cmp234.not = icmp eq ptr %tmp.3, %roc_list
  br i1 %cmp234.not, label %if.end246.cleanup259_crit_edge, label %if.end246.for.body237_crit_edge

if.end246.for.body237_crit_edge:                  ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body237

if.end246.cleanup259_crit_edge:                   ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup259

cleanup259:                                       ; preds = %if.end246.cleanup259_crit_edge, %lor.lhs.false241.cleanup259_crit_edge, %for.body237.cleanup259_crit_edge, %if.end223.cleanup259_crit_edge, %if.end199.cleanup259_crit_edge, %lor.lhs.false194.cleanup259_crit_edge, %for.body190.cleanup259_crit_edge, %for.end176, %for.cond184.preheader.cleanup259_crit_edge, %do.end79, %do.end43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_remain_on_channel_expired(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_api_remain_on_channel_expired(ptr noundef %hw)
  %hw_roc_done = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 141
  tail call void @ieee80211_queue_work(ptr noundef %hw, ptr noundef %hw_roc_done) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_remain_on_channel_expired(ptr noundef %local) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_remain_on_channel_expired, i32 0, i32 1), ptr blockaddress(@trace_api_remain_on_channel_expired, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %call42 = tail call i32 @__traceiter_api_remain_on_channel_expired(ptr noundef null, ptr noundef %local) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_remain_on_channel_expired, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_remain_on_channel_expired, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_remain_on_channel_expired.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_api_remain_on_channel_expired.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2272, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_remain_on_channel(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, ptr noundef %chan, i32 noundef %duration, ptr nocapture noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdev, i32 -8
  %local1 = getelementptr i8, ptr %wdev, i32 1084
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #8
  %call2 = tail call fastcc i32 @ieee80211_start_roc_work(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %chan, i32 noundef %duration, ptr noundef %cookie, ptr noundef null, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %mtx) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_start_roc_work(ptr noundef %local, ptr noundef %sdata, ptr noundef %channel, i32 noundef %duration, ptr nocapture noundef %cookie, ptr noundef %txskb, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !85

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %freq_offset = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 2
  %1 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %freq_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool25.not = icmp eq i16 %2, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup127_crit_edge

if.end.cleanup127_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end27:                                         ; preds = %if.end
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %3 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %use_chanctx, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool28.not = icmp eq i8 %4, 0
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %land.lhs.true

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end27
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %6, i32 0, i32 57
  %7 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remain_on_channel, align 4
  %tobool29.not = icmp eq ptr %8, null
  br i1 %tobool29.not, label %land.lhs.true.cleanup127_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true.cleanup127_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end27.if.end31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 64) #12
  %tobool33.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not, label %if.end31.cleanup127_crit_edge, label %if.end35

if.end31.cleanup127_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duration)
  %tobool36.not = icmp eq i32 %duration, 0
  %spec.store.select = select i1 %tobool36.not, i32 10, i32 %duration
  %chan = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %channel, ptr %chan, align 4
  %duration39 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %duration39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %duration39, align 4
  %req_duration = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %req_duration to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %req_duration, align 8
  %frame = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txskb, ptr %frame, align 4
  %type40 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %type40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type, ptr %type40, align 8
  %sdata41 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %sdata41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sdata, ptr %sdata41, align 8
  %tobool42.not = icmp eq ptr %txskb, null
  br i1 %tobool42.not, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i64 @ieee80211_mgmt_tx_cookie(ptr noundef %local) #8
  %cookie45 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %cookie45 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call44, ptr %cookie45, align 8
  %17 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call44, ptr %cookie, align 8
  br label %if.end47

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cookie, align 8
  %mgmt_tx_cookie = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %mgmt_tx_cookie to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %mgmt_tx_cookie, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then43
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %21 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %roc_list, align 4
  %cmp.i.not = icmp eq ptr %22, %roc_list
  br i1 %cmp.i.not, label %land.lhs.true50, label %if.end47.if.end68_crit_edge

if.end47.if.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true50:                                  ; preds = %if.end47
  %scanning = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 67
  %23 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scanning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool51.not = icmp eq i32 %24, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %land.lhs.true50.if.end68_crit_edge

land.lhs.true50.if.end68_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %call53 = tail call zeroext i1 @ieee80211_is_radar_required(ptr noundef %local) #8
  br i1 %call53, label %land.lhs.true52.if.end68_crit_edge, label %if.then54

land.lhs.true52.if.end68_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then54:                                        ; preds = %land.lhs.true52
  %ops55 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %25 = ptrtoint ptr %ops55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops55, align 4
  %remain_on_channel56 = getelementptr inbounds %struct.ieee80211_ops, ptr %26, i32 0, i32 57
  %27 = ptrtoint ptr %remain_on_channel56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remain_on_channel56, align 4
  %tobool57.not = icmp eq ptr %28, null
  br i1 %tobool57.not, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.then54
  %prev.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %30, ptr noundef %roc_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then58.list_add_tail.exit_crit_edge

if.then58.list_add_tail.exit_crit_edge:           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %roc_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %30, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then58.list_add_tail.exit_crit_edge
  %roc_work = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138
  tail call void @ieee80211_queue_delayed_work(ptr noundef %local, ptr noundef %roc_work, i32 noundef 0) #8
  br label %cleanup127

if.else60:                                        ; preds = %if.then54
  %call61 = tail call fastcc i32 @drv_remain_on_channel(ptr noundef %local, ptr noundef %sdata, ptr noundef %channel, i32 noundef %spec.store.select, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup127

if.end64:                                         ; preds = %if.else60
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %started, align 8
  %prev.i210 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139, i32 1
  %36 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i210, align 4
  %call.i.i211 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %37, ptr noundef %roc_list) #8
  br i1 %call.i.i211, label %if.end.i.i213, label %if.end64.cleanup127_crit_edge

if.end64.cleanup127_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end.i.i213:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %prev.i210, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %roc_list, ptr %call7.i.i, align 8
  %prev3.i.i212 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i212 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i212, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call7.i.i, ptr %37, align 4
  br label %cleanup127

if.end68:                                         ; preds = %land.lhs.true52.if.end68_crit_edge, %land.lhs.true50.if.end68_crit_edge, %if.end47.if.end68_crit_edge
  %42 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp.0245 = load ptr, ptr %roc_list, align 8
  %cmp73.not246 = icmp eq ptr %tmp.0245, %roc_list
  br i1 %cmp73.not246, label %if.end68.if.then123_crit_edge, label %for.body.lr.ph

if.end68.if.then123_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then123

for.body.lr.ph:                                   ; preds = %if.end68
  %ops91 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %wiphy97 = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.0248 = phi ptr [ %tmp.0245, %for.body.lr.ph ], [ %tmp.0, %for.inc.for.body_crit_edge ]
  %combine_started.0.off0247 = phi i1 [ true, %for.body.lr.ph ], [ %combine_started.2.off0, %for.inc.for.body_crit_edge ]
  %chan76 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 2
  %43 = ptrtoint ptr %chan76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan76, align 4
  %cmp77.not = icmp eq ptr %44, %channel
  br i1 %cmp77.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %sdata78 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 1
  %45 = ptrtoint ptr %sdata78 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdata78, align 8
  %cmp79.not = icmp eq ptr %46, %sdata
  br i1 %cmp79.not, label %if.end81, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end81:                                         ; preds = %lor.lhs.false
  %started82 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 3
  %47 = ptrtoint ptr %started82 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %started82, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool83.not = icmp eq i8 %48, 0
  br i1 %tobool83.not, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end81
  %49 = ptrtoint ptr %tmp.0248 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tmp.0248, align 4
  %call.i.i215 = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %tmp.0248, ptr noundef %50) #8
  br i1 %call.i.i215, label %if.end.i.i217, label %if.then84.cleanup127_crit_edge

if.then84.cleanup127_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end.i.i217:                                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %call7.i.i, align 8
  %prev3.i.i216 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i216 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %tmp.0248, ptr %prev3.i.i216, align 4
  %54 = ptrtoint ptr %tmp.0248 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call7.i.i, ptr %tmp.0248, align 4
  br label %cleanup127

if.end87:                                         ; preds = %if.end81
  br i1 %combine_started.0.off0247, label %if.end90, label %if.end87.for.inc_crit_edge

if.end87.for.inc_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end90:                                         ; preds = %if.end87
  %55 = ptrtoint ptr %ops91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops91, align 4
  %remain_on_channel92 = getelementptr inbounds %struct.ieee80211_ops, ptr %56, i32 0, i32 57
  %57 = ptrtoint ptr %remain_on_channel92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %remain_on_channel92, align 4
  %tobool93.not = icmp eq ptr %58, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  br i1 %tobool93.not, label %if.then94, label %if.end23.i

if.then94:                                        ; preds = %if.end90
  %start_time = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 8
  %60 = ptrtoint ptr %start_time to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %start_time, align 8
  %sub = sub i32 %59, %61
  %call95 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #8
  %62 = ptrtoint ptr %wiphy97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wiphy97, align 8
  %max_remain_on_channel_duration = getelementptr inbounds %struct.wiphy, ptr %63, i32 0, i32 42
  %64 = ptrtoint ptr %max_remain_on_channel_duration to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %max_remain_on_channel_duration, align 8
  %conv = zext i16 %65 to i32
  %66 = ptrtoint ptr %duration39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %duration39, align 4
  %add = add i32 %67, %call95
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp99 = icmp ugt i32 %add, %conv
  br i1 %cmp99, label %if.then94.for.inc_crit_edge, label %if.end102

if.then94.for.inc_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end102:                                        ; preds = %if.then94
  %68 = ptrtoint ptr %tmp.0248 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tmp.0248, align 4
  %call.i.i218 = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %tmp.0248, ptr noundef %69) #8
  br i1 %call.i.i218, label %if.end.i.i221, label %if.end102.list_add.exit222_crit_edge

if.end102.list_add.exit222_crit_edge:             ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit222

if.end.i.i221:                                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i219 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i219 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %prev1.i.i219, align 4
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %call7.i.i, align 8
  %prev3.i.i220 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i220 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %tmp.0248, ptr %prev3.i.i220, align 4
  %73 = ptrtoint ptr %tmp.0248 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %call7.i.i, ptr %tmp.0248, align 4
  br label %list_add.exit222

list_add.exit222:                                 ; preds = %if.end.i.i221, %if.end102.list_add.exit222_crit_edge
  %on_channel = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 7
  %74 = ptrtoint ptr %on_channel to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %on_channel, align 4, !range !78
  %on_channel106 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %on_channel106 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %on_channel106, align 4
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef nonnull %call7.i.i, i32 noundef %59)
  %call.i223 = tail call fastcc i32 @ieee80211_end_finished_rocs(ptr noundef %local, i32 noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call.i223)
  %cmp.i224 = icmp eq i32 %call.i223, 2147483647
  br i1 %cmp.i224, label %list_add.exit222.cleanup127_crit_edge, label %if.end.i

list_add.exit222.cleanup127_crit_edge:            ; preds = %list_add.exit222
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end.i:                                         ; preds = %list_add.exit222
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 9
  %77 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %workqueue.i, align 8
  %roc_work.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138
  %call.i.i225 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %roc_work.i, i32 noundef %call.i223) #8
  br label %cleanup127

if.end23.i:                                       ; preds = %if.end90
  %hw_begun.i = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 5
  %79 = ptrtoint ptr %hw_begun.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %hw_begun.i, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool24.not.i = icmp eq i8 %80, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i, label %if.end23.i.if.end27.i_crit_edge

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end23.i
  %81 = ptrtoint ptr %duration39 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %duration39, align 4
  %duration25.i = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 9
  %83 = ptrtoint ptr %duration25.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %duration25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp.i226 = icmp ugt i32 %82, %84
  br i1 %cmp.i226, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.if.end27.i_crit_edge

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end27.i:                                       ; preds = %land.lhs.true.i.if.end27.i_crit_edge, %if.end23.i.if.end27.i_crit_edge
  %start_time.i = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 8
  %85 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %start_time.i, align 8
  %duration28.i = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 9
  %87 = ptrtoint ptr %duration28.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %duration28.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %88) #8
  %add.i = sub i32 %86, %59
  %sub.i = add i32 %add.i, %call2.i.i
  %89 = ptrtoint ptr %duration39 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %duration39, align 4
  %call30.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %call30.i)
  %cmp31.i = icmp ugt i32 %90, %call30.i
  br i1 %cmp31.i, label %if.end27.i.for.inc_crit_edge, label %if.end33.i

if.end27.i.for.inc_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end33.i:                                       ; preds = %if.end27.i
  %hw_begun.i.le = getelementptr inbounds %struct.ieee80211_roc_work, ptr %tmp.0248, i32 0, i32 5
  %91 = ptrtoint ptr %tmp.0248 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tmp.0248, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %tmp.0248, ptr noundef %92) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end33.i.list_add.exit.i_crit_edge

if.end33.i.list_add.exit.i_crit_edge:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %94 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %tmp.0248, ptr %prev3.i.i.i, align 4
  %96 = ptrtoint ptr %tmp.0248 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call7.i.i, ptr %tmp.0248, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end33.i.list_add.exit.i_crit_edge
  %97 = ptrtoint ptr %hw_begun.i.le to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %hw_begun.i.le, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool36.not.i = icmp eq i8 %98, 0
  br i1 %tobool36.not.i, label %list_add.exit.i.cleanup127_crit_edge, label %if.then37.i

list_add.exit.i.cleanup127_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.then37.i:                                      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %hw_begun38.i = getelementptr inbounds %struct.ieee80211_roc_work, ptr %call7.i.i, i32 0, i32 5
  %99 = ptrtoint ptr %hw_begun38.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %hw_begun38.i, align 2
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef %call7.i.i, i32 noundef %59) #8
  br label %cleanup127

for.inc:                                          ; preds = %if.end27.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.then94.for.inc_crit_edge, %if.end87.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %combine_started.2.off0 = phi i1 [ %combine_started.0.off0247, %for.body.for.inc_crit_edge ], [ %combine_started.0.off0247, %lor.lhs.false.for.inc_crit_edge ], [ false, %if.end87.for.inc_crit_edge ], [ false, %land.lhs.true.i.for.inc_crit_edge ], [ false, %if.end27.i.for.inc_crit_edge ], [ false, %if.then94.for.inc_crit_edge ]
  %100 = ptrtoint ptr %tmp.0248 to i32
  call void @__asan_load4_noabort(i32 %100)
  %tmp.0 = load ptr, ptr %tmp.0248, align 8
  %cmp73.not = icmp eq ptr %tmp.0, %roc_list
  br i1 %cmp73.not, label %for.inc.if.then123_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then123_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then123

if.then123:                                       ; preds = %for.inc.if.then123_crit_edge, %if.end68.if.then123_crit_edge
  %prev.i228 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139, i32 1
  %101 = ptrtoint ptr %prev.i228 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i228, align 4
  %call.i.i229 = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %102, ptr noundef %roc_list) #8
  br i1 %call.i.i229, label %if.end.i.i231, label %if.then123.cleanup127_crit_edge

if.then123.cleanup127_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end.i.i231:                                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %prev.i228 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i, ptr %prev.i228, align 4
  %104 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %roc_list, ptr %call7.i.i, align 8
  %prev3.i.i230 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %prev3.i.i230 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev3.i.i230, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %call7.i.i, ptr %102, align 4
  br label %cleanup127

cleanup127:                                       ; preds = %if.end.i.i231, %if.then123.cleanup127_crit_edge, %if.then37.i, %list_add.exit.i.cleanup127_crit_edge, %if.end.i, %list_add.exit222.cleanup127_crit_edge, %if.end.i.i217, %if.then84.cleanup127_crit_edge, %if.end.i.i213, %if.end64.cleanup127_crit_edge, %if.then63, %list_add_tail.exit, %if.end31.cleanup127_crit_edge, %land.lhs.true.cleanup127_crit_edge, %if.end.cleanup127_crit_edge
  %retval.0 = phi i32 [ %call61, %if.then63 ], [ -95, %if.end.cleanup127_crit_edge ], [ -95, %land.lhs.true.cleanup127_crit_edge ], [ -12, %if.end31.cleanup127_crit_edge ], [ 0, %list_add_tail.exit ], [ 0, %if.end64.cleanup127_crit_edge ], [ 0, %if.end.i.i213 ], [ 0, %if.then84.cleanup127_crit_edge ], [ 0, %if.end.i.i217 ], [ 0, %if.then123.cleanup127_crit_edge ], [ 0, %if.end.i.i231 ], [ 0, %list_add.exit222.cleanup127_crit_edge ], [ 0, %if.end.i ], [ 0, %if.then37.i ], [ 0, %list_add.exit.i.cleanup127_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_cancel_remain_on_channel(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, i64 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %wdev, i32 1084
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %call2 = tail call fastcc i32 @ieee80211_cancel_roc(ptr noundef %1, i64 noundef %cookie, i1 noundef zeroext false)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_cancel_roc(ptr noundef %local, i64 noundef %cookie, i1 noundef zeroext %mgmt_tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cookie)
  %tobool.not = icmp eq i64 %cookie, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_roc_start = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 140
  %call = tail call zeroext i1 @flush_work(ptr noundef %hw_roc_start) #8
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #8
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %0 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %roc_list, align 8
  %cmp.not192 = icmp eq ptr %1, %roc_list
  br i1 %cmp.not192, label %if.end.cleanup.sink.split_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %roc.0193 = phi ptr [ %tmp.0194, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %roc.0193 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0194 = load ptr, ptr %roc.0193, align 8
  br i1 %mgmt_tx, label %land.lhs.true13.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %cookie9 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.0193, i32 0, i32 12
  %3 = ptrtoint ptr %cookie9 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cookie9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %cookie)
  %cmp10.not = icmp eq i64 %4, %cookie
  br i1 %cmp10.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true13.critedge:                         ; preds = %for.body
  %mgmt_tx_cookie = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.0193, i32 0, i32 13
  %5 = ptrtoint ptr %mgmt_tx_cookie to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %mgmt_tx_cookie, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %cookie)
  %cmp14.not = icmp eq i64 %6, %cookie
  br i1 %cmp14.not, label %land.lhs.true13.critedge.for.end_crit_edge, label %land.lhs.true13.critedge.for.inc_crit_edge

land.lhs.true13.critedge.for.inc_crit_edge:       ; preds = %land.lhs.true13.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true13.critedge.for.end_crit_edge:       ; preds = %land.lhs.true13.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true13.critedge.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.0194, %roc_list
  br i1 %cmp.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.end:                                          ; preds = %land.lhs.true13.critedge.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %tobool23.not = icmp eq ptr %roc.0193, null
  br i1 %tobool23.not, label %for.end.cleanup.sink.split_crit_edge, label %if.end26

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end26:                                         ; preds = %for.end
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.0193, i32 0, i32 3
  %7 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %started, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool27.not = icmp eq i8 %8, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef nonnull %roc.0193)
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end26
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 57
  %11 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remain_on_channel, align 4
  %tobool30.not = icmp eq ptr %12, null
  br i1 %tobool30.not, label %if.else140, label %if.then31

if.then31:                                        ; preds = %if.end29
  %sdata = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.0193, i32 0, i32 1
  %13 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdata, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 700) #8
  tail call fastcc void @trace_drv_cancel_remain_on_channel(ptr noundef %local, ptr noundef %14) #8
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %cancel_remain_on_channel.i = getelementptr inbounds %struct.ieee80211_ops, ptr %16, i32 0, i32 58
  %17 = ptrtoint ptr %cancel_remain_on_channel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cancel_remain_on_channel.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 59
  %call.i = tail call i32 %18(ptr noundef %local, ptr noundef %vif.i) #8
  tail call fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool33.not = icmp eq i32 %call.i, 0
  br i1 %tobool33.not, label %if.end77, label %land.rhs

land.rhs:                                         ; preds = %if.then31
  %.b185 = load i1, ptr @ieee80211_cancel_roc.__already_done, align 1
  br i1 %.b185, label %land.rhs.cleanup.sink.split_crit_edge, label %if.then43, !prof !79

land.rhs.cleanup.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then43:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_cancel_roc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 721, i32 noundef 9, ptr noundef null) #8
  br label %cleanup.sink.split

if.end77:                                         ; preds = %if.then31
  %19 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %roc_list, align 8
  %cmp91.not196 = icmp eq ptr %20, %roc_list
  br i1 %cmp91.not196, label %if.end77.do.end126_crit_edge, label %if.end77.for.body94_crit_edge

if.end77.for.body94_crit_edge:                    ; preds = %if.end77
  br label %for.body94

if.end77.do.end126_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126

for.body94:                                       ; preds = %if.end98.for.body94_crit_edge, %if.end77.for.body94_crit_edge
  %roc.1198 = phi ptr [ %tmp.1199, %if.end98.for.body94_crit_edge ], [ %20, %if.end77.for.body94_crit_edge ]
  %found.1197 = phi ptr [ %spec.store.select, %if.end98.for.body94_crit_edge ], [ %roc.0193, %if.end77.for.body94_crit_edge ]
  %started95 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.1198, i32 0, i32 3
  %21 = ptrtoint ptr %started95 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %started95, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool96.not = icmp eq i8 %22, 0
  br i1 %tobool96.not, label %for.body94.for.end108_crit_edge, label %if.end98

for.body94.for.end108_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

if.end98:                                         ; preds = %for.body94
  %23 = ptrtoint ptr %roc.1198 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.1199 = load ptr, ptr %roc.1198, align 8
  %cmp99 = icmp eq ptr %roc.1198, %found.1197
  %spec.store.select = select i1 %cmp99, ptr null, ptr %found.1197
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %roc.1198)
  %cmp91.not = icmp eq ptr %tmp.1199, %roc_list
  br i1 %cmp91.not, label %if.end98.for.end108_crit_edge, label %if.end98.for.body94_crit_edge

if.end98.for.body94_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body94

if.end98.for.end108_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.end108:                                       ; preds = %if.end98.for.end108_crit_edge, %for.body94.for.end108_crit_edge
  %found.1.lcssa = phi ptr [ %spec.store.select, %if.end98.for.end108_crit_edge ], [ %found.1197, %for.body94.for.end108_crit_edge ]
  %tobool110.not = icmp eq ptr %found.1.lcssa, null
  br i1 %tobool110.not, label %for.end108.if.end132_crit_edge, label %for.end108.do.end126_crit_edge, !prof !79

for.end108.do.end126_crit_edge:                   ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126

for.end108.if.end132_crit_edge:                   ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

do.end126:                                        ; preds = %for.end108.do.end126_crit_edge, %if.end77.do.end126_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 740, i32 noundef 9, ptr noundef null) #8
  br label %if.end132

if.end132:                                        ; preds = %do.end126, %for.end108.if.end132_crit_edge
  tail call void @ieee80211_start_next_roc(ptr noundef %local)
  br label %cleanup.sink.split

if.else140:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %abort = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.0193, i32 0, i32 4
  %24 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %abort, align 1
  %workqueue = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 9
  %25 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %workqueue, align 8
  %roc_work = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138
  %call.i187 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %roc_work, i32 noundef 0) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else140, %if.end132, %if.then43, %land.rhs.cleanup.sink.split_crit_edge, %if.then28, %for.end.cleanup.sink.split_crit_edge, %for.inc.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -2, %if.end.cleanup.sink.split_crit_edge ], [ -2, %for.end.cleanup.sink.split_crit_edge ], [ %call.i, %land.rhs.cleanup.sink.split_crit_edge ], [ %call.i, %if.then43 ], [ 0, %if.end132 ], [ 0, %if.else140 ], [ 0, %if.then28 ], [ -2, %for.inc.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mgmt_tx(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, ptr nocapture noundef readonly %params, ptr noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdev, i32 -8
  %local1 = getelementptr i8, ptr %wdev, i32 1084
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %buf = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %dont_wait_for_ack = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 6
  %4 = ptrtoint ptr %dont_wait_for_ack to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dont_wait_for_ack, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %. = select i1 %tobool.not, i32 2097153, i32 4
  %no_cck = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 5
  %6 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %no_cck, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %or = or i32 %., 134217728
  %flags.1 = select i1 %tobool2.not, i32 %., i32 %or
  %vif = getelementptr i8, ptr %wdev, i32 4072
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %9, label %entry.cleanup265_crit_edge [
    i32 1, label %sw.bb15
    i32 7, label %land.lhs.true18.thread
    i32 10, label %entry.land.lhs.true72_crit_edge
    i32 8, label %entry.sw.bb48_crit_edge
    i32 2, label %entry.sw.bb48_crit_edge481
    i32 3, label %entry.land.lhs.true21_crit_edge
    i32 4, label %entry.land.lhs.true21_crit_edge482
    i32 9, label %entry.land.lhs.true21_crit_edge483
  ]

entry.land.lhs.true21_crit_edge483:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true21

entry.land.lhs.true21_crit_edge482:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true21

entry.land.lhs.true21_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true21

entry.sw.bb48_crit_edge481:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

entry.sw.bb48_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

entry.land.lhs.true72_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true72

entry.cleanup265_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup265

land.lhs.true18.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mesh_id_len = getelementptr i8, ptr %wdev, i32 2732
  %11 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mesh_id_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  %spec.select375 = zext i1 %tobool12.not to i8
  br label %if.end25

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ibss_joined = getelementptr i8, ptr %wdev, i32 4096
  %13 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ibss_joined, align 8, !range !78
  %15 = xor i8 %14, 1
  br label %if.end25

land.lhs.true21:                                  ; preds = %entry.land.lhs.true21_crit_edge, %entry.land.lhs.true21_crit_edge482, %entry.land.lhs.true21_crit_edge483
  %bss = getelementptr i8, ptr %wdev, i32 2316
  %16 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bss, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 4
  %tobool23.not = icmp eq ptr %19, null
  %spec.select376 = zext i1 %tobool23.not to i8
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true21, %sw.bb15, %land.lhs.true18.thread
  %need_offchan.2 = phi i8 [ %15, %sw.bb15 ], [ %spec.select376, %land.lhs.true21 ], [ %spec.select375, %land.lhs.true18.thread ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %3, align 2
  %22 = and i16 %21, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %22)
  %cmp.i400 = icmp eq i16 %22, -12288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %need_offchan.2)
  %extract.t366.not = icmp eq i8 %need_offchan.2, 0
  br i1 %cmp.i400, label %lor.lhs.false, label %if.end25.sw.epilog_crit_edge

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end25
  %u27 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %u27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %u27, align 2
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %24, label %if.end43 [
    i8 4, label %lor.lhs.false.sw.epilog_crit_edge
    i8 15, label %lor.lhs.false.sw.epilog_crit_edge484
    i8 0, label %lor.lhs.false.sw.epilog_crit_edge485
  ]

lor.lhs.false.sw.epilog_crit_edge485:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.sw.epilog_crit_edge484:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end43:                                         ; preds = %lor.lhs.false
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end43.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end43.rcu_read_lock.exit_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end43
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end43.rcu_read_lock.exit_crit_edge
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 2
  %call44 = tail call ptr @sta_info_get_bss(ptr noundef %add.ptr.i, ptr noundef %da) #8
  %call.i401 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i401, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i404

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i404:                               ; preds = %rcu_read_lock.exit
  %call1.i402 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i402)
  %tobool.not.i403 = icmp eq i32 %call1.i402, 0
  br i1 %tobool.not.i403, label %land.lhs.true.i404.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i406

land.lhs.true.i404.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i404
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i406:                              ; preds = %land.lhs.true.i404
  %.b4.i405 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i405, label %land.lhs.true2.i406.rcu_read_unlock.exit_crit_edge, label %if.then.i407

land.lhs.true2.i406.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i406
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i407:                                     ; preds = %land.lhs.true2.i406
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i407, %land.lhs.true2.i406.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i404.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %30 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i408 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i408 to ptr
  %preempt_count.i.i.i.i409 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i409 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i409, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i409, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %rcu_read_unlock.exit.cleanup265_crit_edge, label %rcu_read_unlock.exit.sw.epilog_crit_edge

rcu_read_unlock.exit.sw.epilog_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

rcu_read_unlock.exit.cleanup265_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup265

sw.bb48:                                          ; preds = %entry.sw.bb48_crit_edge, %entry.sw.bb48_crit_edge481
  %mtx.i = getelementptr i8, ptr %wdev, i32 36
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #8
  %associated = getelementptr i8, ptr %wdev, i32 2928
  %34 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %associated, align 8
  %tobool50.not = icmp eq ptr %35, null
  br i1 %tobool50.not, label %sw.bb48.if.end67_crit_edge, label %lor.lhs.false51

sw.bb48.if.end67_crit_edge:                       ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

lor.lhs.false51:                                  ; preds = %sw.bb48
  %offchan = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 1
  %36 = ptrtoint ptr %offchan to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %offchan, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool52.not = icmp eq i8 %37, 0
  br i1 %tobool52.not, label %lor.lhs.false51.if.end67.thread_crit_edge, label %land.lhs.true54

lor.lhs.false51.if.end67.thread_crit_edge:        ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.thread

land.lhs.true54:                                  ; preds = %lor.lhs.false51
  %wait = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 2
  %38 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  br i1 %tobool55.not, label %land.lhs.true54.if.end67.thread_crit_edge, label %land.lhs.true56

land.lhs.true54.if.end67.thread_crit_edge:        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.thread

land.lhs.true56:                                  ; preds = %land.lhs.true54
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %41, i32 0, i32 57
  %42 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remain_on_channel, align 4
  %tobool57.not = icmp eq ptr %43, null
  br i1 %tobool57.not, label %land.lhs.true56.if.end67.thread_crit_edge, label %land.lhs.true58

land.lhs.true56.if.end67.thread_crit_edge:        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.thread

land.lhs.true58:                                  ; preds = %land.lhs.true56
  %bssid = getelementptr inbounds %struct.cfg80211_bss, ptr %35, i32 0, i32 11
  %bssid62 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid, ptr noundef dereferenceable(6) %bssid62, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool65.not = icmp eq i32 %bcmp, 0
  br i1 %tobool65.not, label %land.lhs.true58.if.end67.thread_crit_edge, label %land.lhs.true58.if.end67_crit_edge

land.lhs.true58.if.end67_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true58.if.end67.thread_crit_edge:        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.thread

if.end67.thread:                                  ; preds = %land.lhs.true58.if.end67.thread_crit_edge, %land.lhs.true56.if.end67.thread_crit_edge, %land.lhs.true54.if.end67.thread_crit_edge, %lor.lhs.false51.if.end67.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i) #8
  br label %if.then77

if.end67:                                         ; preds = %land.lhs.true58.if.end67_crit_edge, %sw.bb48.if.end67_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i) #8
  br label %land.lhs.true72

sw.epilog:                                        ; preds = %rcu_read_unlock.exit.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge484, %lor.lhs.false.sw.epilog_crit_edge485, %if.end25.sw.epilog_crit_edge
  br i1 %extract.t366.not, label %sw.epilog.if.then77_crit_edge, label %sw.epilog.land.lhs.true72_crit_edge

sw.epilog.land.lhs.true72_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true72

sw.epilog.if.then77_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

land.lhs.true72:                                  ; preds = %sw.epilog.land.lhs.true72_crit_edge, %if.end67, %entry.land.lhs.true72_crit_edge
  %44 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %params, align 4
  %tobool73.not = icmp eq ptr %45, null
  br i1 %tobool73.not, label %land.lhs.true72.cleanup265_crit_edge, label %if.end112.thread

land.lhs.true72.cleanup265_crit_edge:             ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup265

if.end112.thread:                                 ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #8
  br label %land.lhs.true115

if.then77:                                        ; preds = %sw.epilog.if.then77_crit_edge, %if.end67.thread
  %mtx462 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx462, i32 noundef 0) #8
  %46 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i377 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i377 to ptr
  %preempt_count.i.i.i.i378 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i378, align 4
  %add.i.i.i379 = add i32 %49, 1
  store volatile i32 %add.i.i.i379, ptr %preempt_count.i.i.i.i378, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i380 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i380, label %if.then77.rcu_read_lock.exit387_crit_edge, label %land.lhs.true.i383

if.then77.rcu_read_lock.exit387_crit_edge:        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit387

land.lhs.true.i383:                               ; preds = %if.then77
  %call1.i381 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i381)
  %tobool.not.i382 = icmp eq i32 %call1.i381, 0
  br i1 %tobool.not.i382, label %land.lhs.true.i383.rcu_read_lock.exit387_crit_edge, label %land.lhs.true2.i385

land.lhs.true.i383.rcu_read_lock.exit387_crit_edge: ; preds = %land.lhs.true.i383
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit387

land.lhs.true2.i385:                              ; preds = %land.lhs.true.i383
  %.b4.i384 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i384, label %land.lhs.true2.i385.rcu_read_lock.exit387_crit_edge, label %if.then.i386

land.lhs.true2.i385.rcu_read_lock.exit387_crit_edge: ; preds = %land.lhs.true2.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit387

if.then.i386:                                     ; preds = %land.lhs.true2.i385
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
  br label %rcu_read_lock.exit387

rcu_read_lock.exit387:                            ; preds = %if.then.i386, %land.lhs.true2.i385.rcu_read_lock.exit387_crit_edge, %land.lhs.true.i383.rcu_read_lock.exit387_crit_edge, %if.then77.rcu_read_lock.exit387_crit_edge
  %chanctx_conf83 = getelementptr i8, ptr %wdev, i32 4892
  %50 = ptrtoint ptr %chanctx_conf83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %chanctx_conf83, align 4
  %call85 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true87, label %rcu_read_lock.exit387.do.end95_crit_edge

rcu_read_lock.exit387.do.end95_crit_edge:         ; preds = %rcu_read_lock.exit387
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end95

land.lhs.true87:                                  ; preds = %rcu_read_lock.exit387
  %call88 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true87.do.end95_crit_edge, label %land.lhs.true90

land.lhs.true87.do.end95_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end95

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %.b374 = load i1, ptr @ieee80211_mgmt_tx.__warned, align 1
  br i1 %.b374, label %land.lhs.true90.do.end95_crit_edge, label %if.then92

land.lhs.true90.do.end95_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end95

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_mgmt_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 848, ptr noundef nonnull @.str.1) #8
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %land.lhs.true90.do.end95_crit_edge, %land.lhs.true87.do.end95_crit_edge, %rcu_read_lock.exit387.do.end95_crit_edge
  %tobool97.not = icmp eq ptr %51, null
  %52 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %params, align 4
  %tobool107.not = icmp eq ptr %53, null
  br i1 %tobool97.not, label %if.else105, label %if.then98

if.then98:                                        ; preds = %do.end95
  br i1 %tobool107.not, label %if.then98.land.end_crit_edge, label %land.rhs

if.then98.land.end_crit_edge:                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %cmp103 = icmp ne ptr %53, %55
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then98.land.end_crit_edge
  %56 = phi i1 [ false, %if.then98.land.end_crit_edge ], [ %cmp103, %land.rhs ]
  %frombool = zext i1 %56 to i8
  br label %if.end111

if.else105:                                       ; preds = %do.end95
  br i1 %tobool107.not, label %if.then108, label %if.else105.if.end111_crit_edge

if.else105.if.end111_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then108:                                       ; preds = %if.else105
  %call.i411 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i411, label %if.then108.cleanup_crit_edge, label %land.lhs.true.i414

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i414:                               ; preds = %if.then108
  %call1.i412 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i412)
  %tobool.not.i413 = icmp eq i32 %call1.i412, 0
  br i1 %tobool.not.i413, label %land.lhs.true.i414.cleanup_crit_edge, label %land.lhs.true2.i416

land.lhs.true.i414.cleanup_crit_edge:             ; preds = %land.lhs.true.i414
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true2.i416:                              ; preds = %land.lhs.true.i414
  %.b4.i415 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i415, label %land.lhs.true2.i416.cleanup_crit_edge, label %if.then.i417

land.lhs.true2.i416.cleanup_crit_edge:            ; preds = %land.lhs.true2.i416
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i417:                                     ; preds = %land.lhs.true2.i416
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end111:                                        ; preds = %if.else105.if.end111_crit_edge, %land.end
  %need_offchan.5 = phi i8 [ %frombool, %land.end ], [ 1, %if.else105.if.end111_crit_edge ]
  %call.i422 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i422, label %if.end111.if.end112_crit_edge, label %land.lhs.true.i425

if.end111.if.end112_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

land.lhs.true.i425:                               ; preds = %if.end111
  %call1.i423 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i423)
  %tobool.not.i424 = icmp eq i32 %call1.i423, 0
  br i1 %tobool.not.i424, label %land.lhs.true.i425.if.end112_crit_edge, label %land.lhs.true2.i427

land.lhs.true.i425.if.end112_crit_edge:           ; preds = %land.lhs.true.i425
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

land.lhs.true2.i427:                              ; preds = %land.lhs.true.i425
  %.b4.i426 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i426, label %land.lhs.true2.i427.if.end112_crit_edge, label %if.then.i428

land.lhs.true2.i427.if.end112_crit_edge:          ; preds = %land.lhs.true2.i427
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then.i428:                                     ; preds = %land.lhs.true2.i427
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %if.end112

cleanup:                                          ; preds = %if.then.i417, %land.lhs.true2.i416.cleanup_crit_edge, %land.lhs.true.i414.cleanup_crit_edge, %if.then108.cleanup_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %57 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i418 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i418 to ptr
  %preempt_count.i.i.i.i419 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i419 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i419, align 4
  %sub.i.i.i420 = add i32 %60, -1
  store volatile i32 %sub.i.i.i420, ptr %preempt_count.i.i.i.i419, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %out_unlock

if.end112:                                        ; preds = %if.then.i428, %land.lhs.true2.i427.if.end112_crit_edge, %land.lhs.true.i425.if.end112_crit_edge, %if.end111.if.end112_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %61 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i429 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i429 to ptr
  %preempt_count.i.i.i.i430 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i430 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i430, align 4
  %sub.i.i.i431 = add i32 %64, -1
  store volatile i32 %sub.i.i.i431, ptr %preempt_count.i.i.i.i430, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %need_offchan.5)
  %extract.t369.not = icmp eq i8 %need_offchan.5, 0
  br i1 %extract.t369.not, label %if.end112.if.end119_crit_edge, label %if.end112.land.lhs.true115_crit_edge

if.end112.land.lhs.true115_crit_edge:             ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true115

if.end112.if.end119_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true115:                                 ; preds = %if.end112.land.lhs.true115_crit_edge, %if.end112.thread
  %mtx466473 = phi ptr [ %mtx, %if.end112.thread ], [ %mtx462, %if.end112.land.lhs.true115_crit_edge ]
  %offchan116 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 1
  %65 = ptrtoint ptr %offchan116 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %offchan116, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool117.not = icmp eq i8 %66, 0
  br i1 %tobool117.not, label %land.lhs.true115.out_unlock_crit_edge, label %land.lhs.true115.if.end119_crit_edge

land.lhs.true115.if.end119_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true115.out_unlock_crit_edge:            ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end119:                                        ; preds = %land.lhs.true115.if.end119_crit_edge, %if.end112.if.end119_crit_edge
  %need_offchan.7.off0474 = phi i1 [ true, %land.lhs.true115.if.end119_crit_edge ], [ false, %if.end112.if.end119_crit_edge ]
  %mtx466472 = phi ptr [ %mtx466473, %land.lhs.true115.if.end119_crit_edge ], [ %mtx462, %if.end112.if.end119_crit_edge ]
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %extra_tx_headroom, align 4
  %len = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  %add = add i32 %70, %68
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %tobool121.not = icmp eq ptr %call.i.i, null
  br i1 %tobool121.not, label %if.end119.out_unlock_crit_edge, label %if.end123

if.end119.out_unlock_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end123:                                        ; preds = %if.end119
  %71 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %extra_tx_headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i, align 4
  %add.ptr.i433 = getelementptr i8, ptr %74, i32 %72
  store ptr %add.ptr.i433, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %75 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %76, i32 %72
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %77 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf, align 4
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  %call.i434 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %80) #8
  %81 = call ptr @memcpy(ptr %call.i434, ptr %78, i32 %80)
  %csa_active = getelementptr i8, ptr %wdev, i32 4879
  %82 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %csa_active, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool130.not = icmp eq i8 %83, 0
  br i1 %tobool130.not, label %if.end123.if.end232_crit_edge, label %land.lhs.true132

if.end123.if.end232_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232

land.lhs.true132:                                 ; preds = %if.end123
  %84 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vif, align 8
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %85, label %land.lhs.true132.if.end232_crit_edge [
    i32 3, label %land.lhs.true132.land.lhs.true147_crit_edge
    i32 7, label %land.lhs.true132.land.lhs.true147_crit_edge486
    i32 1, label %land.lhs.true132.land.lhs.true147_crit_edge487
  ]

land.lhs.true132.land.lhs.true147_crit_edge487:   ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true147

land.lhs.true132.land.lhs.true147_crit_edge486:   ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true147

land.lhs.true132.land.lhs.true147_crit_edge:      ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true147

land.lhs.true132.if.end232_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232

land.lhs.true147:                                 ; preds = %land.lhs.true132.land.lhs.true147_crit_edge, %land.lhs.true132.land.lhs.true147_crit_edge486, %land.lhs.true132.land.lhs.true147_crit_edge487
  %n_csa_offsets = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 7
  %87 = ptrtoint ptr %n_csa_offsets to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n_csa_offsets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool148.not = icmp eq i32 %88, 0
  br i1 %tobool148.not, label %land.lhs.true147.if.end232_crit_edge, label %if.then149

land.lhs.true147.if.end232_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232

if.then149:                                       ; preds = %land.lhs.true147
  %89 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i388 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i388 to ptr
  %preempt_count.i.i.i.i389 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i.i389 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i.i389, align 4
  %add.i.i.i390 = add i32 %92, 1
  store volatile i32 %add.i.i.i390, ptr %preempt_count.i.i.i.i389, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i391 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i391, label %if.then149.rcu_read_lock.exit398_crit_edge, label %land.lhs.true.i394

if.then149.rcu_read_lock.exit398_crit_edge:       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit398

land.lhs.true.i394:                               ; preds = %if.then149
  %call1.i392 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i392)
  %tobool.not.i393 = icmp eq i32 %call1.i392, 0
  br i1 %tobool.not.i393, label %land.lhs.true.i394.rcu_read_lock.exit398_crit_edge, label %land.lhs.true2.i396

land.lhs.true.i394.rcu_read_lock.exit398_crit_edge: ; preds = %land.lhs.true.i394
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit398

land.lhs.true2.i396:                              ; preds = %land.lhs.true.i394
  %.b4.i395 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i395, label %land.lhs.true2.i396.rcu_read_lock.exit398_crit_edge, label %if.then.i397

land.lhs.true2.i396.rcu_read_lock.exit398_crit_edge: ; preds = %land.lhs.true2.i396
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit398

if.then.i397:                                     ; preds = %land.lhs.true2.i396
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
  br label %rcu_read_lock.exit398

rcu_read_lock.exit398:                            ; preds = %if.then.i397, %land.lhs.true2.i396.rcu_read_lock.exit398_crit_edge, %land.lhs.true.i394.rcu_read_lock.exit398_crit_edge, %if.then149.rcu_read_lock.exit398_crit_edge
  %93 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vif, align 8
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %94, label %rcu_read_lock.exit398.if.end231_crit_edge [
    i32 3, label %if.then155
    i32 1, label %if.then180
    i32 7, label %if.then202
  ]

rcu_read_lock.exit398.if.end231_crit_edge:        ; preds = %rcu_read_lock.exit398
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then155:                                       ; preds = %rcu_read_lock.exit398
  %u160 = getelementptr i8, ptr %wdev, i32 2544
  %96 = ptrtoint ptr %u160 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %u160, align 8
  %call163 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %land.lhs.true165, label %if.then155.if.end224_crit_edge

if.then155.if.end224_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true165:                                 ; preds = %if.then155
  %call166 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %land.lhs.true165.if.end224_crit_edge, label %land.lhs.true168

land.lhs.true165.if.end224_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true168:                                 ; preds = %land.lhs.true165
  %.b359373 = load i1, ptr @ieee80211_mgmt_tx.__warned.2, align 1
  br i1 %.b359373, label %land.lhs.true168.if.end224_crit_edge, label %land.lhs.true168.if.end224.sink.split_crit_edge

land.lhs.true168.if.end224.sink.split_crit_edge:  ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224.sink.split

land.lhs.true168.if.end224_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then180:                                       ; preds = %rcu_read_lock.exit398
  %presp = getelementptr i8, ptr %wdev, i32 2728
  %98 = ptrtoint ptr %presp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %presp, align 8
  %call187 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %land.lhs.true189, label %if.then180.if.end224_crit_edge

if.then180.if.end224_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true189:                                 ; preds = %if.then180
  %call190 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %land.lhs.true189.if.end224_crit_edge, label %land.lhs.true192

land.lhs.true189.if.end224_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true192:                                 ; preds = %land.lhs.true189
  %.b360372 = load i1, ptr @ieee80211_mgmt_tx.__warned.3, align 1
  br i1 %.b360372, label %land.lhs.true192.if.end224_crit_edge, label %land.lhs.true192.if.end224.sink.split_crit_edge

land.lhs.true192.if.end224.sink.split_crit_edge:  ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224.sink.split

land.lhs.true192.if.end224_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then202:                                       ; preds = %rcu_read_lock.exit398
  %beacon208 = getelementptr i8, ptr %wdev, i32 2956
  %100 = ptrtoint ptr %beacon208 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %beacon208, align 4
  %call210 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %land.lhs.true212, label %if.then202.if.end224_crit_edge

if.then202.if.end224_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true212:                                 ; preds = %if.then202
  %call213 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %land.lhs.true212.if.end224_crit_edge, label %land.lhs.true215

land.lhs.true212.if.end224_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

land.lhs.true215:                                 ; preds = %land.lhs.true212
  %.b361371 = load i1, ptr @ieee80211_mgmt_tx.__warned.4, align 1
  br i1 %.b361371, label %land.lhs.true215.if.end224_crit_edge, label %land.lhs.true215.if.end224.sink.split_crit_edge

land.lhs.true215.if.end224.sink.split_crit_edge:  ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224.sink.split

land.lhs.true215.if.end224_crit_edge:             ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.end224.sink.split:                             ; preds = %land.lhs.true215.if.end224.sink.split_crit_edge, %land.lhs.true192.if.end224.sink.split_crit_edge, %land.lhs.true168.if.end224.sink.split_crit_edge
  %ieee80211_mgmt_tx.__warned.4.sink = phi ptr [ @ieee80211_mgmt_tx.__warned.2, %land.lhs.true168.if.end224.sink.split_crit_edge ], [ @ieee80211_mgmt_tx.__warned.3, %land.lhs.true192.if.end224.sink.split_crit_edge ], [ @ieee80211_mgmt_tx.__warned.4, %land.lhs.true215.if.end224.sink.split_crit_edge ]
  %.sink = phi i32 [ 890, %land.lhs.true168.if.end224.sink.split_crit_edge ], [ 892, %land.lhs.true192.if.end224.sink.split_crit_edge ], [ 894, %land.lhs.true215.if.end224.sink.split_crit_edge ]
  %beacon150.0.ph = phi ptr [ %97, %land.lhs.true168.if.end224.sink.split_crit_edge ], [ %99, %land.lhs.true192.if.end224.sink.split_crit_edge ], [ %101, %land.lhs.true215.if.end224.sink.split_crit_edge ]
  %102 = ptrtoint ptr %ieee80211_mgmt_tx.__warned.4.sink to i32
  call void @__asan_store1_noabort(i32 %102)
  store i1 true, ptr %ieee80211_mgmt_tx.__warned.4.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @.str.1) #8
  br label %if.end224

if.end224:                                        ; preds = %if.end224.sink.split, %land.lhs.true215.if.end224_crit_edge, %land.lhs.true212.if.end224_crit_edge, %if.then202.if.end224_crit_edge, %land.lhs.true192.if.end224_crit_edge, %land.lhs.true189.if.end224_crit_edge, %if.then180.if.end224_crit_edge, %land.lhs.true168.if.end224_crit_edge, %land.lhs.true165.if.end224_crit_edge, %if.then155.if.end224_crit_edge
  %beacon150.0 = phi ptr [ %97, %land.lhs.true168.if.end224_crit_edge ], [ %97, %land.lhs.true165.if.end224_crit_edge ], [ %97, %if.then155.if.end224_crit_edge ], [ %99, %land.lhs.true192.if.end224_crit_edge ], [ %99, %land.lhs.true189.if.end224_crit_edge ], [ %99, %if.then180.if.end224_crit_edge ], [ %101, %land.lhs.true215.if.end224_crit_edge ], [ %101, %land.lhs.true212.if.end224_crit_edge ], [ %101, %if.then202.if.end224_crit_edge ], [ %beacon150.0.ph, %if.end224.sink.split ]
  %tobool225.not = icmp eq ptr %beacon150.0, null
  br i1 %tobool225.not, label %if.end224.if.end231_crit_edge, label %for.cond.preheader

if.end224.if.end231_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

for.cond.preheader:                               ; preds = %if.end224
  %103 = ptrtoint ptr %n_csa_offsets to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %n_csa_offsets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp228479 = icmp sgt i32 %104, 0
  br i1 %cmp228479, label %for.body.lr.ph, label %for.cond.preheader.if.end231_crit_edge

for.cond.preheader.if.end231_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cntdwn_current_counter = getelementptr inbounds %struct.beacon_data, ptr %beacon150.0, i32 0, i32 6
  %csa_offsets = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0480 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %105 = ptrtoint ptr %cntdwn_current_counter to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %cntdwn_current_counter, align 4
  %107 = ptrtoint ptr %csa_offsets to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %csa_offsets, align 4
  %arrayidx = getelementptr i16, ptr %108, i32 %i.0480
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx, align 2
  %idxprom = zext i16 %110 to i32
  %arrayidx230 = getelementptr i8, ptr %call.i434, i32 %idxprom
  %111 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %106, ptr %arrayidx230, align 1
  %inc = add nuw nsw i32 %i.0480, 1
  %112 = ptrtoint ptr %n_csa_offsets to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %n_csa_offsets, align 4
  %cmp228 = icmp slt i32 %inc, %113
  br i1 %cmp228, label %for.body.for.body_crit_edge, label %for.body.if.end231_crit_edge

for.body.if.end231_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end231:                                        ; preds = %for.body.if.end231_crit_edge, %for.cond.preheader.if.end231_crit_edge, %if.end224.if.end231_crit_edge, %rcu_read_lock.exit398.if.end231_crit_edge
  %call.i436 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i436, label %if.end231.rcu_read_unlock.exit446_crit_edge, label %land.lhs.true.i439

if.end231.rcu_read_unlock.exit446_crit_edge:      ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit446

land.lhs.true.i439:                               ; preds = %if.end231
  %call1.i437 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i437)
  %tobool.not.i438 = icmp eq i32 %call1.i437, 0
  br i1 %tobool.not.i438, label %land.lhs.true.i439.rcu_read_unlock.exit446_crit_edge, label %land.lhs.true2.i441

land.lhs.true.i439.rcu_read_unlock.exit446_crit_edge: ; preds = %land.lhs.true.i439
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit446

land.lhs.true2.i441:                              ; preds = %land.lhs.true.i439
  %.b4.i440 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i440, label %land.lhs.true2.i441.rcu_read_unlock.exit446_crit_edge, label %if.then.i442

land.lhs.true2.i441.rcu_read_unlock.exit446_crit_edge: ; preds = %land.lhs.true2.i441
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit446

if.then.i442:                                     ; preds = %land.lhs.true2.i441
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit446

rcu_read_unlock.exit446:                          ; preds = %if.then.i442, %land.lhs.true2.i441.rcu_read_unlock.exit446_crit_edge, %land.lhs.true.i439.rcu_read_unlock.exit446_crit_edge, %if.end231.rcu_read_unlock.exit446_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %114 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i443 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i443 to ptr
  %preempt_count.i.i.i.i444 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i.i.i444 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i.i.i444, align 4
  %sub.i.i.i445 = add i32 %117, -1
  store volatile i32 %sub.i.i.i445, ptr %preempt_count.i.i.i.i444, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end232

if.end232:                                        ; preds = %rcu_read_unlock.exit446, %land.lhs.true147.if.end232_crit_edge, %land.lhs.true132.if.end232_crit_edge, %if.end123.if.end232_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %118 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %flags.1, ptr %cb.i, align 8
  %dev = getelementptr i8, ptr %wdev, i32 1080
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 8
  %121 = getelementptr inbounds %struct.anon.41, ptr %call.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %120, ptr %121, align 8
  %123 = ptrtoint ptr %dont_wait_for_ack to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %dont_wait_for_ack, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool236.not = icmp eq i8 %124, 0
  br i1 %tobool236.not, label %if.then237, label %if.else242

if.then237:                                       ; preds = %if.end232
  %call238 = tail call i32 @ieee80211_attach_ack_skb(ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef %cookie, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.then237.if.end243_crit_edge, label %if.then240

if.then237.if.end243_crit_edge:                   ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243

if.then240:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %out_unlock

if.else242:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 4294967295, ptr %cookie, align 8
  br label %if.end243

if.end243:                                        ; preds = %if.else242, %if.then237.if.end243_crit_edge
  br i1 %need_offchan.7.off0474, label %if.end246, label %if.then245

if.then245:                                       ; preds = %if.end243
  %126 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i.i.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %129, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %if.then245.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then245.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then245
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then245.rcu_read_lock.exit.i.i_crit_edge
  %chanctx_conf1.i.i = getelementptr i8, ptr %wdev, i32 4892
  %130 = ptrtoint ptr %chanctx_conf1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile ptr, ptr %chanctx_conf1.i.i, align 4
  %call.i.i447 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i447)
  %tobool.not.i.i = icmp eq i32 %call.i.i447, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 2199, ptr noundef nonnull @.str.1) #8
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %131, null
  br i1 %tobool10.not.i.i, label %do.end23.i.i, label %if.end39.i.i, !prof !85

do.end23.i.i:                                     ; preds = %do.end8.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 2200, i32 noundef 9, ptr noundef null) #8
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i1.i, label %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i3.i

do.end23.i.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i3.i:                               ; preds = %do.end23.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i2.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i2.i, label %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i3.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i4.i

land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i4.i:                                     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i4.i, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %132 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i.i = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %135, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %out_unlock

if.end39.i.i:                                     ; preds = %do.end8.i.i
  %136 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %131, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef %139) #8
  %call.i2.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2.i.i, label %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i5.i.i

if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i5.i.i:                             ; preds = %if.end39.i.i
  %call1.i3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %140 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i9.i.i = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %143, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %out_unlock

if.end246:                                        ; preds = %if.end243
  %144 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cb.i, align 8
  %or249 = or i32 %145, 33562624
  store i32 %or249, ptr %cb.i, align 8
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %146 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %flags.i, align 4
  %148 = and i32 %147, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.i.not = icmp eq i32 %148, 0
  br i1 %tobool.i.not, label %if.end246.if.end256_crit_edge, label %if.then252

if.end246.if.end256_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

if.then252:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  %offchannel_tx_hw_queue = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 20
  %149 = ptrtoint ptr %offchannel_tx_hw_queue to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %offchannel_tx_hw_queue, align 1
  %hw_queue = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %151 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %151)
  %bf.load = load i32, ptr %hw_queue, align 4
  %152 = and i8 %150, 15
  %bf.value = zext i8 %152 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 12
  %bf.clear = and i32 %bf.load, -61441
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %hw_queue, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.then252, %if.end246.if.end256_crit_edge
  %153 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %params, align 4
  %wait258 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 2
  %155 = ptrtoint ptr %wait258 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %wait258, align 4
  %call259 = tail call fastcc i32 @ieee80211_start_roc_work(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %154, i32 noundef %156, ptr noundef %cookie, ptr noundef nonnull %call.i.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.end256.out_unlock_crit_edge, label %if.then261

if.end256.out_unlock_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then261:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_free_txskb(ptr noundef %1, ptr noundef nonnull %call.i.i) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then261, %if.end256.out_unlock_crit_edge, %rcu_read_unlock.exit.i.i, %rcu_read_unlock.exit.i, %if.then240, %if.end119.out_unlock_crit_edge, %land.lhs.true115.out_unlock_crit_edge, %cleanup
  %mtx464 = phi ptr [ %mtx466472, %if.then261 ], [ %mtx466472, %if.end256.out_unlock_crit_edge ], [ %mtx466472, %if.then240 ], [ %mtx462, %cleanup ], [ %mtx466473, %land.lhs.true115.out_unlock_crit_edge ], [ %mtx466472, %if.end119.out_unlock_crit_edge ], [ %mtx466472, %rcu_read_unlock.exit.i ], [ %mtx466472, %rcu_read_unlock.exit.i.i ]
  %ret.1 = phi i32 [ %call259, %if.then261 ], [ 0, %if.end256.out_unlock_crit_edge ], [ %call238, %if.then240 ], [ -22, %cleanup ], [ -16, %land.lhs.true115.out_unlock_crit_edge ], [ -12, %if.end119.out_unlock_crit_edge ], [ 0, %rcu_read_unlock.exit.i ], [ 0, %rcu_read_unlock.exit.i.i ]
  tail call void @mutex_unlock(ptr noundef %mtx464) #8
  br label %cleanup265

cleanup265:                                       ; preds = %out_unlock, %land.lhs.true72.cleanup265_crit_edge, %rcu_read_unlock.exit.cleanup265_crit_edge, %entry.cleanup265_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ -67, %rcu_read_unlock.exit.cleanup265_crit_edge ], [ -95, %entry.cleanup265_crit_edge ], [ -22, %land.lhs.true72.cleanup265_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_attach_ack_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mgmt_tx_cancel_wait(ptr noundef %wiphy, ptr nocapture noundef readnone %wdev, i64 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !85

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #8, !srcloc !90
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call1 = tail call fastcc i32 @ieee80211_cancel_roc(ptr noundef %priv.i, i64 noundef %cookie, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_roc_setup(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_roc_start = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 140
  tail call void @__init_work(ptr noundef %hw_roc_start, i32 noundef 0) #8
  %0 = ptrtoint ptr %hw_roc_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %hw_roc_start, align 8
  %lockdep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 140, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @ieee80211_roc_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 140, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 140, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 140, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ieee80211_hw_roc_start, ptr %func, align 4
  %hw_roc_done = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 141
  tail call void @__init_work(ptr noundef %hw_roc_done, i32 noundef 0) #8
  %4 = ptrtoint ptr %hw_roc_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %hw_roc_done, align 4
  %lockdep_map12 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 141, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map12, ptr noundef nonnull @.str.7, ptr noundef nonnull @ieee80211_roc_setup.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry14 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 141, i32 1
  %5 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i55 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 141, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry14, ptr %prev.i55, align 4
  %func16 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 141, i32 2
  %7 = ptrtoint ptr %func16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ieee80211_hw_roc_done, ptr %func16, align 4
  %roc_work = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138
  tail call void @__init_work(ptr noundef %roc_work, i32 noundef 0) #8
  %8 = ptrtoint ptr %roc_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %roc_work, align 4
  %lockdep_map27 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map27, ptr noundef nonnull @.str.9, ptr noundef nonnull @ieee80211_roc_setup.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry30 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138, i32 0, i32 1
  %9 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i56 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry30, ptr %prev.i56, align 4
  %func33 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138, i32 0, i32 2
  %11 = ptrtoint ptr %func33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ieee80211_roc_work, ptr %func33, align 4
  %timer = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @ieee80211_roc_setup.__key.10) #8
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %12 = ptrtoint ptr %roc_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %roc_list, ptr %roc_list, align 4
  %prev.i57 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139, i32 1
  %13 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %roc_list, ptr %prev.i57, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_hw_roc_start(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx = getelementptr i8, ptr %work, i32 -1376
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #8
  %roc_list = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %roc.019 = load ptr, ptr %roc_list, align 8
  %cmp.not20 = icmp eq ptr %roc.019, %roc_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw_roc_start_time = getelementptr i8, ptr %work, i32 88
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %roc.021 = phi ptr [ %roc.019, %for.body.lr.ph ], [ %roc.0, %if.end.for.body_crit_edge ]
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.021, i32 0, i32 3
  %1 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %started, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.body
  %hw_begun = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.021, i32 0, i32 5
  %3 = ptrtoint ptr %hw_begun to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %hw_begun, align 2
  %4 = ptrtoint ptr %hw_roc_start_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_roc_start_time, align 8
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef %roc.021, i32 noundef %5)
  %6 = ptrtoint ptr %roc.021 to i32
  call void @__asan_load4_noabort(i32 %6)
  %roc.0 = load ptr, ptr %roc.021, align 8
  %cmp.not = icmp eq ptr %roc.0, %roc_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_hw_roc_done(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -7076
  %mtx = getelementptr i8, ptr %work, i32 -1420
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call fastcc i32 @ieee80211_end_finished_rocs(ptr noundef %add.ptr, i32 noundef %0)
  tail call void @ieee80211_start_next_roc(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mtx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_roc_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6924
  %mtx = getelementptr i8, ptr %work, i32 -1268
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #8
  tail call fastcc void @__ieee80211_roc_work(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mtx) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_roc_purge(ptr noundef %local, ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #8
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %0 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %roc_list, align 8
  %cmp.not45 = icmp eq ptr %1, %roc_list
  br i1 %cmp.not45, label %entry.if.end24_crit_edge, label %for.body.lr.ph

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %sdata, null
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.lr.ph
  %roc.047.ph = phi ptr [ %tmp.048, %for.inc.thread.for.body.outer_crit_edge ], [ %1, %for.body.lr.ph ]
  %work_to_do.0.off046.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.lr.ph ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %roc.047 = phi ptr [ %tmp.048, %for.inc.for.body_crit_edge ], [ %roc.047.ph, %for.body.outer ]
  %2 = ptrtoint ptr %roc.047 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.048 = load ptr, ptr %roc.047, align 8
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %sdata8 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.047, i32 0, i32 1
  %3 = ptrtoint ptr %sdata8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdata8, align 8
  %cmp9.not = icmp eq ptr %4, %sdata
  br i1 %cmp9.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.047, i32 0, i32 3
  %5 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %started, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.end.for.inc.sink.split_crit_edge, label %if.then11

if.end.for.inc.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.then11:                                        ; preds = %if.end
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 57
  %9 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remain_on_channel, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %for.inc.thread, label %if.then13

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 700) #8
  tail call fastcc void @trace_drv_cancel_remain_on_channel(ptr noundef %local, ptr noundef %sdata) #8
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %cancel_remain_on_channel.i = getelementptr inbounds %struct.ieee80211_ops, ptr %12, i32 0, i32 58
  %13 = ptrtoint ptr %cancel_remain_on_channel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cancel_remain_on_channel.i, align 4
  %call.i = tail call i32 %14(ptr noundef %local, ptr noundef %vif.i) #8
  tail call fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %call.i) #8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then13, %if.end.for.inc.sink.split_crit_edge
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %roc.047)
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.048, %roc_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.thread:                                   ; preds = %if.then11
  %abort = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.047, i32 0, i32 4
  %15 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %abort, align 1
  %cmp.not50 = icmp eq ptr %tmp.048, %roc_list
  br i1 %cmp.not50, label %for.inc.thread.if.then23_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer

for.inc.thread.if.then23_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.end:                                          ; preds = %for.inc
  br i1 %work_to_do.0.off046.ph, label %for.end.if.then23_crit_edge, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

for.end.if.then23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %for.end.if.then23_crit_edge, %for.inc.thread.if.then23_crit_edge
  tail call fastcc void @__ieee80211_roc_work(ptr noundef %local)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end.if.end24_crit_edge, %entry.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_roc_notify_destroy(ptr noundef %roc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frame = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 11
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frame, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sdata = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 1
  %2 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdata, align 8
  %wdev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 1
  %mgmt_tx_cookie = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 13
  %4 = ptrtoint ptr %mgmt_tx_cookie to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mgmt_tx_cookie, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %wdev, i64 noundef %5, ptr noundef %7, i32 noundef %9, i1 noundef zeroext false, i32 noundef 3264) #8
  %10 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdata, align 8
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %local, align 4
  %14 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %13, ptr noundef %15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mgmt_tx_cookie5 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 13
  %16 = ptrtoint ptr %mgmt_tx_cookie5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mgmt_tx_cookie5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool6.not = icmp eq i64 %17, 0
  %sdata8 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 1
  %18 = ptrtoint ptr %sdata8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdata8, align 8
  %wdev9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 1
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cookie = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 12
  %20 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cookie, align 8
  %chan = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 2
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 4
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %wdev9, i64 noundef %21, ptr noundef %23, i32 noundef 3264) #8
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %chan13 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 2
  %24 = ptrtoint ptr %chan13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan13, align 4
  tail call void @cfg80211_tx_mgmt_expired(ptr noundef %wdev9, i64 noundef %17, ptr noundef %25, i32 noundef 3264) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %roc) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %roc, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %roc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %roc, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %32 = ptrtoint ptr %roc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %roc, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %roc, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %roc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_roc_work(ptr noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !85

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %2, i32 0, i32 57
  %3 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remain_on_channel, align 4
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %if.end57, label %do.end41, !prof !79

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end57:                                         ; preds = %if.end
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %5 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %roc_list, align 4
  %cmp63.not = icmp eq ptr %6, %roc_list
  %tobool65.not131 = icmp eq ptr %6, null
  %tobool65.not = or i1 %cmp63.not, %tobool65.not131
  br i1 %tobool65.not, label %if.end57.cleanup_crit_edge, label %if.end67

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end57
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %started, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool68.not = icmp eq i8 %8, 0
  br i1 %tobool68.not, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.end67
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %9 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %use_chanctx, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool71.not = icmp eq i8 %10, 0
  br i1 %tobool71.not, label %if.then69.if.end93_crit_edge, label %do.end87, !prof !79

if.then69.if.end93_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.end87:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #8
  br label %if.end93

if.end93:                                         ; preds = %do.end87, %if.then69.if.end93_crit_edge
  tail call fastcc void @_ieee80211_start_next_roc(ptr noundef %local)
  br label %cleanup

if.else:                                          ; preds = %if.end67
  %on_channel101 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %on_channel101 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %on_channel101, align 4, !range !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %call.i130 = tail call fastcc i32 @ieee80211_end_finished_rocs(ptr noundef %local, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call.i130)
  %cmp.i = icmp eq i32 %call.i130, 2147483647
  br i1 %cmp.i, label %if.end105, label %ieee80211_recalc_sw_work.exit.thread

ieee80211_recalc_sw_work.exit.thread:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 9
  %14 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %workqueue.i, align 8
  %roc_work.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 138
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %roc_work.i, i32 noundef %call.i130) #8
  br label %cleanup

if.end105:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool102.not = icmp eq i8 %12, 0
  br i1 %tobool102.not, label %if.then107, label %if.end105.if.end109_crit_edge

if.end105.if.end109_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_flush_queues(ptr noundef %local, ptr noundef null, i1 noundef zeroext false) #8
  %tmp_channel = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 87
  %16 = ptrtoint ptr %tmp_channel to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tmp_channel, align 8
  %call108 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef 0) #8
  tail call void @ieee80211_offchannel_return(ptr noundef %local)
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end105.if.end109_crit_edge
  tail call void @ieee80211_recalc_idle(ptr noundef %local) #8
  tail call void @ieee80211_start_next_roc(ptr noundef %local)
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %ieee80211_recalc_sw_work.exit.thread, %if.end93, %if.end57.cleanup_crit_edge, %do.end41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_nullfunc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_reset_beacon_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_reset_conn_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_ready_on_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drv_remain_on_channel(ptr noundef %local, ptr noundef %sdata, ptr noundef %chan, i32 noundef %duration, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 684) #8
  tail call fastcc void @trace_drv_remain_on_channel(ptr noundef %local, ptr noundef %sdata, ptr noundef %chan, i32 noundef %duration, i32 noundef %type)
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remain_on_channel, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %call = tail call i32 %3(ptr noundef %local, ptr noundef %vif, ptr noundef %chan, i32 noundef %duration, i32 noundef %type) #8
  tail call fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %call)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_handle_roc_started(ptr nocapture noundef %roc, i32 noundef %start_time) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %notified = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 6
  %0 = ptrtoint ptr %notified to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %notified, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end22.critedge, label %do.end, !prof !79

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end22.critedge:                                ; preds = %entry
  %start_time23 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 8
  %2 = ptrtoint ptr %start_time23 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %start_time, ptr %start_time23, align 8
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 3
  %3 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %started, align 8
  %mgmt_tx_cookie = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 13
  %4 = ptrtoint ptr %mgmt_tx_cookie to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mgmt_tx_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool24.not = icmp eq i64 %5, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22.critedge
  %frame = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 11
  %6 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frame, align 4
  %tobool27.not = icmp eq ptr %7, null
  br i1 %tobool27.not, label %do.end45, label %if.then60.critedge, !prof !85

do.end45:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #8
  br label %if.end66

if.then60.critedge:                               ; preds = %if.then25
  %sdata = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 1
  %8 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdata, align 8
  %chan = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 2
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.then60.critedge.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then60.critedge.rcu_read_lock.exit.i_crit_edge: ; preds = %if.then60.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then60.critedge
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then60.critedge.rcu_read_lock.exit.i_crit_edge
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %9, ptr noundef nonnull %7, i32 noundef 7, i32 noundef %13) #8
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i1.i, label %rcu_read_lock.exit.i.ieee80211_tx_skb_tid_band.exit_crit_edge, label %land.lhs.true.i4.i

rcu_read_lock.exit.i.ieee80211_tx_skb_tid_band.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_skb_tid_band.exit

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.ieee80211_tx_skb_tid_band.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.ieee80211_tx_skb_tid_band.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_skb_tid_band.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.ieee80211_tx_skb_tid_band.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.ieee80211_tx_skb_tid_band.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_skb_tid_band.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %ieee80211_tx_skb_tid_band.exit

ieee80211_tx_skb_tid_band.exit:                   ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.ieee80211_tx_skb_tid_band.exit_crit_edge, %land.lhs.true.i4.i.ieee80211_tx_skb_tid_band.exit_crit_edge, %rcu_read_lock.exit.i.ieee80211_tx_skb_tid_band.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %18 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i8.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %22 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %frame, align 4
  br label %if.end66

if.else:                                          ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %sdata64 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 1
  %23 = ptrtoint ptr %sdata64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdata64, align 8
  %wdev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %24, i32 0, i32 1
  %cookie = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 12
  %25 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cookie, align 8
  %chan65 = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 2
  %27 = ptrtoint ptr %chan65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chan65, align 4
  %req_duration = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc, i32 0, i32 10
  %29 = ptrtoint ptr %req_duration to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req_duration, align 8
  tail call void @cfg80211_ready_on_channel(ptr noundef %wdev, i64 noundef %26, ptr noundef %28, i32 noundef %30, i32 noundef 3264) #8
  br label %if.end66

if.end66:                                         ; preds = %if.else, %ieee80211_tx_skb_tid_band.exit, %do.end45
  %31 = ptrtoint ptr %notified to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %notified, align 1
  br label %return

return:                                           ; preds = %if.end66, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_remain_on_channel(ptr noundef %local, ptr noundef %sdata, ptr noundef %chan, i32 noundef %duration, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remain_on_channel, i32 0, i32 1), ptr blockaddress(@trace_drv_remain_on_channel, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %call42 = tail call i32 @__traceiter_drv_remain_on_channel(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %chan, i32 noundef %duration, i32 noundef %type) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remain_on_channel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remain_on_channel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_remain_on_channel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_remain_on_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1259, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
define internal fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %ret) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), ptr blockaddress(@trace_drv_return_int, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !93
  %call42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %local, i32 noundef %ret) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 219, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
declare dso_local i32 @__traceiter_drv_remain_on_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_remain_on_channel_expired(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_mgmt_tx_cookie(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_is_radar_required(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_end_finished_rocs(ptr noundef %local, i32 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !85

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %1 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %roc_list, align 8
  %cmp32.not74 = icmp eq ptr %2, %roc_list
  br i1 %cmp32.not74, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %roc.077 = phi ptr [ %tmp.079, %cleanup.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %remaining_dur_min.075 = phi i32 [ %remaining_dur_min.2, %cleanup.for.body_crit_edge ], [ 2147483647, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %roc.077 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.079 = load ptr, ptr %roc.077, align 8
  %started = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.077, i32 0, i32 3
  %4 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %started, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool35.not = icmp eq i8 %5, 0
  br i1 %tobool35.not, label %for.body.for.end_crit_edge, label %if.end37

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end37:                                         ; preds = %for.body
  %start_time = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.077, i32 0, i32 8
  %6 = ptrtoint ptr %start_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_time, align 8
  %duration = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.077, i32 0, i32 9
  %8 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duration, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %9) #8
  %add = sub i32 %7, %now
  %sub = add i32 %add, %call2.i
  %abort = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.077, i32 0, i32 4
  %10 = ptrtoint ptr %abort to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %abort, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool39.not = icmp eq i8 %11, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %if.end37.if.then43_crit_edge

if.end37.if.then43_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end37
  %hw_begun = getelementptr inbounds %struct.ieee80211_roc_work, ptr %roc.077, i32 0, i32 5
  %12 = ptrtoint ptr %hw_begun to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_begun, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool40.not = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp42 = icmp slt i32 %sub, 1
  %or.cond = select i1 %tobool40.not, i1 true, i1 %cmp42
  br i1 %or.cond, label %lor.lhs.false.if.then43_crit_edge, label %if.else

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end37.if.then43_crit_edge
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %roc.077)
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.smin.i32(i32 %remaining_dur_min.075, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then43
  %remaining_dur_min.2 = phi i32 [ %remaining_dur_min.075, %if.then43 ], [ %14, %if.else ]
  %cmp32.not = icmp eq ptr %tmp.079, %roc_list
  br i1 %cmp32.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %remaining_dur_min.0.lcssa = phi i32 [ 2147483647, %if.end.for.end_crit_edge ], [ %remaining_dur_min.075, %for.body.for.end_crit_edge ], [ %remaining_dur_min.2, %cleanup.for.end_crit_edge ]
  ret i32 %remaining_dur_min.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_cancel_remain_on_channel(ptr noundef %local, ptr noundef %sdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_remain_on_channel, i32 0, i32 1), ptr blockaddress(@trace_drv_cancel_remain_on_channel, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !80

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %call42 = tail call i32 @__traceiter_drv_cancel_remain_on_channel(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_remain_on_channel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_remain_on_channel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_cancel_remain_on_channel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_cancel_remain_on_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1265, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
declare dso_local i32 @__traceiter_drv_cancel_remain_on_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tx_mgmt_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !40, !41, !42, !44, !46, !47, !49, !50, !52, !53, !55, !57, !58, !59, !61, !62, !64, !65, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/offchannel.c", i32 87, i32 6}
!2 = !{ptr @__ksymtab_ieee80211_ready_on_channel, !3, !"__ksymtab_ieee80211_ready_on_channel", i1 false, i1 false}
!3 = !{!"../net/mac80211/offchannel.c", i32 288, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/mac80211/offchannel.c", i32 401, i32 6}
!6 = !{ptr @__ksymtab_ieee80211_remain_on_channel_expired, !7, !"__ksymtab_ieee80211_remain_on_channel_expired", i1 false, i1 false}
!7 = !{!"../net/mac80211/offchannel.c", i32 485, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/mac80211/offchannel.c", i32 848, i32 18}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/mac80211/offchannel.c", i32 890, i32 13}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/mac80211/offchannel.c", i32 892, i32 13}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/mac80211/offchannel.c", i32 894, i32 13}
!17 = !{ptr @ieee80211_roc_setup.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/mac80211/offchannel.c", i32 959, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ieee80211_roc_setup.__key.6, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/mac80211/offchannel.c", i32 960, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ieee80211_roc_setup.__key.8, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/mac80211/offchannel.c", i32 961, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ieee80211_roc_setup.__key.10, !24, !"__key", i1 false, i1 false}
!27 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../net/mac80211/trace.h", i32 2264, i32 1}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/mac80211/offchannel.c", i32 326, i32 4}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @_ieee80211_start_next_roc._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @_ieee80211_start_next_roc._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/mac80211/driver-ops.h", i32 684, i32 2}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../net/mac80211/trace.h", i32 1226, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../net/mac80211/trace.h", i32 207, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/mac80211/trace.h", i32 2269, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../net/mac80211/offchannel.c", i32 721, i32 7}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../net/mac80211/trace.h", i32 1261, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i8 0, i8 2}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2148447018, i64 2148447023, i64 2148447036, i64 2148447080, i64 2148447114, i64 2148447135}
!81 = !{i64 2160671713}
!82 = !{i64 2160671926}
!83 = !{i64 2149955291}
!84 = !{i64 2149956327}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2160688675}
!87 = !{i64 2160688906}
!88 = !{i64 2149946732}
!89 = !{i64 2149946998}
!90 = !{i64 2157272436, i64 2157272924, i64 2157272473, i64 2157272529, i64 2157272563, i64 2157272587, i64 2157272628, i64 2157272649, i64 2157272677, i64 2157272711}
!91 = !{i64 2159763013}
!92 = !{i64 2159763286}
!93 = !{i64 2158741956}
!94 = !{i64 2158742167}
!95 = !{i64 2159781114}
!96 = !{i64 2159781357}
