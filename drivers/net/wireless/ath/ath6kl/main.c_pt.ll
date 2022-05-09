; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath6kl_vif = type { %struct.list_head, %struct.wireless_dev, ptr, ptr, %struct.spinlock, i8, i32, i32, [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16, [4 x %struct.ath6kl_wep_key], [4 x %struct.ath6kl_key], ptr, [6 x %struct.ath6kl_htcap], %struct.timer_list, %struct.timer_list, ptr, i32, i32, i32, i32, i32, i8, i16, i16, i16, i32, i16, i8, %struct.target_stats, %struct.wmi_connect_cmd, i16, %struct.list_head }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.101, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.101 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.102 }
%union.anon.102 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.ath6kl_wep_key = type { i8, i8, [64 x i8] }
%struct.ath6kl_key = type { [32 x i8], i8, [8 x i8], i8, i32 }
%struct.ath6kl_htcap = type { i8, i8, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.target_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.wmi_connect_cmd = type <{ i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i16, [6 x i8], i32, i8 }>
%struct.list_head = type { ptr, ptr }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.131, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.132 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.131 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.128, ptr, ptr, ptr }
%union.anon.128 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.anon.132 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.133, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.133 = type { i32 }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath6kl_dbglog_hdr = type { i32, i32 }
%struct.ath6kl_dbglog_buf = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.134 }
%union.anon.134 = type { %struct.anon.140, [16 x i8] }
%struct.anon.140 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.103, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.103 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.100, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.100 = type { i64, i64, i8 }
%struct.wmi_target_stats = type <{ i32, i32, %struct.pm_stats, %struct.wlan_net_stats, %struct.wlan_wow_stats, %struct.arp_stats, %struct.cserv_stats }>
%struct.pm_stats = type { i32, i16, i16, i16, i16 }
%struct.wlan_net_stats = type { %struct.tx_stats, %struct.rx_stats, %struct.tkip_ccmp_stats }
%struct.tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32 }
%struct.rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tkip_ccmp_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.wlan_wow_stats = type { i32, i16, i8, i8 }
%struct.arp_stats = type { i32, i32, i32 }
%struct.cserv_stats = type <{ i32, i32, i16, i16, i16, i16, i16, i8, i8, i8 }>
%struct.ath6kl_mgmt_buff = type { %struct.list_head, i32, i32, i32, i8, i32, [0 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ath6kl_mc_filter = type { %struct.list_head, [6 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to read32 through diagnose window: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to write 0x%x during diagnose window to 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath6kl/main.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid address for debug_hdr_addr\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AP mode started on %u MHz\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Delayed addkey for the initial group key for AP mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Delayed addkey failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"new station %pM aid=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ready event mac addr %pM sw_ver 0x%x abi_ver 0x%x cap 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u.%u.%u.%u\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scan complete: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ap tkip mic error received from aid=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disconnect reason is %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ath6kl_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ath6kl_open, ptr @ath6kl_close, ptr @ath6kl_data_tx, ptr null, ptr null, ptr null, ptr @ath6kl_set_multicast_list, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath6kl_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"channel switch failed nw_type %d res %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"won't switch channels nw_type=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"updating target stats\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"deleting all station\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"deleting station %pM aid=%d reason=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s multicast-all filter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabling\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to %s multicast-all receive\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Removing %pM from multicast filter\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to remove multicast filter:%pM\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adding %pM to multicast filter list\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add multicast filter :%pM\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 104, i64 105]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 209, i32 15 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 228, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 241, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 293, i32 15 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 383, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 400, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 409, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 431, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 536, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 546, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 574, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 692, i32 7 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1032, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"ath6kl_netdev_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1283, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 622, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 600, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 716, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 125, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 137, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1192, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1193, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1193, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1198, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1199, i32 20 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1199, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1223, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1229, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1263, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath6kl/main.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1269, i32 17 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ath6kl_netdev_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_find_sta(ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %node_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %2 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %node_addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %5 to i32
  %or.i = or i32 %3, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %6 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %cmp = icmp eq i8 %7, 16
  br i1 %cmp, label %for.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %mac.1 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 1, i32 1
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.1, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %cmp9.1 = icmp eq i32 %bcmp.1, 0
  br i1 %cmp9.1, label %for.cond.if.then11_crit_edge, label %for.cond.1

for.cond.if.then11_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.cond.1:                                       ; preds = %for.cond
  %mac.2 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 2, i32 1
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.2, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %cmp9.2 = icmp eq i32 %bcmp.2, 0
  br i1 %cmp9.2, label %for.cond.1.if.then11_crit_edge, label %for.cond.2

for.cond.1.if.then11_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.cond.2:                                       ; preds = %for.cond.1
  %mac.3 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 3, i32 1
  %bcmp.3 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.3, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %cmp9.3 = icmp eq i32 %bcmp.3, 0
  br i1 %cmp9.3, label %for.cond.2.if.then11_crit_edge, label %for.cond.3

for.cond.2.if.then11_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.cond.3:                                       ; preds = %for.cond.2
  %mac.4 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 4, i32 1
  %bcmp.4 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.4, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %cmp9.4 = icmp eq i32 %bcmp.4, 0
  br i1 %cmp9.4, label %for.cond.3.if.then11_crit_edge, label %for.cond.4

for.cond.3.if.then11_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.cond.4:                                       ; preds = %for.cond.3
  %mac.5 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 5, i32 1
  %bcmp.5 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.5, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5)
  %cmp9.5 = icmp eq i32 %bcmp.5, 0
  br i1 %cmp9.5, label %for.cond.4.if.then11_crit_edge, label %for.cond.5

for.cond.4.if.then11_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.cond.5:                                       ; preds = %for.cond.4
  %mac.6 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 6, i32 1
  %bcmp.6 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.6, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.6)
  %cmp9.6 = icmp eq i32 %bcmp.6, 0
  br i1 %cmp9.6, label %for.cond.5.if.then11_crit_edge, label %for.cond.6

for.cond.5.if.then11_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.cond.6:                                       ; preds = %for.cond.5
  %mac.7 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 7, i32 1
  %bcmp.7 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.7, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.7)
  %cmp9.7 = icmp eq i32 %bcmp.7, 0
  br i1 %cmp9.7, label %for.cond.6.if.then11_crit_edge, label %for.cond.7

for.cond.6.if.then11_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.cond.7:                                       ; preds = %for.cond.6
  %mac.8 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 8, i32 1
  %bcmp.8 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.8, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.8)
  %cmp9.8 = icmp eq i32 %bcmp.8, 0
  br i1 %cmp9.8, label %for.cond.7.if.then11_crit_edge, label %for.cond.8

for.cond.7.if.then11_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.cond.8:                                       ; preds = %for.cond.7
  %mac.9 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 9, i32 1
  %bcmp.9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac.9, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.9)
  %cmp9.9 = icmp eq i32 %bcmp.9, 0
  br i1 %cmp9.9, label %for.cond.8.if.then11_crit_edge, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.8.if.then11_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

for.body:                                         ; preds = %if.end
  %mac = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %node_addr, ptr noundef dereferenceable(6) %mac, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp9 = icmp eq i32 %bcmp, 0
  br i1 %cmp9, label %for.body.if.then11_crit_edge, label %for.cond

for.body.if.then11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

if.then11:                                        ; preds = %for.body.if.then11_crit_edge, %for.cond.8.if.then11_crit_edge, %for.cond.7.if.then11_crit_edge, %for.cond.6.if.then11_crit_edge, %for.cond.5.if.then11_crit_edge, %for.cond.4.if.then11_crit_edge, %for.cond.3.if.then11_crit_edge, %for.cond.2.if.then11_crit_edge, %for.cond.1.if.then11_crit_edge, %for.cond.if.then11_crit_edge
  %indvars.iv.lcssa = phi i32 [ 0, %for.body.if.then11_crit_edge ], [ 1, %for.cond.if.then11_crit_edge ], [ 2, %for.cond.1.if.then11_crit_edge ], [ 3, %for.cond.2.if.then11_crit_edge ], [ 4, %for.cond.3.if.then11_crit_edge ], [ 5, %for.cond.4.if.then11_crit_edge ], [ 6, %for.cond.5.if.then11_crit_edge ], [ 7, %for.cond.6.if.then11_crit_edge ], [ 8, %for.cond.7.if.then11_crit_edge ], [ 9, %for.cond.8.if.then11_crit_edge ]
  %arrayidx = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %indvars.iv.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %for.cond.8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %arrayidx, %if.then11 ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.cond.8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_find_sta_by_aid(ptr noundef readonly %ar, i8 noundef zeroext %aid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aid2 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 0, i32 2
  %0 = ptrtoint ptr %aid2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aid2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %aid)
  %cmp5 = icmp eq i8 %1, %aid
  br i1 %cmp5, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond:                                         ; preds = %entry
  %aid2.1 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 1, i32 2
  %2 = ptrtoint ptr %aid2.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aid2.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %aid)
  %cmp5.1 = icmp eq i8 %3, %aid
  br i1 %cmp5.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %aid2.2 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 2, i32 2
  %4 = ptrtoint ptr %aid2.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aid2.2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %aid)
  %cmp5.2 = icmp eq i8 %5, %aid
  br i1 %cmp5.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %aid2.3 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 3, i32 2
  %6 = ptrtoint ptr %aid2.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aid2.3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %aid)
  %cmp5.3 = icmp eq i8 %7, %aid
  br i1 %cmp5.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %aid2.4 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 4, i32 2
  %8 = ptrtoint ptr %aid2.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aid2.4, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %aid)
  %cmp5.4 = icmp eq i8 %9, %aid
  br i1 %cmp5.4, label %for.cond.3.if.then_crit_edge, label %for.cond.4

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  %aid2.5 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 5, i32 2
  %10 = ptrtoint ptr %aid2.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %aid2.5, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %aid)
  %cmp5.5 = icmp eq i8 %11, %aid
  br i1 %cmp5.5, label %for.cond.4.if.then_crit_edge, label %for.cond.5

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  %aid2.6 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 6, i32 2
  %12 = ptrtoint ptr %aid2.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aid2.6, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %aid)
  %cmp5.6 = icmp eq i8 %13, %aid
  br i1 %cmp5.6, label %for.cond.5.if.then_crit_edge, label %for.cond.6

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  %aid2.7 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 7, i32 2
  %14 = ptrtoint ptr %aid2.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %aid2.7, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %aid)
  %cmp5.7 = icmp eq i8 %15, %aid
  br i1 %cmp5.7, label %for.cond.6.if.then_crit_edge, label %for.cond.7

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.7:                                       ; preds = %for.cond.6
  %aid2.8 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 8, i32 2
  %16 = ptrtoint ptr %aid2.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %aid2.8, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %aid)
  %cmp5.8 = icmp eq i8 %17, %aid
  br i1 %cmp5.8, label %for.cond.7.if.then_crit_edge, label %for.cond.8

for.cond.7.if.then_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.8:                                       ; preds = %for.cond.7
  %aid2.9 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 9, i32 2
  %18 = ptrtoint ptr %aid2.9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %aid2.9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %aid)
  %cmp5.9 = icmp eq i8 %19, %aid
  br i1 %cmp5.9, label %for.cond.8.if.then_crit_edge, label %for.cond.8.for.end_crit_edge

for.cond.8.for.end_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.8.if.then_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %for.cond.8.if.then_crit_edge, %for.cond.7.if.then_crit_edge, %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %conv.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.cond.if.then_crit_edge ], [ 2, %for.cond.1.if.then_crit_edge ], [ 3, %for.cond.2.if.then_crit_edge ], [ 4, %for.cond.3.if.then_crit_edge ], [ 5, %for.cond.4.if.then_crit_edge ], [ 6, %for.cond.5.if.then_crit_edge ], [ 7, %for.cond.6.if.then_crit_edge ], [ 8, %for.cond.7.if.then_crit_edge ], [ 9, %for.cond.8.if.then_crit_edge ]
  %arrayidx = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %conv.lcssa
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.8.for.end_crit_edge
  %conn.0 = phi ptr [ %arrayidx, %if.then ], [ null, %for.cond.8.for.end_crit_edge ]
  ret ptr %conn.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath6kl_ac2_endpoint_id(ptr nocapture noundef readonly %devt, i8 noundef zeroext %ac) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %ac to i32
  %arrayidx = getelementptr %struct.ath6kl, ptr %devt, i32 0, i32 36, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ath6kl_alloc_cookie(ptr nocapture noundef %ar) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 34
  %0 = ptrtoint ptr %cookie_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie_list, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arc_list_next = getelementptr inbounds %struct.ath6kl_cookie, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %arc_list_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arc_list_next, align 4
  %4 = ptrtoint ptr %cookie_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %cookie_list, align 4
  %cookie_count = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 35
  %5 = ptrtoint ptr %cookie_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %cookie_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %1
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cookie_init(ptr noundef %ar) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 34
  %0 = ptrtoint ptr %cookie_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cookie_list, align 4
  %cookie_count = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 35
  %1 = ptrtoint ptr %cookie_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cookie_count, align 4
  %cookie_mem = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 74
  %2 = call ptr @memset(ptr %cookie_mem, i32 0, i32 15048)
  %tobool.not.i = icmp eq ptr %ar, null
  br label %for.body

for.body:                                         ; preds = %ath6kl_free_cookie.exit.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %ath6kl_free_cookie.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 74, i32 %i.08
  %tobool1.not.i = icmp eq ptr %arrayidx, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %for.body.ath6kl_free_cookie.exit_crit_edge, label %if.end.i

for.body.ath6kl_free_cookie.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_free_cookie.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %cookie_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cookie_list, align 4
  %arc_list_next.i = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 74, i32 %i.08, i32 3
  %5 = ptrtoint ptr %arc_list_next.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arc_list_next.i, align 4
  store ptr %arrayidx, ptr %cookie_list, align 4
  %6 = ptrtoint ptr %cookie_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie_count, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %cookie_count, align 4
  br label %ath6kl_free_cookie.exit

ath6kl_free_cookie.exit:                          ; preds = %if.end.i, %for.body.ath6kl_free_cookie.exit_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 198
  br i1 %exitcond.not, label %for.end, label %ath6kl_free_cookie.exit.for.body_crit_edge

ath6kl_free_cookie.exit.for.body_crit_edge:       ; preds = %ath6kl_free_cookie.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %ath6kl_free_cookie.exit
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath6kl_free_cookie(ptr noundef %ar, ptr noundef %cookie) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ar, null
  %tobool1.not = icmp eq ptr %cookie, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cookie_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 34
  %0 = ptrtoint ptr %cookie_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie_list, align 4
  %arc_list_next = getelementptr inbounds %struct.ath6kl_cookie, ptr %cookie, i32 0, i32 3
  %2 = ptrtoint ptr %arc_list_next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %arc_list_next, align 4
  store ptr %cookie, ptr %cookie_list, align 4
  %cookie_count = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 35
  %3 = ptrtoint ptr %cookie_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %cookie_count, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ath6kl_cookie_cleanup(ptr nocapture noundef writeonly %ar) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 34
  %0 = ptrtoint ptr %cookie_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cookie_list, align 4
  %cookie_count = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 35
  %1 = ptrtoint ptr %cookie_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cookie_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_diag_read32(ptr noundef %ar, i32 noundef %address, ptr noundef %value) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %0 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_ops.i, align 4
  %diag_read32.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %diag_read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diag_read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ar, i32 noundef %address, ptr noundef %value) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str, i32 noundef %call.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_diag_write32(ptr noundef %ar, i32 noundef %address, i32 noundef %value) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %0 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_ops.i, align 4
  %diag_write32.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %diag_write32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diag_write32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ar, i32 noundef %address, i32 noundef %value) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.1, i32 noundef %address, i32 noundef %value) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_diag_read(ptr noundef %ar, i32 noundef %address, ptr noundef %data, i32 noundef %length) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %length, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end, !prof !67

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp35.not = icmp ult i32 %length, 4
  br i1 %cmp35.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div34 = lshr i32 %length, 2
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %address.addr.036 = phi i32 [ %address, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %count.037
  %0 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %diag_read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diag_read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %ar, i32 noundef %address.addr.036, ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.inc, label %ath6kl_diag_read32.exit

ath6kl_diag_read32.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str, i32 noundef %call.i.i) #15
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.037, 1
  %add = add i32 %address.addr.036, 4
  %exitcond.not = icmp eq i32 %inc, %div34
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ath6kl_diag_read32.exit, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i.i, %ath6kl_diag_read32.exit ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_diag_write(ptr noundef %ar, i32 noundef %address, ptr nocapture noundef readonly %data, i32 noundef %length) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %length, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end, !prof !67

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp36.not = icmp ult i32 %length, 4
  br i1 %cmp36.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div34 = lshr i32 %length, 2
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 259, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %address.addr.037 = phi i32 [ %address, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %count.038
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_write32.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %diag_write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %diag_write32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %ar, i32 noundef %address.addr.037, i32 noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.inc, label %ath6kl_diag_write32.exit

ath6kl_diag_write32.exit:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.1, i32 noundef %address.addr.037, i32 noundef %1) #15
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.038, 1
  %add = add i32 %address.addr.037, 4
  %exitcond.not = icmp eq i32 %inc, %div34
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ath6kl_diag_write32.exit, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i.i, %ath6kl_diag_write32.exit ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_read_fwlogs(ptr noundef %ar) local_unnamed_addr #8 align 64 {
entry:
  %debug_hdr = alloca %struct.ath6kl_dbglog_hdr, align 4
  %debug_buf = alloca %struct.ath6kl_dbglog_buf, align 4
  %debug_hdr_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %debug_hdr) #15
  %0 = ptrtoint ptr %debug_hdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %debug_hdr, align 4, !annotation !68
  %1 = getelementptr inbounds %struct.ath6kl_dbglog_hdr, ptr %debug_hdr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %debug_buf) #15
  %3 = getelementptr inbounds %struct.ath6kl_dbglog_buf, ptr %debug_buf, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ath6kl_dbglog_buf, ptr %debug_buf, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ath6kl_dbglog_buf, ptr %debug_buf, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ath6kl_dbglog_buf, ptr %debug_buf, i32 0, i32 4
  %7 = getelementptr inbounds %struct.ath6kl_dbglog_buf, ptr %debug_buf, i32 0, i32 5
  %8 = call ptr @memset(ptr %debug_buf, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debug_hdr_addr) #15
  %9 = ptrtoint ptr %debug_hdr_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %debug_hdr_addr, align 4, !annotation !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 1500) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %target_type = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %11 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %target_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %switch.selectcmp = icmp eq i32 %12, 5
  %switch.select = select i1 %switch.selectcmp, i32 4196360, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %switch.selectcmp232 = icmp eq i32 %12, 3
  %switch.select233 = select i1 %switch.selectcmp232, i32 1312264, i32 %switch.select
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %13 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %diag_read32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %diag_read32.i.i, align 4
  %call.i.i = call i32 %16(ptr noundef %ar, i32 noundef %switch.select233, ptr noundef nonnull %debug_hdr_addr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end12, label %ath6kl_diag_read32.exit

ath6kl_diag_read32.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str, i32 noundef %call.i.i) #15
  br label %out

if.end12:                                         ; preds = %if.end
  %17 = ptrtoint ptr %debug_hdr_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_hdr_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13 = icmp eq i32 %18, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.3) #15
  br label %out

if.end15:                                         ; preds = %if.end12
  %19 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target_type, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end15.cond.end27_crit_edge [
    i32 3, label %cond.true18
    i32 5, label %cond.true23
  ]

if.end15.cond.end27_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end27

cond.true18:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %and19 = and i32 %18, 2097151
  br label %cond.end27

cond.true23:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end27

