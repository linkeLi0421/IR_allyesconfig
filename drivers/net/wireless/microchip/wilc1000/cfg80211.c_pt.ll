; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/microchip/wilc1000/cfg80211.c_pt.bc'
source_filename = "../drivers/net/wireless/microchip/wilc1000/cfg80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wilc_cfg80211_init\22, \22a\22\09"
module asm "\09.weak\09__crc_wilc_cfg80211_init\09\09\09\09"
module asm "\09.long\09__crc_wilc_cfg80211_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wilc_cfg80211_init:\09\09\09\09\09"
module asm "\09.asciz \09\22wilc_cfg80211_init\22\09\09\09\09\09"
module asm "__kstrtabns_wilc_cfg80211_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wilc = type { ptr, ptr, i32, i8, ptr, i8, i32, i8, i32, i32, i8, %struct.list_head, %struct.mutex, %struct.srcu_struct, i8, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, i32, %struct.mutex, %struct.wilc_cfg_frame, i32, i8, ptr, i32, ptr, [4 x %struct.txq_handle], i32, %struct.wilc_tx_queue_status, %struct.rxq_entry_t, ptr, ptr, i8, ptr, %struct.wilc_cfg, ptr, ptr, %struct.mutex, i8, i8, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [5 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wilc_cfg_frame = type { %struct.wilc_cfg_cmd_hdr, [1468 x i8] }
%struct.wilc_cfg_cmd_hdr = type { i8, i8, i16, i32 }
%struct.txq_handle = type { %struct.txq_entry_t, i16, %struct.txq_fw_recv_queue_stat }
%struct.txq_entry_t = type { %struct.list_head, i32, i8, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.txq_fw_recv_queue_stat = type { i8, i8 }
%struct.wilc_tx_queue_status = type { [1000 x i8], i16, [4 x i16], i16, i8 }
%struct.rxq_entry_t = type { %struct.list_head, ptr, i32 }
%struct.wilc_cfg = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wilc_vif = type { i8, i8, i32, i32, i32, %struct.net_device_stats, ptr, [6 x i8], ptr, ptr, i8, %struct.timer_list, %struct.timer_list, %struct.rf_info, %struct.tcp_ack_filter, i8, %struct.wilc_priv, %struct.list_head, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rf_info = type { i8, i8, i32, i32, i32 }
%struct.tcp_ack_filter = type { [50 x %struct.ack_session_info], [256 x %struct.pending_acks], i32, i32, i32, i8 }
%struct.ack_session_info = type { i32, i32, i16, i16, i16 }
%struct.pending_acks = type { i32, i32, ptr }
%struct.wilc_priv = type { %struct.wireless_dev, ptr, %struct.wilc_wfi_p2p_listen_params, i64, i8, [6 x i8], %struct.sta_info, ptr, ptr, ptr, %struct.wilc_pmkid_attr, [4 x [13 x i8]], [4 x i8], ptr, [9 x ptr], [9 x ptr], i8, %struct.mutex, i8, i32, i64 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.147, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.147 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.wilc_wfi_p2p_listen_params = type { ptr, i32, i64 }
%struct.sta_info = type { [9 x [6 x i8]] }
%struct.wilc_pmkid_attr = type { i8, [16 x %struct.wilc_pmkid] }
%struct.wilc_pmkid = type { [6 x i8], [16 x i8] }
%struct.host_if_drv = type { %struct.wilc_user_scan_req, %struct.wilc_conn_info, %struct.wilc_remain_ch, i64, i32, [6 x i8], %struct.timer_list, ptr, %struct.timer_list, ptr, %struct.timer_list, ptr, i8, [256 x i8] }
%struct.wilc_user_scan_req = type { ptr, ptr, i32 }
%struct.wilc_conn_info = type { [6 x i8], i8, i32, i8, ptr, i32, ptr, i16, i16, ptr, ptr, ptr }
%struct.wilc_remain_ch = type { i16, i32, ptr, ptr, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.153 }
%union.anon.153 = type { %struct.anon.159, [16 x i8] }
%struct.anon.159 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.wilc_vendor_specific_ie = type { i8, i8, [3 x i8], i8, [0 x i8] }
%struct.wilc_attr_entry = type <{ i8, i16, [0 x i8] }>
%struct.wilc_attr_ch_list = type <{ i8, i16, [3 x i8], [0 x i8] }>
%struct.wilc_ch_list_elem = type { i8, i8, [0 x i8] }
%struct.wilc_attr_oper_ch = type <{ i8, i16, [3 x i8], i8, i8 }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.152, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.anon.152 = type { i64, i64, i8 }
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.149 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.wilc_wfi_key = type { ptr, ptr, i32, i32, i32 }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.188] }
%struct.anon.188 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg_param_attr = type { i32, i16, i16, i16, i16 }
%struct.cfg80211_pmksa = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.wilc_p2p_mgmt_data = type { i32, ptr }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.wilc_rcvd_net_info = type { i8, i8, i16, ptr }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wilc_wfi_p2p_rx.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wilc1000\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wilc_wfi_p2p_rx\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/microchip/wilc1000/cfg80211.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Receiving action wrong ch\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_wilc_cfg80211_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_wilc_cfg80211_init = external dso_local constant [0 x i8], align 1
@__ksymtab_wilc_cfg80211_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wilc_cfg80211_init to i32), ptr @__kstrtab_wilc_cfg80211_init, ptr @__kstrtabns_wilc_cfg80211_init }, section "___ksymtab_gpl+wilc_cfg80211_init", align 4
@wilc_cfg80211_ops = internal constant { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr @wilc_suspend, ptr @wilc_resume, ptr @wilc_set_wakeup, ptr @add_virtual_intf, ptr @del_virtual_intf, ptr @change_virtual_intf, ptr @add_key, ptr @get_key, ptr @del_key, ptr @set_default_key, ptr null, ptr null, ptr @start_ap, ptr @change_beacon, ptr @stop_ap, ptr @add_station, ptr @del_station, ptr @change_station, ptr @get_station, ptr @dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @change_bss, ptr null, ptr null, ptr @set_channel, ptr @scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @connect, ptr null, ptr @disconnect, ptr null, ptr null, ptr null, ptr @set_wiphy_params, ptr @set_tx_power, ptr @get_tx_power, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_pmksa, ptr @del_pmksa, ptr @flush_pmksa, ptr @remain_on_channel, ptr @cancel_remain_on_channel, ptr @mgmt_tx, ptr @mgmt_tx_cancel_wait, ptr @set_power_mgmt, ptr @set_cqm_rssi_config, ptr null, ptr null, ptr @wilc_update_mgmt_frame_registrations, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@wilc_bitrates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 12, i16 0 }], [48 x i8] zeroinitializer }, align 32
@wilc_2ghz_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@wowlan_support = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@wilc_cipher_suites = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076, i32 1027078], [44 x i8] zeroinitializer }, align 32
@wilc_wfi_cfg80211_mgmt_types = internal constant { [13 x %struct.ieee80211_txrx_stypes], [44 x i8] } { [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 -1, i16 15381 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], [44 x i8] zeroinitializer }, align 32
@wilc_init_host_int.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->scan_req_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error while initializing hostinterface\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error while deinitializing host interface\0A\00", [53 x i8] zeroinitializer }, align 32
@wlan_init_locks.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&wl->hif_cs\00", [20 x i8] zeroinitializer }, align 32
@wlan_init_locks.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&wl->rxq_cs\00", [20 x i8] zeroinitializer }, align 32
@wlan_init_locks.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wl->cfg_cmd_lock\00", [46 x i8] zeroinitializer }, align 32
@wlan_init_locks.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wl->vif_mutex\00", [17 x i8] zeroinitializer }, align 32
@wlan_init_locks.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&wl->deinit_lock\00", [47 x i8] zeroinitializer }, align 32
@wlan_init_locks.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wl->txq_spinlock\00", [46 x i8] zeroinitializer }, align 32
@wlan_init_locks.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&wl->txq_add_to_head_cs\00", [40 x i8] zeroinitializer }, align 32
@wlan_init_locks.__srcu_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&wl->srcu\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cfg set wake up = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@add_virtual_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Reached maximum number of interface\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"add_virtual_intf\00", [47 x i8] zeroinitializer }, align 32
@add_virtual_intf._entry_ptr = internal global ptr @add_virtual_intf._entry, section ".printk_index", align 4
@wilc_get_vif_from_type.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown interface type= %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Unsupported cipher\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.add_key = private unnamed_addr constant [8 x i8] c"add_key\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error in setting channel\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Host delete beacon fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Host add station fail\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Host delete station fail\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Host edit station fail\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sta required is not associated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Requested scanned channels over\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.connect = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Scan in progress\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to construct join param\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wilc_set_join_req(): Error\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unspecified failure\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error in disconnecting\0A\00", [40 x i8] zeroinitializer }, align 32
@set_wiphy_params.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_wiphy_params\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting WIPHY_PARAM_RETRY_SHORT %d\0A\00", [60 x i8] zeroinitializer }, align 32
@set_wiphy_params.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Setting WIPHY_PARAM_RETRY_LONG %d\0A\00", [61 x i8] zeroinitializer }, align 32
@set_wiphy_params.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.45, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Setting WIPHY_PARAM_FRAG_THRESHOLD %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Fragmentation threshold out of range\0A\00", [58 x i8] zeroinitializer }, align 32
@set_wiphy_params.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.47, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Setting WIPHY_PARAM_RTS_THRESHOLD %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RTS threshold out of range\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error in setting WIPHY PARAMS\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Setting tx power %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set tx power\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get tx power\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid PMKID index\0A\00", [43 x i8] zeroinitializer }, align 32
@remain_on_channel.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"remain_on_channel\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Required while in AP mode\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 17]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 17]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1017, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1740, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"wilc_cfg80211_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1641, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"wilc_bitrates\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 105, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"wilc_2ghz_channels\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 82, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"wowlan_support\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"wilc_cipher_suites\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/microchip/wilc1000/netdev.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 65, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant [29 x i8] c"wilc_wfi_cfg80211_mgmt_types\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 21, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1826, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1829, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1847, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1686, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1687, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1688, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1689, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1690, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1692, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1693, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [11 x i8] c"__srcu_key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1699, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 87, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1586, i32 25 }
@___asan_gen_.174 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 189, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1510, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1456, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1350, i32 19 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 645, i32 22 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1365, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1391, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1409, i32 20 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1434, i32 19 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1447, i32 20 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 747, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 270, i32 25 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 390, i32 25 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 410, i32 19 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 432, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 186, i32 20 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 481, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 808, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 815, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 824, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 831, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 838, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 844, i32 26 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 851, i32 25 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1610, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1617, i32 25 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1636, i32 25 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 882, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [54 x i8] c"../drivers/net/wireless/microchip/wilc1000/cfg80211.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1075, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__ksymtab_wilc_cfg80211_init, ptr @add_virtual_intf._entry, ptr @add_virtual_intf._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @wilc_cfg80211_ops, ptr @wilc_bitrates, ptr @wilc_2ghz_channels, ptr @wowlan_support, ptr @wilc_cipher_suites, ptr @wilc_wfi_cfg80211_mgmt_types, ptr @wilc_init_host_int.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @wlan_init_locks.__key, ptr @.str.8, ptr @wlan_init_locks.__key.9, ptr @.str.10, ptr @wlan_init_locks.__key.11, ptr @.str.12, ptr @wlan_init_locks.__key.13, ptr @.str.14, ptr @wlan_init_locks.__key.15, ptr @.str.16, ptr @wlan_init_locks.__key.17, ptr @.str.18, ptr @wlan_init_locks.__key.19, ptr @.str.20, ptr @wlan_init_locks.__srcu_key, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_cfg80211_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_bitrates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_2ghz_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_cipher_suites to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_wfi_cfg80211_mgmt_types to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_init_host_int.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_init_locks.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_init_locks.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_init_locks.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_init_locks.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_init_locks.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_init_locks.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_init_locks.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_init_locks.__srcu_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_virtual_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @wilc_get_wl_to_vif(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vif_list = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %0 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vif_list, align 4
  %2 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__next, align 4
  %cmp.not = icmp eq ptr %vif_list, %1
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !141

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %if.then

cond.end:                                         ; preds = %entry
  %3 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %3)
  %__next.0.__next.0.__next.0.9 = load volatile ptr, ptr %__next, align 4
  %add.ptr = getelementptr i8, ptr %__next.0.__next.0.__next.0.9, i32 -5808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  %tobool8.not = icmp eq ptr %add.ptr, null
  br i1 %tobool8.not, label %cond.end.if.then_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %cond.end.thread
  br label %cleanup

cleanup:                                          ; preds = %if.then, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %add.ptr, %cond.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_wfi_p2p_rx(ptr noundef %vif, ptr noundef %buff, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 6
  %priv1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 16
  %hif_drv = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 16, i32 9
  %0 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_drv, align 8
  %add.ptr = getelementptr i8, ptr %buff, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  %5 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buff, align 2
  %8 = and i16 %7, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %8)
  %cmp.i = icmp eq i16 %8, 20480
  %9 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp ne i32 %9, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool17.not
  %tx_cookie = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 16, i32 3
  %10 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_cookie, align 8
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %priv1, i64 noundef %11, ptr noundef %buff, i32 noundef %size, i1 noundef zeroext %or.cond, i32 noundef 3264) #13
  br label %cleanup

if.end20:                                         ; preds = %entry
  %12 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wilc, align 4
  %op_ch = getelementptr inbounds %struct.wilc, ptr %13, i32 0, i32 45
  %14 = ptrtoint ptr %op_ch to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %op_ch, align 1
  %conv = zext i8 %15 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv, i32 noundef 0) #13
  %16 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %buff, align 2
  %18 = and i16 %17, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %18)
  %cmp.i113 = icmp eq i16 %18, -12288
  br i1 %cmp.i113, label %if.end25, label %if.end20.out_rx_mgmt_crit_edge

if.end20.out_rx_mgmt_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rx_mgmt

if.end25:                                         ; preds = %if.end20
  %cfg_scanning = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 16, i32 4
  %19 = ptrtoint ptr %cfg_scanning to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cfg_scanning, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not = icmp eq i8 %20, 0
  br i1 %tobool26.not, label %if.end25.if.end44_crit_edge, label %land.lhs.true

if.end25.if.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %p2p_timeout = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %p2p_timeout to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %p2p_timeout, align 8
  %conv28 = trunc i64 %23 to i32
  %sub = sub i32 %21, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.body32, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.body32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wfi_p2p_rx.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wfi_p2p_rx, %if.then38)) #13
          to label %cleanup [label %if.then38], !srcloc !143

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %24 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wfi_p2p_rx.__UNIQUE_ID_ddebug489, ptr noundef %25, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end25.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %size)
  %cmp.i114 = icmp ult i32 %size, 25
  br i1 %cmp.i114, label %if.end44.out_rx_mgmt_crit_edge, label %ieee80211_is_public_action.exit

if.end44.out_rx_mgmt_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rx_mgmt

ieee80211_is_public_action.exit:                  ; preds = %if.end44
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %buff, i32 0, i32 6
  %26 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %u.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp3.i = icmp eq i8 %27, 4
  br i1 %cmp3.i, label %if.end47, label %ieee80211_is_public_action.exit.out_rx_mgmt_crit_edge

ieee80211_is_public_action.exit.out_rx_mgmt_crit_edge: ; preds = %ieee80211_is_public_action.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rx_mgmt

if.end47:                                         ; preds = %ieee80211_is_public_action.exit
  %oui_subtype = getelementptr inbounds %struct.ieee80211_mgmt, ptr %buff, i32 0, i32 6, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %oui_subtype to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %oui_subtype, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %29, label %if.end47.out_rx_mgmt_crit_edge [
    i8 0, label %if.end47.if.end67_crit_edge
    i8 1, label %if.end47.if.end67_crit_edge177
    i8 3, label %if.end47.if.end67_crit_edge178
    i8 4, label %if.end47.if.end67_crit_edge179
  ]

if.end47.if.end67_crit_edge179:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end47.if.end67_crit_edge178:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end47.if.end67_crit_edge177:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end47.if.end67_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end47.out_rx_mgmt_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rx_mgmt

if.end67:                                         ; preds = %if.end47.if.end67_crit_edge, %if.end47.if.end67_crit_edge177, %if.end47.if.end67_crit_edge178, %if.end47.if.end67_crit_edge179
  %add.ptr68 = getelementptr i8, ptr %buff, i32 32
  %sub69 = add i32 %size, -32
  %call.i116 = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 5271450, i32 noundef 9, ptr noundef %add.ptr68, i32 noundef %sub69) #13
  %tobool71.not = icmp eq ptr %call.i116, null
  br i1 %tobool71.not, label %if.end67.out_rx_mgmt_crit_edge, label %if.end73

if.end67.out_rx_mgmt_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rx_mgmt

if.end73:                                         ; preds = %if.end67
  %attr = getelementptr inbounds %struct.wilc_vendor_specific_ie, ptr %call.i116, i32 0, i32 4
  %tag_len = getelementptr inbounds %struct.wilc_vendor_specific_ie, ptr %call.i116, i32 0, i32 1
  %31 = ptrtoint ptr %tag_len to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tag_len, align 1
  %conv74 = zext i8 %32 to i32
  %sub75 = add nsw i32 %conv74, -4
  %33 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wilc, align 4
  %sta_ch = getelementptr inbounds %struct.wilc, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %sta_ch to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sta_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i117 = icmp eq i8 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub75)
  %cmp2.not86.i = icmp ult i32 %sub75, 3
  %or.cond106.i = or i1 %cmp.i117, %cmp2.not86.i
  br i1 %or.cond106.i, label %if.end73.out_rx_mgmt_crit_edge, label %if.end73.while.body.i_crit_edge

if.end73.while.body.i_crit_edge:                  ; preds = %if.end73
  br label %while.body.i

if.end73.out_rx_mgmt_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rx_mgmt

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %if.end73.while.body.i_crit_edge
  %op_ch_idx.089.i = phi i8 [ %op_ch_idx.1.i, %if.end21.i.while.body.i_crit_edge ], [ 0, %if.end73.while.body.i_crit_edge ]
  %ch_list_idx.088.i = phi i8 [ %ch_list_idx.1.i, %if.end21.i.while.body.i_crit_edge ], [ 0, %if.end73.while.body.i_crit_edge ]
  %index.087.i = phi i32 [ %add24.i, %if.end21.i.while.body.i_crit_edge ], [ 0, %if.end73.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %attr, i32 %index.087.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %38, label %while.body.i.if.end16.i_crit_edge [
    i8 11, label %if.then7.i
    i8 17, label %if.then13.i
  ]

while.body.i.if.end16.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then7.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv8.i = trunc i32 %index.087.i to i8
  br label %if.end16.i

if.then13.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv14.i = trunc i32 %index.087.i to i8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.then7.i, %while.body.i.if.end16.i_crit_edge
  %ch_list_idx.1.i = phi i8 [ %conv8.i, %if.then7.i ], [ %ch_list_idx.088.i, %if.then13.i ], [ %ch_list_idx.088.i, %while.body.i.if.end16.i_crit_edge ]
  %op_ch_idx.1.i = phi i8 [ %op_ch_idx.089.i, %if.then7.i ], [ %conv14.i, %if.then13.i ], [ %op_ch_idx.089.i, %while.body.i.if.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch_list_idx.1.i)
  %tobool.not.i = icmp eq i8 %ch_list_idx.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %op_ch_idx.1.i)
  %tobool19.not.i = icmp eq i8 %op_ch_idx.1.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool19.not.i
  br i1 %or.cond.i, label %if.end21.i, label %if.end16.i.if.then26.i_crit_edge