cond.end27:                                       ; preds = %cond.true23, %cond.true18, %if.end15.cond.end27_crit_edge
  %cond28 = phi i32 [ %and19, %cond.true18 ], [ %18, %cond.true23 ], [ 0, %if.end15.cond.end27_crit_edge ]
  %22 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %diag_read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %diag_read32.i.i.i, align 4
  %call.i.i.i = call i32 %25(ptr noundef %ar, i32 noundef %cond28, ptr noundef nonnull %debug_hdr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i, label %cond.end27.ath6kl_diag_read.exit_crit_edge

cond.end27.ath6kl_diag_read.exit_crit_edge:       ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit

for.inc.i:                                        ; preds = %cond.end27
  %add.i = add i32 %cond28, 4
  %26 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i.1 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %diag_read32.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %diag_read32.i.i.i.1, align 4
  %call.i.i.i.1 = call i32 %29(ptr noundef %ar, i32 noundef %add.i, ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %for.inc.i.1, label %for.inc.i.ath6kl_diag_read.exit_crit_edge

for.inc.i.ath6kl_diag_read.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit

for.inc.i.1:                                      ; preds = %for.inc.i
  %30 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %target_type, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %31, label %for.inc.i.1.cond.end45_crit_edge [
    i32 3, label %cond.true35
    i32 5, label %cond.true40
  ]

for.inc.i.1.cond.end45_crit_edge:                 ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end45

ath6kl_diag_read.exit:                            ; preds = %for.inc.i.ath6kl_diag_read.exit_crit_edge, %cond.end27.ath6kl_diag_read.exit_crit_edge
  %call.i.i.i.lcssa = phi i32 [ %call.i.i.i, %cond.end27.ath6kl_diag_read.exit_crit_edge ], [ %call.i.i.i.1, %for.inc.i.ath6kl_diag_read.exit_crit_edge ]
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str, i32 noundef %call.i.i.i.lcssa) #15
  br label %out

cond.true35:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %debug_hdr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_hdr, align 4
  %35 = and i32 %34, -57600
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  br label %cond.end45

cond.true40:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %debug_hdr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug_hdr, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  br label %cond.end45

cond.end45:                                       ; preds = %cond.true40, %cond.true35, %for.inc.i.1.cond.end45_crit_edge
  %cond46 = phi i32 [ %36, %cond.true35 ], [ %39, %cond.true40 ], [ 0, %for.inc.i.1.cond.end45_crit_edge ]
  %40 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i182 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %diag_read32.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %diag_read32.i.i.i182, align 4
  %call.i.i.i183 = call i32 %43(ptr noundef %ar, i32 noundef %cond46, ptr noundef nonnull %debug_buf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i183)
  %tobool.not.i.i184 = icmp eq i32 %call.i.i.i183, 0
  br i1 %tobool.not.i.i184, label %for.inc.i190, label %cond.end45.ath6kl_diag_read.exit192.thread_crit_edge

cond.end45.ath6kl_diag_read.exit192.thread_crit_edge: ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit192.thread

ath6kl_diag_read.exit192.thread:                  ; preds = %for.inc.i190.4.ath6kl_diag_read.exit192.thread_crit_edge, %for.inc.i190.3.ath6kl_diag_read.exit192.thread_crit_edge, %for.inc.i190.2.ath6kl_diag_read.exit192.thread_crit_edge, %for.inc.i190.1.ath6kl_diag_read.exit192.thread_crit_edge, %for.inc.i190.ath6kl_diag_read.exit192.thread_crit_edge, %cond.end45.ath6kl_diag_read.exit192.thread_crit_edge
  %call.i.i.i183.lcssa = phi i32 [ %call.i.i.i183, %cond.end45.ath6kl_diag_read.exit192.thread_crit_edge ], [ %call.i.i.i183.1, %for.inc.i190.ath6kl_diag_read.exit192.thread_crit_edge ], [ %call.i.i.i183.2, %for.inc.i190.1.ath6kl_diag_read.exit192.thread_crit_edge ], [ %call.i.i.i183.3, %for.inc.i190.2.ath6kl_diag_read.exit192.thread_crit_edge ], [ %call.i.i.i183.4, %for.inc.i190.3.ath6kl_diag_read.exit192.thread_crit_edge ], [ %call.i.i.i183.5, %for.inc.i190.4.ath6kl_diag_read.exit192.thread_crit_edge ]
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str, i32 noundef %call.i.i.i183.lcssa) #15
  br label %out

for.inc.i190:                                     ; preds = %cond.end45
  %add.i188 = add i32 %cond46, 4
  %44 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i182.1 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %diag_read32.i.i.i182.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %diag_read32.i.i.i182.1, align 4
  %call.i.i.i183.1 = call i32 %47(ptr noundef %ar, i32 noundef %add.i188, ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i183.1)
  %tobool.not.i.i184.1 = icmp eq i32 %call.i.i.i183.1, 0
  br i1 %tobool.not.i.i184.1, label %for.inc.i190.1, label %for.inc.i190.ath6kl_diag_read.exit192.thread_crit_edge

for.inc.i190.ath6kl_diag_read.exit192.thread_crit_edge: ; preds = %for.inc.i190
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit192.thread

for.inc.i190.1:                                   ; preds = %for.inc.i190
  %add.i188.1 = add i32 %cond46, 8
  %48 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i182.2 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %diag_read32.i.i.i182.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %diag_read32.i.i.i182.2, align 4
  %call.i.i.i183.2 = call i32 %51(ptr noundef %ar, i32 noundef %add.i188.1, ptr noundef %4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i183.2)
  %tobool.not.i.i184.2 = icmp eq i32 %call.i.i.i183.2, 0
  br i1 %tobool.not.i.i184.2, label %for.inc.i190.2, label %for.inc.i190.1.ath6kl_diag_read.exit192.thread_crit_edge

for.inc.i190.1.ath6kl_diag_read.exit192.thread_crit_edge: ; preds = %for.inc.i190.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit192.thread

for.inc.i190.2:                                   ; preds = %for.inc.i190.1
  %add.i188.2 = add i32 %cond46, 12
  %52 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i182.3 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %diag_read32.i.i.i182.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %diag_read32.i.i.i182.3, align 4
  %call.i.i.i183.3 = call i32 %55(ptr noundef %ar, i32 noundef %add.i188.2, ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i183.3)
  %tobool.not.i.i184.3 = icmp eq i32 %call.i.i.i183.3, 0
  br i1 %tobool.not.i.i184.3, label %for.inc.i190.3, label %for.inc.i190.2.ath6kl_diag_read.exit192.thread_crit_edge

for.inc.i190.2.ath6kl_diag_read.exit192.thread_crit_edge: ; preds = %for.inc.i190.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit192.thread

for.inc.i190.3:                                   ; preds = %for.inc.i190.2
  %add.i188.3 = add i32 %cond46, 16
  %56 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i182.4 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %diag_read32.i.i.i182.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %diag_read32.i.i.i182.4, align 4
  %call.i.i.i183.4 = call i32 %59(ptr noundef %ar, i32 noundef %add.i188.3, ptr noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i183.4)
  %tobool.not.i.i184.4 = icmp eq i32 %call.i.i.i183.4, 0
  br i1 %tobool.not.i.i184.4, label %for.inc.i190.4, label %for.inc.i190.3.ath6kl_diag_read.exit192.thread_crit_edge

for.inc.i190.3.ath6kl_diag_read.exit192.thread_crit_edge: ; preds = %for.inc.i190.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit192.thread

for.inc.i190.4:                                   ; preds = %for.inc.i190.3
  %add.i188.4 = add i32 %cond46, 20
  %60 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i182.5 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %diag_read32.i.i.i182.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %diag_read32.i.i.i182.5, align 4
  %call.i.i.i183.5 = call i32 %63(ptr noundef %ar, i32 noundef %add.i188.4, ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i183.5)
  %tobool.not.i.i184.5 = icmp eq i32 %call.i.i.i183.5, 0
  br i1 %tobool.not.i.i184.5, label %for.inc.i190.4.do.body_crit_edge, label %for.inc.i190.4.ath6kl_diag_read.exit192.thread_crit_edge

for.inc.i190.4.ath6kl_diag_read.exit192.thread_crit_edge: ; preds = %for.inc.i190.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit192.thread

for.inc.i190.4.do.body_crit_edge:                 ; preds = %for.inc.i190.4
  br label %do.body

do.body:                                          ; preds = %do.cond120.do.body_crit_edge, %for.inc.i190.4.do.body_crit_edge
  %loop.0 = phi i32 [ %dec, %do.cond120.do.body_crit_edge ], [ 100, %for.inc.i190.4.do.body_crit_edge ]
  %64 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %target_type, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %65, label %do.body.cond.end63_crit_edge [
    i32 3, label %cond.true53
    i32 5, label %cond.true58
  ]

do.body.cond.end63_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end63

cond.true53:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %3, align 4
  %69 = and i32 %68, -57600
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  br label %cond.end63

cond.true58:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %3, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  br label %cond.end63

cond.end63:                                       ; preds = %cond.true58, %cond.true53, %do.body.cond.end63_crit_edge
  %cond64 = phi i32 [ %70, %cond.true53 ], [ %73, %cond.true58 ], [ 0, %do.body.cond.end63_crit_edge ]
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %5, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp66.not = icmp eq i32 %75, 0
  br i1 %cmp66.not, label %cond.end63.if.end75_crit_edge, label %land.lhs.true

cond.end63.if.end75_crit_edge:                    ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

land.lhs.true:                                    ; preds = %cond.end63
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %4, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %79)
  %cmp68.not = icmp ugt i32 %76, %79
  br i1 %cmp68.not, label %land.lhs.true.if.end75_crit_edge, label %if.then69

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then69:                                        ; preds = %land.lhs.true
  %add = add i32 %76, 3
  %and70 = and i32 %add, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %cmp35.not.i = icmp eq i32 %and70, 0
  br i1 %cmp35.not.i, label %if.then69.if.end74_crit_edge, label %for.body.lr.ph.i

if.then69.if.end74_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

for.body.lr.ph.i:                                 ; preds = %if.then69
  %div34.i = lshr i32 %add, 2
  br label %for.body.i200

for.body.i200:                                    ; preds = %for.inc.i205.for.body.i200_crit_edge, %for.body.lr.ph.i
  %count.037.i194 = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i202, %for.inc.i205.for.body.i200_crit_edge ]
  %address.addr.036.i195 = phi i32 [ %cond64, %for.body.lr.ph.i ], [ %add.i203, %for.inc.i205.for.body.i200_crit_edge ]
  %arrayidx.i196 = getelementptr i32, ptr %call7.i, i32 %count.037.i194
  %80 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i197 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %81, i32 0, i32 11
  %82 = ptrtoint ptr %diag_read32.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %diag_read32.i.i.i197, align 4
  %call.i.i.i198 = call i32 %83(ptr noundef %ar, i32 noundef %address.addr.036.i195, ptr noundef %arrayidx.i196) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i198)
  %tobool.not.i.i199 = icmp eq i32 %call.i.i.i198, 0
  br i1 %tobool.not.i.i199, label %for.inc.i205, label %ath6kl_diag_read.exit207

for.inc.i205:                                     ; preds = %for.body.i200
  %inc.i202 = add nuw nsw i32 %count.037.i194, 1
  %add.i203 = add i32 %address.addr.036.i195, 4
  %exitcond.not.i204 = icmp eq i32 %inc.i202, %div34.i
  br i1 %exitcond.not.i204, label %for.inc.i205.if.end74_crit_edge, label %for.inc.i205.for.body.i200_crit_edge

for.inc.i205.for.body.i200_crit_edge:             ; preds = %for.inc.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i200

for.inc.i205.if.end74_crit_edge:                  ; preds = %for.inc.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

ath6kl_diag_read.exit207:                         ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str, i32 noundef %call.i.i.i198) #15
  br label %out

if.end74:                                         ; preds = %for.inc.i205.if.end74_crit_edge, %if.then69.if.end74_crit_edge
  call void @ath6kl_debug_fwlog_event(ptr noundef %ar, ptr noundef nonnull %call7.i, i32 noundef %and70) #15
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %land.lhs.true.if.end75_crit_edge, %cond.end63.if.end75_crit_edge
  %84 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %target_type, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %85, label %if.end75.cond.end88_crit_edge [
    i32 3, label %cond.true78
    i32 5, label %cond.true83
  ]

if.end75.cond.end88_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end88

cond.true78:                                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %debug_buf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %debug_buf, align 4
  %89 = and i32 %88, -57600
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  br label %cond.end88

cond.true83:                                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %debug_buf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug_buf, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  br label %cond.end88

cond.end88:                                       ; preds = %cond.true83, %cond.true78, %if.end75.cond.end88_crit_edge
  %cond89 = phi i32 [ %90, %cond.true78 ], [ %93, %cond.true83 ], [ 0, %if.end75.cond.end88_crit_edge ]
  %94 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i213 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %diag_read32.i.i.i213 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %diag_read32.i.i.i213, align 4
  %call.i.i.i214 = call i32 %97(ptr noundef %ar, i32 noundef %cond89, ptr noundef nonnull %debug_buf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i214)
  %tobool.not.i.i215 = icmp eq i32 %call.i.i.i214, 0
  br i1 %tobool.not.i.i215, label %for.inc.i221, label %cond.end88.ath6kl_diag_read.exit223_crit_edge

cond.end88.ath6kl_diag_read.exit223_crit_edge:    ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit223

for.inc.i221:                                     ; preds = %cond.end88
  %add.i219 = add i32 %cond89, 4
  %98 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i213.1 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %diag_read32.i.i.i213.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %diag_read32.i.i.i213.1, align 4
  %call.i.i.i214.1 = call i32 %101(ptr noundef %ar, i32 noundef %add.i219, ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i214.1)
  %tobool.not.i.i215.1 = icmp eq i32 %call.i.i.i214.1, 0
  br i1 %tobool.not.i.i215.1, label %for.inc.i221.1, label %for.inc.i221.ath6kl_diag_read.exit223_crit_edge

for.inc.i221.ath6kl_diag_read.exit223_crit_edge:  ; preds = %for.inc.i221
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit223

for.inc.i221.1:                                   ; preds = %for.inc.i221
  %add.i219.1 = add i32 %cond89, 8
  %102 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i213.2 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %diag_read32.i.i.i213.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %diag_read32.i.i.i213.2, align 4
  %call.i.i.i214.2 = call i32 %105(ptr noundef %ar, i32 noundef %add.i219.1, ptr noundef %4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i214.2)
  %tobool.not.i.i215.2 = icmp eq i32 %call.i.i.i214.2, 0
  br i1 %tobool.not.i.i215.2, label %for.inc.i221.2, label %for.inc.i221.1.ath6kl_diag_read.exit223_crit_edge

for.inc.i221.1.ath6kl_diag_read.exit223_crit_edge: ; preds = %for.inc.i221.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit223

for.inc.i221.2:                                   ; preds = %for.inc.i221.1
  %add.i219.2 = add i32 %cond89, 12
  %106 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i213.3 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %diag_read32.i.i.i213.3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %diag_read32.i.i.i213.3, align 4
  %call.i.i.i214.3 = call i32 %109(ptr noundef %ar, i32 noundef %add.i219.2, ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i214.3)
  %tobool.not.i.i215.3 = icmp eq i32 %call.i.i.i214.3, 0
  br i1 %tobool.not.i.i215.3, label %for.inc.i221.3, label %for.inc.i221.2.ath6kl_diag_read.exit223_crit_edge

for.inc.i221.2.ath6kl_diag_read.exit223_crit_edge: ; preds = %for.inc.i221.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit223

for.inc.i221.3:                                   ; preds = %for.inc.i221.2
  %add.i219.3 = add i32 %cond89, 16
  %110 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i213.4 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %diag_read32.i.i.i213.4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %diag_read32.i.i.i213.4, align 4
  %call.i.i.i214.4 = call i32 %113(ptr noundef %ar, i32 noundef %add.i219.3, ptr noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i214.4)
  %tobool.not.i.i215.4 = icmp eq i32 %call.i.i.i214.4, 0
  br i1 %tobool.not.i.i215.4, label %for.inc.i221.4, label %for.inc.i221.3.ath6kl_diag_read.exit223_crit_edge

for.inc.i221.3.ath6kl_diag_read.exit223_crit_edge: ; preds = %for.inc.i221.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit223

for.inc.i221.4:                                   ; preds = %for.inc.i221.3
  %add.i219.4 = add i32 %cond89, 20
  %114 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hif_ops.i.i, align 4
  %diag_read32.i.i.i213.5 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %115, i32 0, i32 11
  %116 = ptrtoint ptr %diag_read32.i.i.i213.5 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %diag_read32.i.i.i213.5, align 4
  %call.i.i.i214.5 = call i32 %117(ptr noundef %ar, i32 noundef %add.i219.4, ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i214.5)
  %tobool.not.i.i215.5 = icmp eq i32 %call.i.i.i214.5, 0
  br i1 %tobool.not.i.i215.5, label %for.inc.i221.5, label %for.inc.i221.4.ath6kl_diag_read.exit223_crit_edge

for.inc.i221.4.ath6kl_diag_read.exit223_crit_edge: ; preds = %for.inc.i221.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_diag_read.exit223

for.inc.i221.5:                                   ; preds = %for.inc.i221.4
  %dec = add nsw i32 %loop.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp94 = icmp eq i32 %dec, 0
  br i1 %cmp94, label %do.end, label %do.cond120, !prof !69

ath6kl_diag_read.exit223:                         ; preds = %for.inc.i221.4.ath6kl_diag_read.exit223_crit_edge, %for.inc.i221.3.ath6kl_diag_read.exit223_crit_edge, %for.inc.i221.2.ath6kl_diag_read.exit223_crit_edge, %for.inc.i221.1.ath6kl_diag_read.exit223_crit_edge, %for.inc.i221.ath6kl_diag_read.exit223_crit_edge, %cond.end88.ath6kl_diag_read.exit223_crit_edge
  %call.i.i.i214.lcssa = phi i32 [ %call.i.i.i214, %cond.end88.ath6kl_diag_read.exit223_crit_edge ], [ %call.i.i.i214.1, %for.inc.i221.ath6kl_diag_read.exit223_crit_edge ], [ %call.i.i.i214.2, %for.inc.i221.1.ath6kl_diag_read.exit223_crit_edge ], [ %call.i.i.i214.3, %for.inc.i221.2.ath6kl_diag_read.exit223_crit_edge ], [ %call.i.i.i214.4, %for.inc.i221.3.ath6kl_diag_read.exit223_crit_edge ], [ %call.i.i.i214.5, %for.inc.i221.4.ath6kl_diag_read.exit223_crit_edge ]
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str, i32 noundef %call.i.i.i214.lcssa) #15
  br label %out

do.end:                                           ; preds = %for.inc.i221.5
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 338, i32 noundef 9, ptr noundef null) #15
  br label %out

do.cond120:                                       ; preds = %for.inc.i221.5
  %cmp121.not = icmp eq i32 %cond89, %cond46
  br i1 %cmp121.not, label %do.cond120.out_crit_edge, label %do.cond120.do.body_crit_edge

do.cond120.do.body_crit_edge:                     ; preds = %do.cond120
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond120.out_crit_edge:                         ; preds = %do.cond120
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %do.cond120.out_crit_edge, %do.end, %ath6kl_diag_read.exit223, %ath6kl_diag_read.exit207, %ath6kl_diag_read.exit192.thread, %ath6kl_diag_read.exit, %if.then14, %ath6kl_diag_read32.exit
  %ret.0 = phi i32 [ %call.i.i, %ath6kl_diag_read32.exit ], [ -22, %if.then14 ], [ %call.i.i.i.lcssa, %ath6kl_diag_read.exit ], [ %call.i.i.i198, %ath6kl_diag_read.exit207 ], [ %call.i.i.i214.lcssa, %ath6kl_diag_read.exit223 ], [ -110, %do.end ], [ %call.i.i.i183.lcssa, %ath6kl_diag_read.exit192.thread ], [ 0, %do.cond120.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debug_hdr_addr) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %debug_buf) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %debug_hdr) #15
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_debug_fwlog_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_connect_ap_mode_bss(ptr noundef %vif, i16 noundef zeroext %channel) local_unnamed_addr #8 align 64 {
entry:
  %key_rsc = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key_rsc) #15
  %ap_mode_bkey = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51
  %conv = zext i16 %channel to i32
  %2 = ptrtoint ptr %key_rsc to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %key_rsc, align 8
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.4, i32 noundef %conv) #15
  %auth_mode = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %3 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %auth_mode, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %4, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 8, label %entry.sw.bb9_crit_edge
    i8 16, label %entry.sw.bb9_crit_edge50
    i8 24, label %entry.sw.bb9_crit_edge51
  ]