if.end16.i.if.then26.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.end21.i:                                       ; preds = %if.end16.i
  %attr_len.i = getelementptr inbounds %struct.wilc_attr_entry, ptr %arrayidx.i, i32 0, i32 1
  %40 = ptrtoint ptr %attr_len.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %attr_len.i, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #13
  %conv22.i = zext i16 %42 to i32
  %add23.i = add i32 %index.087.i, 3
  %add24.i = add i32 %add23.i, %conv22.i
  %add.i = add i32 %add24.i, 3
  %cmp2.not.i = icmp ugt i32 %add.i, %sub75
  br i1 %cmp2.not.i, label %while.end.i, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %if.end21.i
  br i1 %tobool.not.i, label %while.end.i.if.end45.i_crit_edge, label %while.end.i.if.then26.i_crit_edge

while.end.i.if.then26.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

while.end.i.if.end45.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

if.then26.i:                                      ; preds = %while.end.i.if.then26.i_crit_edge, %if.end16.i.if.then26.i_crit_edge
  %tobool19.not.i133 = phi i1 [ %tobool19.not.i, %while.end.i.if.then26.i_crit_edge ], [ false, %if.end16.i.if.then26.i_crit_edge ]
  %idxprom.i = zext i8 %ch_list_idx.1.i to i32
  %arrayidx28.i = getelementptr i8, ptr %attr, i32 %idxprom.i
  %attr_len29.i = getelementptr inbounds %struct.wilc_attr_ch_list, ptr %arrayidx28.i, i32 0, i32 1
  %43 = ptrtoint ptr %attr_len29.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %attr_len29.i, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #13
  %conv30.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp3191.not.i = icmp eq i16 %44, 0
  br i1 %cmp3191.not.i, label %if.then26.i.if.end45.i_crit_edge, label %for.body.lr.ph.i

if.then26.i.if.end45.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

for.body.lr.ph.i:                                 ; preds = %if.then26.i
  %elem.i = getelementptr inbounds %struct.wilc_attr_ch_list, ptr %arrayidx28.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end41.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add44.i, %if.end41.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %elem.i, i32 %i.092.i
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %47)
  %cmp34.i = icmp eq i8 %47, 81
  br i1 %cmp34.i, label %if.then36.i, label %if.end41.i

if.then36.i:                                      ; preds = %for.body.i
  %ch_list37.i = getelementptr inbounds %struct.wilc_ch_list_elem, ptr %add.ptr.i, i32 0, i32 2
  %no_of_channels.i = getelementptr inbounds %struct.wilc_ch_list_elem, ptr %add.ptr.i, i32 0, i32 1
  %48 = ptrtoint ptr %no_of_channels.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %no_of_channels.i, align 1
  %conv40.i = zext i8 %49 to i32
  %50 = zext i8 %36 to i32
  %51 = call ptr @memset(ptr %ch_list37.i, i32 %50, i32 %conv40.i)
  br i1 %tobool19.not.i133, label %if.then36.i.out_rx_mgmt_crit_edge, label %if.then36.i.if.then47.i_crit_edge

if.then36.i.if.then47.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

if.then36.i.out_rx_mgmt_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rx_mgmt

if.end41.i:                                       ; preds = %for.body.i
  %no_of_channels42.i = getelementptr inbounds %struct.wilc_ch_list_elem, ptr %add.ptr.i, i32 0, i32 1
  %52 = ptrtoint ptr %no_of_channels42.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %no_of_channels42.i, align 1
  %conv43.i = zext i8 %53 to i32
  %add44.i = add i32 %i.092.i, %conv43.i
  %cmp31.i = icmp slt i32 %add44.i, %conv30.i
  br i1 %cmp31.i, label %if.end41.i.for.body.i_crit_edge, label %if.end41.i.if.end45.i_crit_edge

if.end41.i.if.end45.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

if.end41.i.for.body.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end45.i:                                       ; preds = %if.end41.i.if.end45.i_crit_edge, %if.then26.i.if.end45.i_crit_edge, %while.end.i.if.end45.i_crit_edge
  %tobool19.not.i134 = phi i1 [ %tobool19.not.i133, %if.then26.i.if.end45.i_crit_edge ], [ %tobool19.not.i, %while.end.i.if.end45.i_crit_edge ], [ %tobool19.not.i133, %if.end41.i.if.end45.i_crit_edge ]
  br i1 %tobool19.not.i134, label %if.end45.i.out_rx_mgmt_crit_edge, label %if.end45.i.if.then47.i_crit_edge

if.end45.i.if.then47.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47.i

if.end45.i.out_rx_mgmt_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rx_mgmt

if.then47.i:                                      ; preds = %if.end45.i.if.then47.i_crit_edge, %if.then36.i.if.then47.i_crit_edge
  %idxprom48.i = zext i8 %op_ch_idx.1.i to i32
  %arrayidx49.i = getelementptr i8, ptr %attr, i32 %idxprom48.i
  %op_class50.i = getelementptr inbounds %struct.wilc_attr_oper_ch, ptr %arrayidx49.i, i32 0, i32 3
  %54 = ptrtoint ptr %op_class50.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 81, ptr %op_class50.i, align 1
  %op_channel.i = getelementptr inbounds %struct.wilc_attr_oper_ch, ptr %arrayidx49.i, i32 0, i32 4
  %55 = ptrtoint ptr %op_channel.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %36, ptr %op_channel.i, align 1
  br label %out_rx_mgmt

out_rx_mgmt:                                      ; preds = %if.then47.i, %if.end45.i.out_rx_mgmt_crit_edge, %if.then36.i.out_rx_mgmt_crit_edge, %if.end73.out_rx_mgmt_crit_edge, %if.end67.out_rx_mgmt_crit_edge, %if.end47.out_rx_mgmt_crit_edge, %ieee80211_is_public_action.exit.out_rx_mgmt_crit_edge, %if.end44.out_rx_mgmt_crit_edge, %if.end20.out_rx_mgmt_crit_edge
  %56 = urem i32 %call.i, 1000
  %mul.i = sub i32 %call.i, %56
  %call.i118 = tail call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %priv1, i32 noundef %mul.i, i32 noundef 0, ptr noundef %buff, i32 noundef %size, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %out_rx_mgmt, %if.then38, %do.body32, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wilc_wfi_cfg_parse_ch_attr(ptr nocapture noundef %buf, i32 noundef %len, i8 noundef zeroext %sta_ch) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sta_ch)
  %cmp = icmp eq i8 %sta_ch, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp2.not86 = icmp ult i32 %len, 3
  %or.cond106 = or i1 %cmp, %cmp2.not86
  br i1 %or.cond106, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %entry.while.body_crit_edge
  %op_ch_idx.089 = phi i8 [ %op_ch_idx.1, %if.end21.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %ch_list_idx.088 = phi i8 [ %ch_list_idx.1, %if.end21.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %index.087 = phi i32 [ %add24, %if.end21.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %index.087
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %1, label %while.body.if.end16_crit_edge [
    i8 11, label %if.then7
    i8 17, label %if.then13
  ]

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv8 = trunc i32 %index.087 to i8
  br label %if.end16

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv14 = trunc i32 %index.087 to i8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then7, %while.body.if.end16_crit_edge
  %ch_list_idx.1 = phi i8 [ %conv8, %if.then7 ], [ %ch_list_idx.088, %if.then13 ], [ %ch_list_idx.088, %while.body.if.end16_crit_edge ]
  %op_ch_idx.1 = phi i8 [ %op_ch_idx.089, %if.then7 ], [ %conv14, %if.then13 ], [ %op_ch_idx.089, %while.body.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch_list_idx.1)
  %tobool.not = icmp eq i8 %ch_list_idx.1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %op_ch_idx.1)
  %tobool19.not = icmp eq i8 %op_ch_idx.1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %if.end21, label %if.end16.if.then26_crit_edge

if.end16.if.then26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.end21:                                         ; preds = %if.end16
  %attr_len = getelementptr inbounds %struct.wilc_attr_entry, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %attr_len to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %attr_len, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv22 = zext i16 %5 to i32
  %add23 = add i32 %index.087, 3
  %add24 = add i32 %add23, %conv22
  %add = add i32 %add24, 3
  %cmp2.not = icmp ugt i32 %add, %len
  br i1 %cmp2.not, label %while.end, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch_list_idx.1)
  %tobool25.not = icmp eq i8 %ch_list_idx.1, 0
  br i1 %tobool25.not, label %while.end.if.end45_crit_edge, label %while.end.if.then26_crit_edge

while.end.if.then26_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then26:                                        ; preds = %while.end.if.then26_crit_edge, %if.end16.if.then26_crit_edge
  %idxprom = zext i8 %ch_list_idx.1 to i32
  %arrayidx28 = getelementptr i8, ptr %buf, i32 %idxprom
  %attr_len29 = getelementptr inbounds %struct.wilc_attr_ch_list, ptr %arrayidx28, i32 0, i32 1
  %6 = ptrtoint ptr %attr_len29 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %attr_len29, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv30 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp3191.not = icmp eq i16 %7, 0
  br i1 %cmp3191.not, label %if.then26.if.end45_crit_edge, label %for.body.lr.ph

if.then26.if.end45_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

for.body.lr.ph:                                   ; preds = %if.then26
  %elem = getelementptr inbounds %struct.wilc_attr_ch_list, ptr %arrayidx28, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %add44, %if.end41.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %elem, i32 %i.092
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %10)
  %cmp34 = icmp eq i8 %10, 81
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ch_list37 = getelementptr inbounds %struct.wilc_ch_list_elem, ptr %add.ptr, i32 0, i32 2
  %no_of_channels = getelementptr inbounds %struct.wilc_ch_list_elem, ptr %add.ptr, i32 0, i32 1
  %11 = ptrtoint ptr %no_of_channels to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %no_of_channels, align 1
  %conv40 = zext i8 %12 to i32
  %13 = zext i8 %sta_ch to i32
  %14 = call ptr @memset(ptr %ch_list37, i32 %13, i32 %conv40)
  br label %if.end45

if.end41:                                         ; preds = %for.body
  %no_of_channels42 = getelementptr inbounds %struct.wilc_ch_list_elem, ptr %add.ptr, i32 0, i32 1
  %15 = ptrtoint ptr %no_of_channels42 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %no_of_channels42, align 1
  %conv43 = zext i8 %16 to i32
  %add44 = add i32 %i.092, %conv43
  %cmp31 = icmp slt i32 %add44, %conv30
  br i1 %cmp31, label %if.end41.for.body_crit_edge, label %if.end41.if.end45_crit_edge

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end45:                                         ; preds = %if.end41.if.end45_crit_edge, %if.then36, %if.then26.if.end45_crit_edge, %while.end.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %op_ch_idx.1)
  %tobool46.not = icmp eq i8 %op_ch_idx.1, 0
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.then47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %idxprom48 = zext i8 %op_ch_idx.1 to i32
  %arrayidx49 = getelementptr i8, ptr %buf, i32 %idxprom48
  %op_class50 = getelementptr inbounds %struct.wilc_attr_oper_ch, ptr %arrayidx49, i32 0, i32 3
  %17 = ptrtoint ptr %op_class50 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 81, ptr %op_class50, align 1
  %op_channel = getelementptr inbounds %struct.wilc_attr_oper_ch, ptr %arrayidx49, i32 0, i32 4
  %18 = ptrtoint ptr %op_channel to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %sta_ch, ptr %op_channel, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_update_mgmt_frame_registrations(ptr noundef readonly %wiphy, ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %upd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %initialized = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %wiphy_priv.exit.if.end29_crit_edge, label %if.then

wiphy_priv.exit.if.end29_crit_edge:               ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %wiphy_priv.exit
  %mgmt_reg_stypes = getelementptr i8, ptr %1, i32 2316
  %4 = ptrtoint ptr %mgmt_reg_stypes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mgmt_reg_stypes, align 4
  %interface_stypes = getelementptr inbounds %struct.mgmt_frame_regs, ptr %upd, i32 0, i32 1
  %6 = ptrtoint ptr %interface_stypes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface_stypes, align 4
  %and3 = and i32 %7, 16
  %and3.lobit = lshr exact i32 %and3, 4
  %and = lshr i32 %5, 4
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.lobit, i32 %and.lobit)
  %cmp.not = icmp eq i32 %and3.lobit, %and.lobit
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4 = icmp ne i32 %and3, 0
  tail call void @wilc_frame_register(ptr noundef %add.ptr.i, i16 noundef zeroext 64, i1 noundef zeroext %tobool4) #13
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %mgmt_reg_stypes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mgmt_reg_stypes, align 4
  %10 = ptrtoint ptr %interface_stypes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface_stypes, align 4
  %and17 = and i32 %11, 8192
  %and17.lobit = lshr exact i32 %and17, 13
  %and13 = lshr i32 %9, 13
  %and13.lobit = and i32 %and13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and17.lobit, i32 %and13.lobit)
  %cmp24.not = icmp eq i32 %and17.lobit, %and13.lobit
  br i1 %cmp24.not, label %if.end.if.end29_crit_edge, label %if.then26

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18 = icmp ne i32 %and17, 0
  tail call void @wilc_frame_register(ptr noundef %add.ptr.i, i16 noundef zeroext 208, i1 noundef zeroext %tobool18) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end.if.end29_crit_edge, %wiphy_priv.exit.if.end29_crit_edge
  %interface_stypes30 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %upd, i32 0, i32 1
  %12 = ptrtoint ptr %interface_stypes30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interface_stypes30, align 4
  %and31 = and i32 %13, 8208
  %mgmt_reg_stypes32 = getelementptr i8, ptr %1, i32 2316
  %14 = ptrtoint ptr %mgmt_reg_stypes32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and31, ptr %mgmt_reg_stypes32, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_frame_register(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlan_deinit_locks(ptr noundef %wilc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_cs = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 18
  tail call void @mutex_destroy(ptr noundef %hif_cs) #13
  %rxq_cs = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 17
  tail call void @mutex_destroy(ptr noundef %rxq_cs) #13
  %cfg_cmd_lock = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 25
  tail call void @mutex_destroy(ptr noundef %cfg_cmd_lock) #13
  %txq_add_to_head_cs = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 15
  tail call void @mutex_destroy(ptr noundef %txq_add_to_head_cs) #13
  %vif_mutex = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 12
  tail call void @mutex_destroy(ptr noundef %vif_mutex) #13
  %deinit_lock = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 43
  tail call void @mutex_destroy(ptr noundef %deinit_lock) #13
  %srcu = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13
  tail call void @cleanup_srcu_struct(ptr noundef %srcu) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_cfg80211_init(ptr nocapture noundef writeonly %wilc, ptr noundef %dev, i32 noundef %io_type, ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wilc_create_wiphy(ptr noundef %dev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hif_cs.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %hif_cs.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @wlan_init_locks.__key) #13
  %rxq_cs.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %rxq_cs.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @wlan_init_locks.__key.9) #13
  %cfg_cmd_lock.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %cfg_cmd_lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @wlan_init_locks.__key.11) #13
  %vif_mutex.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %vif_mutex.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @wlan_init_locks.__key.13) #13
  %deinit_lock.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 43
  tail call void @__mutex_init(ptr noundef %deinit_lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @wlan_init_locks.__key.15) #13
  %txq_spinlock.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %txq_spinlock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @wlan_init_locks.__key.17, i16 noundef signext 3) #13
  %txq_add_to_head_cs.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %txq_add_to_head_cs.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @wlan_init_locks.__key.19) #13
  %txq_event.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %txq_event.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %txq_event.i, align 4
  %wait.i.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #13
  %cfg_event.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %cfg_event.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cfg_event.i, align 4
  %wait.i25.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 19, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i25.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #13
  %sync_event.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 20
  %2 = ptrtoint ptr %sync_event.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sync_event.i, align 4
  %wait.i26.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i26.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #13
  %txq_thread_started.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 22
  %3 = ptrtoint ptr %txq_thread_started.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %txq_thread_started.i, align 4
  %wait.i27.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i27.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #13
  %srcu.i = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 13
  %call13.i = tail call i32 @__init_srcu_struct(ptr noundef %srcu.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @wlan_init_locks.__srcu_key) #13
  %call1 = tail call i32 @wilc_wlan_cfg_init(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.free_wl_crit_edge

if.end.free_wl_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_wl

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %wilc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %wilc, align 4
  %io_type5 = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %io_type5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %io_type, ptr %io_type5, align 4
  %hif_func = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %hif_func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ops, ptr %hif_func, align 4
  %arrayidx = getelementptr %struct.wilc, ptr %call, i32 0, i32 32, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.wilc, ptr %call, i32 0, i32 32, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr %struct.wilc, ptr %call, i32 0, i32 32, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.1 = getelementptr %struct.wilc, ptr %call, i32 0, i32 32, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  %arrayidx.2 = getelementptr %struct.wilc, ptr %call, i32 0, i32 32, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.2 = getelementptr %struct.wilc, ptr %call, i32 0, i32 32, i32 2, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.2, ptr %prev.i.2, align 4
  %arrayidx.3 = getelementptr %struct.wilc, ptr %call, i32 0, i32 32, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i.3 = getelementptr %struct.wilc, ptr %call, i32 0, i32 32, i32 3, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.3, ptr %prev.i.3, align 4
  %rxq_head = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 35
  %15 = ptrtoint ptr %rxq_head to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %rxq_head, ptr %rxq_head, align 4
  %prev.i33 = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 35, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rxq_head, ptr %prev.i33, align 4
  %vif_list = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 11
  %17 = ptrtoint ptr %vif_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %vif_list, ptr %vif_list, align 4
  %prev.i34 = getelementptr inbounds %struct.wilc, ptr %call, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vif_list, ptr %prev.i34, align 4
  %call7 = tail call ptr @wilc_netdev_ifc_init(ptr noundef nonnull %call, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 2, i1 noundef zeroext false) #13
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %call7 to i32
  tail call void @wilc_wlan_cfg_deinit(ptr noundef nonnull %call) #13
  br label %free_wl

free_wl:                                          ; preds = %if.then9, %if.end.free_wl_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.free_wl_crit_edge ], [ %19, %if.then9 ]
  tail call void @mutex_destroy(ptr noundef %hif_cs.i) #13
  tail call void @mutex_destroy(ptr noundef %rxq_cs.i) #13
  tail call void @mutex_destroy(ptr noundef %cfg_cmd_lock.i) #13
  tail call void @mutex_destroy(ptr noundef %txq_add_to_head_cs.i) #13
  tail call void @mutex_destroy(ptr noundef %vif_mutex.i) #13
  tail call void @mutex_destroy(ptr noundef %deinit_lock.i) #13
  tail call void @cleanup_srcu_struct(ptr noundef %srcu.i) #13
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  tail call void @wiphy_unregister(ptr noundef %21) #13
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  tail call void @wiphy_free(ptr noundef %23) #13
  br label %cleanup