entry.sw.bb9_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9

entry.sw.bb9_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %prwise_crypto = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 11
  %6 = ptrtoint ptr %prwise_crypto to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prwise_crypto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %sw.bb
  %def_txkey_index.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 15
  %fw_vif_idx.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %key_len.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 22, i32 0, i32 1
  %8 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %key_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.for.inc.i_crit_edge, label %if.then.i

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %def_txkey_index.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %def_txkey_index.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp4.i = icmp eq i8 %11, 0
  %spec.select.i = select i1 %cmp4.i, i8 3, i8 1
  %12 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ar1, align 8
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wmi.i, align 4
  %16 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fw_vif_idx.i, align 8
  %key.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 22, i32 0, i32 2
  %call.i = tail call i32 @ath6kl_wmi_addkey_cmd(ptr noundef %15, i8 noundef zeroext %17, i8 noundef zeroext 0, i32 noundef 2, i8 noundef zeroext %spec.select.i, i8 noundef zeroext %9, ptr noundef null, i32 noundef 0, ptr noundef %key.i, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then.for.inc.i_crit_edge
  %key_len.1.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 22, i32 1, i32 1
  %18 = ptrtoint ptr %key_len.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %key_len.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.1.i = icmp eq i8 %19, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %def_txkey_index.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %def_txkey_index.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp4.1.i = icmp eq i8 %21, 1
  %spec.select.1.i = select i1 %cmp4.1.i, i8 3, i8 1
  %22 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ar1, align 8
  %wmi.1.i = getelementptr inbounds %struct.ath6kl, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %wmi.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wmi.1.i, align 4
  %26 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fw_vif_idx.i, align 8
  %key.1.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 22, i32 1, i32 2
  %call.1.i = tail call i32 @ath6kl_wmi_addkey_cmd(ptr noundef %25, i8 noundef zeroext %27, i8 noundef zeroext 1, i32 noundef 2, i8 noundef zeroext %spec.select.1.i, i8 noundef zeroext %19, ptr noundef null, i32 noundef 0, ptr noundef %key.1.i, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #15
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %key_len.2.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 22, i32 2, i32 1
  %28 = ptrtoint ptr %key_len.2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %key_len.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.2.i = icmp eq i8 %29, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %def_txkey_index.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %def_txkey_index.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp4.2.i = icmp eq i8 %31, 2
  %spec.select.2.i = select i1 %cmp4.2.i, i8 3, i8 1
  %32 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ar1, align 8
  %wmi.2.i = getelementptr inbounds %struct.ath6kl, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %wmi.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wmi.2.i, align 4
  %36 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fw_vif_idx.i, align 8
  %key.2.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 22, i32 2, i32 2
  %call.2.i = tail call i32 @ath6kl_wmi_addkey_cmd(ptr noundef %35, i8 noundef zeroext %37, i8 noundef zeroext 2, i32 noundef 2, i8 noundef zeroext %spec.select.2.i, i8 noundef zeroext %29, ptr noundef null, i32 noundef 0, ptr noundef %key.2.i, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #15
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %key_len.3.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 22, i32 3, i32 1
  %38 = ptrtoint ptr %key_len.3.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %key_len.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.3.i = icmp eq i8 %39, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end_crit_edge, label %if.then.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %def_txkey_index.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %def_txkey_index.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp4.3.i = icmp eq i8 %41, 3
  %spec.select.3.i = select i1 %cmp4.3.i, i8 3, i8 1
  %42 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ar1, align 8
  %wmi.3.i = getelementptr inbounds %struct.ath6kl, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %wmi.3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wmi.3.i, align 4
  %46 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fw_vif_idx.i, align 8
  %key.3.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 22, i32 3, i32 2
  %call.3.i = tail call i32 @ath6kl_wmi_addkey_cmd(ptr noundef %45, i8 noundef zeroext %47, i8 noundef zeroext 3, i32 noundef 2, i8 noundef zeroext %spec.select.3.i, i8 noundef zeroext %39, ptr noundef null, i32 noundef 0, ptr noundef %key.3.i, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.then.3.i, %for.inc.2.i.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %48 = ptrtoint ptr %ap_mode_bkey to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ap_mode_bkey, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  br i1 %tobool.not, label %if.end.sw.epilog_crit_edge, label %lor.lhs.false

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end
  %key_type = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 2
  %50 = ptrtoint ptr %key_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %key_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %51)
  %cmp5.not = icmp eq i32 %51, 16
  br i1 %cmp5.not, label %lor.lhs.false.sw.bb9_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false.sw.bb9_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9

sw.bb9:                                           ; preds = %lor.lhs.false.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge50, %entry.sw.bb9_crit_edge51
  %52 = ptrtoint ptr %ap_mode_bkey to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ap_mode_bkey, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool11.not = icmp eq i8 %53, 0
  br i1 %tobool11.not, label %sw.bb9.sw.epilog_crit_edge, label %if.end13

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.5) #15
  %54 = ptrtoint ptr %key_rsc to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %key_rsc, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %57 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %fw_vif_idx, align 8
  %key_index = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 1
  %59 = ptrtoint ptr %key_index to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %key_index, align 1
  %key_type14 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 2
  %61 = ptrtoint ptr %key_type14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %key_type14, align 4
  %key_len = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 4
  %63 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %key_len, align 4
  %key = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 3
  %call = call i32 @ath6kl_wmi_addkey_cmd(ptr noundef %56, i8 noundef zeroext %58, i8 noundef zeroext %60, i32 noundef %62, i8 noundef zeroext 1, i8 noundef zeroext %64, ptr noundef nonnull %key_rsc, i32 noundef 8, ptr noundef %key, i8 noundef zeroext 3, ptr noundef null, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end13.sw.epilog_crit_edge, label %if.then18

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.6, i32 noundef %call) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then18, %if.end13.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %last_ch = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 54
  %65 = ptrtoint ptr %last_ch to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %last_ch, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %channel)
  %cmp22.not = icmp eq i16 %66, %channel
  br i1 %cmp22.not, label %sw.epilog.if.end26_crit_edge, label %if.then24

sw.epilog.if.end26_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  call void @ath6kl_cfg80211_ch_switch_notify(ptr noundef %vif, i32 noundef %conv, i32 noundef 6) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %sw.epilog.if.end26_crit_edge
  %wmi27 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %67 = ptrtoint ptr %wmi27 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wmi27, align 4
  %fw_vif_idx28 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %69 = ptrtoint ptr %fw_vif_idx28 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fw_vif_idx28, align 8
  %call29 = call i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %68, i8 noundef zeroext %70, i8 noundef zeroext 0, i32 noundef 0) #15
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #15
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %71 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ndev, align 4
  call void @netif_carrier_on(ptr noundef %72) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key_rsc) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_addkey_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_ch_switch_notify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_connect_ap_mode_sta(ptr noundef %vif, i16 noundef zeroext %aid, ptr noundef %mac_addr, i8 noundef zeroext %keymgmt, i8 noundef zeroext %ucipher, i8 noundef zeroext %auth, i8 noundef zeroext %assoc_req_len, ptr noundef %assoc_info, i8 noundef zeroext %apsd_info) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %aid to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.7, ptr noundef %mac_addr, i32 noundef %conv) #15
  %0 = add i16 %aid, -11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -10, i16 %0)
  %1 = icmp ult i16 %0, -10
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6 = zext i8 %assoc_req_len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %assoc_req_len)
  %cmp7 = icmp ugt i8 %assoc_req_len, 24
  br i1 %cmp7, label %if.then9, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.then9:                                         ; preds = %if.end
  %2 = ptrtoint ptr %assoc_info to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %assoc_info, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %cmp.i = icmp ult i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %assoc_req_len)
  %cmp12 = icmp ugt i8 %assoc_req_len, 27
  %or.cond168 = and i1 %cmp12, %cmp.i
  br i1 %or.cond168, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %assoc_info, i32 0, i32 6, i32 0, i32 2
  br label %if.end34

if.else:                                          ; preds = %if.then9
  %4 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %4)
  %cmp.i171 = icmp eq i16 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %assoc_req_len)
  %cmp21 = icmp ugt i8 %assoc_req_len, 33
  %or.cond169 = and i1 %cmp21, %cmp.i171
  br i1 %or.cond169, label %if.then23, label %if.else.cond.end_crit_edge

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %variable25 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %assoc_info, i32 0, i32 6, i32 1
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %if.then14
  %.sink = phi i32 [ -28, %if.then14 ], [ -34, %if.then23 ]
  %ies.1 = phi ptr [ %variable, %if.then14 ], [ %variable25, %if.then23 ]
  %gepdiff167 = add nsw i32 %.sink, %conv6
  %tobool.not182 = icmp eq ptr %ies.1, null
  br i1 %tobool.not182, label %if.end34.cond.end_crit_edge, label %land.rhs.lr.ph

if.end34.cond.end_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

land.rhs.lr.ph:                                   ; preds = %if.end34
  %add.ptr36 = getelementptr i8, ptr %ies.1, i32 %gepdiff167
  br label %land.rhs

land.rhs:                                         ; preds = %if.end102.land.rhs_crit_edge, %land.rhs.lr.ph
  %pos.0184 = phi ptr [ %ies.1, %land.rhs.lr.ph ], [ %add.ptr105, %if.end102.land.rhs_crit_edge ]
  %wpa_ie.0183 = phi ptr [ null, %land.rhs.lr.ph ], [ %wpa_ie.1, %if.end102.land.rhs_crit_edge ]
  %add.ptr35 = getelementptr i8, ptr %pos.0184, i32 1
  %cmp37 = icmp ult ptr %add.ptr35, %add.ptr36
  br i1 %cmp37, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add.ptr39 = getelementptr i8, ptr %pos.0184, i32 2
  %5 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr35, align 1
  %conv40 = zext i8 %6 to i32
  %add.ptr41 = getelementptr i8, ptr %add.ptr39, i32 %conv40
  %cmp43 = icmp ugt ptr %add.ptr41, %add.ptr36
  br i1 %cmp43, label %while.body.while.end_crit_edge, label %if.end46

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end46:                                         ; preds = %while.body
  %7 = ptrtoint ptr %pos.0184 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pos.0184, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %8, label %if.else91 [
    i8 48, label %if.end46.if.end102_crit_edge
    i8 -35, label %land.lhs.true57
  ]

if.end46.if.end102_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

land.lhs.true57:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp60 = icmp ugt i8 %6, 3
  br i1 %cmp60, label %land.lhs.true62, label %land.lhs.true57.if.end102_crit_edge

land.lhs.true57.if.end102_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

land.lhs.true62:                                  ; preds = %land.lhs.true57
  %10 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp65 = icmp eq i8 %11, 0
  br i1 %cmp65, label %land.lhs.true67, label %land.lhs.true62.if.end102_crit_edge

land.lhs.true62.if.end102_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %arrayidx68 = getelementptr i8, ptr %pos.0184, i32 3
  %12 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %13)
  %cmp70 = icmp eq i8 %13, 80
  br i1 %cmp70, label %land.lhs.true72, label %land.lhs.true67.if.end102_crit_edge

land.lhs.true67.if.end102_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

land.lhs.true72:                                  ; preds = %land.lhs.true67
  %arrayidx73 = getelementptr i8, ptr %pos.0184, i32 4
  %14 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %15)
  %cmp75 = icmp eq i8 %15, -14
  br i1 %cmp75, label %if.then77, label %land.lhs.true72.if.end102_crit_edge

land.lhs.true72.if.end102_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.then77:                                        ; preds = %land.lhs.true72
  %arrayidx78 = getelementptr i8, ptr %pos.0184, i32 5
  %16 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx78, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %17, label %if.end102.fold.split [
    i8 1, label %if.then77.if.end102_crit_edge
    i8 4, label %if.then77.cond.true_crit_edge
  ]

if.then77.cond.true_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true

if.then77.if.end102_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.else91:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %8)
  %cmp94 = icmp eq i8 %8, 68
  %cmp97 = icmp eq ptr %wpa_ie.0183, null
  %or.cond170 = select i1 %cmp94, i1 %cmp97, i1 false
  br i1 %or.cond170, label %if.else91.cond.true_crit_edge, label %if.else91.if.end102_crit_edge

if.else91.if.end102_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.else91.cond.true_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true

if.end102.fold.split:                             ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.end102:                                        ; preds = %if.end102.fold.split, %if.else91.if.end102_crit_edge, %if.then77.if.end102_crit_edge, %land.lhs.true72.if.end102_crit_edge, %land.lhs.true67.if.end102_crit_edge, %land.lhs.true62.if.end102_crit_edge, %land.lhs.true57.if.end102_crit_edge, %if.end46.if.end102_crit_edge
  %wpa_ie.1 = phi ptr [ %wpa_ie.0183, %if.else91.if.end102_crit_edge ], [ %pos.0184, %if.end46.if.end102_crit_edge ], [ %pos.0184, %if.then77.if.end102_crit_edge ], [ %wpa_ie.0183, %if.end102.fold.split ], [ %wpa_ie.0183, %land.lhs.true72.if.end102_crit_edge ], [ %wpa_ie.0183, %land.lhs.true67.if.end102_crit_edge ], [ %wpa_ie.0183, %land.lhs.true62.if.end102_crit_edge ], [ %wpa_ie.0183, %land.lhs.true57.if.end102_crit_edge ]
  %add = add nuw nsw i32 %conv40, 2
  %add.ptr105 = getelementptr i8, ptr %pos.0184, i32 %add
  %tobool.not = icmp eq ptr %add.ptr105, null
  br i1 %tobool.not, label %if.end102.while.end_crit_edge, label %if.end102.land.rhs_crit_edge

if.end102.land.rhs_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

if.end102.while.end_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end102.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %wpa_ie.0.lcssa = phi ptr [ %wpa_ie.0183, %land.rhs.while.end_crit_edge ], [ %wpa_ie.0183, %while.body.while.end_crit_edge ], [ %wpa_ie.1, %if.end102.while.end_crit_edge ]
  %tobool106.not = icmp eq ptr %wpa_ie.0.lcssa, null
  br i1 %tobool106.not, label %while.end.cond.end_crit_edge, label %while.end.cond.true_crit_edge

while.end.cond.true_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true

while.end.cond.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %while.end.cond.true_crit_edge, %if.else91.cond.true_crit_edge, %if.then77.cond.true_crit_edge
  %wpa_ie.2178 = phi ptr [ %wpa_ie.0.lcssa, %while.end.cond.true_crit_edge ], [ %pos.0184, %if.then77.cond.true_crit_edge ], [ %pos.0184, %if.else91.cond.true_crit_edge ]
  %arrayidx107 = getelementptr i8, ptr %wpa_ie.2178, i32 1
  %19 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %20 to i32
  %add109 = add nuw nsw i32 %conv108, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.end.cond.end_crit_edge, %if.end34.cond.end_crit_edge, %if.else.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %ies_len.1196 = phi i32 [ %gepdiff167, %cond.true ], [ %gepdiff167, %while.end.cond.end_crit_edge ], [ %gepdiff167, %if.end34.cond.end_crit_edge ], [ 0, %if.end.cond.end_crit_edge ], [ 0, %if.else.cond.end_crit_edge ]
  %ies.1193 = phi ptr [ %ies.1, %cond.true ], [ %ies.1, %while.end.cond.end_crit_edge ], [ null, %if.end34.cond.end_crit_edge ], [ null, %if.end.cond.end_crit_edge ], [ null, %if.else.cond.end_crit_edge ]
  %wpa_ie.2179 = phi ptr [ %wpa_ie.2178, %cond.true ], [ null, %while.end.cond.end_crit_edge ], [ null, %if.end34.cond.end_crit_edge ], [ null, %if.end.cond.end_crit_edge ], [ null, %if.else.cond.end_crit_edge ]
  %cond = phi i32 [ %add109, %cond.true ], [ 0, %while.end.cond.end_crit_edge ], [ 0, %if.end34.cond.end_crit_edge ], [ 0, %if.end.cond.end_crit_edge ], [ 0, %if.else.cond.end_crit_edge ]
  %ar1.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %21 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ar1.i, align 8
  %23 = add i16 %aid, 255
  %24 = and i16 %23, 255
  %idxprom.i = zext i16 %24 to i32
  %mac3.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 48, i32 %idxprom.i, i32 1
  %25 = call ptr @memcpy(ptr %mac3.i, ptr %mac_addr, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %cond)
  %cmp.i172 = icmp ult i32 %cond, 257
  br i1 %cmp.i172, label %if.then.i, label %cond.end.ath6kl_add_new_sta.exit_crit_edge

cond.end.ath6kl_add_new_sta.exit_crit_edge:       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_add_new_sta.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %wpa_ie.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 48, i32 %idxprom.i, i32 6
  %26 = call ptr @memcpy(ptr %wpa_ie.i, ptr %wpa_ie.2179, i32 %cond)
  br label %ath6kl_add_new_sta.exit

ath6kl_add_new_sta.exit:                          ; preds = %if.then.i, %cond.end.ath6kl_add_new_sta.exit_crit_edge
  %conv6.i = trunc i16 %aid to i8
  %aid7.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 48, i32 %idxprom.i, i32 2
  %27 = ptrtoint ptr %aid7.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv6.i, ptr %aid7.i, align 4
  %keymgmt8.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 48, i32 %idxprom.i, i32 3
  %28 = ptrtoint ptr %keymgmt8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %keymgmt, ptr %keymgmt8.i, align 1
  %ucipher9.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 48, i32 %idxprom.i, i32 4
  %29 = ptrtoint ptr %ucipher9.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %ucipher, ptr %ucipher9.i, align 2
  %auth10.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 48, i32 %idxprom.i, i32 5
  %30 = ptrtoint ptr %auth10.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %auth, ptr %auth10.i, align 1
  %apsd_info11.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 48, i32 %idxprom.i, i32 11
  %31 = ptrtoint ptr %apsd_info11.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %apsd_info, ptr %apsd_info11.i, align 4
  %sta_list_index.i = getelementptr inbounds %struct.ath6kl, ptr %22, i32 0, i32 49
  %32 = ptrtoint ptr %sta_list_index.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sta_list_index.i, align 4
  %shl.i = shl nuw i32 1, %idxprom.i
  %34 = trunc i32 %shl.i to i8
  %conv14.i = or i8 %33, %34
  store i8 %conv14.i, ptr %sta_list_index.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv) #15
  %aid20.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 58, i32 1, i32 %idxprom.i, i32 8
  %36 = ptrtoint ptr %aid20.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %aid20.i, align 1
  %aggr_cntxt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 24
  %37 = ptrtoint ptr %aggr_cntxt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aggr_cntxt.i, align 8
  %aggr_conn.i = getelementptr %struct.ath6kl, ptr %22, i32 0, i32 48, i32 %idxprom.i, i32 13
  %39 = ptrtoint ptr %aggr_conn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %aggr_conn.i, align 4
  tail call void @aggr_conn_init(ptr noundef %vif, ptr noundef %38, ptr noundef %40) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 208) #19
  %tobool111.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool111.not, label %ath6kl_add_new_sta.exit.cleanup_crit_edge, label %if.end113