cleanup:                                          ; preds = %free_wl, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_wl ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wilc_create_wiphy(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @wilc_cfg80211_ops, i32 noundef 5520, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %wiphy_priv.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 86
  %bitrates = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 56, i32 12, i32 22
  %0 = call ptr @memcpy(ptr %bitrates, ptr @wilc_bitrates, i32 144)
  %channels = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 40
  %1 = call ptr @memcpy(ptr %channels, ptr @wilc_2ghz_channels, i32 784)
  %band = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 56, i32 31
  %bitrates5 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 56, i32 31, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %bitrates5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bitrates, ptr %bitrates5, align 4
  %n_bitrates = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 56, i32 31, i32 0, i32 0, i32 4
  %3 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %n_bitrates, align 4
  %4 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %channels, ptr %band, align 4
  %n_channels = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 56, i32 31, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 14, ptr %n_channels, align 4
  %ht_cap = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1
  %ht_supported = getelementptr inbounds %struct.wilc, ptr %priv.i, i32 0, i32 48, i32 5, i32 1
  %6 = ptrtoint ptr %ht_supported to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ht_supported, align 2
  %7 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ht_cap, align 4
  %9 = or i16 %8, 256
  store i16 %9, ptr %ht_cap, align 4
  %mcs = getelementptr inbounds %struct.wilc, ptr %priv.i, i32 0, i32 48, i32 5, i32 4
  %10 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %mcs, align 1
  %ampdu_factor = getelementptr inbounds %struct.wilc, ptr %priv.i, i32 0, i32 48, i32 5, i32 2
  %11 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ampdu_factor, align 1
  %ampdu_density = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ampdu_density, align 4
  %bands = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 53
  %13 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %band, ptr %bands, align 16
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 18
  %14 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 10, ptr %max_scan_ssids, align 32
  %wowlan = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 40
  %15 = ptrtoint ptr %wowlan to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wowlan_support, ptr %wowlan, align 32
  %max_num_pmkids = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 43
  %16 = ptrtoint ptr %max_num_pmkids to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %max_num_pmkids, align 2
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 22
  %17 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1000, ptr %max_scan_ie_len, align 4
  %signal_type = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %signal_type, align 8
  %cipher_suites = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 4, i32 60
  %19 = call ptr @memcpy(ptr %cipher_suites, ptr @wilc_cipher_suites, i32 20)
  %cipher_suites27 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 28
  %20 = ptrtoint ptr %cipher_suites27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cipher_suites, ptr %cipher_suites27, align 8
  %n_cipher_suites = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 27
  %21 = ptrtoint ptr %n_cipher_suites to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %n_cipher_suites, align 4
  %mgmt_stypes = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %mgmt_stypes to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @wilc_wfi_cfg80211_mgmt_types, ptr %mgmt_stypes, align 4
  %max_remain_on_channel_duration = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 42
  %23 = ptrtoint ptr %max_remain_on_channel_duration to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 500, ptr %max_remain_on_channel_duration, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 844, ptr %interface_modes, align 4
  %flags = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 32
  %or28 = or i32 %26, 2097152
  store i32 %or28, ptr %flags, align 32
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 56, i32 1
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %parent.i, align 8
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %priv.i, align 4
  %call30 = tail call i32 @wiphy_register(ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %wiphy_priv.exit.cleanup_crit_edge, label %if.then32

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then32:                                        ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wiphy_free(ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %wiphy_priv.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then32 ], [ null, %entry.cleanup_crit_edge ], [ %priv.i, %wiphy_priv.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_cfg_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wilc_netdev_ifc_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wlan_cfg_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_init_host_int(ptr noundef %net) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_listen_state = getelementptr i8, ptr %net, i32 8092
  %0 = ptrtoint ptr %p2p_listen_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %p2p_listen_state, align 4
  %scan_req_lock = getelementptr i8, ptr %net, i32 8000
  tail call void @__mutex_init(ptr noundef %scan_req_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @wilc_init_host_int.__key) #13
  %hif_drv = getelementptr i8, ptr %net, i32 7504
  %call2 = tail call i32 @wilc_init(ptr noundef %net, ptr noundef %hif_drv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.6) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_deinit_host_int(ptr noundef %net) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %p2p_listen_state = getelementptr i8, ptr %net, i32 8092
  %0 = ptrtoint ptr %p2p_listen_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %p2p_listen_state, align 4
  %wilc = getelementptr i8, ptr %net, i32 2412
  %1 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wilc, align 4
  %hif_workqueue = getelementptr inbounds %struct.wilc, ptr %2, i32 0, i32 39
  %3 = ptrtoint ptr %hif_workqueue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %4) #13
  %scan_req_lock = getelementptr i8, ptr %net, i32 8000
  tail call void @mutex_destroy(ptr noundef %scan_req_lock) #13
  %call2 = tail call i32 @wilc_deinit(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.7) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_vendor_elem(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__init_srcu_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_suspend(ptr noundef %wiphy, ptr noundef readnone %wow) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %tobool.not = icmp eq ptr %wow, null
  br i1 %tobool.not, label %land.lhs.true, label %wiphy_priv.exit.if.else_crit_edge

wiphy_priv.exit.if.else_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %wiphy_priv.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call1 = tail call i32 @wilc_wlan_get_num_conn_ifcs(ptr noundef %priv.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %wiphy_priv.exit.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end_crit_edge ]
  %suspend_event3 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 4, i32 9
  %0 = ptrtoint ptr %suspend_event3 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %.sink, ptr %suspend_event3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wilc_resume(ptr nocapture noundef readnone %wiphy) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_set_wakeup(ptr noundef %wiphy, i1 noundef zeroext %enabled) #2 align 64 {
entry:
  %__next.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %srcu = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 14, i32 4
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #13
  %dep_map.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10, i32 3, i32 6
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #13
  %vif_list.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i)
  %0 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vif_list.i, align 4
  %2 = ptrtoint ptr %__next.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__next.i, align 4
  %cmp.not.i = icmp eq ptr %vif_list.i, %1
  br i1 %cmp.not.i, label %cond.end.thread.i, label %cond.end.i, !prof !141

cond.end.thread.i:                                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  br label %if.then

cond.end.i:                                       ; preds = %wiphy_priv.exit
  %3 = ptrtoint ptr %__next.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i = load volatile ptr, ptr %__next.i, align 4
  %add.ptr.i = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  %tobool8.not.i = icmp eq ptr %add.ptr.i, null
  %cmp.i = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool8.not.i, %cmp.i
  br i1 %or.cond, label %cond.end.i.if.then_crit_edge, label %if.end

cond.end.i.if.then_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %cond.end.i.if.then_crit_edge, %cond.end.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i16 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i16, label %if.then.cleanup_crit_edge, label %land.rhs.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs.i:                                       ; preds = %if.then
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.cleanup.sink.split_crit_edge, !prof !145

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end.i
  %ndev = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %conv = zext i1 %enabled to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %conv) #16
  tail call void @wilc_set_wowlan_trigger(ptr noundef nonnull %add.ptr.i, i1 noundef zeroext %enabled) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i19 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i19, label %if.end.cleanup_crit_edge, label %land.rhs.i21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs.i21:                                     ; preds = %if.end
  %.b40.i20 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i20, label %land.rhs.i21.cleanup_crit_edge, label %land.rhs.i21.cleanup.sink.split_crit_edge, !prof !145

land.rhs.i21.cleanup.sink.split_crit_edge:        ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.rhs.i21.cleanup_crit_edge:                   ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.rhs.i21.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.i21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #13
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @add_virtual_intf(ptr noundef %wiphy, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, ptr nocapture noundef readnone %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp = icmp eq i32 %type, 6
  br i1 %cmp, label %if.then, label %wiphy_priv.exit.validate_interface_crit_edge

wiphy_priv.exit.validate_interface_crit_edge:     ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_interface

if.then:                                          ; preds = %wiphy_priv.exit
  %srcu = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 14, i32 4
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #13
  %dep_map.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10, i32 3, i32 6
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #13
  %call.i72 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %land.lhs.true.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @wilc_get_vif_from_type.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @wilc_get_vif_from_type.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.27) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then3_crit_edge, label %for.body.i

for.cond.i.if.then3_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

for.body.i:                                       ; preds = %for.cond.i
  %iftype.i = getelementptr i8, ptr %.pn.i, i32 -5807
  %1 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %iftype.i, align 1
  %cmp10.i = icmp eq i8 %2, 1
  br i1 %cmp10.i, label %wilc_get_vif_from_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

wilc_get_vif_from_type.exit:                      ; preds = %for.body.i
  %vif.0.le.i = getelementptr i8, ptr %.pn.i, i32 -5808
  %tobool.not = icmp eq ptr %vif.0.le.i, null
  br i1 %tobool.not, label %wilc_get_vif_from_type.exit.if.then3_crit_edge, label %wilc_get_vif_from_type.exit.if.end8_crit_edge

wilc_get_vif_from_type.exit.if.end8_crit_edge:    ; preds = %wilc_get_vif_from_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

wilc_get_vif_from_type.exit.if.then3_crit_edge:   ; preds = %wilc_get_vif_from_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.then3:                                         ; preds = %wilc_get_vif_from_type.exit.if.then3_crit_edge, %for.cond.i.if.then3_crit_edge
  %call.i74 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i78, label %if.then3.for.cond.i87.preheader_crit_edge

if.then3.for.cond.i87.preheader_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i87.preheader

land.lhs.true.i78:                                ; preds = %if.then3
  %call1.i76 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool2.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool2.not.i77, label %land.lhs.true.i78.for.cond.i87.preheader_crit_edge, label %land.lhs.true3.i80

land.lhs.true.i78.for.cond.i87.preheader_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i87.preheader

land.lhs.true3.i80:                               ; preds = %land.lhs.true.i78
  %.b27.i79 = load i1, ptr @wilc_get_vif_from_type.__warned, align 1
  br i1 %.b27.i79, label %land.lhs.true3.i80.for.cond.i87.preheader_crit_edge, label %if.then.i81

land.lhs.true3.i80.for.cond.i87.preheader_crit_edge: ; preds = %land.lhs.true3.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i87.preheader

if.then.i81:                                      ; preds = %land.lhs.true3.i80
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @wilc_get_vif_from_type.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.27) #13
  br label %for.cond.i87.preheader

for.cond.i87.preheader:                           ; preds = %if.then.i81, %land.lhs.true3.i80.for.cond.i87.preheader_crit_edge, %land.lhs.true.i78.for.cond.i87.preheader_crit_edge, %if.then3.for.cond.i87.preheader_crit_edge
  br label %for.cond.i87

for.cond.i87:                                     ; preds = %for.body.i91.for.cond.i87_crit_edge, %for.cond.i87.preheader
  %.pn.in.i84 = phi ptr [ %.pn.i85, %for.body.i91.for.cond.i87_crit_edge ], [ %vif_list.i, %for.cond.i87.preheader ]
  %3 = ptrtoint ptr %.pn.in.i84 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i85 = load volatile ptr, ptr %.pn.in.i84, align 4
  %cmp.not.i86 = icmp eq ptr %.pn.i85, %vif_list.i
  br i1 %cmp.not.i86, label %for.cond.i87.if.then6_crit_edge, label %for.body.i91

for.cond.i87.if.then6_crit_edge:                  ; preds = %for.cond.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

for.body.i91:                                     ; preds = %for.cond.i87
  %iftype.i88 = getelementptr i8, ptr %.pn.i85, i32 -5807
  %4 = ptrtoint ptr %iftype.i88 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iftype.i88, align 1
  %cmp10.i90 = icmp eq i8 %5, 3
  br i1 %cmp10.i90, label %wilc_get_vif_from_type.exit95, label %for.body.i91.for.cond.i87_crit_edge

for.body.i91.for.cond.i87_crit_edge:              ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i87

wilc_get_vif_from_type.exit95:                    ; preds = %for.body.i91
  %vif.0.le.i92 = getelementptr i8, ptr %.pn.i85, i32 -5808
  %tobool5.not = icmp eq ptr %vif.0.le.i92, null
  br i1 %tobool5.not, label %wilc_get_vif_from_type.exit95.if.then6_crit_edge, label %wilc_get_vif_from_type.exit95.if.end8_crit_edge

wilc_get_vif_from_type.exit95.if.end8_crit_edge:  ; preds = %wilc_get_vif_from_type.exit95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

wilc_get_vif_from_type.exit95.if.then6_crit_edge: ; preds = %wilc_get_vif_from_type.exit95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %wilc_get_vif_from_type.exit95.if.then6_crit_edge, %for.cond.i87.if.then6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i96 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i96, label %if.then6.validate_interface.sink.split_crit_edge, label %land.rhs.i

if.then6.validate_interface.sink.split_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_interface.sink.split

land.rhs.i:                                       ; preds = %if.then6
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.validate_interface.sink.split_crit_edge, label %land.rhs.i.validate_interface.sink.split.sink.split_crit_edge, !prof !145

land.rhs.i.validate_interface.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_interface.sink.split.sink.split

land.rhs.i.validate_interface.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_interface.sink.split

if.end8:                                          ; preds = %wilc_get_vif_from_type.exit95.if.end8_crit_edge, %wilc_get_vif_from_type.exit.if.end8_crit_edge
  %vif.0 = phi ptr [ %vif.0.le.i, %wilc_get_vif_from_type.exit.if.end8_crit_edge ], [ %vif.0.le.i92, %wilc_get_vif_from_type.exit95.if.end8_crit_edge ]
  %monitor_flag = getelementptr inbounds %struct.wilc_vif, ptr %vif.0, i32 0, i32 2
  %6 = ptrtoint ptr %monitor_flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %monitor_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i99 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i99, label %if.then10.validate_interface.sink.split_crit_edge, label %land.rhs.i101

if.then10.validate_interface.sink.split_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_interface.sink.split

land.rhs.i101:                                    ; preds = %if.then10
  %.b40.i100 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i100, label %land.rhs.i101.validate_interface.sink.split_crit_edge, label %land.rhs.i101.validate_interface.sink.split.sink.split_crit_edge, !prof !145

land.rhs.i101.validate_interface.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i101
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_interface.sink.split.sink.split

land.rhs.i101.validate_interface.sink.split_crit_edge: ; preds = %land.rhs.i101
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_interface.sink.split

if.end12:                                         ; preds = %if.end8
  %ndev13 = getelementptr inbounds %struct.wilc_vif, ptr %vif.0, i32 0, i32 9
  %8 = ptrtoint ptr %ndev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev13, align 4
  %call14 = tail call ptr @wilc_wfi_init_mon_interface(ptr noundef %priv.i, ptr noundef %name, ptr noundef %9) #13
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  %10 = ptrtoint ptr %monitor_flag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %monitor_flag, align 4
  %priv = getelementptr inbounds %struct.wilc_vif, ptr %vif.0, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i105 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i105, label %if.then16.srcu_read_unlock.exit110_crit_edge, label %land.rhs.i107

if.then16.srcu_read_unlock.exit110_crit_edge:     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit110

land.rhs.i107:                                    ; preds = %if.then16
  %.b40.i106 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i106, label %land.rhs.i107.srcu_read_unlock.exit110_crit_edge, label %if.then.i108, !prof !145

land.rhs.i107.srcu_read_unlock.exit110_crit_edge: ; preds = %land.rhs.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit110

if.then.i108:                                     ; preds = %land.rhs.i107
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit110

srcu_read_unlock.exit110:                         ; preds = %if.then.i108, %land.rhs.i107.srcu_read_unlock.exit110_crit_edge, %if.then16.srcu_read_unlock.exit110_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #13
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #13
  br label %cleanup42

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i111 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i111, label %if.else.srcu_read_unlock.exit116_crit_edge, label %land.rhs.i113

if.else.srcu_read_unlock.exit116_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit116

land.rhs.i113:                                    ; preds = %if.else
  %.b40.i112 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i112, label %land.rhs.i113.srcu_read_unlock.exit116_crit_edge, label %if.then.i114, !prof !145

land.rhs.i113.srcu_read_unlock.exit116_crit_edge: ; preds = %land.rhs.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit116

if.then.i114:                                     ; preds = %land.rhs.i113
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit116

srcu_read_unlock.exit116:                         ; preds = %if.then.i114, %land.rhs.i113.srcu_read_unlock.exit116_crit_edge, %if.else.srcu_read_unlock.exit116_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #13
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #13
  br label %cleanup42

validate_interface.sink.split.sink.split:         ; preds = %land.rhs.i101.validate_interface.sink.split.sink.split_crit_edge, %land.rhs.i.validate_interface.sink.split.sink.split_crit_edge
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %validate_interface.sink.split

validate_interface.sink.split:                    ; preds = %validate_interface.sink.split.sink.split, %land.rhs.i101.validate_interface.sink.split_crit_edge, %if.then10.validate_interface.sink.split_crit_edge, %land.rhs.i.validate_interface.sink.split_crit_edge, %if.then6.validate_interface.sink.split_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #13
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #13
  br label %validate_interface

validate_interface:                               ; preds = %validate_interface.sink.split, %wiphy_priv.exit.validate_interface_crit_edge
  %vif_mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #13
  %vif_num = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 6
  %11 = ptrtoint ptr %vif_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vif_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp25 = icmp eq i8 %12, 2
  br i1 %cmp25, label %do.end, label %if.end31

do.end:                                           ; preds = %validate_interface
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #16
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #13
  br label %cleanup42

if.end31:                                         ; preds = %validate_interface
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #13
  %13 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %type, label %if.end31.cleanup42_crit_edge [
    i32 2, label %if.end31.sw.epilog_crit_edge
    i32 3, label %sw.bb33
  ]

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end31.cleanup42_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

sw.bb33:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %if.end31.sw.epilog_crit_edge
  %iftype.0 = phi i32 [ 1, %sw.bb33 ], [ %type, %if.end31.sw.epilog_crit_edge ]
  %call35 = tail call ptr @wilc_netdev_ifc_init(ptr noundef %priv.i, ptr noundef %name, i32 noundef %iftype.0, i32 noundef %type, i1 noundef zeroext true) #13
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  %priv40 = getelementptr inbounds %struct.wilc_vif, ptr %call35, i32 0, i32 16
  %spec.select = select i1 %cmp.i, ptr %call35, ptr %priv40
  br label %cleanup42

cleanup42:                                        ; preds = %sw.epilog, %if.end31.cleanup42_crit_edge, %do.end, %srcu_read_unlock.exit116, %srcu_read_unlock.exit110
  %retval.1 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %priv, %srcu_read_unlock.exit110 ], [ inttoptr (i32 -22 to ptr), %srcu_read_unlock.exit116 ], [ inttoptr (i32 -95 to ptr), %if.end31.cleanup42_crit_edge ], [ %spec.select, %sw.epilog ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @del_virtual_intf(ptr noundef %wiphy, ptr noundef %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iftype, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %wiphy_priv.exit.if.end_crit_edge [
    i32 3, label %wiphy_priv.exit.if.then_crit_edge
    i32 9, label %wiphy_priv.exit.if.then_crit_edge17
  ]

wiphy_priv.exit.if.then_crit_edge17:              ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

wiphy_priv.exit.if.then_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

wiphy_priv.exit.if.end_crit_edge:                 ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %wiphy_priv.exit.if.then_crit_edge, %wiphy_priv.exit.if.then_crit_edge17
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  tail call void @wilc_wfi_deinit_mon_interface(ptr noundef %priv.i, i1 noundef zeroext true) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %wiphy_priv.exit.if.end_crit_edge
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 2304
  tail call void @cfg80211_stop_iface(ptr noundef nonnull %wiphy, ptr noundef %wdev, i32 noundef 3264) #13
  %ndev = getelementptr i8, ptr %4, i32 2428
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 82
  %7 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %8) #13
  %monitor_flag = getelementptr i8, ptr %4, i32 2308
  %9 = ptrtoint ptr %monitor_flag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %monitor_flag, align 4
  %call4 = tail call i32 @wilc_set_operation_mode(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %vif_mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #13
  %list = getelementptr i8, ptr %4, i32 8112
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %4, i32 8116
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr i8, ptr %4, i32 8116
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %vif_num = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 6
  %17 = ptrtoint ptr %vif_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vif_num, align 4
  %dec = add i8 %18, -1
  store i8 %dec, ptr %vif_num, align 4
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #13
  %srcu = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 14, i32 4
  tail call void @synchronize_srcu(ptr noundef %srcu) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @change_virtual_intf(ptr noundef %wiphy, ptr noundef %dev, i32 noundef %type, ptr nocapture noundef readnone %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %type, label %sw.default [
    i32 2, label %sw.bb
    i32 8, label %sw.bb15
    i32 3, label %sw.bb30
    i32 9, label %sw.bb43
  ]

sw.bb:                                            ; preds = %wiphy_priv.exit
  %connecting = getelementptr i8, ptr %dev, i32 6436
  %1 = ptrtoint ptr %connecting to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %connecting, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %iftype, align 4
  %iftype3 = getelementptr i8, ptr %dev, i32 6444
  %5 = ptrtoint ptr %iftype3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %iftype3, align 4
  %monitor_flag = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %monitor_flag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %monitor_flag, align 4
  %iftype4 = getelementptr i8, ptr %dev, i32 2305
  %7 = ptrtoint ptr %iftype4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iftype4, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %8, label %sw.bb.if.end_crit_edge [
    i8 1, label %sw.bb.if.then_crit_edge
    i8 3, label %sw.bb.if.then_crit_edge102
  ]

sw.bb.if.then_crit_edge102:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %sw.bb.if.then_crit_edge, %sw.bb.if.then_crit_edge102
  tail call void @wilc_wfi_deinit_mon_interface(ptr noundef %priv.i, i1 noundef zeroext true) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %10 = ptrtoint ptr %iftype4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %iftype4, align 1
  %initialized = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %initialized, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @wilc_get_vif_idx(ptr noundef %add.ptr.i) #13
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 8
  %call13 = tail call i32 @wilc_set_operation_mode(ptr noundef %add.ptr.i, i32 noundef %call12, i8 noundef zeroext 2, i8 noundef zeroext %14) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %assoc_stainfo = getelementptr i8, ptr %dev, i32 7439
  %15 = call ptr @memset(ptr %assoc_stainfo, i32 0, i32 54)
  br label %cleanup

sw.bb15:                                          ; preds = %wiphy_priv.exit
  %connecting16 = getelementptr i8, ptr %dev, i32 6436
  %16 = ptrtoint ptr %connecting16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %connecting16, align 4
  %ieee80211_ptr17 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %17 = ptrtoint ptr %ieee80211_ptr17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ieee80211_ptr17, align 16
  %iftype18 = getelementptr inbounds %struct.wireless_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %iftype18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %iftype18, align 4
  %iftype20 = getelementptr i8, ptr %dev, i32 6444
  %20 = ptrtoint ptr %iftype20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %iftype20, align 4
  %monitor_flag21 = getelementptr i8, ptr %dev, i32 2308
  %21 = ptrtoint ptr %monitor_flag21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %monitor_flag21, align 4
  %iftype22 = getelementptr i8, ptr %dev, i32 2305
  %22 = ptrtoint ptr %iftype22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %iftype22, align 1
  %initialized23 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %initialized23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %initialized23, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool24.not = icmp eq i8 %24, 0
  br i1 %tobool24.not, label %sw.bb15.cleanup_crit_edge, label %if.then25

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 @wilc_get_vif_idx(ptr noundef %add.ptr.i) #13
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i, align 8
  %call28 = tail call i32 @wilc_set_operation_mode(ptr noundef %add.ptr.i, i32 noundef %call26, i8 noundef zeroext 2, i8 noundef zeroext %26) #13
  br label %cleanup

sw.bb30:                                          ; preds = %wiphy_priv.exit
  %ieee80211_ptr31 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %27 = ptrtoint ptr %ieee80211_ptr31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ieee80211_ptr31, align 16
  %iftype32 = getelementptr inbounds %struct.wireless_dev, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %iftype32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %iftype32, align 4
  %iftype34 = getelementptr i8, ptr %dev, i32 6444
  %30 = ptrtoint ptr %iftype34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %iftype34, align 4
  %iftype35 = getelementptr i8, ptr %dev, i32 2305
  %31 = ptrtoint ptr %iftype35 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %iftype35, align 1
  %initialized36 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %initialized36 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %initialized36, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool37.not = icmp eq i8 %33, 0
  br i1 %tobool37.not, label %sw.bb30.cleanup_crit_edge, label %if.then38

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = tail call i32 @wilc_get_vif_idx(ptr noundef %add.ptr.i) #13
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i, align 8
  %call41 = tail call i32 @wilc_set_operation_mode(ptr noundef %add.ptr.i, i32 noundef %call39, i8 noundef zeroext 1, i8 noundef zeroext %35) #13
  br label %cleanup

sw.bb43:                                          ; preds = %wiphy_priv.exit
  %ieee80211_ptr44 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %36 = ptrtoint ptr %ieee80211_ptr44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ieee80211_ptr44, align 16
  %iftype45 = getelementptr inbounds %struct.wireless_dev, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %iftype45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 9, ptr %iftype45, align 4
  %iftype47 = getelementptr i8, ptr %dev, i32 6444
  %39 = ptrtoint ptr %iftype47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 9, ptr %iftype47, align 4
  %iftype48 = getelementptr i8, ptr %dev, i32 2305
  %40 = ptrtoint ptr %iftype48 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %iftype48, align 1
  %initialized49 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %initialized49 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %initialized49, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool50.not = icmp eq i8 %42, 0
  br i1 %tobool50.not, label %sw.bb43.cleanup_crit_edge, label %if.then51

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then51:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = tail call i32 @wilc_get_vif_idx(ptr noundef %add.ptr.i) #13
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i, align 8
  %call54 = tail call i32 @wilc_set_operation_mode(ptr noundef %add.ptr.i, i32 noundef %call52, i8 noundef zeroext 1, i8 noundef zeroext %44) #13
  br label %cleanup

sw.default:                                       ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %type) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then51, %sw.bb43.cleanup_crit_edge, %if.then38, %sw.bb30.cleanup_crit_edge, %if.then25, %sw.bb15.cleanup_crit_edge, %if.end14
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb43.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %sw.bb30.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %sw.bb15.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_key(ptr nocapture noundef readnone %wiphy, ptr noundef %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_len, align 4
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %priv1 = getelementptr i8, ptr %netdev, i32 6440
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %2 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cipher, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %3, label %sw.default [
    i32 1027073, label %entry.sw.bb_crit_edge
    i32 1027077, label %entry.sw.bb_crit_edge194
    i32 1027074, label %entry.sw.bb17_crit_edge
    i32 1027076, label %entry.sw.bb17_crit_edge195
  ]

entry.sw.bb17_crit_edge195:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

entry.sw.bb_crit_edge194:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge194
  %iftype = getelementptr i8, ptr %netdev, i32 6444
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = trunc i32 %1 to i8
  %idxprom.i = zext i8 %key_index to i32
  %arrayidx.i = getelementptr %struct.wilc_priv, ptr %priv1, i32 0, i32 12, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr %struct.wilc_priv, ptr %priv1, i32 0, i32 11, i32 %idxprom.i
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %10 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len, align 4
  %12 = call ptr @memcpy(ptr %arrayidx2.i, ptr %9, i32 %11)
  %13 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027073, i32 %14)
  %cmp3 = icmp eq i32 %14, 1027073
  %. = select i1 %cmp3, i8 3, i8 7
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %params, align 4
  %17 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len, align 4
  %conv = trunc i32 %18 to i8
  %call6 = tail call i32 @wilc_add_wep_key_bss_ap(ptr noundef %add.ptr.i, ptr noundef %16, i8 noundef zeroext %conv, i8 noundef zeroext %key_index, i8 noundef zeroext %., i32 noundef 1) #13
  br label %cleanup98

if.end7:                                          ; preds = %sw.bb
  %19 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params, align 4
  %idxprom = zext i8 %key_index to i32
  %arrayidx = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 11, i32 %idxprom
  %bcmp = tail call i32 @bcmp(ptr %20, ptr %arrayidx, i32 %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end7.cleanup98_crit_edge, label %if.then11

if.end7.cleanup98_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i173 = trunc i32 %1 to i8
  %arrayidx.i175 = getelementptr %struct.wilc_priv, ptr %priv1, i32 0, i32 12, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i173, ptr %arrayidx.i175, align 1
  %arrayidx2.i176 = getelementptr %struct.wilc_priv, ptr %priv1, i32 0, i32 11, i32 %idxprom
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params, align 4
  %24 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key_len, align 4
  %26 = call ptr @memcpy(ptr %arrayidx2.i176, ptr %23, i32 %25)
  %27 = load ptr, ptr %params, align 4
  %28 = load i32, ptr %key_len, align 4
  %conv14 = trunc i32 %28 to i8
  %call15 = tail call i32 @wilc_add_wep_key_bss_sta(ptr noundef %add.ptr.i, ptr noundef %27, i8 noundef zeroext %conv14, i8 noundef zeroext %key_index) #13
  br label %cleanup98

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge195
  %iftype19 = getelementptr i8, ptr %netdev, i32 6444
  %29 = ptrtoint ptr %iftype19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iftype19, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %30, label %if.else71 [
    i32 3, label %sw.bb17.if.then26_crit_edge
    i32 9, label %sw.bb17.if.then26_crit_edge196
  ]

sw.bb17.if.then26_crit_edge196:                   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

sw.bb17.if.then26_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.then26:                                        ; preds = %sw.bb17.if.then26_crit_edge, %sw.bb17.if.then26_crit_edge196
  %idxprom.i177 = zext i8 %key_index to i32
  %arrayidx.i178 = getelementptr %struct.wilc_priv, ptr %priv1, i32 0, i32 14, i32 %idxprom.i177
  %32 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i178, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then26.if.end9.i_crit_edge

if.then26.if.end9.i_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then.i:                                        ; preds = %if.then26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 20) #18
  %35 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i, ptr %arrayidx.i178, align 4
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.then.i.cleanup98_crit_edge, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then.i.cleanup98_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %if.then26.if.end9.i_crit_edge
  %arrayidx11.i = getelementptr %struct.wilc_priv, ptr %priv1, i32 0, i32 15, i32 %idxprom.i177
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %37, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end9.i.if.end31_crit_edge

if.end9.i.if.end31_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then13.i:                                      ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i35.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 20) #18
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i35.i, ptr %arrayidx11.i, align 4
  %tobool21.not.i = icmp eq ptr %call7.i.i35.i, null
  br i1 %tobool21.not.i, label %if.then13.i.cleanup98_crit_edge, label %if.then13.i.if.end31_crit_edge

if.then13.i.if.end31_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then13.i.cleanup98_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

if.end31:                                         ; preds = %if.then13.i.if.end31_crit_edge, %if.end9.i.if.end31_crit_edge
  %40 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %41)
  %cmp33 = icmp sgt i32 %41, 16
  br i1 %cmp33, label %land.lhs.true, label %if.end31.if.end43_crit_edge

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end31
  %42 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %43)
  %cmp36 = icmp eq i32 %43, 1027074
  br i1 %cmp36, label %if.then38, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %params, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 24
  %add.ptr41 = getelementptr i8, ptr %45, i32 16
  %sub = add nsw i32 %41, -16
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %land.lhs.true.if.end43_crit_edge, %if.end31.if.end43_crit_edge
  %keylen.0 = phi i32 [ %sub, %if.then38 ], [ %1, %land.lhs.true.if.end43_crit_edge ], [ %1, %if.end31.if.end43_crit_edge ]
  %rx_mic.0 = phi ptr [ %add.ptr41, %if.then38 ], [ null, %land.lhs.true.if.end43_crit_edge ], [ null, %if.end31.if.end43_crit_edge ]
  %tx_mic.0 = phi ptr [ %add.ptr, %if.then38 ], [ null, %land.lhs.true.if.end43_crit_edge ], [ null, %if.end31.if.end43_crit_edge ]
  %46 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %47)
  %cmp56 = icmp eq i32 %47, 1027074
  br i1 %pairwise, label %if.else54, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %.169 = select i1 %cmp56, i8 73, i8 49
  %wilc_groupkey = getelementptr i8, ptr %netdev, i32 7996
  %48 = ptrtoint ptr %wilc_groupkey to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.169, ptr %wilc_groupkey, align 4
  %arrayidx53 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 14, i32 %idxprom.i177
  br label %if.end66

if.else54:                                        ; preds = %if.end43
  br i1 %cmp56, label %if.else54.if.end63_crit_edge, label %if.else59

if.else54.if.end63_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.else59:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  %wilc_groupkey60 = getelementptr i8, ptr %netdev, i32 7996
  %49 = ptrtoint ptr %wilc_groupkey60 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %wilc_groupkey60, align 4
  %51 = or i8 %50, 32
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.else54.if.end63_crit_edge
  %mode.2 = phi i8 [ %51, %if.else59 ], [ 73, %if.else54.if.end63_crit_edge ]
  %arrayidx65 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 15, i32 %idxprom.i177
  br label %if.end66

if.end66:                                         ; preds = %if.end63, %if.then45
  %mode.3 = phi i8 [ %mode.2, %if.end63 ], [ %.169, %if.then45 ]
  %key27.0.in = phi ptr [ %arrayidx65, %if.end63 ], [ %arrayidx53, %if.then45 ]
  %52 = ptrtoint ptr %key27.0.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %key27.0 = load ptr, ptr %key27.0.in, align 4
  %53 = ptrtoint ptr %key27.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %key27.0, align 4
  tail call void @kfree(ptr noundef %54) #13
  %55 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %params, align 4
  %57 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %key_len, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef %56, i32 noundef %58, i32 noundef 3264) #13
  %59 = ptrtoint ptr %key27.0 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %key27.0, align 4
  %tobool.not.i180 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i180, label %if.end66.cleanup98_crit_edge, label %if.end.i

if.end66.cleanup98_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

if.end.i:                                         ; preds = %if.end66
  %seq.i = getelementptr inbounds %struct.wilc_wfi_key, ptr %key27.0, i32 0, i32 1
  %60 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %seq.i, align 4
  tail call void @kfree(ptr noundef %61) #13
  %seq_len.i = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %62 = ptrtoint ptr %seq_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %seq_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i = icmp sgt i32 %63, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  %seq5.i = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %64 = ptrtoint ptr %seq5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %seq5.i, align 4
  %call7.i = tail call ptr @kmemdup(ptr noundef %65, i32 noundef %63, i32 noundef 3264) #13
  %66 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i, ptr %seq.i, align 4
  %tobool10.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool10.not.i, label %if.then4.i.cleanup98_crit_edge, label %if.then4.i.cleanup_crit_edge

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4.i.cleanup98_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

cleanup:                                          ; preds = %if.then4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %67 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cipher, align 4
  %cipher14.i = getelementptr inbounds %struct.wilc_wfi_key, ptr %key27.0, i32 0, i32 4
  %69 = ptrtoint ptr %cipher14.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %cipher14.i, align 4
  %70 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %key_len, align 4
  %key_len16.i = getelementptr inbounds %struct.wilc_wfi_key, ptr %key27.0, i32 0, i32 2
  %72 = ptrtoint ptr %key_len16.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %key_len16.i, align 4
  %73 = ptrtoint ptr %seq_len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %seq_len.i, align 4
  %seq_len18.i = getelementptr inbounds %struct.wilc_wfi_key, ptr %key27.0, i32 0, i32 3
  %75 = ptrtoint ptr %seq_len18.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %seq_len18.i, align 4
  br label %if.end87

if.else71:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp73 = icmp sgt i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %3)
  %cmp77 = icmp eq i32 %3, 1027074
  %or.cond = select i1 %cmp73, i1 %cmp77, i1 false
  br i1 %or.cond, label %if.then79, label %if.else71.if.end87_crit_edge

if.else71.if.end87_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then79:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %params, align 4
  %add.ptr81 = getelementptr i8, ptr %77, i32 24
  %add.ptr83 = getelementptr i8, ptr %77, i32 16
  %sub85 = add nsw i32 %1, -16
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %if.else71.if.end87_crit_edge, %cleanup
  %keylen.3 = phi i32 [ %keylen.0, %cleanup ], [ %sub85, %if.then79 ], [ %1, %if.else71.if.end87_crit_edge ]
  %rx_mic.3 = phi ptr [ %rx_mic.0, %cleanup ], [ %add.ptr81, %if.then79 ], [ null, %if.else71.if.end87_crit_edge ]
  %tx_mic.3 = phi ptr [ %tx_mic.0, %cleanup ], [ %add.ptr83, %if.then79 ], [ null, %if.else71.if.end87_crit_edge ]
  %mode.5 = phi i8 [ %mode.3, %cleanup ], [ 0, %if.then79 ], [ 0, %if.else71.if.end87_crit_edge ]
  %op_mode.1 = phi i8 [ 1, %cleanup ], [ 2, %if.then79 ], [ 2, %if.else71.if.end87_crit_edge ]
  %78 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %params, align 4
  %conv95 = trunc i32 %keylen.3 to i8
  br i1 %pairwise, label %if.else93, label %if.then89

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  %seq_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %80 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %seq_len, align 4
  %seq = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %82 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %seq, align 4
  %call92 = tail call i32 @wilc_add_rx_gtk(ptr noundef %add.ptr.i, ptr noundef %79, i8 noundef zeroext %conv95, i8 noundef zeroext %key_index, i32 noundef %81, ptr noundef %83, ptr noundef %rx_mic.3, ptr noundef %tx_mic.3, i8 noundef zeroext %op_mode.1, i8 noundef zeroext %mode.5) #13
  br label %cleanup98

if.else93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  %call96 = tail call i32 @wilc_add_ptk(ptr noundef %add.ptr.i, ptr noundef %79, i8 noundef zeroext %conv95, ptr noundef %mac_addr, ptr noundef %rx_mic.3, ptr noundef %tx_mic.3, i8 noundef zeroext %op_mode.1, i8 noundef zeroext %mode.5, i8 noundef zeroext %key_index) #13
  br label %cleanup98

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.add_key) #16
  br label %cleanup98