ath6kl_add_new_sta.exit.cleanup_crit_edge:        ; preds = %ath6kl_add_new_sta.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end113:                                        ; preds = %ath6kl_add_new_sta.exit
  call void @__sanitizer_cov_trace_pc() #17
  %assoc_req_ies = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 24
  %42 = ptrtoint ptr %assoc_req_ies to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ies.1193, ptr %assoc_req_ies, align 8
  %assoc_req_ies_len = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 25
  %43 = ptrtoint ptr %assoc_req_ies_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ies_len.1196, ptr %assoc_req_ies_len, align 4
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %44 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev, align 4
  tail call void @cfg80211_new_sta(ptr noundef %45, ptr noundef %mac_addr, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #15
  %46 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 103
  %48 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %49) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %ath6kl_add_new_sta.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_new_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disconnect_timer_handler(ptr noundef %t) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1580
  tail call void @ath6kl_init_profile_info(ptr noundef %add.ptr) #15
  %flags.i = getelementptr i8, ptr %t, i32 -552
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.ath6kl_disconnect.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i.ath6kl_disconnect.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_disconnect.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %ar.i = getelementptr i8, ptr %t, i32 -604
  %5 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar.i, align 8
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi.i, align 4
  %fw_vif_idx.i = getelementptr i8, ptr %t, i32 -556
  %9 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_vif_idx.i, align 8
  %call4.i = tail call i32 @ath6kl_wmi_disconnect_cmd(ptr noundef %8, i8 noundef zeroext %10) #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #15
  br label %ath6kl_disconnect.exit

ath6kl_disconnect.exit:                           ; preds = %if.then.i, %lor.lhs.false.i.ath6kl_disconnect.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_init_profile_info(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_disconnect(ptr noundef %vif) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %ar = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %5 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %9 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_vif_idx, align 8
  %call4 = tail call i32 @ath6kl_wmi_disconnect_cmd(ptr noundef %8, i8 noundef zeroext %10) #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_disconnect_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_ready_event(ptr noundef %devt, ptr nocapture noundef readonly %datap, i32 noundef %sw_ver, i32 noundef %abi_ver, i32 noundef %cap) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 64
  %0 = call ptr @memcpy(ptr %mac_addr, ptr %datap, i32 6)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.8, ptr noundef %mac_addr, i32 noundef %sw_ver, i32 noundef %abi_ver, i32 noundef %cap) #15
  %wlan_ver = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 25, i32 1
  %1 = ptrtoint ptr %wlan_ver to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sw_ver, ptr %wlan_ver, align 4
  %abi_ver4 = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 25, i32 2
  %2 = ptrtoint ptr %abi_ver4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %abi_ver, ptr %abi_ver4, align 4
  %cap5 = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 67, i32 14
  %3 = ptrtoint ptr %cap5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cap, ptr %cap5, align 4
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 4
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %char0 = load i8, ptr %fw_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shr = lshr i32 %sw_ver, 28
  %and14 = lshr i32 %sw_ver, 24
  %shr15 = and i32 %and14, 15
  %and18 = lshr i32 %sw_ver, 16
  %shr19 = and i32 %and18, 255
  %and22 = and i32 %sw_ver, 65535
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %shr, i32 noundef %shr15, i32 noundef %shr19, i32 noundef %and22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flag = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 75
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flag) #15
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 72
  tail call void @__wake_up(ptr noundef %event_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_scan_complete_evt(ptr noundef %vif, i32 noundef %status) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp.not = icmp ne i32 %status, 0
  tail call void @ath6kl_cfg80211_scan_complete_event(ptr noundef %vif, i1 noundef zeroext %cmp.not) #15
  %usr_bss_filter = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %usr_bss_filter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usr_bss_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then3, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #15
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %6 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_vif_idx, align 8
  %call = tail call i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext 0, i32 noundef 0) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.10, i32 noundef %status) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_scan_complete_event(ptr noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_connect_event(ptr noundef %vif, i16 noundef zeroext %channel, ptr noundef %bssid, i16 noundef zeroext %listen_int, i16 noundef zeroext %beacon_int, i32 noundef %net_type, i8 noundef zeroext %beacon_ie_len, i8 noundef zeroext %assoc_req_len, i8 noundef zeroext %assoc_resp_len, ptr noundef %assoc_info) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  tail call void @ath6kl_cfg80211_connect_event(ptr noundef %vif, i16 noundef zeroext %channel, ptr noundef %bssid, i16 noundef zeroext %listen_int, i16 noundef zeroext %beacon_int, i32 noundef %net_type, i8 noundef zeroext %beacon_ie_len, i8 noundef zeroext %assoc_req_len, i8 noundef zeroext %assoc_resp_len, ptr noundef %assoc_info) #15
  %bssid2 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 18
  %2 = call ptr @memcpy(ptr %bssid2, ptr %bssid, i32 6)
  %bss_ch = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 21
  %3 = ptrtoint ptr %bss_ch to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %channel, ptr %bss_ch, align 4
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %4 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %8 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_vif_idx, align 8
  %listen_intvl_t = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 36
  %10 = ptrtoint ptr %listen_intvl_t to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %listen_intvl_t, align 8
  %call = tail call i32 @ath6kl_wmi_listeninterval_cmd(ptr noundef %7, i8 noundef zeroext %9, i16 noundef zeroext %11, i16 noundef zeroext 0) #15
  tail call fastcc void @ath6kl_check_ch_switch(ptr noundef %1, i16 noundef zeroext %channel)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %15) #15
  %if_lock = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %if_lock) #15
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #15
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  tail call void @netif_carrier_on(ptr noundef %17) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %if_lock) #15
  %aggr_cntxt = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 24
  %18 = ptrtoint ptr %aggr_cntxt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aggr_cntxt, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @aggr_reset_state(ptr noundef %21) #15
  %reconnect_flag = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 30
  %22 = ptrtoint ptr %reconnect_flag to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reconnect_flag, align 4
  %23 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp9 = icmp eq i8 %24, 2
  br i1 %cmp9, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %ibss_ps_enable = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 29
  %25 = ptrtoint ptr %ibss_ps_enable to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ibss_ps_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %land.lhs.true.if.end14_crit_edge, label %if.then12

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %node_map = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 28
  %27 = call ptr @memset(ptr %node_map, i32 0, i32 120)
  %node_num = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 31
  %28 = ptrtoint ptr %node_num to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %node_num, align 1
  %next_ep_id = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 32
  %29 = ptrtoint ptr %next_ep_id to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %next_ep_id, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %usr_bss_filter = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 46
  %30 = ptrtoint ptr %usr_bss_filter to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %usr_bss_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not = icmp eq i8 %31, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #15
  %wmi18 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %wmi18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wmi18, align 4
  %fw_vif_idx19 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %34 = ptrtoint ptr %fw_vif_idx19 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fw_vif_idx19, align 8
  %call20 = tail call i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %33, i8 noundef zeroext %35, i8 noundef zeroext 4, i32 noundef 0) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_connect_event(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_listeninterval_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_check_ch_switch(ptr noundef %ar, i16 noundef zeroext %channel) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %want_ch_switch = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 53
  %0 = ptrtoint ptr %want_ch_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %want_ch_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %list_lock = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #15
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %2 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %vif.034 = load ptr, ptr %vif_list, align 4
  %cmp.not35 = icmp eq ptr %vif.034, %vif_list
  br i1 %cmp.not35, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %3 = tail call i16 @llvm.bswap.i16(i16 %channel) #15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vif.037 = phi ptr [ %vif.034, %for.body.lr.ph ], [ %vif.0, %for.inc.for.body_crit_edge ]
  %res.036 = phi i32 [ 0, %for.body.lr.ph ], [ %res.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %want_ch_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %want_ch_switch, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.037, i32 0, i32 5
  %6 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_vif_idx, align 8
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.body.if.end5_crit_edge, label %if.then4

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %for.body
  %ar1.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.037, i32 0, i32 3
  %8 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar1.i, align 8
  %profile.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.037, i32 0, i32 42
  %ch.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.037, i32 0, i32 42, i32 9
  %10 = ptrtoint ptr %ch.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %3, ptr %ch.i, align 8
  %nw_type.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.037, i32 0, i32 17
  %11 = ptrtoint ptr %nw_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nw_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cond.i = icmp eq i8 %12, 16
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then4
  %rsn_capab.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.037, i32 0, i32 43
  %13 = ptrtoint ptr %rsn_capab.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rsn_capab.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %fw_capabilities.i = getelementptr inbounds %struct.ath6kl, ptr %9, i32 0, i32 87
  %15 = ptrtoint ptr %fw_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %fw_capabilities.i, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %9, i32 0, i32 7
  %18 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wmi.i, align 4
  %call5.i = tail call i32 @ath6kl_wmi_set_ie_cmd(ptr noundef %19, i8 noundef zeroext %7, i8 noundef zeroext 48, i8 noundef zeroext 1, ptr noundef %rsn_capab.i, i8 noundef zeroext 2) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.i.if.end.i_crit_edge
  %wmi6.i = getelementptr inbounds %struct.ath6kl, ptr %9, i32 0, i32 7
  %20 = ptrtoint ptr %wmi6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wmi6.i, align 4
  %22 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fw_vif_idx, align 8
  %call9.i = tail call i32 @ath6kl_wmi_ap_profile_commit(ptr noundef %21, i8 noundef zeroext %23, ptr noundef %profile.i) #15
  br label %if.end5

sw.default.i:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = zext i8 %12 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.14, i32 noundef %conv.i) #15
  br label %if.end5

if.end5:                                          ; preds = %sw.default.i, %if.end.i, %for.body.if.end5_crit_edge
  %res.1 = phi i32 [ %res.036, %for.body.if.end5_crit_edge ], [ %call9.i, %if.end.i ], [ -524, %sw.default.i ]
  %24 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fw_vif_idx, align 8
  %conv7 = zext i8 %25 to i32
  %shl8 = shl nuw i32 1, %conv7
  %neg = xor i32 %shl8, -1
  %26 = ptrtoint ptr %want_ch_switch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %want_ch_switch, align 4
  %and10 = and i32 %27, %neg
  store i32 %and10, ptr %want_ch_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.1)
  %tobool11.not = icmp eq i32 %res.1, 0
  br i1 %tobool11.not, label %if.end5.for.inc_crit_edge, label %if.then12

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.037, i32 0, i32 17
  %28 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nw_type, align 4
  %conv13 = zext i8 %29 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.13, i32 noundef %conv13, i32 noundef %res.1) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end5.for.inc_crit_edge
  %30 = ptrtoint ptr %vif.037 to i32
  call void @__asan_load4_noabort(i32 %30)
  %vif.0 = load ptr, ptr %vif.037, align 4
  %cmp.not = icmp eq ptr %vif.0, %vif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aggr_reset_state(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_tkip_micerr_event(ptr noundef %vif, i8 noundef zeroext %keyid, i1 noundef zeroext %ismcast) local_unnamed_addr #8 align 64 {
entry:
  %tsc = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tsc) #15
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %2 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp = icmp eq i8 %3, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = lshr i8 %keyid, 2
  %aid2.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 0, i32 2
  %5 = ptrtoint ptr %aid2.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %aid2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %4)
  %cmp5.i = icmp eq i8 %6, %4
  br i1 %cmp5.i, label %if.then.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.i

if.then.ath6kl_find_sta_by_aid.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.i:                                       ; preds = %if.then
  %aid2.1.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 1, i32 2
  %7 = ptrtoint ptr %aid2.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aid2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %4)
  %cmp5.1.i = icmp eq i8 %8, %4
  br i1 %cmp5.1.i, label %for.cond.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.1.i

for.cond.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %aid2.2.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 2, i32 2
  %9 = ptrtoint ptr %aid2.2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %aid2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %4)
  %cmp5.2.i = icmp eq i8 %10, %4
  br i1 %cmp5.2.i, label %for.cond.1.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %aid2.3.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 3, i32 2
  %11 = ptrtoint ptr %aid2.3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aid2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %4)
  %cmp5.3.i = icmp eq i8 %12, %4
  br i1 %cmp5.3.i, label %for.cond.2.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %aid2.4.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 4, i32 2
  %13 = ptrtoint ptr %aid2.4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aid2.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %4)
  %cmp5.4.i = icmp eq i8 %14, %4
  br i1 %cmp5.4.i, label %for.cond.3.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %aid2.5.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 5, i32 2
  %15 = ptrtoint ptr %aid2.5.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %aid2.5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %4)
  %cmp5.5.i = icmp eq i8 %16, %4
  br i1 %cmp5.5.i, label %for.cond.4.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %aid2.6.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 6, i32 2
  %17 = ptrtoint ptr %aid2.6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %aid2.6.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %4)
  %cmp5.6.i = icmp eq i8 %18, %4
  br i1 %cmp5.6.i, label %for.cond.5.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %aid2.7.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 7, i32 2
  %19 = ptrtoint ptr %aid2.7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %aid2.7.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %4)
  %cmp5.7.i = icmp eq i8 %20, %4
  br i1 %cmp5.7.i, label %for.cond.6.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %aid2.8.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 8, i32 2
  %21 = ptrtoint ptr %aid2.8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %aid2.8.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %4)
  %cmp5.8.i = icmp eq i8 %22, %4
  br i1 %cmp5.8.i, label %for.cond.7.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %aid2.9.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 9, i32 2
  %23 = ptrtoint ptr %aid2.9.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %aid2.9.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %4)
  %cmp5.9.i = icmp eq i8 %24, %4
  br i1 %cmp5.9.i, label %for.cond.8.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.8.i.cleanup_crit_edge

for.cond.8.i.cleanup_crit_edge:                   ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.8.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