cleanup98:                                        ; preds = %sw.default, %if.else93, %if.then89, %if.then4.i.cleanup98_crit_edge, %if.end66.cleanup98_crit_edge, %if.then13.i.cleanup98_crit_edge, %if.then.i.cleanup98_crit_edge, %if.then11, %if.end7.cleanup98_crit_edge, %if.then
  %retval.1 = phi i32 [ -524, %sw.default ], [ %call96, %if.else93 ], [ %call92, %if.then89 ], [ %call6, %if.then ], [ %call15, %if.then11 ], [ 0, %if.end7.cleanup98_crit_edge ], [ -12, %if.then13.i.cleanup98_crit_edge ], [ -12, %if.then.i.cleanup98_crit_edge ], [ -12, %if.end66.cleanup98_crit_edge ], [ -12, %if.then4.i.cleanup98_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr, ptr noundef %cookie, ptr nocapture noundef readonly %callback) #2 align 64 {
entry:
  %key_params = alloca %struct.key_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %key_params) #13
  %0 = call ptr @memset(ptr %key_params, i32 255, i32 28)
  %idxprom19 = zext i8 %key_index to i32
  %arrayidx = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 14, i32 %idxprom19
  %arrayidx20 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 15, i32 %idxprom19
  %storemerge.in.in = select i1 %pairwise, ptr %arrayidx20, ptr %arrayidx
  %1 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %storemerge.in = load ptr, ptr %storemerge.in.in, align 4
  %2 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %storemerge = load ptr, ptr %storemerge.in, align 4
  %3 = ptrtoint ptr %key_params to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge, ptr %key_params, align 4
  %cipher26 = getelementptr inbounds %struct.wilc_wfi_key, ptr %storemerge.in, i32 0, i32 4
  %4 = ptrtoint ptr %cipher26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher26, align 4
  %cipher27 = getelementptr inbounds %struct.key_params, ptr %key_params, i32 0, i32 5
  %6 = ptrtoint ptr %cipher27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cipher27, align 4
  %key_len31 = getelementptr inbounds %struct.wilc_wfi_key, ptr %storemerge.in, i32 0, i32 2
  %7 = ptrtoint ptr %key_len31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_len31, align 4
  %key_len32 = getelementptr inbounds %struct.key_params, ptr %key_params, i32 0, i32 2
  %9 = ptrtoint ptr %key_len32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %key_len32, align 4
  %.sink.in = getelementptr inbounds %struct.wilc_wfi_key, ptr %storemerge.in, i32 0, i32 3
  %10 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink = load i32, ptr %.sink.in, align 4
  %.sink61.in = getelementptr inbounds %struct.wilc_wfi_key, ptr %storemerge.in, i32 0, i32 1
  %11 = ptrtoint ptr %.sink61.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.sink61 = load ptr, ptr %.sink61.in, align 4
  %12 = getelementptr inbounds %struct.key_params, ptr %key_params, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.sink61, ptr %12, align 4
  %14 = getelementptr inbounds %struct.key_params, ptr %key_params, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  call void %callback(ptr noundef %cookie, ptr noundef nonnull %key_params) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %key_params) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @del_key(ptr nocapture noundef readnone %wiphy, ptr noundef %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %idxprom = zext i8 %key_index to i32
  %arrayidx = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 14, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  %7 = load ptr, ptr %arrayidx, align 4
  %seq = getelementptr inbounds %struct.wilc_wfi_key, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seq, align 4
  tail call void @kfree(ptr noundef %9) #13
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %seq15 = getelementptr inbounds %struct.wilc_wfi_key, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %seq15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %seq15, align 4
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %13) #13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx23 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 15, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %16, null
  br i1 %tobool24.not, label %if.end.if.end48_crit_edge, label %if.then25

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx23, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %20, align 4
  %22 = load ptr, ptr %arrayidx23, align 4
  %seq37 = getelementptr inbounds %struct.wilc_wfi_key, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %seq37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %seq37, align 4
  tail call void @kfree(ptr noundef %24) #13
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx23, align 4
  %seq41 = getelementptr inbounds %struct.wilc_wfi_key, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %seq41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %seq41, align 4
  %28 = load ptr, ptr %arrayidx23, align 4
  tail call void @kfree(ptr noundef %28) #13
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx23, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then25, %if.end.if.end48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %key_index)
  %cmp = icmp ult i8 %key_index, 4
  br i1 %cmp, label %land.lhs.true, label %if.end48.if.end65_crit_edge

if.end48.if.end65_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end48
  %arrayidx51 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 12, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool53.not = icmp eq i8 %31, 0
  br i1 %tobool53.not, label %land.lhs.true.if.end65_crit_edge, label %if.then54

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %conv52 = zext i8 %31 to i32
  %arrayidx56 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 11, i32 %idxprom
  %32 = call ptr @memset(ptr %arrayidx56, i32 0, i32 %conv52)
  %33 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx51, align 1
  %call64 = tail call i32 @wilc_remove_wep_key(ptr noundef %add.ptr.i, i8 noundef zeroext %key_index) #13
  br label %if.end65

if.end65:                                         ; preds = %if.then54, %land.lhs.true.if.end65_crit_edge, %if.end48.if.end65_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_default_key(ptr nocapture noundef readnone %wiphy, ptr noundef %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = tail call i32 @wilc_set_wep_default_keyid(ptr noundef %add.ptr.i, i8 noundef zeroext %key_index) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_ap(ptr noundef %wiphy, ptr noundef %dev, ptr noundef %settings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @set_channel(ptr noundef %wiphy, ptr noundef %settings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  tail call void @wilc_wlan_set_bssid(ptr noundef %dev, ptr noundef %1, i8 noundef zeroext 1) #13
  %beacon_interval = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 2
  %2 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beacon_interval, align 4
  %dtim_period = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 3
  %4 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtim_period, align 4
  %beacon = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %settings, i32 0, i32 1
  %call2 = tail call i32 @wilc_add_beacon(ptr noundef %add.ptr.i, i32 noundef %3, i32 noundef %5, ptr noundef %beacon) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @change_beacon(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %beacon) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @wilc_add_beacon(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0, ptr noundef %beacon) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stop_ap(ptr nocapture noundef readnone %wiphy, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @wilc_wlan_set_bssid(ptr noundef %dev, ptr noundef null, i8 noundef zeroext 1) #13
  %call1 = tail call i32 @wilc_del_beacon(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_station(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %mac, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %iftype = getelementptr i8, ptr %dev, i32 2305
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iftype, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %1, label %entry.if.end9_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 3, label %entry.if.then_crit_edge17
  ]

entry.if.then_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge17
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %assoc_stainfo = getelementptr i8, ptr %dev, i32 7439
  %aid = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 6
  %3 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %aid, align 4
  %idxprom = zext i16 %4 to i32
  %arrayidx = getelementptr [9 x [6 x i8]], ptr %assoc_stainfo, i32 0, i32 %idxprom
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %mac, i32 6)
  %call7 = tail call i32 @wilc_add_station(ptr noundef %add.ptr.i, ptr noundef %mac, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %if.then8

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then8 ], [ 0, %if.then.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @del_station(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %iftype = getelementptr i8, ptr %dev, i32 2305
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iftype, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 1, label %entry.if.end_crit_edge
    i8 3, label %entry.if.end_crit_edge27
  ]

entry.if.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge27
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %assoc_stainfo = getelementptr i8, ptr %dev, i32 7439
  %call9 = tail call i32 @wilc_del_allstation(ptr noundef %add.ptr.i, ptr noundef %assoc_stainfo) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @wilc_del_station(ptr noundef %add.ptr.i, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call11, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @change_station(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %mac, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %iftype = getelementptr i8, ptr %dev, i32 2305
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iftype, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %1, label %entry.if.end8_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 3, label %entry.if.then_crit_edge13
  ]

entry.if.then_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge13
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call6 = tail call i32 @wilc_edit_station(ptr noundef %add.ptr.i, ptr noundef %mac, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then7

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then7 ], [ 0, %if.then.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_station(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %mac, ptr nocapture noundef %sinfo) #2 align 64 {
entry:
  %inactive_time = alloca i32, align 4
  %stats = alloca %struct.rf_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wilc2 = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %wilc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inactive_time) #13
  %2 = ptrtoint ptr %inactive_time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %inactive_time, align 4
  %iftype = getelementptr i8, ptr %dev, i32 2305
  %3 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iftype, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %4, label %entry.cleanup52_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 3, label %entry.if.then_crit_edge83
    i8 2, label %if.then22
  ]

entry.if.then_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup52

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge83
  %assoc_stainfo = getelementptr i8, ptr %dev, i32 7439
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %assoc_stainfo, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then.if.end15_crit_edge, label %for.cond

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond:                                         ; preds = %if.then
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 7445
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %arrayidx.1, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool.not.1, label %for.cond.if.end15_crit_edge, label %for.cond.1

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 7451
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %arrayidx.2, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool.not.2, label %for.cond.1.if.end15_crit_edge, label %for.cond.2

for.cond.1.if.end15_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 7457
  %bcmp.3 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %arrayidx.3, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %tobool.not.3, label %for.cond.2.if.end15_crit_edge, label %for.cond.3

for.cond.2.if.end15_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 7463
  %bcmp.4 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %arrayidx.4, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %tobool.not.4 = icmp eq i32 %bcmp.4, 0
  br i1 %tobool.not.4, label %for.cond.3.if.end15_crit_edge, label %for.cond.4

for.cond.3.if.end15_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 7469
  %bcmp.5 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %arrayidx.5, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5)
  %tobool.not.5 = icmp eq i32 %bcmp.5, 0
  br i1 %tobool.not.5, label %for.cond.4.if.end15_crit_edge, label %for.cond.5

for.cond.4.if.end15_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr i8, ptr %dev, i32 7475
  %bcmp.6 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %arrayidx.6, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.6)
  %tobool.not.6 = icmp eq i32 %bcmp.6, 0
  br i1 %tobool.not.6, label %for.cond.5.if.end15_crit_edge, label %for.cond.6

for.cond.5.if.end15_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr i8, ptr %dev, i32 7481
  %bcmp.7 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %arrayidx.7, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.7)
  %tobool.not.7 = icmp eq i32 %bcmp.7, 0
  br i1 %tobool.not.7, label %for.cond.6.if.end15_crit_edge, label %for.cond.7

for.cond.6.if.end15_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #16
  br label %cleanup52

if.end15:                                         ; preds = %for.cond.6.if.end15_crit_edge, %for.cond.5.if.end15_crit_edge, %for.cond.4.if.end15_crit_edge, %for.cond.3.if.end15_crit_edge, %for.cond.2.if.end15_crit_edge, %for.cond.1.if.end15_crit_edge, %for.cond.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %6 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sinfo, align 8
  %or = or i64 %7, 2
  store i64 %or, ptr %sinfo, align 8
  %call16 = call i32 @wilc_get_inactive_time(ptr noundef %add.ptr.i, ptr noundef %mac, ptr noundef nonnull %inactive_time) #13
  %8 = ptrtoint ptr %inactive_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inactive_time, align 4
  %mul = mul i32 %9, 1000
  %inactive_time17 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 2
  %10 = ptrtoint ptr %inactive_time17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %inactive_time17, align 4
  br label %cleanup52

if.then22:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats) #13
  %11 = call ptr @memset(ptr %stats, i32 255, i32 16)
  %initialized = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initialized, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  br i1 %tobool23.not, label %cleanup52.critedge, label %if.end25

if.end25:                                         ; preds = %if.then22
  %call26 = call i32 @wilc_get_statistics(ptr noundef %add.ptr.i, ptr noundef nonnull %stats) #13
  %14 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sinfo, align 8
  %or28 = or i64 %15, 6016
  store i64 %or28, ptr %sinfo, align 8
  %rssi = getelementptr inbounds %struct.rf_info, ptr %stats, i32 0, i32 1
  %16 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rssi, align 1
  %signal = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %18 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %signal, align 1
  %rx_cnt = getelementptr inbounds %struct.rf_info, ptr %stats, i32 0, i32 3
  %19 = ptrtoint ptr %rx_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_cnt, align 4
  %rx_packets = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 16
  %21 = ptrtoint ptr %rx_packets to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rx_packets, align 4
  %tx_cnt = getelementptr inbounds %struct.rf_info, ptr %stats, i32 0, i32 2
  %22 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_cnt, align 4
  %tx_fail_cnt = getelementptr inbounds %struct.rf_info, ptr %stats, i32 0, i32 4
  %24 = ptrtoint ptr %tx_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_fail_cnt, align 4
  %add = add i32 %25, %23
  %tx_packets = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %26 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %tx_packets, align 8
  %tx_failed = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 19
  %27 = ptrtoint ptr %tx_failed to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %tx_failed, align 8
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stats, align 4
  %conv30 = zext i8 %29 to i16
  %mul31 = mul nuw nsw i16 %conv30, 10
  %legacy = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %30 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %mul31, ptr %legacy, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %29)
  %cmp35 = icmp ult i8 %29, 55
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %29)
  %cmp39.not = icmp eq i8 %29, 72
  %or.cond = or i1 %cmp35, %cmp39.not
  br i1 %or.cond, label %if.else42, label %if.then41

if.then41:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  call void @wilc_enable_tcp_ack_filter(ptr noundef %add.ptr.i, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats) #13
  br label %cleanup52

if.else42:                                        ; preds = %if.end25
  br i1 %cmp39.not, label %if.end51.critedge79, label %if.then47

if.then47:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #15
  call void @wilc_enable_tcp_ack_filter(ptr noundef %add.ptr.i, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats) #13
  br label %cleanup52

if.end51.critedge79:                              ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats) #13
  br label %cleanup52

cleanup52.critedge:                               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats) #13
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup52.critedge, %if.end51.critedge79, %if.then47, %if.then41, %if.end15, %for.cond.7, %entry.cleanup52_crit_edge
  %retval.1 = phi i32 [ -2, %for.cond.7 ], [ -16, %cleanup52.critedge ], [ 0, %if.end51.critedge79 ], [ 0, %if.then47 ], [ 0, %if.then41 ], [ 0, %entry.cleanup52_crit_edge ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inactive_time) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_station(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i32 noundef %idx, ptr nocapture noundef writeonly %mac, ptr noundef %sinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sinfo, align 8
  %or = or i64 %1, 128
  store i64 %or, ptr %sinfo, align 8
  %signal = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %call1 = tail call i32 @wilc_get_rssi(ptr noundef %add.ptr.i, ptr noundef %signal) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %associated_bss = getelementptr i8, ptr %dev, i32 7433
  %2 = call ptr @memcpy(ptr %mac, ptr %associated_bss, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -2, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @change_bss(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %params) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_channel(ptr noundef %wiphy, ptr nocapture noundef readonly %chandef) #2 align 64 {
entry:
  %__next.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %srcu = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 14, i32 4
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #13
  %dep_map.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10, i32 3, i32 6
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #13
  %vif_list.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i)
  %0 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vif_list.i, align 4
  %2 = ptrtoint ptr %__next.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__next.i, align 4
  %cmp.not.i = icmp eq ptr %vif_list.i, %1
  br i1 %cmp.not.i, label %cond.end.thread.i, label %cond.end.i, !prof !141

cond.end.thread.i:                                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  br label %if.then

cond.end.i:                                       ; preds = %wiphy_priv.exit
  %3 = ptrtoint ptr %__next.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i = load volatile ptr, ptr %__next.i, align 4
  %add.ptr.i = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  %tobool8.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool8.not.i, label %cond.end.i.if.then_crit_edge, label %wilc_get_wl_to_vif.exit

cond.end.i.if.then_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

wilc_get_wl_to_vif.exit:                          ; preds = %cond.end.i
  %cmp.i = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wilc_get_wl_to_vif.exit.if.then_crit_edge, label %if.end

wilc_get_wl_to_vif.exit.if.then_crit_edge:        ; preds = %wilc_get_wl_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %wilc_get_wl_to_vif.exit.if.then_crit_edge, %cond.end.i.if.then_crit_edge, %cond.end.thread.i
  %retval.0.i38 = phi ptr [ %add.ptr.i, %wilc_get_wl_to_vif.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %cond.end.thread.i ], [ inttoptr (i32 -22 to ptr), %cond.end.i.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i26 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i26, label %if.then.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.then.srcu_read_unlock.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.then
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i27, !prof !145

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i27, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.then.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #13
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #13
  %4 = ptrtoint ptr %retval.0.i38 to i32
  br label %cleanup

if.end:                                           ; preds = %wilc_get_wl_to_vif.exit
  %5 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %8, 1000
  %call.i29 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #13
  %conv = trunc i32 %call.i29 to i8
  %op_ch = getelementptr inbounds %struct.wilc, ptr %priv.i, i32 0, i32 45
  %9 = ptrtoint ptr %op_ch to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %op_ch, align 1
  %call8 = tail call i32 @wilc_set_mac_chnl_num(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.30) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i30 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i30, label %if.end10.srcu_read_unlock.exit35_crit_edge, label %land.rhs.i32

if.end10.srcu_read_unlock.exit35_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit35

land.rhs.i32:                                     ; preds = %if.end10
  %.b40.i31 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i31, label %land.rhs.i32.srcu_read_unlock.exit35_crit_edge, label %if.then.i33, !prof !145

land.rhs.i32.srcu_read_unlock.exit35_crit_edge:   ; preds = %land.rhs.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit35

if.then.i33:                                      ; preds = %land.rhs.i32
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit35

srcu_read_unlock.exit35:                          ; preds = %if.then.i33, %land.rhs.i32.srcu_read_unlock.exit35_crit_edge, %if.end10.srcu_read_unlock.exit35_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #13
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit35, %srcu_read_unlock.exit
  %retval.0 = phi i32 [ %4, %srcu_read_unlock.exit ], [ %call8, %srcu_read_unlock.exit35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scan(ptr nocapture noundef readnone %wiphy, ptr noundef %request) #2 align 64 {
entry:
  %scan_ch_list = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 10
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 8
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %priv1 = getelementptr i8, ptr %3, i32 6440
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %scan_ch_list) #13
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %4 = call ptr @memset(ptr %scan_ch_list, i32 255, i32 14)
  %5 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp = icmp ugt i32 %6, 14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr i8, ptr %3, i32 2428
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.36) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %scan_req = getelementptr i8, ptr %3, i32 7404
  %9 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %request, ptr %scan_req, align 4
  %cfg_scanning = getelementptr i8, ptr %3, i32 7432
  %10 = ptrtoint ptr %cfg_scanning to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cfg_scanning, align 8
  %11 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp340.not = icmp eq i32 %12, 0
  br i1 %cmp340.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22, i32 %i.041
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %center_freq, align 4
  %conv4 = and i32 %16, 65535
  %mul.i = mul nuw nsw i32 %conv4, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #13
  %conv6 = trunc i32 %call.i to i8
  %arrayidx7 = getelementptr [14 x i8], ptr %scan_ch_list, i32 0, i32 %i.041
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6, ptr %arrayidx7, align 1
  %inc = add nuw i32 %i.041, 1
  %18 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_channels, align 8
  %cmp3 = icmp ult i32 %inc, %19
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast = trunc i32 %19 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %if.end.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %20 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp ne i32 %21, 0
  %. = zext i1 %tobool.not to i8
  %call12 = call i32 @wilc_scan(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext %., ptr noundef nonnull %scan_ch_list, i8 noundef zeroext %.lcssa, ptr noundef nonnull @cfg_scan_result, ptr noundef %priv1, ptr noundef %request) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %if.then14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %scan_req, align 4
  %23 = ptrtoint ptr %cfg_scanning to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %cfg_scanning, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call12, %if.then14 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %scan_ch_list) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connect(ptr noundef %wiphy, ptr noundef %dev, ptr noundef %sme) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %priv1 = getelementptr i8, ptr %dev, i32 6440
  %hif_drv = getelementptr i8, ptr %dev, i32 7504
  %0 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_drv, align 8
  %connecting = getelementptr i8, ptr %dev, i32 6436
  %2 = ptrtoint ptr %connecting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %connecting, align 4
  %wep_key = getelementptr i8, ptr %dev, i32 7861
  %crypto = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11
  %cipher_group3 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %3 = call ptr @memset(ptr %wep_key, i32 0, i32 56)
  %4 = ptrtoint ptr %cipher_group3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher_group3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %5, label %if.else41 [
    i32 0, label %entry.if.end64_crit_edge
    i32 1027073, label %if.then5
    i32 1027077, label %if.then21
  ]

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %key_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %7 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %key_len, align 4
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %9 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %key_idx, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 12, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %arrayidx, align 1
  %12 = load i8, ptr %key_idx, align 1
  %idxprom9 = zext i8 %12 to i32
  %arrayidx10 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 11, i32 %idxprom9
  %key = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 12
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key, align 4
  %15 = load i8, ptr %key_len, align 4
  %conv = zext i8 %15 to i32
  %16 = call ptr @memcpy(ptr %arrayidx10, ptr %14, i32 %conv)
  %17 = load i8, ptr %key_idx, align 1
  %call14 = tail call i32 @wilc_set_wep_default_keyid(ptr noundef %add.ptr.i, i8 noundef zeroext %17) #13
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %key, align 4
  %20 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %key_len, align 4
  %22 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %key_idx, align 1
  %call18 = tail call i32 @wilc_add_wep_key_bss_sta(ptr noundef %add.ptr.i, ptr noundef %19, i8 noundef zeroext %21, i8 noundef zeroext %23) #13
  br label %if.end64

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %key_len22 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %24 = ptrtoint ptr %key_len22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %key_len22, align 4
  %key_idx24 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %26 = ptrtoint ptr %key_idx24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %key_idx24, align 1
  %idxprom25 = zext i8 %27 to i32
  %arrayidx26 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 12, i32 %idxprom25
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %arrayidx26, align 1
  %29 = load i8, ptr %key_idx24, align 1
  %idxprom29 = zext i8 %29 to i32
  %arrayidx30 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 11, i32 %idxprom29
  %key32 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 12
  %30 = ptrtoint ptr %key32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %key32, align 4
  %32 = load i8, ptr %key_len22, align 4
  %conv34 = zext i8 %32 to i32
  %33 = call ptr @memcpy(ptr %arrayidx30, ptr %31, i32 %conv34)
  %34 = load i8, ptr %key_idx24, align 1
  %call36 = tail call i32 @wilc_set_wep_default_keyid(ptr noundef %add.ptr.i, i8 noundef zeroext %34) #13
  %35 = ptrtoint ptr %key32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %key32, align 4
  %37 = ptrtoint ptr %key_len22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %key_len22, align 4
  %39 = ptrtoint ptr %key_idx24 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %key_idx24, align 1
  %call40 = tail call i32 @wilc_add_wep_key_bss_sta(ptr noundef %add.ptr.i, ptr noundef %36, i8 noundef zeroext %38, i8 noundef zeroext %40) #13
  br label %if.end64