ath6kl_find_sta_by_aid.exit:                      ; preds = %for.cond.8.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.7.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.6.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.5.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.4.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.3.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.2.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.1.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.i.ath6kl_find_sta_by_aid.exit_crit_edge, %if.then.ath6kl_find_sta_by_aid.exit_crit_edge
  %conv.lcssa.i = phi i32 [ 0, %if.then.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 1, %for.cond.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 2, %for.cond.1.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 3, %for.cond.2.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 4, %for.cond.3.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 5, %for.cond.4.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 6, %for.cond.5.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 7, %for.cond.6.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 8, %for.cond.7.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 9, %for.cond.8.i.ath6kl_find_sta_by_aid.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %ath6kl_find_sta_by_aid.exit.cleanup_crit_edge, label %if.end

ath6kl_find_sta_by_aid.exit.cleanup_crit_edge:    ; preds = %ath6kl_find_sta_by_aid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %ath6kl_find_sta_by_aid.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv3 = zext i8 %keyid to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.11, i32 noundef %conv3) #15
  %25 = call ptr @memset(ptr %tsc, i32 0, i32 6)
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %26 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev, align 4
  %mac = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i, i32 1
  call void @cfg80211_michael_mic_failure(ptr noundef %27, ptr noundef %mac, i32 noundef 1, i32 noundef %conv3, ptr noundef nonnull %tsc, i32 noundef 3264) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ath6kl_cfg80211_tkip_micerr_event(ptr noundef %vif, i8 noundef zeroext %keyid, i1 noundef zeroext %ismcast) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %ath6kl_find_sta_by_aid.exit.cleanup_crit_edge, %for.cond.8.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tsc) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_tkip_micerr_event(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_tgt_stats_event(ptr noundef %vif, ptr noundef readonly %ptr, i32 noundef %len) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %2 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp = icmp eq i8 %3, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %len)
  %cmp3 = icmp ult i32 %len, 400
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 58, i32 1, i32 %indvars.iv
  %arrayidx11 = getelementptr %struct.wmi_ap_mode_stat, ptr %ptr, i32 0, i32 1, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx11, align 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #15
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #15
  %add.i = add i32 %8, %9
  %10 = tail call i32 @llvm.bswap.i32(i32 %add.i) #15
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx, align 4
  %tx_pkts = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 58, i32 1, i32 %indvars.iv, i32 1
  %tx_pkts13 = getelementptr %struct.wmi_ap_mode_stat, ptr %ptr, i32 0, i32 1, i32 %indvars.iv, i32 1
  %12 = ptrtoint ptr %tx_pkts13 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %tx_pkts13, align 1
  %14 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pkts, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %13) #15
  %add.i47 = add i32 %16, %17
  %18 = tail call i32 @llvm.bswap.i32(i32 %add.i47) #15
  %19 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_pkts, align 4
  %tx_error = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 58, i32 1, i32 %indvars.iv, i32 2
  %tx_error14 = getelementptr %struct.wmi_ap_mode_stat, ptr %ptr, i32 0, i32 1, i32 %indvars.iv, i32 2
  %20 = ptrtoint ptr %tx_error14 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %tx_error14, align 1
  %22 = ptrtoint ptr %tx_error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_error, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #15
  %25 = tail call i32 @llvm.bswap.i32(i32 %21) #15
  %add.i48 = add i32 %24, %25
  %26 = tail call i32 @llvm.bswap.i32(i32 %add.i48) #15
  %27 = ptrtoint ptr %tx_error to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tx_error, align 4
  %tx_discard = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 58, i32 1, i32 %indvars.iv, i32 3
  %tx_discard15 = getelementptr %struct.wmi_ap_mode_stat, ptr %ptr, i32 0, i32 1, i32 %indvars.iv, i32 3
  %28 = ptrtoint ptr %tx_discard15 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %tx_discard15, align 1
  %30 = ptrtoint ptr %tx_discard to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_discard, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #15
  %33 = tail call i32 @llvm.bswap.i32(i32 %29) #15
  %add.i49 = add i32 %32, %33
  %34 = tail call i32 @llvm.bswap.i32(i32 %add.i49) #15
  %35 = ptrtoint ptr %tx_discard to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tx_discard, align 4
  %rx_bytes = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 58, i32 1, i32 %indvars.iv, i32 4
  %rx_bytes16 = getelementptr %struct.wmi_ap_mode_stat, ptr %ptr, i32 0, i32 1, i32 %indvars.iv, i32 4
  %36 = ptrtoint ptr %rx_bytes16 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %rx_bytes16, align 1
  %38 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_bytes, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #15
  %41 = tail call i32 @llvm.bswap.i32(i32 %37) #15
  %add.i50 = add i32 %40, %41
  %42 = tail call i32 @llvm.bswap.i32(i32 %add.i50) #15
  %43 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rx_bytes, align 4
  %rx_pkts = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 58, i32 1, i32 %indvars.iv, i32 5
  %rx_pkts17 = getelementptr %struct.wmi_ap_mode_stat, ptr %ptr, i32 0, i32 1, i32 %indvars.iv, i32 5
  %44 = ptrtoint ptr %rx_pkts17 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %rx_pkts17, align 1
  %46 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_pkts, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #15
  %49 = tail call i32 @llvm.bswap.i32(i32 %45) #15
  %add.i51 = add i32 %48, %49
  %50 = tail call i32 @llvm.bswap.i32(i32 %add.i51) #15
  %51 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rx_pkts, align 4
  %rx_error = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 58, i32 1, i32 %indvars.iv, i32 6
  %rx_error18 = getelementptr %struct.wmi_ap_mode_stat, ptr %ptr, i32 0, i32 1, i32 %indvars.iv, i32 6
  %52 = ptrtoint ptr %rx_error18 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %rx_error18, align 1
  %54 = ptrtoint ptr %rx_error to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_error, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #15
  %57 = tail call i32 @llvm.bswap.i32(i32 %53) #15
  %add.i52 = add i32 %56, %57
  %58 = tail call i32 @llvm.bswap.i32(i32 %add.i52) #15
  %59 = ptrtoint ptr %rx_error to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rx_error, align 4
  %rx_discard = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 58, i32 1, i32 %indvars.iv, i32 7
  %rx_discard19 = getelementptr %struct.wmi_ap_mode_stat, ptr %ptr, i32 0, i32 1, i32 %indvars.iv, i32 7
  %60 = ptrtoint ptr %rx_discard19 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %rx_discard19, align 1
  %62 = ptrtoint ptr %rx_discard to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_discard, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #15
  %65 = tail call i32 @llvm.bswap.i32(i32 %61) #15
  %add.i53 = add i32 %64, %65
  %66 = tail call i32 @llvm.bswap.i32(i32 %add.i53) #15
  %67 = ptrtoint ptr %rx_discard to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rx_discard, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 237, i32 %len)
  %cmp.i = icmp ult i32 %len, 237
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %target_stats.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.15) #15
  %stats2.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3
  %68 = ptrtoint ptr %stats2.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %stats2.i, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #15
  %conv.i = zext i32 %70 to i64
  %71 = ptrtoint ptr %target_stats.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %target_stats.i, align 8
  %add.i54 = add i64 %72, %conv.i
  store i64 %add.i54, ptr %target_stats.i, align 8
  %byte.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 1
  %73 = ptrtoint ptr %byte.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %byte.i, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #15
  %conv5.i = zext i32 %75 to i64
  %tx_byte.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 1
  %76 = ptrtoint ptr %tx_byte.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %tx_byte.i, align 8
  %add6.i = add i64 %77, %conv5.i
  store i64 %add6.i, ptr %tx_byte.i, align 8
  %ucast_pkt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 2
  %78 = ptrtoint ptr %ucast_pkt.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %ucast_pkt.i, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #15
  %conv9.i = zext i32 %80 to i64
  %tx_ucast_pkt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 2
  %81 = ptrtoint ptr %tx_ucast_pkt.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %tx_ucast_pkt.i, align 8
  %add10.i = add i64 %82, %conv9.i
  store i64 %add10.i, ptr %tx_ucast_pkt.i, align 8
  %ucast_byte.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 3
  %83 = ptrtoint ptr %ucast_byte.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %ucast_byte.i, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #15
  %conv13.i = zext i32 %85 to i64
  %tx_ucast_byte.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 3
  %86 = ptrtoint ptr %tx_ucast_byte.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %tx_ucast_byte.i, align 8
  %add14.i = add i64 %87, %conv13.i
  store i64 %add14.i, ptr %tx_ucast_byte.i, align 8
  %mcast_pkt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 4
  %88 = ptrtoint ptr %mcast_pkt.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %mcast_pkt.i, align 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #15
  %conv17.i = zext i32 %90 to i64
  %tx_mcast_pkt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 4
  %91 = ptrtoint ptr %tx_mcast_pkt.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %tx_mcast_pkt.i, align 8
  %add18.i = add i64 %92, %conv17.i
  store i64 %add18.i, ptr %tx_mcast_pkt.i, align 8
  %mcast_byte.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 5
  %93 = ptrtoint ptr %mcast_byte.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %mcast_byte.i, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #15
  %conv21.i = zext i32 %95 to i64
  %tx_mcast_byte.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 5
  %96 = ptrtoint ptr %tx_mcast_byte.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %tx_mcast_byte.i, align 8
  %add22.i = add i64 %97, %conv21.i
  store i64 %add22.i, ptr %tx_mcast_byte.i, align 8
  %bcast_pkt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 6
  %98 = ptrtoint ptr %bcast_pkt.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %bcast_pkt.i, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #15
  %conv25.i = zext i32 %100 to i64
  %tx_bcast_pkt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 6
  %101 = ptrtoint ptr %tx_bcast_pkt.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %tx_bcast_pkt.i, align 8
  %add26.i = add i64 %102, %conv25.i
  store i64 %add26.i, ptr %tx_bcast_pkt.i, align 8
  %bcast_byte.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 7
  %103 = ptrtoint ptr %bcast_byte.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %bcast_byte.i, align 1
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #15
  %conv29.i = zext i32 %105 to i64
  %tx_bcast_byte.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 7
  %106 = ptrtoint ptr %tx_bcast_byte.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %tx_bcast_byte.i, align 8
  %add30.i = add i64 %107, %conv29.i
  store i64 %add30.i, ptr %tx_bcast_byte.i, align 8
  %rts_success_cnt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 8
  %108 = ptrtoint ptr %rts_success_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %rts_success_cnt.i, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #15
  %conv33.i = zext i32 %110 to i64
  %tx_rts_success_cnt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 8
  %111 = ptrtoint ptr %tx_rts_success_cnt.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %tx_rts_success_cnt.i, align 8
  %add34.i = add i64 %112, %conv33.i
  store i64 %add34.i, ptr %tx_rts_success_cnt.i, align 8
  %arrayidx.i = getelementptr %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 9, i32 0
  %113 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %arrayidx.i, align 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #15
  %conv40.i = zext i32 %115 to i64
  %arrayidx42.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 9, i32 0
  %116 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx42.i, align 8
  %add43.i = add i64 %117, %conv40.i
  store i64 %add43.i, ptr %arrayidx42.i, align 8
  %arrayidx.1.i = getelementptr %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 9, i32 1
  %118 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx.1.i, align 1
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #15
  %conv40.1.i = zext i32 %120 to i64
  %arrayidx42.1.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 9, i32 1
  %121 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx42.1.i, align 8
  %add43.1.i = add i64 %122, %conv40.1.i
  store i64 %add43.1.i, ptr %arrayidx42.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 9, i32 2
  %123 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %arrayidx.2.i, align 1
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #15
  %conv40.2.i = zext i32 %125 to i64
  %arrayidx42.2.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 9, i32 2
  %126 = ptrtoint ptr %arrayidx42.2.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx42.2.i, align 8
  %add43.2.i = add i64 %127, %conv40.2.i
  store i64 %add43.2.i, ptr %arrayidx42.2.i, align 8
  %arrayidx.3.i = getelementptr %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 9, i32 3
  %128 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %arrayidx.3.i, align 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #15
  %conv40.3.i = zext i32 %130 to i64
  %arrayidx42.3.i = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 9, i32 3
  %131 = ptrtoint ptr %arrayidx42.3.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx42.3.i, align 8
  %add43.3.i = add i64 %132, %conv40.3.i
  store i64 %add43.3.i, ptr %arrayidx42.3.i, align 8
  %err.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 11
  %133 = ptrtoint ptr %err.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %err.i, align 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #15
  %conv46.i = zext i32 %135 to i64
  %tx_err.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 10
  %136 = ptrtoint ptr %tx_err.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %tx_err.i, align 8
  %add47.i = add i64 %137, %conv46.i
  store i64 %add47.i, ptr %tx_err.i, align 8
  %fail_cnt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 12
  %138 = ptrtoint ptr %fail_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %fail_cnt.i, align 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #15
  %conv50.i = zext i32 %140 to i64
  %tx_fail_cnt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 11
  %141 = ptrtoint ptr %tx_fail_cnt.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %tx_fail_cnt.i, align 8
  %add51.i = add i64 %142, %conv50.i
  store i64 %add51.i, ptr %tx_fail_cnt.i, align 8
  %retry_cnt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 13
  %143 = ptrtoint ptr %retry_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %retry_cnt.i, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #15
  %conv54.i = zext i32 %145 to i64
  %tx_retry_cnt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 12
  %146 = ptrtoint ptr %tx_retry_cnt.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %tx_retry_cnt.i, align 8
  %add55.i = add i64 %147, %conv54.i
  store i64 %add55.i, ptr %tx_retry_cnt.i, align 8
  %mult_retry_cnt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 14
  %148 = ptrtoint ptr %mult_retry_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %mult_retry_cnt.i, align 1
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #15
  %conv58.i = zext i32 %150 to i64
  %tx_mult_retry_cnt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 13
  %151 = ptrtoint ptr %tx_mult_retry_cnt.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %tx_mult_retry_cnt.i, align 8
  %add59.i = add i64 %152, %conv58.i
  store i64 %add59.i, ptr %tx_mult_retry_cnt.i, align 8
  %rts_fail_cnt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 15
  %153 = ptrtoint ptr %rts_fail_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %rts_fail_cnt.i, align 1
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #15
  %conv62.i = zext i32 %155 to i64
  %tx_rts_fail_cnt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 14
  %156 = ptrtoint ptr %tx_rts_fail_cnt.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %tx_rts_fail_cnt.i, align 8
  %add63.i = add i64 %157, %conv62.i
  store i64 %add63.i, ptr %tx_rts_fail_cnt.i, align 8
  %ucast_rate.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 0, i32 16
  %158 = ptrtoint ptr %ucast_rate.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %ucast_rate.i, align 1
  %160 = lshr i32 %159, 24
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %161 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %wmi.i, align 4
  %conv66.i = trunc i32 %160 to i8
  %call67.i = tail call i32 @ath6kl_wmi_get_rate(ptr noundef %162, i8 noundef signext %conv66.i) #15
  %tx_ucast_rate.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 40
  %163 = ptrtoint ptr %tx_ucast_rate.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call67.i, ptr %tx_ucast_rate.i, align 8
  %rx.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1
  %164 = ptrtoint ptr %rx.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %rx.i, align 1
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #15
  %conv70.i = zext i32 %166 to i64
  %rx_pkt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 15
  %167 = ptrtoint ptr %rx_pkt.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %rx_pkt.i, align 8
  %add71.i = add i64 %168, %conv70.i
  store i64 %add71.i, ptr %rx_pkt.i, align 8
  %byte74.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 1
  %169 = ptrtoint ptr %byte74.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %byte74.i, align 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #15
  %conv75.i = zext i32 %171 to i64
  %rx_byte.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 16
  %172 = ptrtoint ptr %rx_byte.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %rx_byte.i, align 8
  %add76.i = add i64 %173, %conv75.i
  store i64 %add76.i, ptr %rx_byte.i, align 8
  %ucast_pkt79.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 2
  %174 = ptrtoint ptr %ucast_pkt79.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %ucast_pkt79.i, align 1
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #15
  %conv80.i = zext i32 %176 to i64
  %rx_ucast_pkt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 17
  %177 = ptrtoint ptr %rx_ucast_pkt.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %rx_ucast_pkt.i, align 8
  %add81.i = add i64 %178, %conv80.i
  store i64 %add81.i, ptr %rx_ucast_pkt.i, align 8
  %ucast_byte84.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 3
  %179 = ptrtoint ptr %ucast_byte84.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %ucast_byte84.i, align 1
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #15
  %conv85.i = zext i32 %181 to i64
  %rx_ucast_byte.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 18
  %182 = ptrtoint ptr %rx_ucast_byte.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %rx_ucast_byte.i, align 8
  %add86.i = add i64 %183, %conv85.i
  store i64 %add86.i, ptr %rx_ucast_byte.i, align 8
  %mcast_pkt89.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 4
  %184 = ptrtoint ptr %mcast_pkt89.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %mcast_pkt89.i, align 1
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #15
  %conv90.i = zext i32 %186 to i64
  %rx_mcast_pkt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 19
  %187 = ptrtoint ptr %rx_mcast_pkt.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %rx_mcast_pkt.i, align 8
  %add91.i = add i64 %188, %conv90.i
  store i64 %add91.i, ptr %rx_mcast_pkt.i, align 8
  %mcast_byte94.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 5
  %189 = ptrtoint ptr %mcast_byte94.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %mcast_byte94.i, align 1
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #15
  %conv95.i = zext i32 %191 to i64
  %rx_mcast_byte.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 20
  %192 = ptrtoint ptr %rx_mcast_byte.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %rx_mcast_byte.i, align 8
  %add96.i = add i64 %193, %conv95.i
  store i64 %add96.i, ptr %rx_mcast_byte.i, align 8
  %bcast_pkt99.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 6
  %194 = ptrtoint ptr %bcast_pkt99.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %bcast_pkt99.i, align 1
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #15
  %conv100.i = zext i32 %196 to i64
  %rx_bcast_pkt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 21
  %197 = ptrtoint ptr %rx_bcast_pkt.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %rx_bcast_pkt.i, align 8
  %add101.i = add i64 %198, %conv100.i
  store i64 %add101.i, ptr %rx_bcast_pkt.i, align 8
  %bcast_byte104.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 7
  %199 = ptrtoint ptr %bcast_byte104.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %bcast_byte104.i, align 1
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #15
  %conv105.i = zext i32 %201 to i64
  %rx_bcast_byte.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 22
  %202 = ptrtoint ptr %rx_bcast_byte.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %rx_bcast_byte.i, align 8
  %add106.i = add i64 %203, %conv105.i
  store i64 %add106.i, ptr %rx_bcast_byte.i, align 8
  %frgment_pkt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 8
  %204 = ptrtoint ptr %frgment_pkt.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %frgment_pkt.i, align 1
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #15
  %conv109.i = zext i32 %206 to i64
  %rx_frgment_pkt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 23
  %207 = ptrtoint ptr %rx_frgment_pkt.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %rx_frgment_pkt.i, align 8
  %add110.i = add i64 %208, %conv109.i
  store i64 %add110.i, ptr %rx_frgment_pkt.i, align 8
  %err113.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 9
  %209 = ptrtoint ptr %err113.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %err113.i, align 1
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #15
  %conv114.i = zext i32 %211 to i64
  %rx_err.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 24
  %212 = ptrtoint ptr %rx_err.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %rx_err.i, align 8
  %add115.i = add i64 %213, %conv114.i
  store i64 %add115.i, ptr %rx_err.i, align 8
  %crc_err.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 10
  %214 = ptrtoint ptr %crc_err.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %crc_err.i, align 1
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #15
  %conv118.i = zext i32 %216 to i64
  %rx_crc_err.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 25
  %217 = ptrtoint ptr %rx_crc_err.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %rx_crc_err.i, align 8
  %add119.i = add i64 %218, %conv118.i
  store i64 %add119.i, ptr %rx_crc_err.i, align 8
  %key_cache_miss.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 11
  %219 = ptrtoint ptr %key_cache_miss.i to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %220 = load i32, ptr %key_cache_miss.i, align 1
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #15
  %conv122.i = zext i32 %221 to i64
  %rx_key_cache_miss.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 26
  %222 = ptrtoint ptr %rx_key_cache_miss.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %rx_key_cache_miss.i, align 8
  %add123.i = add i64 %223, %conv122.i
  store i64 %add123.i, ptr %rx_key_cache_miss.i, align 8
  %decrypt_err.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 12
  %224 = ptrtoint ptr %decrypt_err.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %decrypt_err.i, align 1
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #15
  %conv126.i = zext i32 %226 to i64
  %rx_decrypt_err.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 27
  %227 = ptrtoint ptr %rx_decrypt_err.i to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %rx_decrypt_err.i, align 8
  %add127.i = add i64 %228, %conv126.i
  store i64 %add127.i, ptr %rx_decrypt_err.i, align 8
  %dupl_frame.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 13
  %229 = ptrtoint ptr %dupl_frame.i to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %230 = load i32, ptr %dupl_frame.i, align 1
  %231 = tail call i32 @llvm.bswap.i32(i32 %230) #15
  %conv130.i = zext i32 %231 to i64
  %rx_dupl_frame.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 28
  %232 = ptrtoint ptr %rx_dupl_frame.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %rx_dupl_frame.i, align 8
  %add131.i = add i64 %233, %conv130.i
  store i64 %add131.i, ptr %rx_dupl_frame.i, align 8
  %ucast_rate134.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 1, i32 14
  %234 = ptrtoint ptr %ucast_rate134.i to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %235 = load i32, ptr %ucast_rate134.i, align 1
  %236 = lshr i32 %235, 24
  %237 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %wmi.i, align 4
  %conv137.i = trunc i32 %236 to i8
  %call138.i = tail call i32 @ath6kl_wmi_get_rate(ptr noundef %238, i8 noundef signext %conv137.i) #15
  %rx_ucast_rate.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 41
  %239 = ptrtoint ptr %rx_ucast_rate.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %call138.i, ptr %rx_ucast_rate.i, align 4
  %tkip_ccmp_stats.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 2
  %240 = ptrtoint ptr %tkip_ccmp_stats.i to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %tkip_ccmp_stats.i, align 1
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #15
  %conv140.i = zext i32 %242 to i64
  %tkip_local_mic_fail141.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 29
  %243 = ptrtoint ptr %tkip_local_mic_fail141.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %tkip_local_mic_fail141.i, align 8
  %add142.i = add i64 %244, %conv140.i
  store i64 %add142.i, ptr %tkip_local_mic_fail141.i, align 8
  %tkip_cnter_measures_invoked.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 2, i32 1
  %245 = ptrtoint ptr %tkip_cnter_measures_invoked.i to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %tkip_cnter_measures_invoked.i, align 1
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #15
  %conv143.i = zext i32 %247 to i64
  %tkip_cnter_measures_invoked144.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 30
  %248 = ptrtoint ptr %tkip_cnter_measures_invoked144.i to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %tkip_cnter_measures_invoked144.i, align 8
  %add145.i = add i64 %249, %conv143.i
  store i64 %add145.i, ptr %tkip_cnter_measures_invoked144.i, align 8
  %tkip_fmt_err.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 2, i32 3
  %250 = ptrtoint ptr %tkip_fmt_err.i to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %251 = load i32, ptr %tkip_fmt_err.i, align 1
  %252 = tail call i32 @llvm.bswap.i32(i32 %251) #15
  %conv146.i = zext i32 %252 to i64
  %tkip_fmt_err147.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 32
  %253 = ptrtoint ptr %tkip_fmt_err147.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %tkip_fmt_err147.i, align 8
  %add148.i = add i64 %254, %conv146.i
  store i64 %add148.i, ptr %tkip_fmt_err147.i, align 8
  %ccmp_fmt_err.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 2, i32 4
  %255 = ptrtoint ptr %ccmp_fmt_err.i to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %256 = load i32, ptr %ccmp_fmt_err.i, align 1
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #15
  %conv149.i = zext i32 %257 to i64
  %ccmp_fmt_err150.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 33
  %258 = ptrtoint ptr %ccmp_fmt_err150.i to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %ccmp_fmt_err150.i, align 8
  %add151.i = add i64 %259, %conv149.i
  store i64 %add151.i, ptr %ccmp_fmt_err150.i, align 8
  %ccmp_replays.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 3, i32 2, i32 5
  %260 = ptrtoint ptr %ccmp_replays.i to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %261 = load i32, ptr %ccmp_replays.i, align 1
  %262 = tail call i32 @llvm.bswap.i32(i32 %261) #15
  %conv152.i = zext i32 %262 to i64
  %ccmp_replays153.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 34
  %263 = ptrtoint ptr %ccmp_replays153.i to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %ccmp_replays153.i, align 8
  %add154.i = add i64 %264, %conv152.i
  store i64 %add154.i, ptr %ccmp_replays153.i, align 8
  %pm_stats.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 2
  %265 = ptrtoint ptr %pm_stats.i to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %266 = load i32, ptr %pm_stats.i, align 1
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #15
  %conv155.i = zext i32 %267 to i64
  %pwr_save_fail_cnt.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 35
  %268 = ptrtoint ptr %pwr_save_fail_cnt.i to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %pwr_save_fail_cnt.i, align 8
  %add156.i = add i64 %269, %conv155.i
  store i64 %add156.i, ptr %pwr_save_fail_cnt.i, align 8
  %noise_floor_calib.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 1
  %270 = ptrtoint ptr %noise_floor_calib.i to i32
  call void @__asan_loadN_noabort(i32 %270, i32 4)
  %271 = load i32, ptr %noise_floor_calib.i, align 1
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #15
  %conv158.i = trunc i32 %272 to i16
  %noise_floor_calib159.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 45
  %273 = ptrtoint ptr %noise_floor_calib159.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %conv158.i, ptr %noise_floor_calib159.i, align 2
  %cserv_stats.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 6
  %274 = ptrtoint ptr %cserv_stats.i to i32
  call void @__asan_loadN_noabort(i32 %274, i32 4)
  %275 = load i32, ptr %cserv_stats.i, align 1
  %276 = tail call i32 @llvm.bswap.i32(i32 %275) #15
  %conv160.i = zext i32 %276 to i64
  %cs_bmiss_cnt161.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 36
  %277 = ptrtoint ptr %cs_bmiss_cnt161.i to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %cs_bmiss_cnt161.i, align 8
  %add162.i = add i64 %278, %conv160.i
  store i64 %add162.i, ptr %cs_bmiss_cnt161.i, align 8
  %cs_low_rssi_cnt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 6, i32 1
  %279 = ptrtoint ptr %cs_low_rssi_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %279, i32 4)
  %280 = load i32, ptr %cs_low_rssi_cnt.i, align 1
  %281 = tail call i32 @llvm.bswap.i32(i32 %280) #15
  %conv164.i = zext i32 %281 to i64
  %cs_low_rssi_cnt165.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 37
  %282 = ptrtoint ptr %cs_low_rssi_cnt165.i to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %cs_low_rssi_cnt165.i, align 8
  %add166.i = add i64 %283, %conv164.i
  store i64 %add166.i, ptr %cs_low_rssi_cnt165.i, align 8
  %cs_connect_cnt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 6, i32 2
  %284 = ptrtoint ptr %cs_connect_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %284, i32 2)
  %285 = load i16, ptr %cs_connect_cnt.i, align 1
  %286 = tail call i16 @llvm.bswap.i16(i16 %285) #15
  %conv168.i = zext i16 %286 to i64
  %cs_connect_cnt169.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 38
  %287 = ptrtoint ptr %cs_connect_cnt169.i to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %cs_connect_cnt169.i, align 8
  %add170.i = add i64 %288, %conv168.i
  store i64 %add170.i, ptr %cs_connect_cnt169.i, align 8
  %cs_discon_cnt.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 6, i32 3
  %289 = ptrtoint ptr %cs_discon_cnt.i to i32
  call void @__asan_loadN_noabort(i32 %289, i32 2)
  %290 = load i16, ptr %cs_discon_cnt.i, align 1
  %291 = tail call i16 @llvm.bswap.i16(i16 %290) #15
  %conv172.i = zext i16 %291 to i64
  %cs_discon_cnt173.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 39
  %292 = ptrtoint ptr %cs_discon_cnt173.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %cs_discon_cnt173.i, align 8
  %add174.i = add i64 %293, %conv172.i
  store i64 %add174.i, ptr %cs_discon_cnt173.i, align 8
  %cs_ave_beacon_rssi.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 6, i32 4
  %294 = ptrtoint ptr %cs_ave_beacon_rssi.i to i32
  call void @__asan_loadN_noabort(i32 %294, i32 2)
  %295 = load i16, ptr %cs_ave_beacon_rssi.i, align 1
  %296 = tail call i16 @llvm.bswap.i16(i16 %295) #15
  %cs_ave_beacon_rssi177.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 47
  %297 = ptrtoint ptr %cs_ave_beacon_rssi177.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %296, ptr %cs_ave_beacon_rssi177.i, align 2
  %cs_last_roam_msec.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 6, i32 9
  %298 = ptrtoint ptr %cs_last_roam_msec.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %cs_last_roam_msec.i, align 1
  %cs_last_roam_msec179.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 49
  %300 = ptrtoint ptr %cs_last_roam_msec179.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %299, ptr %cs_last_roam_msec179.i, align 1
  %cs_snr.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 6, i32 7
  %301 = ptrtoint ptr %cs_snr.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %cs_snr.i, align 1
  %cs_snr181.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 50
  %303 = ptrtoint ptr %cs_snr181.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %302, ptr %cs_snr181.i, align 2
  %cs_rssi.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 6, i32 6
  %304 = ptrtoint ptr %cs_rssi.i to i32
  call void @__asan_loadN_noabort(i32 %304, i32 2)
  %305 = load i16, ptr %cs_rssi.i, align 1
  %306 = tail call i16 @llvm.bswap.i16(i16 %305) #15
  %cs_rssi184.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 46
  %307 = ptrtoint ptr %cs_rssi184.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %306, ptr %cs_rssi184.i, align 4
  %308 = ptrtoint ptr %ptr to i32
  call void @__asan_loadN_noabort(i32 %308, i32 4)
  %309 = load i32, ptr %ptr, align 1
  %310 = tail call i32 @llvm.bswap.i32(i32 %309) #15
  %lq_val185.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 42
  %311 = ptrtoint ptr %lq_val185.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %lq_val185.i, align 8
  %wow_stats.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 4
  %312 = ptrtoint ptr %wow_stats.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 4)
  %313 = load i32, ptr %wow_stats.i, align 1
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #15
  %wow_pkt_dropped186.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 43
  %315 = ptrtoint ptr %wow_pkt_dropped186.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %wow_pkt_dropped186.i, align 4
  %add187.i = add i32 %316, %314
  store i32 %add187.i, ptr %wow_pkt_dropped186.i, align 4
  %wow_host_pkt_wakeups.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 4, i32 2
  %317 = ptrtoint ptr %wow_host_pkt_wakeups.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %wow_host_pkt_wakeups.i, align 1
  %wow_host_pkt_wakeups190.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 51
  %319 = ptrtoint ptr %wow_host_pkt_wakeups190.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %wow_host_pkt_wakeups190.i, align 1
  %add192.i = add i8 %320, %318
  store i8 %add192.i, ptr %wow_host_pkt_wakeups190.i, align 1
  %wow_host_evt_wakeups.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 4, i32 3
  %321 = ptrtoint ptr %wow_host_evt_wakeups.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %wow_host_evt_wakeups.i, align 1
  %wow_host_evt_wakeups196.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 52
  %323 = ptrtoint ptr %wow_host_evt_wakeups196.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %wow_host_evt_wakeups196.i, align 4
  %add198.i = add i8 %324, %322
  store i8 %add198.i, ptr %wow_host_evt_wakeups196.i, align 4
  %wow_evt_discarded.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 4, i32 1
  %325 = ptrtoint ptr %wow_evt_discarded.i to i32
  call void @__asan_loadN_noabort(i32 %325, i32 2)
  %326 = load i16, ptr %wow_evt_discarded.i, align 1
  %327 = tail call i16 @llvm.bswap.i16(i16 %326) #15
  %wow_evt_discarded202.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 44
  %328 = ptrtoint ptr %wow_evt_discarded202.i to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %wow_evt_discarded202.i, align 8
  %add204.i = add i16 %329, %327
  store i16 %add204.i, ptr %wow_evt_discarded202.i, align 8
  %arp_stats.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 5
  %330 = ptrtoint ptr %arp_stats.i to i32
  call void @__asan_loadN_noabort(i32 %330, i32 4)
  %331 = load i32, ptr %arp_stats.i, align 1
  %332 = tail call i32 @llvm.bswap.i32(i32 %331) #15
  %arp_received206.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 53
  %333 = ptrtoint ptr %arp_received206.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %arp_received206.i, align 8
  %arp_replied.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 5, i32 2
  %334 = ptrtoint ptr %arp_replied.i to i32
  call void @__asan_loadN_noabort(i32 %334, i32 4)
  %335 = load i32, ptr %arp_replied.i, align 1
  %336 = tail call i32 @llvm.bswap.i32(i32 %335) #15
  %arp_replied208.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 55
  %337 = ptrtoint ptr %arp_replied208.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %336, ptr %arp_replied208.i, align 8
  %arp_matched.i = getelementptr inbounds %struct.wmi_target_stats, ptr %ptr, i32 0, i32 5, i32 1
  %338 = ptrtoint ptr %arp_matched.i to i32
  call void @__asan_loadN_noabort(i32 %338, i32 4)
  %339 = load i32, ptr %arp_matched.i, align 1
  %340 = tail call i32 @llvm.bswap.i32(i32 %339) #15
  %arp_matched210.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 41, i32 54
  %341 = ptrtoint ptr %arp_matched210.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %arp_matched210.i, align 4
  %flags.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  %342 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load volatile i32, ptr %flags.i, align 4
  %344 = and i32 %343, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool.not.i = icmp eq i32 %344, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then212.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then212.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i) #15
  %event_wq.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 72
  tail call void @__wake_up(ptr noundef %event_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then212.i, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_wakeup_event(ptr noundef %dev) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %dev, i32 0, i32 72
  tail call void @__wake_up(ptr noundef %event_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_txpwr_rx_evt(ptr noundef %devt, i8 noundef zeroext %tx_pwr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pwr1 = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 27
  %0 = ptrtoint ptr %tx_pwr1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %tx_pwr, ptr %tx_pwr1, align 4
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %devt, i32 0, i32 72
  tail call void @__wake_up(ptr noundef %event_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_pspoll_event(ptr nocapture noundef readonly %vif, i8 noundef zeroext %aid) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %aid2.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 0, i32 2
  %2 = ptrtoint ptr %aid2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aid2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %aid)
  %cmp5.i = icmp eq i8 %3, %aid
  br i1 %cmp5.i, label %entry.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.i

entry.ath6kl_find_sta_by_aid.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.i:                                       ; preds = %entry
  %aid2.1.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 1, i32 2
  %4 = ptrtoint ptr %aid2.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aid2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %aid)
  %cmp5.1.i = icmp eq i8 %5, %aid
  br i1 %cmp5.1.i, label %for.cond.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.1.i

for.cond.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %aid2.2.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 2, i32 2
  %6 = ptrtoint ptr %aid2.2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aid2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %aid)
  %cmp5.2.i = icmp eq i8 %7, %aid
  br i1 %cmp5.2.i, label %for.cond.1.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %aid2.3.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 3, i32 2
  %8 = ptrtoint ptr %aid2.3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aid2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %aid)
  %cmp5.3.i = icmp eq i8 %9, %aid
  br i1 %cmp5.3.i, label %for.cond.2.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %aid2.4.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 4, i32 2
  %10 = ptrtoint ptr %aid2.4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %aid2.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %aid)
  %cmp5.4.i = icmp eq i8 %11, %aid
  br i1 %cmp5.4.i, label %for.cond.3.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %aid2.5.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 5, i32 2
  %12 = ptrtoint ptr %aid2.5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aid2.5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %aid)
  %cmp5.5.i = icmp eq i8 %13, %aid
  br i1 %cmp5.5.i, label %for.cond.4.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %aid2.6.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 6, i32 2
  %14 = ptrtoint ptr %aid2.6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %aid2.6.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %aid)
  %cmp5.6.i = icmp eq i8 %15, %aid
  br i1 %cmp5.6.i, label %for.cond.5.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %aid2.7.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 7, i32 2
  %16 = ptrtoint ptr %aid2.7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %aid2.7.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %aid)
  %cmp5.7.i = icmp eq i8 %17, %aid
  br i1 %cmp5.7.i, label %for.cond.6.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %aid2.8.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 8, i32 2
  %18 = ptrtoint ptr %aid2.8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %aid2.8.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %aid)
  %cmp5.8.i = icmp eq i8 %19, %aid
  br i1 %cmp5.8.i, label %for.cond.7.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %aid2.9.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 9, i32 2
  %20 = ptrtoint ptr %aid2.9.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %aid2.9.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %aid)
  %cmp5.9.i = icmp eq i8 %21, %aid
  br i1 %cmp5.9.i, label %for.cond.8.i.ath6kl_find_sta_by_aid.exit_crit_edge, label %for.cond.8.i.cleanup_crit_edge