if.else41:                                        ; preds = %entry
  %41 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %crypto, align 4
  %and = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else48, label %if.then43

if.then43:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %5)
  %cmp44 = icmp eq i32 %5, 1027074
  %. = select i1 %cmp44, i8 81, i8 49
  br label %if.end64

if.else48:                                        ; preds = %if.else41
  %and51 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else59, label %if.then53

if.then53:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %5)
  %cmp54 = icmp eq i32 %5, 1027074
  %.264 = select i1 %cmp54, i8 73, i8 41
  br label %if.end64

if.else59:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.connect) #16
  br label %out_error

if.end64:                                         ; preds = %if.then53, %if.then43, %if.then21, %if.then5, %entry.if.end64_crit_edge
  %security.0 = phi i8 [ 3, %if.then5 ], [ 7, %if.then21 ], [ 0, %entry.if.end64_crit_edge ], [ %., %if.then43 ], [ %.264, %if.then53 ]
  %43 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crypto, align 4
  %45 = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %if.end64.if.end90_crit_edge, label %for.cond.preheader

if.end64.if.end90_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

for.cond.preheader:                               ; preds = %if.end64
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 2
  %47 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp75267.not = icmp eq i32 %48, 0
  br i1 %cmp75267.not, label %for.cond.preheader.if.end90_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end90_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %security.1269 = phi i8 [ %security.2, %for.body.for.body_crit_edge ], [ %security.0, %for.cond.preheader.for.body_crit_edge ]
  %i.0268 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx79 = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3, i32 %i.0268
  %49 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %50)
  %cmp80 = icmp eq i32 %50, 1027074
  %security.2.v = select i1 %cmp80, i8 64, i8 32
  %security.2 = or i8 %security.2.v, %security.1269
  %inc = add nuw i32 %i.0268, 1
  %exitcond.not = icmp eq i32 %inc, %48
  br i1 %exitcond.not, label %for.body.if.end90_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end90_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.end90:                                         ; preds = %for.body.if.end90_crit_edge, %for.cond.preheader.if.end90_crit_edge, %if.end64.if.end90_crit_edge
  %security.3 = phi i8 [ %security.0, %if.end64.if.end90_crit_edge ], [ %security.0, %for.cond.preheader.if.end90_crit_edge ], [ %security.2, %for.body.if.end90_crit_edge ]
  %auth_type91 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %51 = ptrtoint ptr %auth_type91 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %auth_type91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %switch.selectcmp = icmp eq i32 %52, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %switch.selectcmp265 = icmp eq i32 %52, 0
  %switch.select266 = select i1 %switch.selectcmp265, i32 1, i32 %switch.select
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 4
  %53 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_akm_suites, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool94.not = icmp eq i32 %54, 0
  br i1 %tobool94.not, label %if.end90.if.end102_crit_edge, label %if.then95

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %akm_suites = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 5
  %55 = ptrtoint ptr %akm_suites to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %akm_suites, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027073, i32 %56)
  %cmp98 = icmp eq i32 %56, 1027073
  %spec.select = select i1 %cmp98, i32 5, i32 %switch.select266
  br label %if.end102

if.end102:                                        ; preds = %if.then95, %if.end90.if.end102_crit_edge
  %auth_type.1 = phi i32 [ %switch.select266, %if.end90.if.end102_crit_edge ], [ %spec.select, %if.then95 ]
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %tobool103.not = icmp eq ptr %58, null
  br i1 %tobool103.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr i8, ptr %dev, i32 2428
  %59 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.connect) #16
  br label %out_error

if.end105:                                        ; preds = %if.end102
  %61 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sme, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %63 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bssid, align 4
  %ssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %65 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ssid, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %67 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ssid_len, align 4
  %privacy = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 9
  %69 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %privacy, align 4, !range !142
  %71 = xor i8 %70, 1
  %72 = zext i8 %71 to i32
  %call108 = tail call ptr @cfg80211_get_bss(ptr noundef %wiphy, ptr noundef %62, ptr noundef %64, ptr noundef %66, i32 noundef %68, i32 noundef 4, i32 noundef %72) #13
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %if.end105.out_error_crit_edge, label %if.end111

if.end105.out_error_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_error

if.end111:                                        ; preds = %if.end105
  %bssid112 = getelementptr i8, ptr %dev, i32 2416
  %bssid114 = getelementptr inbounds %struct.cfg80211_bss, ptr %call108, i32 0, i32 11
  %73 = ptrtoint ptr %bssid112 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bssid112, align 4
  %75 = ptrtoint ptr %bssid114 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bssid114, align 4
  %xor.i.i = xor i32 %76, %74
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2420
  %77 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.cfg80211_bss, ptr %call108, i32 0, i32 11, i32 4
  %79 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %80, %78
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end111.out_put_bss_crit_edge, label %if.end118

if.end111.out_put_bss_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_bss

if.end118:                                        ; preds = %if.end111
  %call120 = tail call ptr @wilc_parse_join_bss_param(ptr noundef nonnull %call108, ptr noundef %crypto) #13
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.connect) #16
  br label %out_put_bss

if.end123:                                        ; preds = %if.end118
  %81 = ptrtoint ptr %call108 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call108, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %84, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #13
  %conv126 = trunc i32 %call.i to i8
  %wilc = getelementptr i8, ptr %dev, i32 2412
  %85 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wilc, align 4
  %op_ch = getelementptr inbounds %struct.wilc, ptr %86, i32 0, i32 45
  %87 = ptrtoint ptr %op_ch to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv126, ptr %op_ch, align 1
  %iftype = getelementptr i8, ptr %dev, i32 2305
  %88 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %iftype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %89)
  %cmp128.not = icmp eq i8 %89, 4
  br i1 %cmp128.not, label %if.end123.if.end132_crit_edge, label %if.then130

if.end123.if.end132_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then130:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wilc, align 4
  %sta_ch = getelementptr inbounds %struct.wilc, ptr %91, i32 0, i32 44
  %92 = ptrtoint ptr %sta_ch to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv126, ptr %sta_ch, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end123.if.end132_crit_edge
  tail call void @wilc_wlan_set_bssid(ptr noundef %dev, ptr noundef %bssid114, i8 noundef zeroext 2) #13
  %security135 = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %security135 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %security.3, ptr %security135, align 2
  %auth_type137 = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 2
  %94 = ptrtoint ptr %auth_type137 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %auth_type.1, ptr %auth_type137, align 4
  %ch139 = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %ch139 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv126, ptr %ch139, align 4
  %conn_result = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 9
  %96 = ptrtoint ptr %conn_result to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @cfg_connect_result, ptr %conn_result, align 4
  %arg = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 10
  %97 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %priv1, ptr %arg, align 4
  %param = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 11
  %98 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call120, ptr %param, align 4
  %ie = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 7
  %99 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ie, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 8
  %101 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ie_len, align 4
  %call145 = tail call i32 @wilc_set_join_req(ptr noundef %add.ptr.i, ptr noundef %bssid114, ptr noundef %100, i32 noundef %102) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end158, label %if.then147

if.then147:                                       ; preds = %if.end132
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #16
  %103 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %iftype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %104)
  %cmp150.not = icmp eq i8 %104, 4
  br i1 %cmp150.not, label %if.then147.if.end155_crit_edge, label %if.then152

if.then147.if.end155_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

if.then152:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wilc, align 4
  %sta_ch154 = getelementptr inbounds %struct.wilc, ptr %106, i32 0, i32 44
  %107 = ptrtoint ptr %sta_ch154 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %sta_ch154, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %if.then147.if.end155_crit_edge
  tail call void @wilc_wlan_set_bssid(ptr noundef %dev, ptr noundef null, i8 noundef zeroext 2) #13
  %108 = ptrtoint ptr %conn_result to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %conn_result, align 4
  tail call void @kfree(ptr noundef nonnull %call120) #13
  br label %out_put_bss

if.end158:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call120) #13
  %bss159 = getelementptr i8, ptr %dev, i32 8120
  %109 = ptrtoint ptr %bss159 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call108, ptr %bss159, align 8
  tail call void @cfg80211_put_bss(ptr noundef %wiphy, ptr noundef nonnull %call108) #13
  br label %cleanup

out_put_bss:                                      ; preds = %if.end155, %if.then122, %if.end111.out_put_bss_crit_edge
  %ret.0 = phi i32 [ -2, %if.end155 ], [ -22, %if.then122 ], [ -114, %if.end111.out_put_bss_crit_edge ]
  tail call void @cfg80211_put_bss(ptr noundef %wiphy, ptr noundef nonnull %call108) #13
  br label %out_error

out_error:                                        ; preds = %out_put_bss, %if.end105.out_error_crit_edge, %if.then104, %if.else59
  %ret.1 = phi i32 [ -16, %if.then104 ], [ %ret.0, %out_put_bss ], [ -524, %if.else59 ], [ -22, %if.end105.out_error_crit_edge ]
  %110 = ptrtoint ptr %connecting to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %connecting, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_error, %if.end158
  %retval.0 = phi i32 [ %ret.1, %out_error ], [ 0, %if.end158 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disconnect(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i16 noundef zeroext %reason_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wilc2 = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %wilc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc2, align 4
  %connecting = getelementptr i8, ptr %dev, i32 6436
  %2 = ptrtoint ptr %connecting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %connecting, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %close = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cfg80211_disconnected(ptr noundef %dev, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %iftype = getelementptr i8, ptr %dev, i32 2305
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iftype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp.not = icmp eq i8 %6, 4
  br i1 %cmp.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %sta_ch = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 44
  %7 = ptrtoint ptr %sta_ch to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %sta_ch, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %dev9 = getelementptr i8, ptr %dev, i32 7500
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  tail call void @wilc_wlan_set_bssid(ptr noundef %9, ptr noundef null, i8 noundef zeroext 2) #13
  %hif_drv = getelementptr i8, ptr %dev, i32 7504
  %10 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_drv, align 8
  %p2p_timeout = getelementptr inbounds %struct.host_if_drv, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %p2p_timeout to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %p2p_timeout, align 8
  %call10 = tail call i32 @wilc_disconnect(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end8.if.end15_crit_edge, label %if.then13

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.41) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end8.if.end15_crit_edge
  %ret.0 = phi i32 [ -22, %if.then13 ], [ 0, %if.end8.if.end15_crit_edge ]
  %bss = getelementptr i8, ptr %dev, i32 8120
  %15 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %bss, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %ret.0, %if.end15 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_wiphy_params(ptr noundef %wiphy, i32 noundef %changed) #2 align 64 {
entry:
  %__next.i = alloca ptr, align 4
  %cfg_param_val = alloca %struct.cfg_param_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg_param_val) #13
  %0 = getelementptr inbounds %struct.cfg_param_attr, ptr %cfg_param_val, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cfg_param_attr, ptr %cfg_param_val, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cfg_param_attr, ptr %cfg_param_val, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cfg_param_attr, ptr %cfg_param_val, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wiphy, null
  %4 = call ptr @memset(ptr %cfg_param_val, i32 255, i32 12)
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %srcu = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 14, i32 4
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #13
  %dep_map.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10, i32 3, i32 6
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #13
  %vif_list.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i)
  %5 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %vif_list.i, align 4
  %7 = ptrtoint ptr %__next.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %__next.i, align 4
  %cmp.not.i = icmp eq ptr %vif_list.i, %6
  br i1 %cmp.not.i, label %cond.end.thread.i, label %cond.end.i, !prof !141

cond.end.thread.i:                                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  br label %out

cond.end.i:                                       ; preds = %wiphy_priv.exit
  %8 = ptrtoint ptr %__next.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i = load volatile ptr, ptr %__next.i, align 4
  %add.ptr.i = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  %tobool8.not.i = icmp eq ptr %add.ptr.i, null
  %cmp.i = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  %or.cond170 = or i1 %tobool8.not.i, %cmp.i
  br i1 %or.cond170, label %cond.end.i.out_crit_edge, label %if.end

cond.end.i.out_crit_edge:                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %cond.end.i
  %9 = ptrtoint ptr %cfg_param_val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cfg_param_val, align 4
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %do.body6

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_wiphy_params.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_wiphy_params, %if.then11)) #13
          to label %do.end14 [label %if.then11], !srcloc !143

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  %retry_short = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 33
  %12 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %retry_short, align 4
  %conv = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_wiphy_params.__UNIQUE_ID_ddebug480, ptr noundef %11, ptr noundef nonnull @.str.43, i32 noundef %conv) #13
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body6
  %14 = ptrtoint ptr %cfg_param_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfg_param_val, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %cfg_param_val, align 4
  %retry_short16 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 33
  %16 = ptrtoint ptr %retry_short16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %retry_short16, align 4
  %conv17 = zext i8 %17 to i16
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv17, ptr %0, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end.if.end18_crit_edge
  %and19 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end47_crit_edge, label %do.body23

if.end18.if.end47_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

do.body23:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_wiphy_params.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_wiphy_params, %if.then35)) #13
          to label %do.end42 [label %if.then35], !srcloc !143

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %ndev36 = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %19 = ptrtoint ptr %ndev36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev36, align 4
  %retry_long = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 34
  %21 = ptrtoint ptr %retry_long to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %retry_long, align 1
  %conv37 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_wiphy_params.__UNIQUE_ID_ddebug481, ptr noundef %20, ptr noundef nonnull @.str.44, i32 noundef %conv37) #13
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %do.body23
  %23 = ptrtoint ptr %cfg_param_val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg_param_val, align 4
  %or44 = or i32 %24, 2
  store i32 %or44, ptr %cfg_param_val, align 4
  %retry_long45 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 34
  %25 = ptrtoint ptr %retry_long45 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %retry_long45, align 1
  %conv46 = zext i8 %26 to i16
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv46, ptr %1, align 2
  br label %if.end47

if.end47:                                         ; preds = %do.end42, %if.end18.if.end47_crit_edge
  %and48 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end84_crit_edge, label %if.then50

if.end47.if.end84_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then50:                                        ; preds = %if.end47
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 35
  %28 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frag_threshold, align 16
  %30 = add i32 %29, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 7681, i32 %30)
  %31 = icmp ult i32 %30, 7681
  br i1 %31, label %do.body57, label %if.else

do.body57:                                        ; preds = %if.then50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_wiphy_params.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_wiphy_params, %if.then69)) #13
          to label %do.end76 [label %if.then69], !srcloc !143

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  %ndev70 = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %32 = ptrtoint ptr %ndev70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev70, align 4
  %34 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frag_threshold, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_wiphy_params.__UNIQUE_ID_ddebug482, ptr noundef %33, ptr noundef nonnull @.str.45, i32 noundef %35) #13
  br label %do.end76

do.end76:                                         ; preds = %if.then69, %do.body57
  %36 = ptrtoint ptr %cfg_param_val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg_param_val, align 4
  %or78 = or i32 %37, 4
  store i32 %or78, ptr %cfg_param_val, align 4
  %38 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frag_threshold, align 16
  %conv80 = trunc i32 %39 to i16
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv80, ptr %2, align 4
  br label %if.end84

if.else:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  %ndev82 = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %41 = ptrtoint ptr %ndev82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev82, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.46) #16
  br label %out

if.end84:                                         ; preds = %do.end76, %if.end47.if.end84_crit_edge
  %and85 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end120_crit_edge, label %if.then87

if.end84.if.end120_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.then87:                                        ; preds = %if.end84
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 36
  %43 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rts_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %44)
  %cmp88 = icmp ugt i32 %44, 255
  br i1 %cmp88, label %do.body92, label %if.else117

do.body92:                                        ; preds = %if.then87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_wiphy_params.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_wiphy_params, %if.then104)) #13
          to label %do.end111 [label %if.then104], !srcloc !143

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  %ndev105 = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %45 = ptrtoint ptr %ndev105 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev105, align 4
  %47 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rts_threshold, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_wiphy_params.__UNIQUE_ID_ddebug483, ptr noundef %46, ptr noundef nonnull @.str.47, i32 noundef %48) #13
  br label %do.end111

do.end111:                                        ; preds = %if.then104, %do.body92
  %49 = ptrtoint ptr %cfg_param_val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cfg_param_val, align 4
  %or113 = or i32 %50, 8
  store i32 %or113, ptr %cfg_param_val, align 4
  %51 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rts_threshold, align 4
  %conv115 = trunc i32 %52 to i16
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv115, ptr %3, align 2
  br label %if.end120

if.else117:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  %ndev118 = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %54 = ptrtoint ptr %ndev118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ndev118, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.48) #16
  br label %out

if.end120:                                        ; preds = %do.end111, %if.end84.if.end120_crit_edge
  %call121 = call i32 @wilc_hif_set_cfg(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull %cfg_param_val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end120.out_crit_edge, label %if.then123

if.end120.out_crit_edge:                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -612
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.49) #16
  br label %out

out:                                              ; preds = %if.then123, %if.end120.out_crit_edge, %if.else117, %if.else, %cond.end.i.out_crit_edge, %cond.end.thread.i
  %ret.0 = phi i32 [ %call121, %if.then123 ], [ 0, %if.end120.out_crit_edge ], [ -22, %if.else117 ], [ -22, %if.else ], [ -22, %cond.end.thread.i ], [ -22, %cond.end.i.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i161 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i161, label %out.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

out.srcu_read_unlock.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %out
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i162, !prof !145

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

if.then.i162:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i162, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %out.srcu_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #13
  call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg_param_val) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_tx_power(ptr noundef %wiphy, ptr nocapture noundef readnone %wdev, i32 noundef %type, i32 noundef %mbm) #2 align 64 {
entry:
  %__next.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %mbm, 100
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %initialized = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %srcu = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 14, i32 4
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #13
  %dep_map.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10, i32 3, i32 6
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #13
  %vif_list.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i)
  %2 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %vif_list.i, align 4
  %4 = ptrtoint ptr %__next.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %__next.i, align 4
  %cmp.not.i = icmp eq ptr %vif_list.i, %3
  br i1 %cmp.not.i, label %cond.end.thread.i, label %cond.end.i, !prof !141

cond.end.thread.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  br label %if.then4

cond.end.i:                                       ; preds = %if.end
  %5 = ptrtoint ptr %__next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i = load volatile ptr, ptr %__next.i, align 4
  %add.ptr.i = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  %tobool8.not.i = icmp eq ptr %add.ptr.i, null
  %cmp.i = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool8.not.i, %cmp.i
  br i1 %or.cond, label %cond.end.i.if.then4_crit_edge, label %if.end6

cond.end.i.if.then4_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %cond.end.i.if.then4_crit_edge, %cond.end.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i34 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i34, label %if.then4.cleanup.sink.split_crit_edge, label %land.rhs.i

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.rhs.i:                                       ; preds = %if.then4
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.cleanup.sink.split_crit_edge, label %land.rhs.i.cleanup.sink.split.sink.split_crit_edge, !prof !145

land.rhs.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end6:                                          ; preds = %cond.end.i
  %ndev = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.9.i, i32 -5684
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef %div) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %mbm)
  %cmp = icmp slt i32 %mbm, -99
  %8 = tail call i32 @llvm.smin.i32(i32 %div, i32 18)
  %phi.cast = trunc i32 %8 to i8
  %tx_power.0 = select i1 %cmp, i8 0, i8 %phi.cast
  %call12 = tail call i32 @wilc_set_tx_power(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext %tx_power.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end6.if.end16_crit_edge, label %if.then14

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.51) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end6.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i37 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i37, label %if.end16.cleanup.sink.split_crit_edge, label %land.rhs.i39

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.rhs.i39:                                     ; preds = %if.end16
  %.b40.i38 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i38, label %land.rhs.i39.cleanup.sink.split_crit_edge, label %land.rhs.i39.cleanup.sink.split.sink.split_crit_edge, !prof !145

land.rhs.i39.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

land.rhs.i39.cleanup.sink.split_crit_edge:        ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %land.rhs.i39.cleanup.sink.split.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -22, %land.rhs.i.cleanup.sink.split.sink.split_crit_edge ], [ %call12, %land.rhs.i39.cleanup.sink.split.sink.split_crit_edge ]
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %land.rhs.i39.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.then4.cleanup.sink.split_crit_edge ], [ -22, %land.rhs.i.cleanup.sink.split_crit_edge ], [ %call12, %if.end16.cleanup.sink.split_crit_edge ], [ %call12, %land.rhs.i39.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #13
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %wiphy_priv.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_tx_power(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, ptr noundef %dbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %wilc = getelementptr i8, ptr %1, i32 2412
  %2 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wilc, align 4
  %initialized = getelementptr inbounds %struct.wilc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %initialized, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call1 = tail call i32 @wilc_get_tx_power(ptr noundef %add.ptr.i, ptr noundef %dbm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr i8, ptr %1, i32 2428
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.52) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pmksa(ptr nocapture noundef readnone %wiphy, ptr noundef %netdev, ptr nocapture noundef readonly %pmksa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %pmkid_list = getelementptr i8, ptr %netdev, i32 7508
  %0 = ptrtoint ptr %pmkid_list to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pmkid_list, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp50.not = icmp eq i8 %1, 0
  br i1 %cmp50.not, label %if.then23.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmksa, align 4
  %arrayidx63 = getelementptr i8, ptr %netdev, i32 7509
  %bcmp64 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef dereferenceable(6) %arrayidx63, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp64)
  %tobool.not65 = icmp eq i32 %bcmp64, 0
  br i1 %tobool.not65, label %for.body.lr.ph.for.end_crit_edge, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  br label %for.inc

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc
  %arrayidx = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 10, i32 1, i32 %inc
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef dereferenceable(6) %arrayidx, i32 6) #17
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.body.for.end.loopexit_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.loopexit

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.lr.ph.for.inc_crit_edge
  %i.05166 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.lr.ph.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.05166, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end.loopexit_crit_edge, label %for.body

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %i.0.lcssa.ph = phi i32 [ %inc, %for.body.for.end.loopexit_crit_edge ], [ %conv, %for.inc.for.end.loopexit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.le = icmp ult i32 %inc, %conv
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.lr.ph.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %i.0.lcssa.ph, %for.end.loopexit ]
  %cmp.lcssa = phi i1 [ true, %for.body.lr.ph.for.end_crit_edge ], [ %cmp.le, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.lcssa)
  %cmp6 = icmp ult i32 %i.0.lcssa, 16
  br i1 %cmp6, label %if.then8, label %if.end28

if.then8:                                         ; preds = %for.end
  %arrayidx11 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 10, i32 1, i32 %i.0.lcssa
  %4 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmksa, align 4
  %6 = call ptr @memcpy(ptr %arrayidx11, ptr %5, i32 6)
  %pmkid = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 10, i32 1, i32 %i.0.lcssa, i32 1
  %pmkid19 = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %7 = ptrtoint ptr %pmkid19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmkid19, align 4
  %9 = call ptr @memcpy(ptr %pmkid, ptr %8, i32 16)
  br i1 %cmp.lcssa, label %if.then8.if.then30_crit_edge, label %if.then8.if.then23_crit_edge

if.then8.if.then23_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.then8.if.then30_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.then23.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx11.c = getelementptr i8, ptr %netdev, i32 7509
  %10 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pmksa, align 4
  %12 = call ptr @memcpy(ptr %arrayidx11.c, ptr %11, i32 6)
  %pmkid.c = getelementptr i8, ptr %netdev, i32 7515
  %pmkid19.c = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %13 = ptrtoint ptr %pmkid19.c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pmkid19.c, align 4
  %15 = call ptr @memcpy(ptr %pmkid.c, ptr %14, i32 16)
  br label %if.then23

if.then23:                                        ; preds = %if.then23.critedge, %if.then8.if.then23_crit_edge
  %16 = ptrtoint ptr %pmkid_list to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pmkid_list, align 4
  %inc26 = add i8 %17, 1
  store i8 %inc26, ptr %pmkid_list, align 4
  br label %if.then30

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.53) #16
  br label %if.end33

if.then30:                                        ; preds = %if.then23, %if.then8.if.then30_crit_edge
  %call32 = tail call i32 @wilc_set_pmkid_info(ptr noundef %add.ptr.i, ptr noundef %pmkid_list) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28
  %ret.1 = phi i32 [ -22, %if.end28 ], [ %call32, %if.then30 ]
  ret i32 %ret.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @del_pmksa(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef %netdev, ptr nocapture noundef readonly %pmksa) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %pmkid_list = getelementptr i8, ptr %netdev, i32 7508
  %0 = ptrtoint ptr %pmkid_list to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pmkid_list, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp73.not = icmp eq i8 %1, 0
  br i1 %cmp73.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmksa, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 10, i32 1, i32 %i.074
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef dereferenceable(6) %arrayidx, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = call ptr @memset(ptr %arrayidx, i32 0, i32 22)
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %i.072 = phi i32 [ %i.074, %if.then ], [ 0, %entry.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ]
  %5 = ptrtoint ptr %pmkid_list to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pmkid_list, align 4
  %conv11 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.072, i32 %conv11)
  %cmp12 = icmp eq i32 %i.072, %conv11
  br i1 %cmp12, label %for.end.cleanup_crit_edge, label %for.cond16.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond16.preheader:                             ; preds = %for.end
  %7 = ptrtoint ptr %pmkid_list to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pmkid_list, align 4
  %conv1976 = zext i8 %8 to i32
  %sub77 = add nsw i32 %conv1976, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.072, i32 %sub77)
  %cmp2078 = icmp ult i32 %i.072, %sub77
  br i1 %cmp2078, label %for.cond16.preheader.for.body22_crit_edge, label %for.cond16.preheader.for.end45_crit_edge

for.cond16.preheader.for.end45_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end45

for.cond16.preheader.for.body22_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond16.preheader.for.body22_crit_edge
  %i.179 = phi i32 [ %add, %for.body22.for.body22_crit_edge ], [ %i.072, %for.cond16.preheader.for.body22_crit_edge ]
  %arrayidx25 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 10, i32 1, i32 %i.179
  %add = add nuw i32 %i.179, 1
  %arrayidx30 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 10, i32 1, i32 %add
  %9 = call ptr @memcpy(ptr %arrayidx25, ptr %arrayidx30, i32 6)
  %pmkid = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 10, i32 1, i32 %i.179, i32 1
  %pmkid41 = getelementptr %struct.wilc_vif, ptr %add.ptr.i, i32 0, i32 16, i32 10, i32 1, i32 %add, i32 1
  %10 = call ptr @memcpy(ptr %pmkid, ptr %pmkid41, i32 16)
  %11 = ptrtoint ptr %pmkid_list to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pmkid_list, align 4
  %conv19 = zext i8 %12 to i32
  %sub = add nsw i32 %conv19, -1
  %cmp20 = icmp ult i32 %add, %sub
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.body22.for.end45_crit_edge

for.body22.for.end45_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end45

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22

for.end45:                                        ; preds = %for.body22.for.end45_crit_edge, %for.cond16.preheader.for.end45_crit_edge
  %.lcssa = phi i8 [ %8, %for.cond16.preheader.for.end45_crit_edge ], [ %12, %for.body22.for.end45_crit_edge ]
  %dec = add i8 %.lcssa, -1
  %13 = ptrtoint ptr %pmkid_list to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %dec, ptr %pmkid_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end45, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end45 ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @flush_pmksa(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef writeonly %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pmkid_list = getelementptr i8, ptr %netdev, i32 7508
  %0 = call ptr @memset(ptr %pmkid_list, i32 0, i32 353)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remain_on_channel(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, ptr noundef %chan, i32 noundef %duration, ptr nocapture noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remain_on_channel.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remain_on_channel, %if.then6)) #13
          to label %cleanup [label %if.then6], !srcloc !143

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr i8, ptr %1, i32 2428
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @remain_on_channel.__UNIQUE_ID_ddebug490, ptr noundef %5, ptr noundef nonnull @.str.55) #13
  br label %cleanup

if.end9:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %inc_roc_cookie = getelementptr i8, ptr %1, i32 8104
  %6 = ptrtoint ptr %inc_roc_cookie to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %inc_roc_cookie, align 8
  %inc = add i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc)
  %cmp10 = icmp eq i64 %inc, 0
  %spec.select = select i1 %cmp10, i64 1, i64 %inc
  %8 = ptrtoint ptr %inc_roc_cookie to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %spec.select, ptr %inc_roc_cookie, align 8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_value, align 2
  %call15 = tail call i32 @wilc_remain_on_channel(ptr noundef %add.ptr.i, i64 noundef %spec.select, i32 noundef %duration, i16 noundef zeroext %10, ptr noundef nonnull @wilc_wfi_remain_on_channel_expired, ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %12 to i8
  %wilc = getelementptr i8, ptr %1, i32 2412
  %13 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wilc, align 4
  %op_ch = getelementptr inbounds %struct.wilc, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %op_ch to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %op_ch, align 1
  %remain_on_ch_params = getelementptr i8, ptr %1, i32 7408
  %16 = ptrtoint ptr %remain_on_ch_params to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chan, ptr %remain_on_ch_params, align 8
  %listen_cookie = getelementptr i8, ptr %1, i32 7416
  %17 = ptrtoint ptr %listen_cookie to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %spec.select, ptr %listen_cookie, align 8
  %18 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %spec.select, ptr %cookie, align 8
  %p2p_listen_state = getelementptr i8, ptr %1, i32 8092
  %19 = ptrtoint ptr %p2p_listen_state to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %p2p_listen_state, align 4
  %listen_duration = getelementptr i8, ptr %1, i32 7412
  %20 = ptrtoint ptr %listen_duration to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %duration, ptr %listen_duration, align 4
  %21 = load i64, ptr %cookie, align 8
  tail call void @cfg80211_ready_on_channel(ptr noundef %wdev, i64 noundef %21, ptr noundef %chan, i32 noundef %duration, i32 noundef 3264) #13
  %hif_drv = getelementptr i8, ptr %1, i32 2424
  %22 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hif_drv, align 8
  %remain_on_ch_timer = getelementptr inbounds %struct.host_if_drv, ptr %23, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %duration, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add) #13
  %add23 = add i32 %call2.i, %24
  %call24 = tail call i32 @mod_timer(ptr noundef %remain_on_ch_timer, i32 noundef %add23) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end9.cleanup_crit_edge, %if.then6, %do.body2
  %retval.0 = phi i32 [ 0, %if.end18 ], [ 0, %if.then6 ], [ %call15, %if.end9.cleanup_crit_edge ], [ 0, %do.body2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cancel_remain_on_channel(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, i64 noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %listen_cookie = getelementptr i8, ptr %1, i32 7416
  %2 = ptrtoint ptr %listen_cookie to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %listen_cookie, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %cookie)
  %cmp.not = icmp eq i64 %3, %cookie
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @wilc_listen_state_expired(ptr noundef %add.ptr.i, i64 noundef %cookie) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgmt_tx(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %wait2 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %wait2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wait2, align 4
  %buf3 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf3, align 4
  %len4 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len4, align 4
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2304
  %hif_drv = getelementptr i8, ptr %9, i32 7504
  %10 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_drv, align 8
  %call6 = tail call i32 @prandom_u32() #13
  %conv = zext i32 %call6 to i64
  %12 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %cookie, align 8
  %tx_cookie = getelementptr i8, ptr %9, i32 7424
  %13 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %tx_cookie, align 8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %5, align 2
  %16 = and i16 %15, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i100 = icmp eq i16 %16, 0
  br i1 %cmp.i100, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 8) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @kmemdup(ptr noundef %5, i32 noundef %7, i32 noundef 3264) #13
  %buff = getelementptr inbounds %struct.wilc_p2p_mgmt_data, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11, ptr %buff, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %out

if.end15:                                         ; preds = %if.end10
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %call7.i, align 8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %5, align 2
  %22 = and i16 %21, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %22)
  %cmp.i101 = icmp eq i16 %22, 20480
  br i1 %cmp.i101, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_value, align 2
  %conv19 = trunc i16 %24 to i8
  %call20 = tail call i32 @wilc_set_mac_chnl_num(ptr noundef %add.ptr.i, i8 noundef zeroext %conv19) #13
  %25 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hw_value, align 2
  %conv22 = trunc i16 %26 to i8
  %wilc = getelementptr i8, ptr %9, i32 2412
  %27 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wilc, align 4
  %op_ch = getelementptr inbounds %struct.wilc, ptr %28, i32 0, i32 45
  %29 = ptrtoint ptr %op_ch to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv22, ptr %op_ch, align 1
  br label %out_txq_add_pkt

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i102 = icmp ugt i32 %7, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %22)
  %cmp.i.i = icmp eq i16 %22, -12288
  %or.cond = select i1 %cmp.i102, i1 %cmp.i.i, i1 false
  br i1 %or.cond, label %ieee80211_is_public_action.exit, label %if.end23.out_set_timeout_crit_edge

if.end23.out_set_timeout_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_set_timeout

ieee80211_is_public_action.exit:                  ; preds = %if.end23
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6
  %30 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %u.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp3.i = icmp eq i8 %31, 4
  br i1 %cmp3.i, label %if.end26, label %ieee80211_is_public_action.exit.out_set_timeout_crit_edge

ieee80211_is_public_action.exit.out_set_timeout_crit_edge: ; preds = %ieee80211_is_public_action.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_set_timeout

if.end26:                                         ; preds = %ieee80211_is_public_action.exit
  %oui_type = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %oui_type to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %oui_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %33)
  %cmp.not = icmp eq i8 %33, 9
  br i1 %cmp.not, label %lor.lhs.false, label %if.end26.if.then32_crit_edge

if.end26.if.then32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end26
  %oui_subtype = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %oui_subtype to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %oui_subtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp30.not = icmp eq i8 %35, 2
  br i1 %cmp30.not, label %lor.lhs.false.if.end40_crit_edge, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end26.if.then32_crit_edge
  %hw_value33 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %hw_value33 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hw_value33, align 2
  %conv34 = trunc i16 %37 to i8
  %call35 = tail call i32 @wilc_set_mac_chnl_num(ptr noundef %add.ptr.i, i8 noundef zeroext %conv34) #13
  %38 = ptrtoint ptr %hw_value33 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value33, align 2
  %conv37 = trunc i16 %39 to i8
  %wilc38 = getelementptr i8, ptr %9, i32 2412
  %40 = ptrtoint ptr %wilc38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wilc38, align 4
  %op_ch39 = getelementptr inbounds %struct.wilc, ptr %41, i32 0, i32 45
  %42 = ptrtoint ptr %op_ch39 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv37, ptr %op_ch39, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %lor.lhs.false.if.end40_crit_edge
  %oui_subtype41 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %oui_subtype41 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %oui_subtype41, align 1
  %.off = add i8 %44, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end50, label %if.end40.out_set_timeout_crit_edge