for.cond.8.i.cleanup_crit_edge:                   ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.8.i.ath6kl_find_sta_by_aid.exit_crit_edge: ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_find_sta_by_aid.exit

ath6kl_find_sta_by_aid.exit:                      ; preds = %for.cond.8.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.7.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.6.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.5.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.4.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.3.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.2.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.1.i.ath6kl_find_sta_by_aid.exit_crit_edge, %for.cond.i.ath6kl_find_sta_by_aid.exit_crit_edge, %entry.ath6kl_find_sta_by_aid.exit_crit_edge
  %conv.lcssa.i = phi i32 [ 0, %entry.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 1, %for.cond.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 2, %for.cond.1.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 3, %for.cond.2.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 4, %for.cond.3.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 5, %for.cond.4.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 6, %for.cond.5.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 7, %for.cond.6.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 8, %for.cond.7.i.ath6kl_find_sta_by_aid.exit_crit_edge ], [ 9, %for.cond.8.i.ath6kl_find_sta_by_aid.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %ath6kl_find_sta_by_aid.exit.cleanup_crit_edge, label %if.end

ath6kl_find_sta_by_aid.exit.cleanup_crit_edge:    ; preds = %ath6kl_find_sta_by_aid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %ath6kl_find_sta_by_aid.exit
  %psq_lock = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #15
  %psq = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i, i32 7
  %22 = ptrtoint ptr %psq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psq, align 4
  %cmp.i.not = icmp eq ptr %23, %psq
  br i1 %cmp.i.not, label %land.rhs, label %if.end7.critedge

land.rhs:                                         ; preds = %if.end
  %mgmt_psq_len = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i, i32 10
  %24 = ptrtoint ptr %mgmt_psq_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mgmt_psq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #15
  br i1 %cmp, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end7_crit_edge

land.rhs.if.end7_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7.critedge:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #15
  br label %if.end7

if.end7:                                          ; preds = %if.end7.critedge, %land.rhs.if.end7_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #15
  %mgmt_psq_len9 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i, i32 10
  %26 = ptrtoint ptr %mgmt_psq_len9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mgmt_psq_len9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10.not = icmp eq i32 %27, 0
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  %mgmt_psq = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i, i32 9
  %28 = ptrtoint ptr %mgmt_psq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mgmt_psq, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del.exit_crit_edge

if.then11.list_del.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then11.list_del.exit_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %38 = ptrtoint ptr %mgmt_psq_len9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mgmt_psq_len9, align 4
  %dec = add i32 %39, -1
  store i32 %dec, ptr %mgmt_psq_len9, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #15
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i, align 4
  %42 = or i16 %41, 4
  store i16 %42, ptr %arrayidx.i, align 4
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %45 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fw_vif_idx, align 8
  %id = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %29, i32 0, i32 3
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  %freq = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %29, i32 0, i32 1
  %49 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %freq, align 4
  %wait = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %29, i32 0, i32 2
  %51 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wait, align 4
  %buf = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %29, i32 0, i32 6
  %len = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %29, i32 0, i32 5
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %conv15 = trunc i32 %54 to i16
  %no_cck = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %29, i32 0, i32 4
  %55 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %no_cck, align 4, !range !70
  %57 = zext i8 %56 to i32
  %call18 = tail call i32 @ath6kl_wmi_send_mgmt_cmd(ptr noundef %44, i8 noundef zeroext %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, ptr noundef %buf, i16 noundef zeroext %conv15, i32 noundef %57) #15
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.i, align 4
  %60 = and i16 %59, -5
  store i16 %60, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %29) #15
  br label %if.end34

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call ptr @skb_dequeue(ptr noundef %psq) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #15
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i, align 4
  %63 = or i16 %62, 4
  store i16 %63, ptr %arrayidx.i, align 4
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %64 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ndev, align 4
  %call29 = tail call i32 @ath6kl_data_tx(ptr noundef %call23, ptr noundef %65) #15
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i, align 4
  %68 = and i16 %67, -5
  store i16 %68, ptr %arrayidx.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %list_del.exit
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #15
  %69 = ptrtoint ptr %psq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %psq, align 4
  %cmp.i91.not = icmp eq ptr %70, %psq
  br i1 %cmp.i91.not, label %land.rhs39, label %if.end53.critedge

land.rhs39:                                       ; preds = %if.end34
  %71 = ptrtoint ptr %mgmt_psq_len9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mgmt_psq_len9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp41 = icmp eq i32 %72, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #15
  br i1 %cmp41, label %if.then47, label %land.rhs39.cleanup_crit_edge

land.rhs39.cleanup_crit_edge:                     ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then47:                                        ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #17
  %wmi48 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %wmi48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wmi48, align 4
  %fw_vif_idx49 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %75 = ptrtoint ptr %fw_vif_idx49 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %fw_vif_idx49, align 8
  %aid50 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %conv.lcssa.i, i32 2
  %77 = ptrtoint ptr %aid50 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %aid50, align 4
  %conv51 = zext i8 %78 to i16
  %call52 = tail call i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef %74, i8 noundef zeroext %76, i16 noundef zeroext %conv51, i1 noundef zeroext false) #15
  br label %cleanup

if.end53.critedge:                                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end53.critedge, %if.then47, %land.rhs39.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %ath6kl_find_sta_by_aid.exit.cleanup_crit_edge, %for.cond.8.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_send_mgmt_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_data_tx(ptr noundef, ptr noundef) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_dtimexpiry_event(ptr noundef %vif) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %sta_list_index = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %sta_list_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sta_list_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcastpsq_lock = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 56
  tail call void @_raw_spin_lock_bh(ptr noundef %mcastpsq_lock) #15
  %mcastpsq = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 52
  %4 = ptrtoint ptr %mcastpsq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcastpsq, align 4
  %cmp.i.not = icmp eq ptr %5, %mcastpsq
  tail call void @_raw_spin_unlock_bh(ptr noundef %mcastpsq_lock) #15
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #15
  tail call void @_raw_spin_lock_bh(ptr noundef %mcastpsq_lock) #15
  %call931 = tail call ptr @skb_dequeue(ptr noundef %mcastpsq) #15
  %cmp.not32 = icmp eq ptr %call931, null
  br i1 %cmp.not32, label %if.end6.while.end_crit_edge, label %while.body.lr.ph

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end6
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call933 = phi ptr [ %call931, %while.body.lr.ph ], [ %call9, %while.body.while.body_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mcastpsq_lock) #15
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %call11 = tail call i32 @ath6kl_data_tx(ptr noundef nonnull %call933, ptr noundef %7) #15
  tail call void @_raw_spin_lock_bh(ptr noundef %mcastpsq_lock) #15
  %call9 = tail call ptr @skb_dequeue(ptr noundef %mcastpsq) #15
  %cmp.not = icmp eq ptr %call9, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end6.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mcastpsq_lock) #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #15
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %10 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_vif_idx, align 8
  %call15 = tail call i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef %9, i8 noundef zeroext %11, i16 noundef zeroext 255, i1 noundef zeroext false) #15
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_disconnect_event(ptr noundef %vif, i8 noundef zeroext %reason, ptr noundef %bssid, i8 noundef zeroext %assoc_resp_len, ptr noundef %assoc_info, i16 noundef zeroext %prot_reason_status) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %2 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp = icmp eq i8 %3, 16
  br i1 %cmp, label %if.then, label %if.end46

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %reason)
  %cmp4 = icmp eq i8 %reason, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 106, i16 %prot_reason_status)
  %cmp7 = icmp eq i16 %prot_reason_status, 106
  %or.cond = and i1 %cmp4, %cmp7
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %4 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_vif_idx, align 8
  %conv10 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv10
  %want_ch_switch = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 53
  %6 = ptrtoint ptr %want_ch_switch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %want_ch_switch, align 4
  %or = or i32 %shl, %7
  store i32 %or, ptr %want_ch_switch, align 4
  %ch = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 42, i32 9
  %8 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ch, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %last_ch = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 54
  %11 = ptrtoint ptr %last_ch to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %last_ch, align 4
  br label %if.end21

if.end:                                           ; preds = %if.then
  %12 = zext i16 %prot_reason_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %prot_reason_status, label %if.end.if.end21_crit_edge [
    i16 104, label %if.then14
    i16 105, label %if.then19
  ]

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  tail call void @cfg80211_conn_failed(ptr noundef %14, ptr noundef %bssid, i32 noundef 0, i32 noundef 3264) #15
  br label %if.end21

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ndev20 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %15 = ptrtoint ptr %ndev20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev20, align 4
  tail call void @cfg80211_conn_failed(ptr noundef %16, ptr noundef %bssid, i32 noundef 1, i32 noundef 3264) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then14, %if.end.if.end21_crit_edge, %if.end.thread
  %17 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bssid, align 4
  %add.ptr.i.i = getelementptr i8, ptr %bssid, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  %or.i.i = or i32 %18, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end21.cleanup_crit_edge, label %if.end.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end21
  %21 = ptrtoint ptr %bssid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bssid, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %bssid, i32 2
  %23 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %22, %20
  %and510.i.i = and i16 %and9.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i49.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i49.i, label %if.then2.i, label %for.body12.preheader.i