if.end40.out_set_timeout_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_set_timeout

if.end50:                                         ; preds = %if.end40
  %45 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buff, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 32
  %sub = add i32 %7, -32
  %call.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef 5271450, i32 noundef 9, ptr noundef %add.ptr, i32 noundef %sub) #13
  %tobool53.not = icmp eq ptr %call.i, null
  br i1 %tobool53.not, label %if.end50.out_set_timeout_crit_edge, label %if.end55

if.end50.out_set_timeout_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_set_timeout

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %attr = getelementptr inbounds %struct.wilc_vendor_specific_ie, ptr %call.i, i32 0, i32 4
  %tag_len = getelementptr inbounds %struct.wilc_vendor_specific_ie, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %tag_len to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tag_len, align 1
  %conv56 = zext i8 %48 to i32
  %sub57 = add nsw i32 %conv56, -4
  %wilc58 = getelementptr i8, ptr %9, i32 2412
  %49 = ptrtoint ptr %wilc58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wilc58, align 4
  %sta_ch = getelementptr inbounds %struct.wilc, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %sta_ch to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sta_ch, align 4
  tail call fastcc void @wilc_wfi_cfg_parse_ch_attr(ptr noundef %attr, i32 noundef %sub57, i8 noundef zeroext %52)
  br label %out_set_timeout

out_set_timeout:                                  ; preds = %if.end55, %if.end50.out_set_timeout_crit_edge, %if.end40.out_set_timeout_crit_edge, %ieee80211_is_public_action.exit.out_set_timeout_crit_edge, %if.end23.out_set_timeout_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #13
  %add = add i32 %call2.i, %53
  %conv60 = zext i32 %add to i64
  %p2p_timeout = getelementptr inbounds %struct.host_if_drv, ptr %11, i32 0, i32 3
  %54 = ptrtoint ptr %p2p_timeout to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv60, ptr %p2p_timeout, align 8
  br label %out_txq_add_pkt

out_txq_add_pkt:                                  ; preds = %out_set_timeout, %if.then18
  %55 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev, align 4
  %57 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buff, align 4
  %59 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call7.i, align 8
  %call64 = tail call i32 @wilc_wlan_txq_add_mgmt_pkt(ptr noundef %56, ptr noundef nonnull %call7.i, ptr noundef %58, i32 noundef %60, ptr noundef nonnull @wilc_wfi_mgmt_tx_complete) #13
  br label %out

out:                                              ; preds = %out_txq_add_pkt, %if.then14, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %out_txq_add_pkt ], [ -12, %if.then14 ], [ 0, %entry.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgmt_tx_cancel_wait(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, i64 noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %hif_drv = getelementptr i8, ptr %1, i32 7504
  %2 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_drv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %4 to i64
  %p2p_timeout = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %p2p_timeout to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %p2p_timeout, align 8
  %p2p_listen_state = getelementptr i8, ptr %1, i32 8092
  %6 = ptrtoint ptr %p2p_listen_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p2p_listen_state, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %remain_on_ch_params = getelementptr i8, ptr %1, i32 7408
  %listen_cookie = getelementptr i8, ptr %1, i32 7416
  %8 = ptrtoint ptr %listen_cookie to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %listen_cookie, align 8
  %10 = ptrtoint ptr %remain_on_ch_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remain_on_ch_params, align 8
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %wdev, i64 noundef %9, ptr noundef %11, i32 noundef 3264) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_power_mgmt(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i1 noundef zeroext %enabled, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_drv = getelementptr i8, ptr %dev, i32 7504
  %0 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_drv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call3 = tail call i32 @wilc_set_power_mgmt(ptr noundef %add.ptr.i, i1 noundef zeroext %enabled, i32 noundef %timeout) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_cqm_rssi_config(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %dev, i32 noundef %rssi_thold, i32 noundef %rssi_hyst) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_get_num_conn_ifcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_set_wowlan_trigger(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wilc_wfi_init_mon_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wfi_deinit_mon_interface(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_stop_iface(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_operation_mode(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_vif_idx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_add_wep_key_bss_ap(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_add_wep_key_bss_sta(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_add_rx_gtk(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_add_ptk(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_remove_wep_key(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_wep_default_keyid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wlan_set_bssid(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_add_beacon(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_del_beacon(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_add_station(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_del_allstation(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_del_station(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_edit_station(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_inactive_time(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_statistics(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_enable_tcp_ack_filter(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_rssi(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_mac_chnl_num(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_scan(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfg_scan_result(i32 noundef %scan_event, ptr noundef readonly %info, ptr noundef %user_void) #2 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  %info22 = alloca %struct.cfg80211_scan_info, align 8
  %info36 = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_scanning = getelementptr inbounds %struct.wilc_priv, ptr %user_void, i32 0, i32 4
  %0 = ptrtoint ptr %cfg_scanning to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfg_scanning, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.end:                                           ; preds = %entry
  %2 = zext i32 %scan_event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %scan_event, label %if.end.cleanup45_crit_edge [
    i32 0, label %if.then1
    i32 1, label %if.then19
    i32 2, label %if.then31
  ]

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.then1:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.wilc_priv, ptr %user_void, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 82
  %5 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ieee80211_ptr, align 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool3.not = icmp eq ptr %8, null
  %tobool4.not = icmp eq ptr %info, null
  %or.cond = or i1 %tobool4.not, %tobool3.not
  br i1 %or.cond, label %if.then1.cleanup45_crit_edge, label %if.end6

if.then1.cleanup45_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.end6:                                          ; preds = %if.then1
  %ch = getelementptr inbounds %struct.wilc_rcvd_net_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ch, align 1
  %conv = zext i8 %10 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv, i32 noundef 0) #13
  %11 = urem i32 %call.i, 1000
  %mul.i = sub i32 %call.i, %11
  %call.i71 = tail call ptr @ieee80211_get_channel_khz(ptr noundef nonnull %8, i32 noundef %mul.i) #13
  %tobool8.not = icmp eq ptr %call.i71, null
  br i1 %tobool8.not, label %if.end6.cleanup45_crit_edge, label %if.end10

if.end6.cleanup45_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %mgmt = getelementptr inbounds %struct.wilc_rcvd_net_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %mgmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mgmt, align 4
  %frame_len = getelementptr inbounds %struct.wilc_rcvd_net_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %frame_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %frame_len, align 2
  %conv11 = zext i16 %15 to i32
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %info, align 4
  %conv12 = sext i8 %17 to i32
  %mul = mul nsw i32 %conv12, 100
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #13
  %18 = getelementptr inbounds i8, ptr %data.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i71, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %21 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %scan_width.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %18, align 8
  %call.i72 = call ptr @cfg80211_inform_bss_frame_data(ptr noundef nonnull %8, ptr noundef nonnull %data.i, ptr noundef %13, i32 noundef %conv11, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #13
  call void @cfg80211_put_bss(ptr noundef nonnull %8, ptr noundef %call.i72) #13
  br label %cleanup45

if.then19:                                        ; preds = %if.end
  %scan_req_lock = getelementptr inbounds %struct.wilc_priv, ptr %user_void, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %scan_req_lock, i32 noundef 0) #13
  %scan_req = getelementptr inbounds %struct.wilc_priv, ptr %user_void, i32 0, i32 1
  %23 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scan_req, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %if.then19.if.end26_crit_edge, label %if.then21

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info22) #13
  %25 = call ptr @memset(ptr %info22, i32 0, i32 16)
  call void @cfg80211_scan_done(ptr noundef nonnull %24, ptr noundef nonnull %info22) #13
  %26 = ptrtoint ptr %cfg_scanning to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %cfg_scanning, align 8
  %27 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %scan_req, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info22) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then19.if.end26_crit_edge
  call void @mutex_unlock(ptr noundef %scan_req_lock) #13
  br label %cleanup45

if.then31:                                        ; preds = %if.end
  %scan_req_lock32 = getelementptr inbounds %struct.wilc_priv, ptr %user_void, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %scan_req_lock32, i32 noundef 0) #13
  %scan_req33 = getelementptr inbounds %struct.wilc_priv, ptr %user_void, i32 0, i32 1
  %28 = ptrtoint ptr %scan_req33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scan_req33, align 4
  %tobool34.not = icmp eq ptr %29, null
  br i1 %tobool34.not, label %if.then31.if.end40_crit_edge, label %if.then35

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info36) #13
  %30 = call ptr @memset(ptr %info36, i32 0, i32 16)
  call void @cfg80211_scan_done(ptr noundef nonnull %29, ptr noundef nonnull %info36) #13
  %31 = ptrtoint ptr %cfg_scanning to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %cfg_scanning, align 8
  %32 = ptrtoint ptr %scan_req33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %scan_req33, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info36) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then31.if.end40_crit_edge
  call void @mutex_unlock(ptr noundef %scan_req_lock32) #13
  br label %cleanup45

cleanup45:                                        ; preds = %if.end40, %if.end26, %if.end10, %if.end6.cleanup45_crit_edge, %if.then1.cleanup45_crit_edge, %if.end.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_frame_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wilc_parse_join_bss_param(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfg_connect_result(i32 noundef %conn_disconn_evt, i8 noundef zeroext %mac_status, ptr nocapture noundef %priv_data) #2 align 64 {
entry:
  %params.i = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wilc_priv, ptr %priv_data, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %wilc = getelementptr i8, ptr %1, i32 2412
  %2 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wilc, align 4
  %hif_drv = getelementptr inbounds %struct.wilc_priv, ptr %priv_data, i32 0, i32 9
  %4 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_drv, align 8
  %conn_info2 = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %6 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ieee80211_ptr, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %connecting = getelementptr i8, ptr %1, i32 6436
  %10 = ptrtoint ptr %connecting to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %connecting, align 4
  %11 = zext i32 %conn_disconn_evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %conn_disconn_evt, label %entry.if.end46_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then30
  ]

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mac_status)
  %cmp4 = icmp eq i8 %mac_status, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp7 = icmp eq i16 %13, 0
  %or.cond = select i1 %cmp4, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  tail call void @wilc_wlan_set_bssid(ptr noundef %15, ptr noundef null, i8 noundef zeroext 2) #13
  %iftype = getelementptr i8, ptr %1, i32 2305
  %16 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iftype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp12.not = icmp eq i8 %17, 4
  br i1 %cmp12.not, label %if.then9.if.end15.thread_crit_edge, label %if.then14

if.then9.if.end15.thread_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.thread

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %sta_ch = getelementptr inbounds %struct.wilc, ptr %3, i32 0, i32 44
  %18 = ptrtoint ptr %sta_ch to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %sta_ch, align 4
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.then14, %if.then9.if.end15.thread_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.40) #16
  br label %if.end21

if.end15:                                         ; preds = %if.then
  %conv16 = zext i16 %13 to i32
  br i1 %cmp7, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %associated_bss = getelementptr inbounds %struct.wilc_priv, ptr %priv_data, i32 0, i32 5
  %19 = call ptr @memcpy(ptr %associated_bss, ptr %conn_info2, i32 6)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge, %if.end15.thread
  %conv1676 = phi i32 [ 1, %if.end15.thread ], [ 0, %if.then19 ], [ %conv16, %if.end15.if.end21_crit_edge ]
  %bss = getelementptr i8, ptr %1, i32 8120
  %20 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bss, align 8
  tail call void @cfg80211_ref_bss(ptr noundef %9, ptr noundef %21) #13
  %22 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bss, align 8
  %req_ies = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %req_ies to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %req_ies, align 4
  %req_ies_len = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %req_ies_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %req_ies_len, align 4
  %resp_ies = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %resp_ies to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resp_ies, align 4
  %resp_ies_len = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %resp_ies_len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %resp_ies_len, align 4
  %conv25 = zext i16 %31 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i) #13
  %32 = getelementptr inbounds i8, ptr %params.i, i32 28
  %33 = call ptr @memset(ptr %32, i32 0, i32 24)
  %34 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv1676, ptr %params.i, align 4
  %bssid2.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 1
  %35 = ptrtoint ptr %bssid2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %conn_info2, ptr %bssid2.i, align 4
  %bss3.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 2
  %36 = ptrtoint ptr %bss3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %23, ptr %bss3.i, align 4
  %req_ie4.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 3
  %37 = ptrtoint ptr %req_ie4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %25, ptr %req_ie4.i, align 4
  %req_ie_len5.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 4
  %38 = ptrtoint ptr %req_ie_len5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %27, ptr %req_ie_len5.i, align 4
  %resp_ie6.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 5
  %39 = ptrtoint ptr %resp_ie6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %29, ptr %resp_ie6.i, align 4
  %resp_ie_len7.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 6
  %40 = ptrtoint ptr %resp_ie_len7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv25, ptr %resp_ie_len7.i, align 4
  %timeout_reason8.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i, i32 0, i32 8
  %41 = ptrtoint ptr %timeout_reason8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %timeout_reason8.i, align 4
  call void @cfg80211_connect_done(ptr noundef %1, ptr noundef nonnull %params.i, i32 noundef 3264) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i) #13
  %42 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %bss, align 8
  br label %if.end46

if.then30:                                        ; preds = %entry
  %associated_bss31 = getelementptr inbounds %struct.wilc_priv, ptr %priv_data, i32 0, i32 5
  %43 = call ptr @memset(ptr %associated_bss31, i32 0, i32 6)
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  tail call void @wilc_wlan_set_bssid(ptr noundef %45, ptr noundef null, i8 noundef zeroext 2) #13
  %iftype34 = getelementptr i8, ptr %1, i32 2305
  %46 = ptrtoint ptr %iftype34 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %iftype34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %47)
  %cmp36.not = icmp eq i8 %47, 4
  br i1 %cmp36.not, label %if.else40, label %if.then38

if.then38:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %sta_ch39 = getelementptr inbounds %struct.wilc, ptr %3, i32 0, i32 44
  %48 = ptrtoint ptr %sta_ch39 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %sta_ch39, align 4
  br label %if.end44

if.else40:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %ifc_up = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 12
  %49 = ptrtoint ptr %ifc_up to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ifc_up, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not = icmp eq i8 %50, 0
  %. = select i1 %tobool.not, i16 1, i16 3
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then38
  %reason.0 = phi i16 [ 0, %if.then38 ], [ %., %if.else40 ]
  tail call void @cfg80211_disconnected(ptr noundef %1, i16 noundef zeroext %reason.0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i32 noundef 3264) #13
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end21, %entry.if.end46_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_join_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ref_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_hif_set_cfg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_tx_power(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_tx_power(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_pmkid_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_remain_on_channel(ptr noundef, i64 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_wfi_remain_on_channel_expired(ptr noundef %data, i64 noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %listen_cookie = getelementptr inbounds %struct.wilc_vif, ptr %data, i32 0, i32 16, i32 2, i32 2
  %0 = ptrtoint ptr %listen_cookie to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %listen_cookie, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %cookie)
  %cmp.not = icmp eq i64 %1, %cookie
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %remain_on_ch_params = getelementptr inbounds %struct.wilc_vif, ptr %data, i32 0, i32 16, i32 2
  %priv1 = getelementptr inbounds %struct.wilc_vif, ptr %data, i32 0, i32 16
  %p2p_listen_state = getelementptr inbounds %struct.wilc_vif, ptr %data, i32 0, i32 16, i32 18
  %2 = ptrtoint ptr %p2p_listen_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p2p_listen_state, align 4
  %3 = ptrtoint ptr %remain_on_ch_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remain_on_ch_params, align 8
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %priv1, i64 noundef %cookie, ptr noundef %4, i32 noundef 3264) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_listen_state_expired(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_txq_add_mgmt_pkt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_wfi_mgmt_tx_complete(ptr noundef %priv, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %buff = getelementptr inbounds %struct.wilc_p2p_mgmt_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buff, align 4
  tail call void @kfree(ptr noundef %1) #13
  tail call void @kfree(ptr noundef %priv) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_power_mgmt(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !50, !51, !53, !54, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !100, !101, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1017, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wilc_wfi_p2p_rx.__UNIQUE_ID_ddebug489, !1, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1740, i32 33}
!8 = !{ptr @__ksymtab_wilc_cfg80211_init, !9, !"__ksymtab_wilc_cfg80211_init", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1758, i32 1}
!10 = !{ptr @wilc_init_host_int.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1826, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1829, i32 19}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1847, i32 19}
!17 = !{ptr @wlan_init_locks.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1686, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wlan_init_locks.__key.9, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1687, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wlan_init_locks.__key.11, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1688, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wlan_init_locks.__key.13, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1689, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @wlan_init_locks.__key.15, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1690, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @wlan_init_locks.__key.17, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1692, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wlan_init_locks.__key.19, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1693, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wlan_init_locks.__srcu_key, !39, !"__srcu_key", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1699, i32 2}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wilc_cfg80211_ops, !45, !"wilc_cfg80211_ops", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1641, i32 34}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1586, i32 25}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1510, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @add_virtual_intf._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @add_virtual_intf._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1456, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1350, i32 19}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 645, i32 22}
!63 = !{ptr @__func__.add_key, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 645, i32 50}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1365, i32 19}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1391, i32 19}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1409, i32 20}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1434, i32 19}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1447, i32 20}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 747, i32 20}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 270, i32 25}
!79 = !{ptr @__func__.connect, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 354, i32 8}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 390, i32 25}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 410, i32 19}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 432, i32 19}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 186, i32 20}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 481, i32 25}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 808, i32 3}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @set_wiphy_params.__UNIQUE_ID_ddebug480, !92, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 815, i32 3}
!97 = !{ptr @set_wiphy_params.__UNIQUE_ID_ddebug481, !96, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 824, i32 4}
!100 = !{ptr @set_wiphy_params.__UNIQUE_ID_ddebug482, !99, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 831, i32 8}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 838, i32 4}
!105 = !{ptr @set_wiphy_params.__UNIQUE_ID_ddebug483, !104, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 844, i32 26}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 851, i32 25}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1610, i32 25}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1617, i32 25}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1636, i32 25}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 882, i32 22}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 1075, i32 3}
!120 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @remain_on_channel.__UNIQUE_ID_ddebug490, !119, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!122 = !{ptr @wilc_bitrates, !123, !"wilc_bitrates", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.h", i32 105, i32 30}
!124 = !{ptr @wilc_2ghz_channels, !125, !"wilc_2ghz_channels", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.h", i32 82, i32 39}
!126 = !{ptr @wowlan_support, !127, !"wowlan_support", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 50, i32 42}
!128 = !{ptr @wilc_cipher_suites, !129, !"wilc_cipher_suites", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.h", i32 65, i32 18}
!130 = !{ptr @wilc_wfi_cfg80211_mgmt_types, !131, !"wilc_wfi_cfg80211_mgmt_types", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/microchip/wilc1000/cfg80211.c", i32 21, i32 2}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i8 0, i8 2}
!143 = !{i64 2148900483, i64 2148900488, i64 2148900501, i64 2148900545, i64 2148900579, i64 2148900600}
!144 = !{i64 2158076676, i64 2158077164, i64 2158076713, i64 2158076769, i64 2158076803, i64 2158076827, i64 2158076868, i64 2158076889, i64 2158076917, i64 2158076951}
!145 = !{!"branch_weights", i32 2000, i32 1}