for.body12.preheader.i:                           ; preds = %if.end.i
  %mac16.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp19.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp19.i, label %for.body12.preheader.i.if.then21.i_crit_edge, label %for.inc28.i

for.body12.preheader.i.if.then21.i_crit_edge:     ; preds = %for.body12.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

if.then2.i:                                       ; preds = %if.end.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.16) #15
  %mac4.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 0, i32 1
  %25 = ptrtoint ptr %mac4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac4.i, align 4
  %add.ptr.i50.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %add.ptr.i50.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i50.i, align 2
  %conv.i51.i = zext i16 %28 to i32
  %or.i52.i = or i32 %26, %conv.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.i)
  %cmp.i53.i = icmp eq i32 %or.i52.i, 0
  br i1 %cmp.i53.i, label %if.then2.i.for.inc.i_crit_edge, label %if.then6.i

if.then2.i.for.inc.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 0) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.then2.i.for.inc.i_crit_edge
  %removed.1.i = phi i8 [ 0, %if.then2.i.for.inc.i_crit_edge ], [ 1, %if.then6.i ]
  %mac4.1.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 1, i32 1
  %29 = ptrtoint ptr %mac4.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mac4.1.i, align 4
  %add.ptr.i50.1.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 1, i32 1, i32 4
  %31 = ptrtoint ptr %add.ptr.i50.1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i50.1.i, align 2
  %conv.i51.1.i = zext i16 %32 to i32
  %or.i52.1.i = or i32 %30, %conv.i51.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.1.i)
  %cmp.i53.1.i = icmp eq i32 %or.i52.1.i, 0
  br i1 %cmp.i53.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then6.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i

if.then6.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 1) #15
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then6.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %removed.1.1.i = phi i8 [ %removed.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ 1, %if.then6.1.i ]
  %mac4.2.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 2, i32 1
  %33 = ptrtoint ptr %mac4.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mac4.2.i, align 4
  %add.ptr.i50.2.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 2, i32 1, i32 4
  %35 = ptrtoint ptr %add.ptr.i50.2.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i50.2.i, align 2
  %conv.i51.2.i = zext i16 %36 to i32
  %or.i52.2.i = or i32 %34, %conv.i51.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.2.i)
  %cmp.i53.2.i = icmp eq i32 %or.i52.2.i, 0
  br i1 %cmp.i53.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then6.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i

if.then6.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 2) #15
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then6.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %removed.1.2.i = phi i8 [ %removed.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 1, %if.then6.2.i ]
  %mac4.3.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 3, i32 1
  %37 = ptrtoint ptr %mac4.3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mac4.3.i, align 4
  %add.ptr.i50.3.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 3, i32 1, i32 4
  %39 = ptrtoint ptr %add.ptr.i50.3.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i50.3.i, align 2
  %conv.i51.3.i = zext i16 %40 to i32
  %or.i52.3.i = or i32 %38, %conv.i51.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.3.i)
  %cmp.i53.3.i = icmp eq i32 %or.i52.3.i, 0
  br i1 %cmp.i53.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then6.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3.i

if.then6.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 3) #15
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then6.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %removed.1.3.i = phi i8 [ %removed.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ 1, %if.then6.3.i ]
  %mac4.4.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 4, i32 1
  %41 = ptrtoint ptr %mac4.4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mac4.4.i, align 4
  %add.ptr.i50.4.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 4, i32 1, i32 4
  %43 = ptrtoint ptr %add.ptr.i50.4.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i50.4.i, align 2
  %conv.i51.4.i = zext i16 %44 to i32
  %or.i52.4.i = or i32 %42, %conv.i51.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.4.i)
  %cmp.i53.4.i = icmp eq i32 %or.i52.4.i, 0
  br i1 %cmp.i53.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then6.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4.i

if.then6.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 4) #15
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then6.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %removed.1.4.i = phi i8 [ %removed.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ], [ 1, %if.then6.4.i ]
  %mac4.5.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 5, i32 1
  %45 = ptrtoint ptr %mac4.5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mac4.5.i, align 4
  %add.ptr.i50.5.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 5, i32 1, i32 4
  %47 = ptrtoint ptr %add.ptr.i50.5.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i50.5.i, align 2
  %conv.i51.5.i = zext i16 %48 to i32
  %or.i52.5.i = or i32 %46, %conv.i51.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.5.i)
  %cmp.i53.5.i = icmp eq i32 %or.i52.5.i, 0
  br i1 %cmp.i53.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then6.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5.i

if.then6.5.i:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 5) #15
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then6.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %removed.1.5.i = phi i8 [ %removed.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ], [ 1, %if.then6.5.i ]
  %mac4.6.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 6, i32 1
  %49 = ptrtoint ptr %mac4.6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mac4.6.i, align 4
  %add.ptr.i50.6.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 6, i32 1, i32 4
  %51 = ptrtoint ptr %add.ptr.i50.6.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i50.6.i, align 2
  %conv.i51.6.i = zext i16 %52 to i32
  %or.i52.6.i = or i32 %50, %conv.i51.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.6.i)
  %cmp.i53.6.i = icmp eq i32 %or.i52.6.i, 0
  br i1 %cmp.i53.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then6.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6.i

if.then6.6.i:                                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 6) #15
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then6.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %removed.1.6.i = phi i8 [ %removed.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ], [ 1, %if.then6.6.i ]
  %mac4.7.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 7, i32 1
  %53 = ptrtoint ptr %mac4.7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mac4.7.i, align 4
  %add.ptr.i50.7.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 7, i32 1, i32 4
  %55 = ptrtoint ptr %add.ptr.i50.7.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i50.7.i, align 2
  %conv.i51.7.i = zext i16 %56 to i32
  %or.i52.7.i = or i32 %54, %conv.i51.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.7.i)
  %cmp.i53.7.i = icmp eq i32 %or.i52.7.i, 0
  br i1 %cmp.i53.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.then6.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.7.i

if.then6.7.i:                                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 7) #15
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then6.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %removed.1.7.i = phi i8 [ %removed.1.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ], [ 1, %if.then6.7.i ]
  %mac4.8.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 8, i32 1
  %57 = ptrtoint ptr %mac4.8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mac4.8.i, align 4
  %add.ptr.i50.8.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 8, i32 1, i32 4
  %59 = ptrtoint ptr %add.ptr.i50.8.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i50.8.i, align 2
  %conv.i51.8.i = zext i16 %60 to i32
  %or.i52.8.i = or i32 %58, %conv.i51.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.8.i)
  %cmp.i53.8.i = icmp eq i32 %or.i52.8.i, 0
  br i1 %cmp.i53.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %if.then6.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.8.i

if.then6.8.i:                                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext 8) #15
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then6.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %removed.1.8.i = phi i8 [ %removed.1.7.i, %for.inc.7.i.for.inc.8.i_crit_edge ], [ 1, %if.then6.8.i ]
  %mac4.9.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 9, i32 1
  %61 = ptrtoint ptr %mac4.9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mac4.9.i, align 4
  %add.ptr.i50.9.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 9, i32 1, i32 4
  %63 = ptrtoint ptr %add.ptr.i50.9.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr.i50.9.i, align 2
  %conv.i51.9.i = zext i16 %64 to i32
  %or.i52.9.i = or i32 %62, %conv.i51.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.9.i)
  %cmp.i53.9.i = icmp eq i32 %or.i52.9.i, 0
  br i1 %cmp.i53.9.i, label %ath6kl_remove_sta.exit, label %for.inc.8.i.ath6kl_remove_sta.exit.thread174_crit_edge

for.inc.8.i.ath6kl_remove_sta.exit.thread174_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ath6kl_remove_sta.exit.thread174

if.then21.i:                                      ; preds = %for.inc28.8.i.if.then21.i_crit_edge, %for.inc28.7.i.if.then21.i_crit_edge, %for.inc28.6.i.if.then21.i_crit_edge, %for.inc28.5.i.if.then21.i_crit_edge, %for.inc28.4.i.if.then21.i_crit_edge, %for.inc28.3.i.if.then21.i_crit_edge, %for.inc28.2.i.if.then21.i_crit_edge, %for.inc28.1.i.if.then21.i_crit_edge, %for.inc28.i.if.then21.i_crit_edge, %for.body12.preheader.i.if.then21.i_crit_edge
  %i.156.lcssa.wide.i = phi i32 [ 0, %for.body12.preheader.i.if.then21.i_crit_edge ], [ 1, %for.inc28.i.if.then21.i_crit_edge ], [ 2, %for.inc28.1.i.if.then21.i_crit_edge ], [ 3, %for.inc28.2.i.if.then21.i_crit_edge ], [ 4, %for.inc28.3.i.if.then21.i_crit_edge ], [ 5, %for.inc28.4.i.if.then21.i_crit_edge ], [ 6, %for.inc28.5.i.if.then21.i_crit_edge ], [ 7, %for.inc28.6.i.if.then21.i_crit_edge ], [ 8, %for.inc28.7.i.if.then21.i_crit_edge ], [ 9, %for.inc28.8.i.if.then21.i_crit_edge ]
  %65 = trunc i32 %i.156.lcssa.wide.i to i8
  %aid.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 %i.156.lcssa.wide.i, i32 2
  %66 = ptrtoint ptr %aid.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %aid.i, align 4
  %conv25.i = zext i8 %67 to i32
  %conv26.i = zext i16 %prot_reason_status to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.17, ptr noundef %bssid, i32 noundef %conv25.i, i32 noundef %conv26.i) #15
  br label %ath6kl_remove_sta.exit.thread174

for.inc28.i:                                      ; preds = %for.body12.preheader.i
  %mac16.1.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 1, i32 1
  %bcmp.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.1.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1.i)
  %cmp19.1.i = icmp eq i32 %bcmp.1.i, 0
  br i1 %cmp19.1.i, label %for.inc28.i.if.then21.i_crit_edge, label %for.inc28.1.i

for.inc28.i.if.then21.i_crit_edge:                ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

for.inc28.1.i:                                    ; preds = %for.inc28.i
  %mac16.2.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 2, i32 1
  %bcmp.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.2.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2.i)
  %cmp19.2.i = icmp eq i32 %bcmp.2.i, 0
  br i1 %cmp19.2.i, label %for.inc28.1.i.if.then21.i_crit_edge, label %for.inc28.2.i

for.inc28.1.i.if.then21.i_crit_edge:              ; preds = %for.inc28.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

for.inc28.2.i:                                    ; preds = %for.inc28.1.i
  %mac16.3.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 3, i32 1
  %bcmp.3.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.3.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3.i)
  %cmp19.3.i = icmp eq i32 %bcmp.3.i, 0
  br i1 %cmp19.3.i, label %for.inc28.2.i.if.then21.i_crit_edge, label %for.inc28.3.i

for.inc28.2.i.if.then21.i_crit_edge:              ; preds = %for.inc28.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

for.inc28.3.i:                                    ; preds = %for.inc28.2.i
  %mac16.4.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 4, i32 1
  %bcmp.4.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.4.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4.i)
  %cmp19.4.i = icmp eq i32 %bcmp.4.i, 0
  br i1 %cmp19.4.i, label %for.inc28.3.i.if.then21.i_crit_edge, label %for.inc28.4.i

for.inc28.3.i.if.then21.i_crit_edge:              ; preds = %for.inc28.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

for.inc28.4.i:                                    ; preds = %for.inc28.3.i
  %mac16.5.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 5, i32 1
  %bcmp.5.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.5.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5.i)
  %cmp19.5.i = icmp eq i32 %bcmp.5.i, 0
  br i1 %cmp19.5.i, label %for.inc28.4.i.if.then21.i_crit_edge, label %for.inc28.5.i

for.inc28.4.i.if.then21.i_crit_edge:              ; preds = %for.inc28.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

for.inc28.5.i:                                    ; preds = %for.inc28.4.i
  %mac16.6.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 6, i32 1
  %bcmp.6.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.6.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.6.i)
  %cmp19.6.i = icmp eq i32 %bcmp.6.i, 0
  br i1 %cmp19.6.i, label %for.inc28.5.i.if.then21.i_crit_edge, label %for.inc28.6.i

for.inc28.5.i.if.then21.i_crit_edge:              ; preds = %for.inc28.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

for.inc28.6.i:                                    ; preds = %for.inc28.5.i
  %mac16.7.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 7, i32 1
  %bcmp.7.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.7.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.7.i)
  %cmp19.7.i = icmp eq i32 %bcmp.7.i, 0
  br i1 %cmp19.7.i, label %for.inc28.6.i.if.then21.i_crit_edge, label %for.inc28.7.i

for.inc28.6.i.if.then21.i_crit_edge:              ; preds = %for.inc28.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

for.inc28.7.i:                                    ; preds = %for.inc28.6.i
  %mac16.8.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 8, i32 1
  %bcmp.8.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.8.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.8.i)
  %cmp19.8.i = icmp eq i32 %bcmp.8.i, 0
  br i1 %cmp19.8.i, label %for.inc28.7.i.if.then21.i_crit_edge, label %for.inc28.8.i

for.inc28.7.i.if.then21.i_crit_edge:              ; preds = %for.inc28.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

for.inc28.8.i:                                    ; preds = %for.inc28.7.i
  %mac16.9.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 48, i32 9, i32 1
  %bcmp.9.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac16.9.i, ptr noundef dereferenceable(6) %bssid, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.9.i)
  %cmp19.9.i = icmp eq i32 %bcmp.9.i, 0
  br i1 %cmp19.9.i, label %for.inc28.8.i.if.then21.i_crit_edge, label %for.inc28.8.i.cleanup_crit_edge

for.inc28.8.i.cleanup_crit_edge:                  ; preds = %for.inc28.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc28.8.i.if.then21.i_crit_edge:              ; preds = %for.inc28.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

ath6kl_remove_sta.exit.thread174:                 ; preds = %if.then21.i, %for.inc.8.i.ath6kl_remove_sta.exit.thread174_crit_edge
  %.sink.i = phi i8 [ %65, %if.then21.i ], [ 9, %for.inc.8.i.ath6kl_remove_sta.exit.thread174_crit_edge ]
  tail call fastcc void @ath6kl_sta_cleanup(ptr noundef %1, i8 noundef zeroext %.sink.i) #15
  br label %if.end23

ath6kl_remove_sta.exit:                           ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %removed.1.8.i)
  %tobool.not = icmp eq i8 %removed.1.8.i, 0
  br i1 %tobool.not, label %ath6kl_remove_sta.exit.cleanup_crit_edge, label %ath6kl_remove_sta.exit.if.end23_crit_edge

ath6kl_remove_sta.exit.if.end23_crit_edge:        ; preds = %ath6kl_remove_sta.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

ath6kl_remove_sta.exit.cleanup_crit_edge:         ; preds = %ath6kl_remove_sta.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %ath6kl_remove_sta.exit.if.end23_crit_edge, %ath6kl_remove_sta.exit.thread174
  %sta_list_index = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 49
  %68 = ptrtoint ptr %sta_list_index to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sta_list_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp25 = icmp eq i8 %69, 0
  br i1 %cmp25, label %if.then27, label %if.end23.if.end35_crit_edge

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then27:                                        ; preds = %if.end23
  %mcastpsq_lock = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 56
  tail call void @_raw_spin_lock_bh(ptr noundef %mcastpsq_lock) #15
  %mcastpsq = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 52
  tail call void @skb_queue_purge(ptr noundef %mcastpsq) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %mcastpsq_lock) #15
  %flag = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %70 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flag, align 4
  %72 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool30.not = icmp eq i32 %72, 0
  br i1 %tobool30.not, label %if.then27.if.end35_crit_edge, label %if.then31

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wmi, align 4
  %fw_vif_idx32 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %75 = ptrtoint ptr %fw_vif_idx32 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %fw_vif_idx32, align 8
  %call33 = tail call i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef %74, i8 noundef zeroext %76, i16 noundef zeroext 255, i1 noundef zeroext false) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.then27.if.end35_crit_edge, %if.end23.if.end35_crit_edge
  %77 = ptrtoint ptr %bssid to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %bssid, align 2
  %79 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i = and i16 %80, %78
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i, align 2
  %and510.i = and i16 %and9.i, %82
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %ndev38 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %83 = ptrtoint ptr %ndev38 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ndev38, align 4
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %84, ptr noundef %bssid, ptr noundef null, i32 noundef 3264) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %ndev40 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %85 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ndev40, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 86
  %87 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_addr, align 64
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %88, ptr noundef dereferenceable(6) %bssid, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp42 = icmp eq i32 %bcmp, 0
  br i1 %cmp42, label %if.then44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %wep_key_list = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 22
  %89 = call ptr @memset(ptr %wep_key_list, i32 0, i32 264)
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #15
  br label %cleanup

if.end46:                                         ; preds = %entry
  tail call void @ath6kl_cfg80211_disconnect_event(ptr noundef %vif, i8 noundef zeroext %reason, ptr noundef %bssid, i8 noundef zeroext %assoc_resp_len, ptr noundef %assoc_info, i16 noundef zeroext %prot_reason_status) #15
  %aggr_cntxt = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 24
  %90 = ptrtoint ptr %aggr_cntxt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %aggr_cntxt, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  tail call void @aggr_reset_state(ptr noundef %93) #15
  %disconnect_timer = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 26
  %call47 = tail call i32 @del_timer(ptr noundef %disconnect_timer) #15
  %conv48 = zext i8 %reason to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.12, i32 noundef %conv48) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %reason)
  %cmp50 = icmp eq i8 %reason, 3
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end46
  %usr_bss_filter = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 46
  %94 = ptrtoint ptr %usr_bss_filter to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %usr_bss_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool53.not = icmp eq i8 %95, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %if.then52.if.end84_crit_edge

if.then52.if.end84_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

land.lhs.true54:                                  ; preds = %if.then52
  %flag55 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %96 = ptrtoint ptr %flag55 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %flag55, align 4
  %98 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool57.not = icmp eq i32 %98, 0
  br i1 %tobool57.not, label %land.lhs.true54.if.end84_crit_edge, label %if.then58

land.lhs.true54.if.end84_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #17
  %wmi59 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %99 = ptrtoint ptr %wmi59 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wmi59, align 4
  %fw_vif_idx60 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %101 = ptrtoint ptr %fw_vif_idx60 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %fw_vif_idx60, align 8
  %call61 = tail call i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %100, i8 noundef zeroext %102, i8 noundef zeroext 0, i32 noundef 0) #15
  br label %if.end84

if.else:                                          ; preds = %if.end46
  %flags63 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags63) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %reason)
  %cmp65 = icmp eq i8 %reason, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %prot_reason_status)
  %cmp69 = icmp eq i16 %prot_reason_status, 17
  %or.cond167 = and i1 %cmp65, %cmp69
  br i1 %or.cond167, label %if.else.if.then81_crit_edge, label %lor.lhs.false

if.else.if.then81_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then81

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %prot_reason_status)
  %cmp76 = icmp eq i16 %prot_reason_status, 0
  %or.cond168 = and i1 %cmp65, %cmp76
  br i1 %or.cond168, label %land.lhs.true78, label %lor.lhs.false.if.end84_crit_edge

lor.lhs.false.if.end84_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

land.lhs.true78:                                  ; preds = %lor.lhs.false
  %reconnect_flag = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 30
  %103 = ptrtoint ptr %reconnect_flag to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reconnect_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp79 = icmp eq i32 %104, 1
  br i1 %cmp79, label %land.lhs.true78.if.then81_crit_edge, label %land.lhs.true78.if.end84_crit_edge

land.lhs.true78.if.end84_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

land.lhs.true78.if.then81_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then81

if.then81:                                        ; preds = %land.lhs.true78.if.then81_crit_edge, %if.else.if.then81_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags63) #15
  br label %cleanup

if.end84:                                         ; preds = %land.lhs.true78.if.end84_crit_edge, %lor.lhs.false.if.end84_crit_edge, %if.then58, %land.lhs.true54.if.end84_crit_edge, %if.then52.if.end84_crit_edge
  %last_ch85 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 54
  %105 = ptrtoint ptr %last_ch85 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %last_ch85, align 4
  tail call fastcc void @ath6kl_check_ch_switch(ptr noundef %1, i16 noundef zeroext %106)
  %if_lock = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %if_lock) #15
  %flags86 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags86) #15
  %ndev87 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %107 = ptrtoint ptr %ndev87 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ndev87, align 4
  tail call void @netif_carrier_off(ptr noundef %108) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %if_lock) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %reason)
  %cmp90.not = icmp eq i8 %reason, 8
  %reconnect_flag93 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 30
  br i1 %cmp90.not, label %lor.lhs.false92, label %if.then102.critedge

lor.lhs.false92:                                  ; preds = %if.end84
  %109 = ptrtoint ptr %reconnect_flag93 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reconnect_flag93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp94.not = icmp eq i32 %110, 1
  br i1 %cmp94.not, label %lor.lhs.false92.if.end103_crit_edge, label %lor.lhs.false92.if.end103.sink.split_crit_edge

lor.lhs.false92.if.end103.sink.split_crit_edge:   ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.sink.split

lor.lhs.false92.if.end103_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103

if.then102.critedge:                              ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  %111 = ptrtoint ptr %reconnect_flag93 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %reconnect_flag93, align 4
  %user_key_ctrl = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 45
  br label %if.end103.sink.split

if.end103.sink.split:                             ; preds = %if.then102.critedge, %lor.lhs.false92.if.end103.sink.split_crit_edge
  %reconnect_flag93.sink = phi ptr [ %user_key_ctrl, %if.then102.critedge ], [ %reconnect_flag93, %lor.lhs.false92.if.end103.sink.split_crit_edge ]
  %112 = ptrtoint ptr %reconnect_flag93.sink to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %reconnect_flag93.sink, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end103.sink.split, %lor.lhs.false92.if.end103_crit_edge
  %113 = ptrtoint ptr %ndev87 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ndev87, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 103
  %115 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %116, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %bssid105 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 18
  %117 = call ptr @memset(ptr %bssid105, i32 0, i32 6)
  %bss_ch = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 21
  %118 = ptrtoint ptr %bss_ch to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %bss_ch, align 4
  tail call void @ath6kl_tx_data_cleanup(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then81, %if.then44, %if.end39.cleanup_crit_edge, %ath6kl_remove_sta.exit.cleanup_crit_edge, %for.inc28.8.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_conn_failed(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_disconnect_event(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_tx_data_cleanup(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_vif_first(ptr noundef %ar) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %list_lock = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #15
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %0 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vif_list, align 4
  %cmp.i.not = icmp eq ptr %1, %vif_list
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #15
  %. = select i1 %cmp.i.not, ptr null, ptr %1
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_netdev(ptr nocapture noundef %dev) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ath6kl_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %3 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %needs_free_netdev, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %4 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %watchdog_timeo, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 50, ptr %needed_headroom, align 8
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %6 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %fw_capabilities, align 4
  %8 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %9 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hw_features, align 8
  %or = or i64 %10, 1099511627778
  store i64 %or, ptr %hw_features, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @aggr_conn_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_ie_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_ap_profile_commit(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #9 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #9 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_get_rate(ptr noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_sta_cleanup(ptr noundef %ar, i8 noundef zeroext %i) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %i to i32
  %psq_lock = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock) #15
  %psq = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 7
  tail call void @skb_queue_purge(ptr noundef %psq) #15
  %apsdq = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 12
  tail call void @skb_queue_purge(ptr noundef %apsdq) #15
  %mgmt_psq_len = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 10
  %0 = ptrtoint ptr %mgmt_psq_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mgmt_psq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %mgmt_psq = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 9
  %2 = ptrtoint ptr %mgmt_psq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgmt_psq, align 4
  %cmp9.not47 = icmp eq ptr %3, %mgmt_psq
  br i1 %cmp9.not47, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %entry1.048 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %3, %if.then.for.body_crit_edge ]
  %4 = ptrtoint ptr %entry1.048 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %entry1.048, align 4
  tail call void @kfree(ptr noundef %entry1.048) #15
  %cmp9.not = icmp eq ptr %tmp.0, %mgmt_psq
  br i1 %cmp9.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %5 = ptrtoint ptr %mgmt_psq to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %mgmt_psq, ptr %mgmt_psq, align 4
  %prev.i = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 9, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mgmt_psq, ptr %prev.i, align 4
  %7 = ptrtoint ptr %mgmt_psq_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mgmt_psq_len, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock) #15
  %aid = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 2
  %8 = ptrtoint ptr %aid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aid, align 4
  %conv = zext i8 %9 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx19 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 58, i32 1, i32 %sub
  %10 = call ptr @memset(ptr %arrayidx19, i32 0, i32 36)
  %wpa_ie = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 6
  %11 = call ptr @memset(ptr %wpa_ie, i32 0, i32 256)
  %sta_list_index = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 49
  %12 = call ptr @memset(ptr %arrayidx, i32 0, i32 9)
  %13 = ptrtoint ptr %sta_list_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sta_list_index, align 4
  %shl = shl nuw i32 1, %idxprom
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv24 = and i8 %14, %16
  store i8 %conv24, ptr %sta_list_index, align 4
  %aggr_conn = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 %idxprom, i32 13
  %17 = ptrtoint ptr %aggr_conn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aggr_conn, align 4
  tail call void @aggr_reset_state(ptr noundef %18) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_open(ptr noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 3332
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #15
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_on(ptr noundef %dev) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %3) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_close(ptr noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call void @ath6kl_cfg80211_stop(ptr noundef %add.ptr.i) #15
  %flags = getelementptr i8, ptr %dev, i32 3332
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_set_multicast_list(ptr noundef %ndev) #8 align 64 {
entry:
  %mc_filter_new = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter_new) #15
  %2 = getelementptr inbounds %struct.list_head, ptr %mc_filter_new, i32 0, i32 1
  %ar = getelementptr i8, ptr %ndev, i32 3280
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 8
  %flag = getelementptr inbounds %struct.ath6kl, ptr %4, i32 0, i32 75
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr i8, ptr %ndev, i32 3332
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags4 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags4, align 8
  %13 = and i32 %12, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp sgt i32 %1, 7
  %spec.select = select i1 %14, i1 true, i1 %cmp
  br i1 %spec.select, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #15
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #15
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %15 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ar, align 8
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %16, i32 0, i32 87
  %17 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %fw_capabilities, align 4
  %19 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  %brmerge = select i1 %tobool18.not, i1 true, i1 %spec.select
  %not.tobool18.not = xor i1 %tobool18.not, true
  %spec.select.mux = select i1 %not.tobool18.not, i1 true, i1 %spec.select
  br i1 %brmerge, label %if.end15.if.end26_crit_edge, label %lor.rhs21

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

lor.rhs21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %state = getelementptr inbounds %struct.ath6kl, ptr %16, i32 0, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp23 = icmp eq i32 %21, 1
  br label %if.end26

if.end26:                                         ; preds = %lor.rhs21, %if.end15.if.end26_crit_edge
  %mc_all_on.0.in = phi i1 [ %spec.select.mux, %if.end15.if.end26_crit_edge ], [ %cmp23, %lor.rhs21 ]
  %22 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags4, align 8
  %and28 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end34.thread, label %if.end34

if.end34.thread:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #15
  br label %24

if.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #15
  %spec.select282 = select i1 %mc_all_on.0.in, ptr @.str.19, ptr @.str.20
  br label %24

24:                                               ; preds = %if.end34, %if.end34.thread
  %mc_all_on.1.off0280 = phi i1 [ false, %if.end34.thread ], [ %mc_all_on.0.in, %if.end34 ]
  %25 = phi ptr [ @.str.20, %if.end34.thread ], [ %spec.select282, %if.end34 ]
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.18, ptr noundef nonnull %25) #15
  %26 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ar, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %ndev, i32 3328
  %30 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fw_vif_idx, align 8
  %call38 = tail call i32 @ath6kl_wmi_mcast_filter_cmd(ptr noundef %29, i8 noundef zeroext %31, i1 noundef zeroext %mc_all_on.1.off0280) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %24
  call void @__sanitizer_cov_trace_pc() #17
  %cond42 = select i1 %mc_all_on.1.off0280, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.21, ptr noundef nonnull %cond42) #15
  br label %cleanup

if.end43:                                         ; preds = %24
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %34 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool46.not = icmp eq i32 %34, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %mc_filter49 = getelementptr i8, ptr %ndev, i32 4472
  %35 = ptrtoint ptr %mc_filter49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mc_filter49, align 8
  %cmp57.not285 = icmp eq ptr %36, %mc_filter49
  br i1 %cmp57.not285, label %if.end48.for.end106_crit_edge, label %if.end48.for.cond65.preheader_crit_edge

if.end48.for.cond65.preheader_crit_edge:          ; preds = %if.end48
  br label %for.cond65.preheader

if.end48.for.end106_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end106

for.cond65.preheader:                             ; preds = %for.inc100.for.cond65.preheader_crit_edge, %if.end48.for.cond65.preheader_crit_edge
  %mc_filter.0286 = phi ptr [ %tmp.0288, %for.inc100.for.cond65.preheader_crit_edge ], [ %36, %if.end48.for.cond65.preheader_crit_edge ]
  %37 = ptrtoint ptr %mc_filter.0286 to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp.0288 = load ptr, ptr %mc_filter.0286, align 4
  %hw_addr = getelementptr inbounds %struct.ath6kl_mc_filter, ptr %mc_filter.0286, i32 0, i32 1
  br label %for.cond65

for.cond65:                                       ; preds = %for.body71.for.cond65_crit_edge, %for.cond65.preheader
  %ha.0.in = phi ptr [ %ha.0, %for.body71.for.cond65_crit_edge ], [ %mc, %for.cond65.preheader ]
  %38 = ptrtoint ptr %ha.0.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %ha.0 = load ptr, ptr %ha.0.in, align 4
  %cmp69.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp69.not, label %if.then84.critedge, label %for.body71

for.body71:                                       ; preds = %for.cond65
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2
  %bcmp265 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %hw_addr, i32 6) #18
  %cmp75 = icmp eq i32 %bcmp265, 0
  br i1 %cmp75, label %for.body71.for.inc100_crit_edge, label %for.body71.for.cond65_crit_edge

for.body71.for.cond65_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond65

for.body71.for.inc100_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc100

if.then84.critedge:                               ; preds = %for.cond65
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.24, ptr noundef %hw_addr) #15
  %39 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ar, align 8
  %wmi88 = getelementptr inbounds %struct.ath6kl, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %wmi88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wmi88, align 4
  %43 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fw_vif_idx, align 8
  %call92 = tail call i32 @ath6kl_wmi_add_del_mcast_filter_cmd(ptr noundef %42, i8 noundef zeroext %44, ptr noundef %hw_addr, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end97, label %if.then94

if.then94:                                        ; preds = %if.then84.critedge
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.25, ptr noundef %hw_addr) #15
  br label %cleanup

if.end97:                                         ; preds = %if.then84.critedge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mc_filter.0286) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end97.list_del.exit_crit_edge

if.end97.list_del.exit_crit_edge:                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mc_filter.0286, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %mc_filter.0286 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mc_filter.0286, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end97.list_del.exit_crit_edge
  %51 = ptrtoint ptr %mc_filter.0286 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_filter.0286, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mc_filter.0286, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mc_filter.0286) #15
  br label %for.inc100

for.inc100:                                       ; preds = %list_del.exit, %for.body71.for.inc100_crit_edge
  %cmp57.not = icmp eq ptr %tmp.0288, %mc_filter49
  br i1 %cmp57.not, label %for.inc100.for.end106_crit_edge, label %for.inc100.for.cond65.preheader_crit_edge

for.inc100.for.cond65.preheader_crit_edge:        ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond65.preheader

for.inc100.for.end106_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end106

for.end106:                                       ; preds = %for.inc100.for.end106_crit_edge, %if.end48.for.end106_crit_edge
  %53 = ptrtoint ptr %mc_filter_new to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %mc_filter_new, ptr %mc_filter_new, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %mc_filter_new, ptr %2, align 4
  %55 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %55)
  %ha.1289 = load ptr, ptr %mc, align 4
  %cmp117.not290 = icmp eq ptr %ha.1289, %mc
  br i1 %cmp117.not290, label %for.end106.out_crit_edge, label %for.end106.for.cond125.preheader_crit_edge

for.end106.for.cond125.preheader_crit_edge:       ; preds = %for.end106
  br label %for.cond125.preheader

for.end106.out_crit_edge:                         ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond125.preheader:                            ; preds = %for.inc190.for.cond125.preheader_crit_edge, %for.end106.for.cond125.preheader_crit_edge
  %ha.1291 = phi ptr [ %ha.1, %for.inc190.for.cond125.preheader_crit_edge ], [ %ha.1289, %for.end106.for.cond125.preheader_crit_edge ]
  %addr131 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1291, i32 0, i32 2
  br label %for.cond125

for.cond125:                                      ; preds = %for.body130.for.cond125_crit_edge, %for.cond125.preheader
  %mc_filter.1.in = phi ptr [ %mc_filter.1, %for.body130.for.cond125_crit_edge ], [ %mc_filter49, %for.cond125.preheader ]
  %56 = ptrtoint ptr %mc_filter.1.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %mc_filter.1 = load ptr, ptr %mc_filter.1.in, align 4
  %cmp128.not = icmp eq ptr %mc_filter.1, %mc_filter49
  br i1 %cmp128.not, label %if.then147.critedge, label %for.body130

for.body130:                                      ; preds = %for.cond125
  %hw_addr133 = getelementptr inbounds %struct.ath6kl_mc_filter, ptr %mc_filter.1, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %addr131, ptr noundef dereferenceable(6) %hw_addr133, i32 6) #18
  %cmp136 = icmp eq i32 %bcmp, 0
  br i1 %cmp136, label %for.body130.for.inc190_crit_edge, label %for.body130.for.cond125_crit_edge

for.body130.for.cond125_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond125

for.body130.for.inc190_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc190

if.then147.critedge:                              ; preds = %for.cond125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 2848, i32 noundef 16) #19
  %tobool149.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool149.not, label %do.end, label %if.end170

do.end:                                           ; preds = %if.then147.critedge
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1255, i32 noundef 9, ptr noundef null) #15
  br label %out

if.end170:                                        ; preds = %if.then147.critedge
  %hw_addr171 = getelementptr inbounds %struct.ath6kl_mc_filter, ptr %call7.i.i, i32 0, i32 1
  %58 = call ptr @memcpy(ptr %hw_addr171, ptr %addr131, i32 6)
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.26, ptr noundef %hw_addr171) #15
  %59 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ar, align 8
  %wmi178 = getelementptr inbounds %struct.ath6kl, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %wmi178 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wmi178, align 4
  %63 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fw_vif_idx, align 8
  %call182 = call i32 @ath6kl_wmi_add_del_mcast_filter_cmd(ptr noundef %62, i8 noundef zeroext %64, ptr noundef %hw_addr171, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end187, label %if.then184

if.then184:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.27, ptr noundef %hw_addr171) #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %out

if.end187:                                        ; preds = %if.end170
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %2, align 4
  %call.i.i275 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %66, ptr noundef nonnull %mc_filter_new) #15
  br i1 %call.i.i275, label %if.end.i.i276, label %if.end187.for.inc190_crit_edge

if.end187.for.inc190_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc190

if.end.i.i276:                                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %2, align 4
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %mc_filter_new, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call7.i.i, ptr %66, align 4
  br label %for.inc190

for.inc190:                                       ; preds = %if.end.i.i276, %if.end187.for.inc190_crit_edge, %for.body130.for.inc190_crit_edge
  %71 = ptrtoint ptr %ha.1291 to i32
  call void @__asan_load4_noabort(i32 %71)
  %ha.1 = load ptr, ptr %ha.1291, align 4
  %cmp117.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp117.not, label %for.inc190.out_crit_edge, label %for.inc190.for.cond125.preheader_crit_edge

for.inc190.for.cond125.preheader_crit_edge:       ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond125.preheader

for.inc190.out_crit_edge:                         ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %for.inc190.out_crit_edge, %if.then184, %do.end, %for.end106.out_crit_edge
  %72 = ptrtoint ptr %mc_filter_new to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %mc_filter_new, align 4
  %cmp.i.not.i = icmp eq ptr %73, %mc_filter_new
  br i1 %cmp.i.not.i, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i277 = getelementptr i8, ptr %ndev, i32 4476
  %74 = ptrtoint ptr %prev.i277 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i277, align 4
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %2, align 4
  %prev3.i.i278 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i278 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i278, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %73, ptr %75, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %mc_filter49, ptr %77, align 4
  store ptr %77, ptr %prev.i277, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %if.then94, %if.end43.cleanup_crit_edge, %if.then40, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter_new) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_set_features(ptr nocapture noundef %dev, i64 noundef %features) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %and = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %rx_meta_ver13 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %rx_meta_ver13 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_meta_ver13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp15 = icmp eq i8 %3, 2
  br i1 %tobool.not, label %land.lhs.true12.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp15, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %rx_meta_ver13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %rx_meta_ver13, align 4
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %7 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_vif_idx, align 8
  %call5 = tail call i32 @ath6kl_wmi_set_rx_frame_format_cmd(ptr noundef %6, i8 noundef zeroext %8, i8 noundef zeroext 2, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.then7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %and8 = and i64 %features, -1099511627777
  br label %cleanup.sink.split

land.lhs.true12.critedge:                         ; preds = %entry
  br i1 %cmp15, label %if.then17, label %land.lhs.true12.critedge.cleanup_crit_edge

land.lhs.true12.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true12.critedge
  %9 = ptrtoint ptr %rx_meta_ver13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rx_meta_ver13, align 4
  %wmi19 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %wmi19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wmi19, align 4
  %fw_vif_idx20 = getelementptr i8, ptr %dev, i32 3328
  %12 = ptrtoint ptr %fw_vif_idx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_vif_idx20, align 8
  %call22 = tail call i32 @ath6kl_wmi_set_rx_frame_format_cmd(ptr noundef %11, i8 noundef zeroext %13, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then17.cleanup_crit_edge, label %if.then24

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i64 %features, 1099511627776
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then24, %if.then7
  %or.sink = phi i64 [ %or, %if.then24 ], [ %and8, %if.then7 ]
  %retval.0.ph = phi i32 [ %call22, %if.then24 ], [ %call5, %if.then7 ]
  %features25 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %14 = ptrtoint ptr %features25 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or.sink, ptr %features25, align 16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then17.cleanup_crit_edge, %land.lhs.true12.critedge.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true12.critedge.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_stop(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_mcast_filter_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_add_del_mcast_filter_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_rx_frame_format_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 209, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 228, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 241, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 293, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 383, i32 34}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 400, i32 7}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 409, i32 8}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 431, i32 29}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 536, i32 6}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 546, i32 5}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 574, i32 34}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 692, i32 7}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1032, i32 34}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 622, i32 15}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 600, i32 14}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 716, i32 29}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 125, i32 30}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 137, i32 9}
!36 = !{ptr @ath6kl_netdev_ops, !37, !"ath6kl_netdev_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1283, i32 36}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1192, i32 29}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1193, i32 18}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1193, i32 31}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1198, i32 15}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1199, i32 20}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1199, i32 31}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1223, i32 8}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1229, i32 17}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1263, i32 8}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath6kl/main.c", i32 1269, i32 17}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{!"auto-init"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i8 0, i8 2}
