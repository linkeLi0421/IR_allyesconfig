; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wcn36xx/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wcn36xx/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wcn36xx_hal_supported_rates = type <{ i32, [4 x i16], [8 x i16], [3 x i16], i16, i32, [16 x i8], i16 }>
%struct.wcn36xx_hal_supported_rates_v1 = type <{ i32, [4 x i16], [8 x i16], [3 x i16], i16, i32, [16 x i8], i16, i16, i16, i16, i16 }>
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.153, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.153 = type { i32, i16 }
%struct.wcn36xx = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, [4 x i32], i8, [65 x i8], [65 x i8], i8, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, %struct.mutex, %struct.completion, ptr, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, ptr, %struct.mutex, i8, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.spinlock, i8, %struct.wcn36xx_dxe_mem_pool, %struct.wcn36xx_dxe_mem_pool, ptr, %struct.timer_list, %struct.sk_buff_head, i32, %struct.wcn36xx_dfs_entry }
%struct.wcn36xx_dxe_ch = type { %struct.spinlock, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.wcn36xx_dxe_mem_pool = type { i32, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.wcn36xx_dfs_entry = type { ptr, %struct.wcn36xx_dfs_file, %struct.wcn36xx_dfs_file }
%struct.wcn36xx_dfs_file = type { ptr, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.149, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.149 = type { i64, i64, i8 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.wcn36xx_vif = type { %struct.list_head, i8, i32, i8, i8, %struct.wcn36xx_hal_mac_ssid, i32, i32, i8, i8, i8, i8, [2 x %struct.in6_addr], [1 x i32], i32, %struct.anon.165, %struct.list_head, i32 }
%struct.wcn36xx_hal_mac_ssid = type { i8, [32 x i8] }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon.165 = type { [16 x i8], [16 x i8], i64, i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.154, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.154 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.155] }
%struct.anon.155 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.wcn36xx_hal_rcv_flt_mc_addr_list_type = type <{ i8, i32, [240 x [6 x i8]], i8 }>
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.wcn36xx_sta = type { %struct.list_head, ptr, i16, i16, i8, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_supported_rates_v1, %struct.spinlock, [16 x i32], i32 }
%struct.cfg80211_gtk_rekey_data = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }

@__param_str_debug_mask = internal constant [19 x i8] c"wcn36xx.debug_mask\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@wcn36xx_dbg_mask = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @wcn36xx_dbg_mask } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype490 = internal constant [33 x i8] c"wcn36xx.parmtype=debug_mask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask491 = internal constant [39 x i8] c"wcn36xx.parm=debug_mask:Debugging mask\00", section ".modinfo", align 1
@__const.wcn36xx_set_default_rates.ofdm_rates = private unnamed_addr constant [8 x i16] [i16 12, i16 18, i16 24, i16 36, i16 48, i16 72, i16 96, i16 108], align 2
@__initcall__kmod_wcn36xx__493_1658_wcn36xx_driver_init6 = internal global ptr @wcn36xx_driver_init, section ".initcall6.init", align 4
@wcn36xx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wcn36xx_probe, ptr @wcn36xx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wcn36xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wcn36xx_driver_exit = internal global ptr @wcn36xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file494 = internal constant [54 x i8] c"wcn36xx.file=drivers/net/wireless/ath/wcn36xx/wcn36xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license495 = internal constant [29 x i8] c"wcn36xx.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author496 = internal constant [53 x i8] c"wcn36xx.author=Eugene Krasnikov k.eugene.e@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware497 = internal constant [51 x i8] c"wcn36xx.firmware=wlan/prima/WCNSS_qcom_wlan_nv.bin\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wcn36xx\00", [24 x i8] zeroinitializer }, align 32
@wcn36xx_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcnss-wlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017wcn36xx: platform probe\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcn36xx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/wcn36xx/main.c\00", [56 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry_ptr = internal global ptr @wcn36xx_probe._entry, section ".printk_index", align 4
@wcn36xx_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @wcn36xx_tx, ptr @wcn36xx_start, ptr @wcn36xx_stop, ptr @wcn36xx_suspend, ptr @wcn36xx_resume, ptr null, ptr @wcn36xx_add_interface, ptr null, ptr @wcn36xx_remove_interface, ptr @wcn36xx_config, ptr @wcn36xx_bss_info_changed, ptr null, ptr null, ptr @wcn36xx_prepare_multicast, ptr @wcn36xx_configure_filter, ptr null, ptr null, ptr @wcn36xx_set_key, ptr null, ptr @wcn36xx_set_rekey_data, ptr null, ptr @wcn36xx_hw_scan, ptr @wcn36xx_cancel_hw_scan, ptr null, ptr null, ptr @wcn36xx_sw_scan_start, ptr @wcn36xx_sw_scan_complete, ptr null, ptr null, ptr null, ptr @wcn36xx_set_rts_threshold, ptr @wcn36xx_sta_add, ptr @wcn36xx_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wcn36xx_ampdu_action, ptr null, ptr null, ptr null, ptr @wcn36xx_tm_cmd, ptr null, ptr @wcn36xx_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wcn36xx_ipv6_addr_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013wcn36xx: ERROR failed to alloc hw\0A\00", [59 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry_ptr.6 = internal global ptr @wcn36xx_probe._entry.4, section ".printk_index", align 4
@wcn36xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&wcn->conf_mutex\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&wcn->hal_mutex\00", [16 x i8] zeroinitializer }, align 32
@wcn36xx_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&wcn->scan_lock\00", [16 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013wcn36xx: ERROR failed to set DMA mask: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry_ptr.14 = internal global ptr @wcn36xx_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wlan/prima/WCNSS_qcom_wlan_nv.bin\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013wcn36xx: ERROR failed to read \22firmware-name\22 property: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry_ptr.19 = internal global ptr @wcn36xx_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CTRL\00", [22 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013wcn36xx: ERROR failed to open WLAN_CTRL channel\0A\00", [45 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry_ptr.23 = internal global ptr @wcn36xx_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"local-mac-address\00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wcn36xx: ERROR invalid local-mac-address\0A\00", [52 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry_ptr.27 = internal global ptr @wcn36xx_probe._entry.25, section ".printk_index", align 4
@wcn36xx_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016wcn36xx: mac address: %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_probe._entry_ptr.30 = internal global ptr @wcn36xx_probe._entry.28, section ".printk_index", align 4
@wcn36xx_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017wcn36xx: mac start\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcn36xx_start\00", [18 x i8] zeroinitializer }, align 32
@wcn36xx_start._entry_ptr = internal global ptr @wcn36xx_start._entry, section ".printk_index", align 4
@wcn36xx_start._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wcn36xx: ERROR Failed to open smd channel: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_start._entry_ptr.35 = internal global ptr @wcn36xx_start._entry.33, section ".printk_index", align 4
@wcn36xx_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013wcn36xx: ERROR Failed to alloc DXE mempool: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_start._entry_ptr.38 = internal global ptr @wcn36xx_start._entry.36, section ".printk_index", align 4
@wcn36xx_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wcn36xx: ERROR Failed to alloc DXE ctl blocks: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_start._entry_ptr.41 = internal global ptr @wcn36xx_start._entry.39, section ".printk_index", align 4
@wcn36xx_start._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wcn36xx: ERROR Failed to push NV to chip\0A\00", [52 x i8] zeroinitializer }, align 32
@wcn36xx_start._entry_ptr.44 = internal global ptr @wcn36xx_start._entry.42, section ".printk_index", align 4
@wcn36xx_start._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.3, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013wcn36xx: ERROR Failed to start chip\0A\00", [57 x i8] zeroinitializer }, align 32
@wcn36xx_start._entry_ptr.47 = internal global ptr @wcn36xx_start._entry.45, section ".printk_index", align 4
@wcn36xx_start._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014wcn36xx: WARNING Exchange feature caps failed\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_start._entry_ptr.50 = internal global ptr @wcn36xx_start._entry.48, section ".printk_index", align 4
@wcn36xx_start._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.32, ptr @.str.3, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013wcn36xx: ERROR DXE init failed\0A\00", [62 x i8] zeroinitializer }, align 32
@wcn36xx_start._entry_ptr.53 = internal global ptr @wcn36xx_start._entry.51, section ".printk_index", align 4
@wcn36xx_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wcn->dxe_lock\00", [17 x i8] zeroinitializer }, align 32
@wcn36xx_feat_caps_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017wcn36xx: FW Cap %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcn36xx_feat_caps_info\00", [41 x i8] zeroinitializer }, align 32
@wcn36xx_feat_caps_info._entry_ptr = internal global ptr @wcn36xx_feat_caps_info._entry, section ".printk_index", align 4
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@wcn36xx_caps_names = internal constant { [61 x ptr], [44 x i8] } { [61 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MCC\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"P2P\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DOT11AC\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SLM_SESSIONIZATION\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DOT11AC_OPMODE\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SAP32STA\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TDLS\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"P2P_GO_NOA_DECOUPLE_INIT_SCAN\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WLANACTIVE_OFFLOAD\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BEACON_OFFLOAD\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SCAN_OFFLOAD\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ROAM_OFFLOAD\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCN_MISS_OFFLOAD\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STA_POWERSAVE\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"STA_ADVANCED_PWRSAVE\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AP_UAPSD\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AP_DFS\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BLOCKACK\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PHY_ERR\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCN_FILTER\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTT\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RATECTRL\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WOW\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WLAN_ROAM_SCAN_OFFLOAD\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SPECULATIVE_PS_POLL\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCAN_SCH\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IBSS_HEARTBEAT_OFFLOAD\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WLAN_SCAN_OFFLOAD\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WLAN_PERIODIC_TX_PTRN\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADVANCE_TDLS\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BATCH_SCAN\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FW_IN_TX_PATH\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EXTENDED_NSOFFLOAD_SLOT\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CH_SWITCH_V1\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HT40_OBSS_SCAN\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"UPDATE_CHANNEL_LIST\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WLAN_MCADDR_FLT\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WLAN_CH144\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NAN\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TDLS_SCAN_COEXISTENCE\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LINK_LAYER_STATS_MEAS\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MU_MIMO\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EXTENDED_SCAN\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DYNAMIC_WMM_PS\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAC_SPOOFED_SCAN\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BMU_ERROR_GENERIC_RECOVERY\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DISA\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FW_STATS\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WPS_PRBRSP_TMPL\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCN_IE_FLT_DELTA\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TDLS_OFF_CHANNEL\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RTT3\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MGMT_FRAME_LOGGING\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ENHANCED_TXBD_COMPLETION\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LOGGING_ENHANCEMENT\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EXT_SCAN_ENHANCED\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MEMORY_DUMP_SUPPORTED\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PER_PKT_STATS_SUPPORTED\00", [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EXT_LL_STAT\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WIFI_CONFIG\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ANTENNA_DIVERSITY_SELECTION\00", [36 x i8] zeroinitializer }, align 32
@wcn36xx_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017wcn36xx: mac stop\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wcn36xx_stop\00", [19 x i8] zeroinitializer }, align 32
@wcn36xx_stop._entry_ptr = internal global ptr @wcn36xx_stop._entry, section ".printk_index", align 4
@__const.wcn36xx_stop.scan_info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@wcn36xx_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017wcn36xx: mac suspend\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wcn36xx_suspend\00", [16 x i8] zeroinitializer }, align 32
@wcn36xx_suspend._entry_ptr = internal global ptr @wcn36xx_suspend._entry, section ".printk_index", align 4
@wcn36xx_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017wcn36xx: mac resume\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcn36xx_resume\00", [17 x i8] zeroinitializer }, align 32
@wcn36xx_resume._entry_ptr = internal global ptr @wcn36xx_resume._entry, section ".printk_index", align 4
@wcn36xx_add_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017wcn36xx: mac add interface vif %p type %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcn36xx_add_interface\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_add_interface._entry_ptr = internal global ptr @wcn36xx_add_interface._entry, section ".printk_index", align 4
@wcn36xx_add_interface._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.3, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014wcn36xx: WARNING Unsupported interface type requested: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wcn36xx_add_interface._entry_ptr.129 = internal global ptr @wcn36xx_add_interface._entry.127, section ".printk_index", align 4
@wcn36xx_remove_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017wcn36xx: mac remove interface vif %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_remove_interface\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_remove_interface._entry_ptr = internal global ptr @wcn36xx_remove_interface._entry, section ".printk_index", align 4
@wcn36xx_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017wcn36xx: mac config changed 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcn36xx_config\00", [17 x i8] zeroinitializer }, align 32
@wcn36xx_config._entry_ptr = internal global ptr @wcn36xx_config._entry, section ".printk_index", align 4
@wcn36xx_config._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.3, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017wcn36xx: wcn36xx_config channel switch=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@wcn36xx_config._entry_ptr.136 = internal global ptr @wcn36xx_config._entry.134, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017wcn36xx: mac bss info changed vif %p changed 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_bss_info_changed\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr = internal global ptr @wcn36xx_bss_info_changed._entry, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.3, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017wcn36xx: mac bss changed dtim period %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.141 = internal global ptr @wcn36xx_bss_info_changed._entry.139, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.3, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017wcn36xx: mac bss changed_bssid %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.144 = internal global ptr @wcn36xx_bss_info_changed._entry.142, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.138, ptr @.str.3, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017wcn36xx: mac bss changed ssid\0A\00", [63 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.147 = internal global ptr @wcn36xx_bss_info_changed._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcn36xx: ssid \00", [17 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.138, ptr @.str.3, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017wcn36xx: mac assoc bss %pM vif %pM AID=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.152 = internal global ptr @wcn36xx_bss_info_changed._entry.150, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.138, ptr @.str.3, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013wcn36xx: ERROR sta %pM is not found\0A\00", [57 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.155 = internal global ptr @wcn36xx_bss_info_changed._entry.153, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.138, ptr @.str.3, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017wcn36xx: disassociated bss %pM vif %pM AID=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.158 = internal global ptr @wcn36xx_bss_info_changed._entry.156, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.138, ptr @.str.3, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017wcn36xx: mac bss changed ap probe resp\0A\00", [54 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.161 = internal global ptr @wcn36xx_bss_info_changed._entry.159, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.138, ptr @.str.3, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wcn36xx: ERROR failed to alloc probereq skb\0A\00", [49 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.164 = internal global ptr @wcn36xx_bss_info_changed._entry.162, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.138, ptr @.str.3, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017wcn36xx: mac bss changed beacon enabled %d\0A\00", [50 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.167 = internal global ptr @wcn36xx_bss_info_changed._entry.165, section ".printk_index", align 4
@wcn36xx_bss_info_changed._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.138, ptr @.str.3, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013wcn36xx: ERROR failed to alloc beacon skb\0A\00", [51 x i8] zeroinitializer }, align 32
@wcn36xx_bss_info_changed._entry_ptr.170 = internal global ptr @wcn36xx_bss_info_changed._entry.168, section ".printk_index", align 4
@wcn_2ghz_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 130, i16 130 }, %struct.ieee80211_rate { i32 1, i16 20, i16 132, i16 132 }, %struct.ieee80211_rate { i32 1, i16 55, i16 139, i16 139 }, %struct.ieee80211_rate { i32 1, i16 110, i16 150, i16 150 }, %struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 12 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 18 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 24 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 36 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 48 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 72 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 96 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 108 }], [48 x i8] zeroinitializer }, align 32
@wcn_5ghz_rates = internal global { [8 x %struct.ieee80211_rate], [32 x i8] } { [8 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 12 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 18 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 24 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 36 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 48 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 72 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 96 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 108 }], [32 x i8] zeroinitializer }, align 32
@wcn36xx_prepare_multicast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.3, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017wcn36xx: mac prepare multicast list\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_prepare_multicast\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_prepare_multicast._entry_ptr = internal global ptr @wcn36xx_prepare_multicast._entry, section ".printk_index", align 4
@wcn36xx_prepare_multicast._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.3, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wcn36xx: ERROR Out of memory setting filters.\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_prepare_multicast._entry_ptr.175 = internal global ptr @wcn36xx_prepare_multicast._entry.173, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wcn36xx_configure_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017wcn36xx: mac configure filter\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_configure_filter\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_configure_filter._entry_ptr = internal global ptr @wcn36xx_configure_filter._entry, section ".printk_index", align 4
@wcn36xx_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017wcn36xx: mac80211 set key\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wcn36xx_set_key\00", [16 x i8] zeroinitializer }, align 32
@wcn36xx_set_key._entry_ptr = internal global ptr @wcn36xx_set_key._entry, section ".printk_index", align 4
@wcn36xx_set_key._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.3, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017wcn36xx: Key: cmd=0x%x algo:0x%x, id:%d, len:%d flags 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@wcn36xx_set_key._entry_ptr.182 = internal global ptr @wcn36xx_set_key._entry.180, section ".printk_index", align 4
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcn36xx: KEY: \00", [17 x i8] zeroinitializer }, align 32
@wcn36xx_set_key._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.179, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wcn36xx: ERROR Unsupported key type 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@wcn36xx_set_key._entry_ptr.186 = internal global ptr @wcn36xx_set_key._entry.184, section ".printk_index", align 4
@wcn36xx_set_key._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.179, ptr @.str.3, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wcn36xx: ERROR Unsupported key cmd 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@wcn36xx_set_key._entry_ptr.189 = internal global ptr @wcn36xx_set_key._entry.187, section ".printk_index", align 4
@wcn36xx_hw_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.3, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wcn36xx: WARNING Offload scan aborted, n_channels=%u\00", [41 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wcn36xx_hw_scan\00", [16 x i8] zeroinitializer }, align 32
@wcn36xx_hw_scan._entry_ptr = internal global ptr @wcn36xx_hw_scan._entry, section ".printk_index", align 4
@wcn36xx_sw_scan_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017wcn36xx: sw_scan_start\00", [39 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wcn36xx_sw_scan_start\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_sw_scan_start._entry_ptr = internal global ptr @wcn36xx_sw_scan_start._entry, section ".printk_index", align 4
@wcn36xx_sw_scan_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.3, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017wcn36xx: sw_scan_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_sw_scan_complete\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_sw_scan_complete._entry_ptr = internal global ptr @wcn36xx_sw_scan_complete._entry, section ".printk_index", align 4
@wcn36xx_set_rts_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.3, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017wcn36xx: mac set RTS threshold %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcn36xx_set_rts_threshold\00", [38 x i8] zeroinitializer }, align 32
@wcn36xx_set_rts_threshold._entry_ptr = internal global ptr @wcn36xx_set_rts_threshold._entry, section ".printk_index", align 4
@wcn36xx_sta_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.3, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017wcn36xx: mac sta add vif %p sta %pM\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wcn36xx_sta_add\00", [16 x i8] zeroinitializer }, align 32
@wcn36xx_sta_add._entry_ptr = internal global ptr @wcn36xx_sta_add._entry, section ".printk_index", align 4
@wcn36xx_sta_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.200 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sta_priv->ampdu_lock\00", [42 x i8] zeroinitializer }, align 32
@wcn36xx_sta_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.3, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017wcn36xx: mac sta remove vif %p sta %pM index %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcn36xx_sta_remove\00", [45 x i8] zeroinitializer }, align 32
@wcn36xx_sta_remove._entry_ptr = internal global ptr @wcn36xx_sta_remove._entry, section ".printk_index", align 4
@wcn36xx_ampdu_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.3, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017wcn36xx: mac ampdu action action %d tid %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wcn36xx_ampdu_action\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_ampdu_action._entry_ptr = internal global ptr @wcn36xx_ampdu_action._entry, section ".printk_index", align 4
@wcn36xx_ampdu_action._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str.3, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017wcn36xx: mac ampdu ssn = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_ampdu_action._entry_ptr.207 = internal global ptr @wcn36xx_ampdu_action._entry.205, section ".printk_index", align 4
@wcn36xx_ampdu_action._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.204, ptr @.str.3, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017wcn36xx: mac ampdu fw-ssn = %u\0A\00", [62 x i8] zeroinitializer }, align 32
@wcn36xx_ampdu_action._entry_ptr.210 = internal global ptr @wcn36xx_ampdu_action._entry.208, section ".printk_index", align 4
@wcn36xx_ampdu_action._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.204, ptr @.str.3, i32 1282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013wcn36xx: ERROR Unknown AMPDU action\0A\00", [57 x i8] zeroinitializer }, align 32
@wcn36xx_ampdu_action._entry_ptr.213 = internal global ptr @wcn36xx_ampdu_action._entry.211, section ".printk_index", align 4
@wcn36xx_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.3, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wcn36xx: ERROR Failed to flush hardware tx queues\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcn36xx_flush\00", [18 x i8] zeroinitializer }, align 32
@wcn36xx_flush._entry_ptr = internal global ptr @wcn36xx_flush._entry, section ".printk_index", align 4
@wcn36xx_ipv6_addr_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.3, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017wcn36xx: %pI6 %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcn36xx_ipv6_addr_change\00", [39 x i8] zeroinitializer }, align 32
@wcn36xx_ipv6_addr_change._entry_ptr = internal global ptr @wcn36xx_ipv6_addr_change._entry, section ".printk_index", align 4
@.str.218 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tentative\00", [22 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.3, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013wcn36xx: ERROR failed to get tx_irq\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wcn36xx_platform_get_resources\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry_ptr = internal global ptr @wcn36xx_platform_get_resources._entry, section ".printk_index", align 4
@.str.222 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.221, ptr @.str.3, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013wcn36xx: ERROR failed to get rx_irq\0A\00", [57 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry_ptr.225 = internal global ptr @wcn36xx_platform_get_resources._entry.223, section ".printk_index", align 4
@.str.226 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx-enable\00", [22 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.221, ptr @.str.3, i32 1473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wcn36xx: ERROR failed to get tx-enable state\0A\00", [48 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry_ptr.229 = internal global ptr @wcn36xx_platform_get_resources._entry.227, section ".printk_index", align 4
@.str.230 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx-rings-empty\00", [17 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.221, ptr @.str.3, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wcn36xx: ERROR failed to get tx-rings-empty state\0A\00", [43 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry_ptr.233 = internal global ptr @wcn36xx_platform_get_resources._entry.231, section ".printk_index", align 4
@.str.234 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom,mmio\00", [22 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.221, ptr @.str.3, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wcn36xx: ERROR failed to acquire qcom,mmio reference\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry_ptr.237 = internal global ptr @wcn36xx_platform_get_resources._entry.235, section ".printk_index", align 4
@.str.238 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom,pronto\00", [20 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ccu\00", [28 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.221, ptr @.str.3, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wcn36xx: ERROR failed to map ccu memory\0A\00", [53 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry_ptr.243 = internal global ptr @wcn36xx_platform_get_resources._entry.241, section ".printk_index", align 4
@.str.244 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dxe\00", [28 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.221, ptr @.str.3, i32 1506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wcn36xx: ERROR failed to map dxe memory\0A\00", [53 x i8] zeroinitializer }, align 32
@wcn36xx_platform_get_resources._entry_ptr.247 = internal global ptr @wcn36xx_platform_get_resources._entry.245, section ".printk_index", align 4
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iris\00", [27 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,wcn3620\00", [19 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,wcn3680\00", [19 x i8] zeroinitializer }, align 32
@wcn36xx_init_ieee80211.cipher_suites = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076], [16 x i8] zeroinitializer }, align 32
@wowlan_support = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@wcn_2ghz_channels = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@wcn_band_2ghz = internal global { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @wcn_2ghz_channels, ptr @wcn_2ghz_rates, i32 0, i32 14, i32 12, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 -28558, i8 1, i8 3, i8 7, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 18432, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@wcn_5ghz_channels = internal global { [25 x %struct.ieee80211_channel], [328 x i8] } { [25 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 1, i32 5180, i16 0, i16 1828, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5200, i16 0, i16 2088, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5220, i16 0, i16 2348, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5240, i16 0, i16 2608, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5260, i16 0, i16 1844, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5280, i16 0, i16 2104, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5300, i16 0, i16 2364, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5320, i16 0, i16 2624, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5500, i16 0, i16 1892, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5520, i16 0, i16 2152, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5540, i16 0, i16 2412, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5560, i16 0, i16 2672, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5580, i16 0, i16 1908, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5600, i16 0, i16 2168, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5620, i16 0, i16 2428, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5640, i16 0, i16 2688, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5660, i16 0, i16 1924, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5680, i16 0, i16 2184, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5700, i16 0, i16 2444, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5720, i16 0, i16 2704, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5745, i16 0, i16 1941, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5765, i16 0, i16 2201, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5785, i16 0, i16 2461, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5805, i16 0, i16 2721, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5825, i16 0, i16 165, i32 0, i32 0, i32 25, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [328 x i8] zeroinitializer }, align 32
@wcn_band_5ghz = internal global { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @wcn_5ghz_channels, ptr @wcn_5ghz_rates, i32 0, i32 25, i32 8, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 -28558, i8 1, i8 3, i8 7, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 -27136, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@wcn36xx_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.254, ptr @.str.3, i32 1621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017wcn36xx: platform remove\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcn36xx_remove\00", [17 x i8] zeroinitializer }, align 32
@wcn36xx_remove._entry_ptr = internal global ptr @wcn36xx_remove._entry, section ".printk_index", align 4
@switch.table.wcn36xx_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 1, i32 4, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.257 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"wcn36xx_dbg_mask\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 32, i32 14 }
@___asan_gen_.261 = private unnamed_addr constant [15 x i8] c"wcn36xx_driver\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1649, i32 31 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1653, i32 13 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"wcn36xx_of_match\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1643, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1539, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [12 x i8] c"wcn36xx_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1329, i32 35 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1545, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1554, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1555, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1556, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1567, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1571, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1572, i32 59 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1574, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1578, i32 52 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1580, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1585, i32 44 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1587, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1591, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 281, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 286, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 293, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 299, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 305, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 311, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 318, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 326, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 333, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 272, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 262, i32 10 }
@___asan_gen_.420 = private unnamed_addr constant [19 x i8] c"wcn36xx_caps_names\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 195, i32 27 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 196, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 197, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 198, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 199, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 200, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 201, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 202, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 203, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 204, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 205, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 206, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 207, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 208, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 209, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 210, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 211, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 212, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 213, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 214, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 215, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 216, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 217, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 218, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 219, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 220, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 221, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 222, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 223, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 224, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 225, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 226, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 227, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 228, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 229, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 230, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 231, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 232, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 233, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 234, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 235, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 236, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 237, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 238, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 239, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 240, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 241, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 242, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 243, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 244, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 245, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 246, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 247, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 248, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 249, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 250, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 251, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 252, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 253, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 254, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 255, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 256, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 353, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1136, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1173, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1039, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1046, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1023, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 407, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 413, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 848, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 854, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 862, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 884, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 886, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 901, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 917, i32 5 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 941, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 955, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 958, i32 4 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 968, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 980, i32 5 }
@___asan_gen_.747 = private unnamed_addr constant [15 x i8] c"wcn_2ghz_rates\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 105, i32 30 }
@___asan_gen_.750 = private unnamed_addr constant [15 x i8] c"wcn_5ghz_rates\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 120, i32 30 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 502, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 505, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 475, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 548, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 549, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 552, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 572, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 656, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 682, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 725, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 741, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1009, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1069, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1074, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1100, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1227, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1252, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1254, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1282, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1325, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1310, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1454, i32 59 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1456, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1462, i32 59 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1464, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1471, i32 4 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1473, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1479, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1481, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1485, i32 58 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1487, i32 3 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1491, i32 56 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1494, i32 46 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1494, i32 59 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1497, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1503, i32 59 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1506, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1512, i32 46 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1514, i32 42 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1516, i32 42 }
@___asan_gen_.996 = private unnamed_addr constant [14 x i8] c"cipher_suites\00", align 1
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1392, i32 19 }
@___asan_gen_.999 = private unnamed_addr constant [15 x i8] c"wowlan_support\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 179, i32 42 }
@___asan_gen_.1002 = private unnamed_addr constant [18 x i8] c"wcn_2ghz_channels\00", align 1
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 52, i32 33 }
@___asan_gen_.1005 = private unnamed_addr constant [14 x i8] c"wcn_band_2ghz\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 131, i32 40 }
@___asan_gen_.1008 = private unnamed_addr constant [18 x i8] c"wcn_5ghz_channels\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 70, i32 33 }
@___asan_gen_.1011 = private unnamed_addr constant [14 x i8] c"wcn_band_5ghz\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 154, i32 40 }
@___asan_gen_.1014 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1021 = private constant [43 x i8] c"../drivers/net/wireless/ath/wcn36xx/main.c\00", align 1
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 1621, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant [29 x i8] c"switch.table.wcn36xx_set_key\00", align 1
@llvm.compiler.used = appending global [328 x ptr] [ptr @__UNIQUE_ID_author496, ptr @__UNIQUE_ID_debug_mask491, ptr @__UNIQUE_ID_debug_masktype490, ptr @__UNIQUE_ID_file494, ptr @__UNIQUE_ID_firmware497, ptr @__UNIQUE_ID_license495, ptr @__exitcall_wcn36xx_driver_exit, ptr @__initcall__kmod_wcn36xx__493_1658_wcn36xx_driver_init6, ptr @__param_debug_mask, ptr @wcn36xx_add_interface._entry, ptr @wcn36xx_add_interface._entry.127, ptr @wcn36xx_add_interface._entry_ptr, ptr @wcn36xx_add_interface._entry_ptr.129, ptr @wcn36xx_ampdu_action._entry, ptr @wcn36xx_ampdu_action._entry.205, ptr @wcn36xx_ampdu_action._entry.208, ptr @wcn36xx_ampdu_action._entry.211, ptr @wcn36xx_ampdu_action._entry_ptr, ptr @wcn36xx_ampdu_action._entry_ptr.207, ptr @wcn36xx_ampdu_action._entry_ptr.210, ptr @wcn36xx_ampdu_action._entry_ptr.213, ptr @wcn36xx_bss_info_changed._entry, ptr @wcn36xx_bss_info_changed._entry.139, ptr @wcn36xx_bss_info_changed._entry.142, ptr @wcn36xx_bss_info_changed._entry.145, ptr @wcn36xx_bss_info_changed._entry.150, ptr @wcn36xx_bss_info_changed._entry.153, ptr @wcn36xx_bss_info_changed._entry.156, ptr @wcn36xx_bss_info_changed._entry.159, ptr @wcn36xx_bss_info_changed._entry.162, ptr @wcn36xx_bss_info_changed._entry.165, ptr @wcn36xx_bss_info_changed._entry.168, ptr @wcn36xx_bss_info_changed._entry_ptr, ptr @wcn36xx_bss_info_changed._entry_ptr.141, ptr @wcn36xx_bss_info_changed._entry_ptr.144, ptr @wcn36xx_bss_info_changed._entry_ptr.147, ptr @wcn36xx_bss_info_changed._entry_ptr.152, ptr @wcn36xx_bss_info_changed._entry_ptr.155, ptr @wcn36xx_bss_info_changed._entry_ptr.158, ptr @wcn36xx_bss_info_changed._entry_ptr.161, ptr @wcn36xx_bss_info_changed._entry_ptr.164, ptr @wcn36xx_bss_info_changed._entry_ptr.167, ptr @wcn36xx_bss_info_changed._entry_ptr.170, ptr @wcn36xx_config._entry, ptr @wcn36xx_config._entry.134, ptr @wcn36xx_config._entry_ptr, ptr @wcn36xx_config._entry_ptr.136, ptr @wcn36xx_configure_filter._entry, ptr @wcn36xx_configure_filter._entry_ptr, ptr @wcn36xx_driver_exit, ptr @wcn36xx_feat_caps_info._entry, ptr @wcn36xx_feat_caps_info._entry_ptr, ptr @wcn36xx_flush._entry, ptr @wcn36xx_flush._entry_ptr, ptr @wcn36xx_hw_scan._entry, ptr @wcn36xx_hw_scan._entry_ptr, ptr @wcn36xx_ipv6_addr_change._entry, ptr @wcn36xx_ipv6_addr_change._entry_ptr, ptr @wcn36xx_platform_get_resources._entry, ptr @wcn36xx_platform_get_resources._entry.223, ptr @wcn36xx_platform_get_resources._entry.227, ptr @wcn36xx_platform_get_resources._entry.231, ptr @wcn36xx_platform_get_resources._entry.235, ptr @wcn36xx_platform_get_resources._entry.241, ptr @wcn36xx_platform_get_resources._entry.245, ptr @wcn36xx_platform_get_resources._entry_ptr, ptr @wcn36xx_platform_get_resources._entry_ptr.225, ptr @wcn36xx_platform_get_resources._entry_ptr.229, ptr @wcn36xx_platform_get_resources._entry_ptr.233, ptr @wcn36xx_platform_get_resources._entry_ptr.237, ptr @wcn36xx_platform_get_resources._entry_ptr.243, ptr @wcn36xx_platform_get_resources._entry_ptr.247, ptr @wcn36xx_prepare_multicast._entry, ptr @wcn36xx_prepare_multicast._entry.173, ptr @wcn36xx_prepare_multicast._entry_ptr, ptr @wcn36xx_prepare_multicast._entry_ptr.175, ptr @wcn36xx_probe._entry, ptr @wcn36xx_probe._entry.12, ptr @wcn36xx_probe._entry.17, ptr @wcn36xx_probe._entry.21, ptr @wcn36xx_probe._entry.25, ptr @wcn36xx_probe._entry.28, ptr @wcn36xx_probe._entry.4, ptr @wcn36xx_probe._entry_ptr, ptr @wcn36xx_probe._entry_ptr.14, ptr @wcn36xx_probe._entry_ptr.19, ptr @wcn36xx_probe._entry_ptr.23, ptr @wcn36xx_probe._entry_ptr.27, ptr @wcn36xx_probe._entry_ptr.30, ptr @wcn36xx_probe._entry_ptr.6, ptr @wcn36xx_remove._entry, ptr @wcn36xx_remove._entry_ptr, ptr @wcn36xx_remove_interface._entry, ptr @wcn36xx_remove_interface._entry_ptr, ptr @wcn36xx_resume._entry, ptr @wcn36xx_resume._entry_ptr, ptr @wcn36xx_set_key._entry, ptr @wcn36xx_set_key._entry.180, ptr @wcn36xx_set_key._entry.184, ptr @wcn36xx_set_key._entry.187, ptr @wcn36xx_set_key._entry_ptr, ptr @wcn36xx_set_key._entry_ptr.182, ptr @wcn36xx_set_key._entry_ptr.186, ptr @wcn36xx_set_key._entry_ptr.189, ptr @wcn36xx_set_rts_threshold._entry, ptr @wcn36xx_set_rts_threshold._entry_ptr, ptr @wcn36xx_sta_add._entry, ptr @wcn36xx_sta_add._entry_ptr, ptr @wcn36xx_sta_remove._entry, ptr @wcn36xx_sta_remove._entry_ptr, ptr @wcn36xx_start._entry, ptr @wcn36xx_start._entry.33, ptr @wcn36xx_start._entry.36, ptr @wcn36xx_start._entry.39, ptr @wcn36xx_start._entry.42, ptr @wcn36xx_start._entry.45, ptr @wcn36xx_start._entry.48, ptr @wcn36xx_start._entry.51, ptr @wcn36xx_start._entry_ptr, ptr @wcn36xx_start._entry_ptr.35, ptr @wcn36xx_start._entry_ptr.38, ptr @wcn36xx_start._entry_ptr.41, ptr @wcn36xx_start._entry_ptr.44, ptr @wcn36xx_start._entry_ptr.47, ptr @wcn36xx_start._entry_ptr.50, ptr @wcn36xx_start._entry_ptr.53, ptr @wcn36xx_stop._entry, ptr @wcn36xx_stop._entry_ptr, ptr @wcn36xx_suspend._entry, ptr @wcn36xx_suspend._entry_ptr, ptr @wcn36xx_sw_scan_complete._entry, ptr @wcn36xx_sw_scan_complete._entry_ptr, ptr @wcn36xx_sw_scan_start._entry, ptr @wcn36xx_sw_scan_start._entry_ptr, ptr @wcn36xx_dbg_mask, ptr @wcn36xx_driver, ptr @.str, ptr @wcn36xx_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wcn36xx_ops, ptr @.str.5, ptr @wcn36xx_probe.__key, ptr @.str.7, ptr @wcn36xx_probe.__key.8, ptr @.str.9, ptr @wcn36xx_probe.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @wcn36xx_start.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @wcn36xx_caps_names, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @wcn_2ghz_rates, ptr @wcn_5ghz_rates, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @wcn36xx_sta_add.__key, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.224, ptr @.str.226, ptr @.str.228, ptr @.str.230, ptr @.str.232, ptr @.str.234, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.246, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @wcn36xx_init_ieee80211.cipher_suites, ptr @wowlan_support, ptr @wcn_2ghz_channels, ptr @wcn_band_2ghz, ptr @wcn_5ghz_channels, ptr @wcn_band_5ghz, ptr @.str.253, ptr @.str.254, ptr @switch.table.wcn36xx_set_key], section "llvm.metadata"
@0 = internal global [256 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_feat_caps_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_caps_names to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_add_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_add_interface._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_remove_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_config._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_bss_info_changed._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn_2ghz_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn_5ghz_rates to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_prepare_multicast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_prepare_multicast._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_configure_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_set_key._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_set_key._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_set_key._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_hw_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_sw_scan_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_sw_scan_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_set_rts_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_sta_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_sta_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_sta_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_ampdu_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_ampdu_action._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_ampdu_action._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_ampdu_action._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_ipv6_addr_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_platform_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_platform_get_resources._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_platform_get_resources._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_platform_get_resources._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_platform_get_resources._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_platform_get_resources._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_platform_get_resources._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_init_ieee80211.cipher_suites to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn_2ghz_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn_band_2ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn_5ghz_channels to i32), i32 1400, i32 1728, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn_band_5ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcn36xx_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wcn36xx_set_default_rates(ptr nocapture noundef writeonly %rates) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rates to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 6, ptr %rates, align 1
  %dsss_rates1 = getelementptr inbounds %struct.wcn36xx_hal_supported_rates, ptr %rates, i32 0, i32 1
  %1 = ptrtoint ptr %dsss_rates1 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 36592313917178006, ptr %dsss_rates1, align 1
  %ofdm_rates3 = getelementptr inbounds %struct.wcn36xx_hal_supported_rates, ptr %rates, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %ofdm_rates3, ptr @__const.wcn36xx_set_default_rates.ofdm_rates, i32 16)
  %supported_mcs_set = getelementptr inbounds %struct.wcn36xx_hal_supported_rates, ptr %rates, i32 0, i32 6
  %3 = ptrtoint ptr %supported_mcs_set to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %supported_mcs_set, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @wcn36xx_set_default_rates_v1(ptr nocapture noundef writeonly %rates) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rates to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 7, ptr %rates, align 1
  %vht_rx_mcs_map = getelementptr inbounds %struct.wcn36xx_hal_supported_rates_v1, ptr %rates, i32 0, i32 8
  %1 = ptrtoint ptr %vht_rx_mcs_map to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 2, ptr %vht_rx_mcs_map, align 1
  %vht_tx_mcs_map = getelementptr inbounds %struct.wcn36xx_hal_supported_rates_v1, ptr %rates, i32 0, i32 10
  %2 = ptrtoint ptr %vht_tx_mcs_map to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 2, ptr %vht_tx_mcs_map, align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wcn36xx_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @wcn36xx_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_probe(ptr noundef %pdev) #5 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %0 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 1224, ptr noundef nonnull @wcn36xx_ops, ptr noundef null) #10
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -12, ptr %ret, align 4
  br label %out_err

if.end13:                                         ; preds = %do.end3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %8, align 4
  %dev16 = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev16, align 4
  %first_boot = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %first_boot to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %first_boot, align 1
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %conf_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @wcn36xx_probe.__key) #10
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %hal_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @wcn36xx_probe.__key.8) #10
  %scan_lock = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 38
  tail call void @__mutex_init(ptr noundef %scan_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @wcn36xx_probe.__key.10) #10
  %amsdu = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 50
  %12 = ptrtoint ptr %amsdu to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %amsdu, ptr %amsdu, align 4
  %prev.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 50, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %amsdu, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 50, i32 1
  %14 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i, align 4
  %15 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev16, align 4
  %call27 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 4096, i32 noundef 3264) #10
  %hal_buf = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 24
  %17 = ptrtoint ptr %hal_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call27, ptr %hal_buf, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -12, ptr %ret, align 4
  br label %out_wq

if.end31:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev16, align 4
  %call.i138 = tail call i32 @dma_set_mask(ptr noundef %20, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp.i = icmp eq i32 %call.i138, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %20, i64 noundef 4294967295) #10
  br label %if.end40

dma_set_mask_and_coherent.exit:                   ; preds = %if.end31
  %21 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i138, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp = icmp slt i32 %call.i138, 0
  br i1 %cmp, label %do.end37, label %dma_set_mask_and_coherent.exit.if.end40_crit_edge

dma_set_mask_and_coherent.exit.if.end40_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end37:                                         ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call.i138) #13
  br label %out_wq

if.end40:                                         ; preds = %dma_set_mask_and_coherent.exit.if.end40_crit_edge, %dma_set_mask_and_coherent.exit.thread
  %nv_file = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 3
  %22 = ptrtoint ptr %nv_file to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.15, ptr %nv_file, align 4
  %23 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev16, align 4
  %parent42 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %parent42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent42, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call44 = tail call i32 @of_property_read_string(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef %nv_file) #10
  %29 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call44, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44)
  %cmp45 = icmp sgt i32 %call44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call44)
  %cmp46.not = icmp eq i32 %call44, -22
  %or.cond = or i1 %cmp45, %cmp46.not
  br i1 %or.cond, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call44) #13
  br label %out_wq

if.end53:                                         ; preds = %if.end40
  %call54 = tail call ptr @qcom_wcnss_open_channel(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef nonnull @wcn36xx_smd_rsp_process, ptr noundef nonnull %call.i) #10
  %smd_channel = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 18
  %30 = ptrtoint ptr %smd_channel to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call54, ptr %smd_channel, align 4
  %cmp.i139 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %do.end60, label %if.end65

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  %31 = ptrtoint ptr %smd_channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smd_channel, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ret, align 4
  br label %out_wq

if.end65:                                         ; preds = %if.end53
  %of_node67 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %35 = ptrtoint ptr %of_node67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node67, align 8
  %call68 = call ptr @of_get_property(ptr noundef %36, ptr noundef nonnull @.str.24, ptr noundef nonnull %ret) #10
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.end65.if.end87_crit_edge, label %land.lhs.true70

if.end65.if.end87_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true70:                                  ; preds = %if.end65
  %37 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp71.not = icmp eq i32 %38, 6
  br i1 %cmp71.not, label %do.end82.critedge, label %do.end75

do.end75:                                         ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  %39 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -22, ptr %ret, align 4
  br label %out_destroy_ept

do.end82.critedge:                                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %call68) #13
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %8, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %perm_addr.i, ptr %call68, i32 6)
  br label %if.end87

if.end87:                                         ; preds = %do.end82.critedge, %if.end65.if.end87_crit_edge
  %call.i140 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.219) #10
  %tobool.not.i = icmp eq ptr %call.i140, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220) #13
  br label %wcn36xx_platform_get_resources.exit.thread

if.end.i:                                         ; preds = %if.end87
  %45 = ptrtoint ptr %call.i140 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call.i140, align 4
  %tx_irq.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 14
  %47 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tx_irq.i, align 4
  %call2.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.222) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #13
  br label %wcn36xx_platform_get_resources.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %48 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call2.i, align 4
  %rx_irq.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 15
  %50 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rx_irq.i, align 4
  %tx_enable_state_bit.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 20
  %call12.i = call ptr @qcom_smem_state_get(ptr noundef %dev, ptr noundef nonnull @.str.226, ptr noundef %tx_enable_state_bit.i) #10
  %tx_enable_state.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 19
  %51 = ptrtoint ptr %tx_enable_state.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call12.i, ptr %tx_enable_state.i, align 4
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end10.i.wcn36xx_platform_get_resources.exit_crit_edge, label %if.end23.i

if.end10.i.wcn36xx_platform_get_resources.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_platform_get_resources.exit

if.end23.i:                                       ; preds = %if.end10.i
  %tx_rings_empty_state_bit.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 22
  %call25.i = call ptr @qcom_smem_state_get(ptr noundef %dev, ptr noundef nonnull @.str.230, ptr noundef %tx_rings_empty_state_bit.i) #10
  %tx_rings_empty_state.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 21
  %52 = ptrtoint ptr %tx_rings_empty_state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call25.i, ptr %tx_rings_empty_state.i, align 4
  %cmp.i126.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %if.end23.i.wcn36xx_platform_get_resources.exit_crit_edge, label %if.end36.i

if.end23.i.wcn36xx_platform_get_resources.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_platform_get_resources.exit

if.end36.i:                                       ; preds = %if.end23.i
  %53 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 27
  %55 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #10
  %57 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %56, ptr noundef nonnull @.str.234, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  br label %do.end43.i

of_parse_phandle.exit.i:                          ; preds = %if.end36.i
  %58 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  %tobool39.not.i = icmp eq ptr %59, null
  br i1 %tobool39.not.i, label %of_parse_phandle.exit.i.do.end43.i_crit_edge, label %if.end46.i

of_parse_phandle.exit.i.do.end43.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

do.end43.i:                                       ; preds = %of_parse_phandle.exit.i.do.end43.i_crit_edge, %of_parse_phandle.exit.thread.i
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236) #13
  br label %wcn36xx_platform_get_resources.exit.thread

if.end46.i:                                       ; preds = %of_parse_phandle.exit.i
  %call47.i = call i32 @of_device_is_compatible(ptr noundef nonnull %59, ptr noundef nonnull @.str.238) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.i = icmp ne i32 %call47.i, 0
  %is_pronto.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 10
  %frombool.i = zext i1 %tobool48.i to i8
  %60 = ptrtoint ptr %is_pronto.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %frombool.i, ptr %is_pronto.i, align 4
  %call50.i = call i32 @of_property_match_string(ptr noundef nonnull %59, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240) #10
  %call51.i = call ptr @of_iomap(ptr noundef nonnull %59, i32 noundef %call50.i) #10
  %ccu_base.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 16
  %61 = ptrtoint ptr %ccu_base.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call51.i, ptr %ccu_base.i, align 4
  %tobool53.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool53.not.i, label %do.end57.i, label %if.end60.i

do.end57.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242) #13
  br label %put_mmio_node.i

if.end60.i:                                       ; preds = %if.end46.i
  %call61.i = call i32 @of_property_match_string(ptr noundef nonnull %59, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.244) #10
  %call62.i = call ptr @of_iomap(ptr noundef nonnull %59, i32 noundef %call61.i) #10
  %dxe_base.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 17
  %62 = ptrtoint ptr %dxe_base.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call62.i, ptr %dxe_base.i, align 4
  %tobool64.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool64.not.i, label %do.end68.i, label %if.end71.i

do.end68.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246) #13
  %63 = ptrtoint ptr %ccu_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ccu_base.i, align 4
  call void @iounmap(ptr noundef %64) #10
  br label %put_mmio_node.i

if.end71.i:                                       ; preds = %if.end60.i
  %call72.i = call ptr @of_get_child_by_name(ptr noundef nonnull %59, ptr noundef nonnull @.str.248) #10
  %tobool73.not.i = icmp eq ptr %call72.i, null
  br i1 %tobool73.not.i, label %if.end71.i.wcn36xx_platform_get_resources.exit.thread149_crit_edge, label %if.then74.i

if.end71.i.wcn36xx_platform_get_resources.exit.thread149_crit_edge: ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_platform_get_resources.exit.thread149

if.then74.i:                                      ; preds = %if.end71.i
  %call75.i = call i32 @of_device_is_compatible(ptr noundef nonnull %call72.i, ptr noundef nonnull @.str.249) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.then74.i.if.end78.i_crit_edge, label %if.then77.i

if.then74.i.if.end78.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.i

if.then77.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #12
  %rf_id.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 51
  %65 = ptrtoint ptr %rf_id.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 13856, ptr %rf_id.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then77.i, %if.then74.i.if.end78.i_crit_edge
  %call79.i = call i32 @of_device_is_compatible(ptr noundef nonnull %call72.i, ptr noundef nonnull @.str.250) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end83.i_crit_edge, label %if.then81.i

if.end78.i.if.end83.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  %rf_id82.i = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 51
  %66 = ptrtoint ptr %rf_id82.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 13952, ptr %rf_id82.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.end78.i.if.end83.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call72.i) #10
  br label %wcn36xx_platform_get_resources.exit.thread149

wcn36xx_platform_get_resources.exit.thread149:    ; preds = %if.end83.i, %if.end71.i.wcn36xx_platform_get_resources.exit.thread149_crit_edge
  call void @of_node_put(ptr noundef nonnull %59) #10
  %67 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %ret, align 4
  br label %if.end91

put_mmio_node.i:                                  ; preds = %do.end68.i, %do.end57.i
  call void @of_node_put(ptr noundef nonnull %59) #10
  br label %wcn36xx_platform_get_resources.exit.thread

wcn36xx_platform_get_resources.exit.thread:       ; preds = %put_mmio_node.i, %do.end43.i, %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -2, %do.end.i ], [ -2, %do.end7.i ], [ -22, %do.end43.i ], [ -12, %put_mmio_node.i ]
  %68 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i.ph, ptr %ret, align 4
  br label %out_destroy_ept

wcn36xx_platform_get_resources.exit:              ; preds = %if.end23.i.wcn36xx_platform_get_resources.exit_crit_edge, %if.end10.i.wcn36xx_platform_get_resources.exit_crit_edge
  %.str.228.sink = phi ptr [ @.str.228, %if.end10.i.wcn36xx_platform_get_resources.exit_crit_edge ], [ @.str.232, %if.end23.i.wcn36xx_platform_get_resources.exit_crit_edge ]
  %retval.0.i.in.in = phi ptr [ %tx_enable_state.i, %if.end10.i.wcn36xx_platform_get_resources.exit_crit_edge ], [ %tx_rings_empty_state.i, %if.end23.i.wcn36xx_platform_get_resources.exit_crit_edge ]
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.228.sink) #13
  %69 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %69)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %70 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i, ptr %ret, align 4
  %tobool89.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool89.not, label %wcn36xx_platform_get_resources.exit.if.end91_crit_edge, label %wcn36xx_platform_get_resources.exit.out_destroy_ept_crit_edge

wcn36xx_platform_get_resources.exit.out_destroy_ept_crit_edge: ; preds = %wcn36xx_platform_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_destroy_ept

wcn36xx_platform_get_resources.exit.if.end91_crit_edge: ; preds = %wcn36xx_platform_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.end91:                                         ; preds = %wcn36xx_platform_get_resources.exit.if.end91_crit_edge, %wcn36xx_platform_get_resources.exit.thread149
  %71 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %8, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i.i, align 4
  %or.i.i.i = or i32 %74, 16777216
  store i32 %or.i.i.i, ptr %flags.i.i, align 4
  %75 = load ptr, ptr %8, align 4
  %flags.i1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %flags.i1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i1.i, align 4
  %or.i.i2.i = or i32 %77, 128
  store i32 %or.i.i2.i, ptr %flags.i1.i, align 4
  %78 = load ptr, ptr %8, align 4
  %flags.i3.i = getelementptr inbounds %struct.ieee80211_hw, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i3.i, align 4
  %or.i.i4.i = or i32 %80, 256
  store i32 %or.i.i4.i, ptr %flags.i3.i, align 4
  %81 = load ptr, ptr %8, align 4
  %flags.i5.i = getelementptr inbounds %struct.ieee80211_hw, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i5.i, align 4
  %or.i.i6.i = or i32 %83, 16
  store i32 %or.i.i6.i, ptr %flags.i5.i, align 4
  %84 = load ptr, ptr %8, align 4
  %flags.i7.i = getelementptr inbounds %struct.ieee80211_hw, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i7.i, align 4
  %or.i.i8.i = or i32 %86, 1
  store i32 %or.i.i8.i, ptr %flags.i7.i, align 4
  %87 = load ptr, ptr %8, align 4
  %flags.i9.i = getelementptr inbounds %struct.ieee80211_hw, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i9.i, align 4
  %or.i.i10.i = or i32 %89, 268435456
  store i32 %or.i.i10.i, ptr %flags.i9.i, align 4
  %90 = load ptr, ptr %8, align 4
  %flags.i11.i = getelementptr inbounds %struct.ieee80211_hw, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %flags.i11.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i11.i, align 4
  %or.i.i12.i = or i32 %92, 65536
  store i32 %or.i.i12.i, ptr %flags.i11.i, align 4
  %93 = load ptr, ptr %8, align 4
  %wiphy.i142 = getelementptr inbounds %struct.ieee80211_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wiphy.i142 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wiphy.i142, align 8
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 142, ptr %interface_modes.i, align 4
  %97 = load ptr, ptr %8, align 4
  %wiphy9.i = getelementptr inbounds %struct.ieee80211_hw, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %wiphy9.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wiphy9.i, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %99, i32 0, i32 53
  %100 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @wcn_band_2ghz, ptr %bands.i, align 16
  %rf_id.i143 = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 51
  %101 = ptrtoint ptr %rf_id.i143 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rf_id.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13856, i32 %102)
  %cmp.not.i = icmp eq i32 %102, 13856
  br i1 %cmp.not.i, label %if.end91.wcn36xx_init_ieee80211.exit_crit_edge, label %if.end.i144

if.end91.wcn36xx_init_ieee80211.exit_crit_edge:   ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_init_ieee80211.exit

if.end.i144:                                      ; preds = %if.end91
  %103 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %8, align 4
  %wiphy11.i = getelementptr inbounds %struct.ieee80211_hw, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %wiphy11.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wiphy11.i, align 8
  %arrayidx13.i = getelementptr %struct.wiphy, ptr %106, i32 0, i32 53, i32 1
  %107 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @wcn_band_5ghz, ptr %arrayidx13.i, align 4
  %108 = ptrtoint ptr %rf_id.i143 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr.i = load i32, ptr %rf_id.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13952, i32 %.pr.i)
  %cmp15.i = icmp eq i32 %.pr.i, 13952
  br i1 %cmp15.i, label %if.then16.i, label %if.end.i144.wcn36xx_init_ieee80211.exit_crit_edge

if.end.i144.wcn36xx_init_ieee80211.exit_crit_edge: ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_init_ieee80211.exit

if.then16.i:                                      ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #12
  store i8 1, ptr getelementptr inbounds ({ ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, ptr @wcn_band_5ghz, i32 0, i32 6), align 4
  store i32 59797792, ptr getelementptr inbounds ({ ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, ptr @wcn_band_5ghz, i32 0, i32 6, i32 1), align 4
  store i16 -257, ptr getelementptr inbounds ({ ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, ptr @wcn_band_5ghz, i32 0, i32 6, i32 2), align 4
  store i16 -20223, ptr getelementptr inbounds ({ ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, ptr @wcn_band_5ghz, i32 0, i32 6, i32 2, i32 1), align 2
  store i16 -20223, ptr getelementptr inbounds ({ ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, ptr @wcn_band_5ghz, i32 0, i32 6, i32 2, i32 3), align 2
  store i16 -257, ptr getelementptr inbounds ({ ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, ptr @wcn_band_5ghz, i32 0, i32 6, i32 2, i32 2), align 4
  br label %wcn36xx_init_ieee80211.exit

wcn36xx_init_ieee80211.exit:                      ; preds = %if.then16.i, %if.end.i144.wcn36xx_init_ieee80211.exit_crit_edge, %if.end91.wcn36xx_init_ieee80211.exit_crit_edge
  %109 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %8, align 4
  %wiphy19.i = getelementptr inbounds %struct.ieee80211_hw, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %wiphy19.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wiphy19.i, align 8
  %max_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %112, i32 0, i32 18
  %113 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 9, ptr %max_scan_ssids.i, align 32
  %114 = load ptr, ptr %8, align 4
  %wiphy21.i = getelementptr inbounds %struct.ieee80211_hw, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %wiphy21.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wiphy21.i, align 8
  %max_scan_ie_len.i = getelementptr inbounds %struct.wiphy, ptr %116, i32 0, i32 22
  %117 = ptrtoint ptr %max_scan_ie_len.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 500, ptr %max_scan_ie_len.i, align 4
  %118 = load ptr, ptr %8, align 4
  %wiphy23.i = getelementptr inbounds %struct.ieee80211_hw, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %wiphy23.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wiphy23.i, align 8
  %cipher_suites.i = getelementptr inbounds %struct.wiphy, ptr %120, i32 0, i32 28
  %121 = ptrtoint ptr %cipher_suites.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @wcn36xx_init_ieee80211.cipher_suites, ptr %cipher_suites.i, align 8
  %122 = load ptr, ptr %8, align 4
  %wiphy25.i = getelementptr inbounds %struct.ieee80211_hw, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %wiphy25.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wiphy25.i, align 8
  %n_cipher_suites.i = getelementptr inbounds %struct.wiphy, ptr %124, i32 0, i32 27
  %125 = ptrtoint ptr %n_cipher_suites.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 4, ptr %n_cipher_suites.i, align 4
  %126 = load ptr, ptr %8, align 4
  %wiphy27.i = getelementptr inbounds %struct.ieee80211_hw, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %wiphy27.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %wiphy27.i, align 8
  %wowlan.i = getelementptr inbounds %struct.wiphy, ptr %128, i32 0, i32 40
  %129 = ptrtoint ptr %wowlan.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @wowlan_support, ptr %wowlan.i, align 32
  %130 = load ptr, ptr %8, align 4
  %max_listen_interval.i = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 12
  %131 = ptrtoint ptr %max_listen_interval.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 200, ptr %max_listen_interval.i, align 2
  %132 = load ptr, ptr %8, align 4
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %132, i32 0, i32 11
  %133 = ptrtoint ptr %queues.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 4, ptr %queues.i, align 4
  %134 = load ptr, ptr %8, align 4
  %135 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev16, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %134, i32 0, i32 1
  %137 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wiphy.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %138, i32 0, i32 56, i32 1
  %139 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %parent.i.i.i, align 8
  %140 = load ptr, ptr %8, align 4
  %sta_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %140, i32 0, i32 8
  %141 = ptrtoint ptr %sta_data_size.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 200, ptr %sta_data_size.i, align 8
  %142 = load ptr, ptr %8, align 4
  %vif_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %142, i32 0, i32 7
  %143 = ptrtoint ptr %vif_data_size.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 168, ptr %vif_data_size.i, align 4
  %144 = load ptr, ptr %8, align 4
  %wiphy34.i = getelementptr inbounds %struct.ieee80211_hw, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %wiphy34.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wiphy34.i, align 8
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %146, i32 0, i32 14, i32 1
  %147 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i.i, align 1
  %149 = or i8 %148, 32
  store i8 %149, ptr %arrayidx.i.i, align 1
  %150 = load ptr, ptr %8, align 4
  %call94 = call i32 @ieee80211_register_hw(ptr noundef %150) #10
  %151 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call94, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %wcn36xx_init_ieee80211.exit.cleanup_crit_edge, label %out_unmap

wcn36xx_init_ieee80211.exit.cleanup_crit_edge:    ; preds = %wcn36xx_init_ieee80211.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_unmap:                                        ; preds = %wcn36xx_init_ieee80211.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ccu_base = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 16
  %152 = ptrtoint ptr %ccu_base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ccu_base, align 4
  call void @iounmap(ptr noundef %153) #10
  %dxe_base = getelementptr inbounds %struct.wcn36xx, ptr %8, i32 0, i32 17
  %154 = ptrtoint ptr %dxe_base to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dxe_base, align 4
  call void @iounmap(ptr noundef %155) #10
  br label %out_destroy_ept

out_destroy_ept:                                  ; preds = %out_unmap, %wcn36xx_platform_get_resources.exit.out_destroy_ept_crit_edge, %wcn36xx_platform_get_resources.exit.thread, %do.end75
  %156 = ptrtoint ptr %smd_channel to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %smd_channel, align 4
  call void @rpmsg_destroy_ept(ptr noundef %157) #10
  br label %out_wq

out_wq:                                           ; preds = %out_destroy_ept, %do.end60, %do.end50, %do.end37, %if.then30
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #10
  br label %out_err

out_err:                                          ; preds = %out_wq, %do.end10
  %158 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_err, %wcn36xx_init_ieee80211.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %159, %out_err ], [ 0, %wcn36xx_init_ieee80211.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_remove(ptr nocapture noundef readonly %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %nv = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %nv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nv, align 4
  tail call void @release_firmware(ptr noundef %6) #10
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #10
  %tx_enable_state = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %tx_enable_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_enable_state, align 4
  tail call void @qcom_smem_state_put(ptr noundef %8) #10
  %tx_rings_empty_state = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %tx_rings_empty_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_rings_empty_state, align 4
  tail call void @qcom_smem_state_put(ptr noundef %10) #10
  %smd_channel = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %smd_channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smd_channel, align 4
  tail call void @rpmsg_destroy_ept(ptr noundef %12) #10
  %dxe_base = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %dxe_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dxe_base, align 4
  tail call void @iounmap(ptr noundef %14) #10
  %ccu_base = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 16
  %15 = ptrtoint ptr %ccu_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ccu_base, align 4
  tail call void @iounmap(ptr noundef %16) #10
  %amsdu = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 50
  %17 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %amsdu, align 4
  %cmp.i.i2.i = icmp eq ptr %18, %amsdu
  %tobool.not.i13.i = icmp eq ptr %18, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %do.end4.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

do.end4.__skb_queue_purge.exit_crit_edge:         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %do.end4
  %qlen.i.i.i = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 50, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %19 = phi ptr [ %18, %while.body.lr.ph.i ], [ %29, %while.body.i.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %19, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %prev17.i.i.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %25, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #10
  %28 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %amsdu, align 4
  %cmp.i.i.i = icmp eq ptr %29, %amsdu
  %tobool.not.i1.i = icmp eq ptr %29, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %do.end4.__skb_queue_purge.exit_crit_edge
  %hal_mutex = getelementptr inbounds %struct.wcn36xx, ptr %3, i32 0, i32 26
  tail call void @mutex_destroy(ptr noundef %hal_mutex) #10
  tail call void @ieee80211_free_hw(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_wcnss_open_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_rsp_process(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpmsg_destroy_ept(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %tobool.not = icmp eq ptr %3, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 29
  %spec.select = select i1 %tobool.not, ptr null, ptr %drv_priv.i
  %call2 = tail call i32 @wcn36xx_start_tx(ptr noundef %1, ptr noundef %spec.select, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %entry.if.end6_crit_edge, label %if.then4

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %5, ptr noundef %skb) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_start(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @wcn36xx_smd_open(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call4) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end3
  %call13 = tail call i32 @wcn36xx_dxe_allocate_mem_pools(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call13) #13
  br label %out_smd_close

if.end21:                                         ; preds = %if.end12
  %call22 = tail call i32 @wcn36xx_dxe_alloc_ctl_blks(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call22) #13
  br label %out_free_dxe_pool

if.end30:                                         ; preds = %if.end21
  %call31 = tail call i32 @wcn36xx_smd_load_nv(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #13
  br label %out_free_dxe_ctl

if.end39:                                         ; preds = %if.end30
  %call40 = tail call i32 @wcn36xx_smd_start(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  br label %out_free_dxe_ctl

if.end48:                                         ; preds = %if.end39
  %fw_major.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %fw_major.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fw_major.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.i = icmp eq i8 %4, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end48.if.then50_crit_edge

if.end48.if.then50_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

land.lhs.true.i:                                  ; preds = %if.end48
  %fw_minor.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %fw_minor.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_minor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp5.i = icmp eq i8 %6, 2
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.then50_crit_edge

land.lhs.true.i.if.then50_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %fw_version.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp10.i = icmp eq i8 %8, 2
  br i1 %cmp10.i, label %wcn36xx_is_fw_version.exit, label %land.lhs.true7.i.if.then50_crit_edge

land.lhs.true7.i.if.then50_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

wcn36xx_is_fw_version.exit:                       ; preds = %land.lhs.true7.i
  %fw_revision.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %fw_revision.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %10)
  %cmp14.i = icmp eq i8 %10, 24
  br i1 %cmp14.i, label %wcn36xx_is_fw_version.exit.if.end60_crit_edge, label %wcn36xx_is_fw_version.exit.if.then50_crit_edge

wcn36xx_is_fw_version.exit.if.then50_crit_edge:   ; preds = %wcn36xx_is_fw_version.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

wcn36xx_is_fw_version.exit.if.end60_crit_edge:    ; preds = %wcn36xx_is_fw_version.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then50:                                        ; preds = %wcn36xx_is_fw_version.exit.if.then50_crit_edge, %land.lhs.true7.i.if.then50_crit_edge, %land.lhs.true.i.if.then50_crit_edge, %if.end48.if.then50_crit_edge
  %call51 = tail call i32 @wcn36xx_smd_feature_caps_exchange(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.else, label %do.end56

do.end56:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  br label %if.end60

if.else:                                          ; preds = %if.then50
  %fw_feat_caps.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else
  %i.012.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @get_feat_caps(ptr noundef %fw_feat_caps.i, i32 noundef %i.012.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  %11 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.for.inc.i_crit_edge, label %do.end.i

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %i.012.i)
  %cmp.i.i = icmp ugt i32 %i.012.i, 60
  br i1 %cmp.i.i, label %do.end.i.wcn36xx_get_cap_name.exit.i_crit_edge, label %if.end.i.i

do.end.i.wcn36xx_get_cap_name.exit.i_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wcn36xx_get_cap_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr [61 x ptr], ptr @wcn36xx_caps_names, i32 0, i32 %i.012.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  br label %wcn36xx_get_cap_name.exit.i

wcn36xx_get_cap_name.exit.i:                      ; preds = %if.end.i.i, %do.end.i.wcn36xx_get_cap_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ @.str.57, %do.end.i.wcn36xx_get_cap_name.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %retval.0.i.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %wcn36xx_get_cap_name.exit.i, %do.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.inc.i.if.end60_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end60_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.end60:                                         ; preds = %for.inc.i.if.end60_crit_edge, %do.end56, %wcn36xx_is_fw_version.exit.if.end60_crit_edge
  %call61 = tail call i32 @wcn36xx_dxe_init(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end69, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #13
  %call74 = tail call i32 @wcn36xx_smd_stop(ptr noundef %1) #10
  br label %out_free_dxe_ctl

if.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wcn36xx_debugfs_init(ptr noundef %1) #10
  %vif_list = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %vif_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %vif_list, ptr %vif_list, align 4
  %prev.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vif_list, ptr %prev.i, align 4
  %dxe_lock = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %dxe_lock, ptr noundef nonnull @.str.54, ptr noundef nonnull @wcn36xx_start.__key, i16 noundef signext 3) #10
  br label %cleanup

out_free_dxe_ctl:                                 ; preds = %do.end66, %do.end45, %do.end36
  %ret.0 = phi i32 [ %call31, %do.end36 ], [ %call40, %do.end45 ], [ %call61, %do.end66 ]
  tail call void @wcn36xx_dxe_free_ctl_blks(ptr noundef %1) #10
  br label %out_free_dxe_pool

out_free_dxe_pool:                                ; preds = %out_free_dxe_ctl, %do.end27
  %ret.1 = phi i32 [ %call22, %do.end27 ], [ %ret.0, %out_free_dxe_ctl ]
  tail call void @wcn36xx_dxe_free_mem_pools(ptr noundef %1) #10
  br label %out_smd_close

out_smd_close:                                    ; preds = %out_free_dxe_pool, %do.end18
  %ret.2 = phi i32 [ %call13, %do.end18 ], [ %ret.1, %out_free_dxe_pool ]
  tail call void @wcn36xx_smd_close(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %out_smd_close, %if.end69, %do.end9
  %retval.0 = phi i32 [ 0, %if.end69 ], [ %call4, %do.end9 ], [ %ret.2, %out_smd_close ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_stop(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  %scan_info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %scan_lock = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %scan_lock, i32 noundef 0) #10
  %scan_req = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scan_req, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end3.if.end7_crit_edge, label %if.then5

do.end3.if.end7_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan_info) #10
  %5 = call ptr @memcpy(ptr %scan_info, ptr @__const.wcn36xx_stop.scan_info, i32 16)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @ieee80211_scan_completed(ptr noundef %7, ptr noundef nonnull %scan_info) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan_info) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end3.if.end7_crit_edge
  %8 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %scan_req, align 4
  call void @mutex_unlock(ptr noundef %scan_lock) #10
  call void @wcn36xx_debugfs_exit(ptr noundef %1) #10
  %call10 = call i32 @wcn36xx_smd_stop(ptr noundef %1) #10
  call void @wcn36xx_dxe_deinit(ptr noundef %1) #10
  call void @wcn36xx_smd_close(ptr noundef %1) #10
  call void @wcn36xx_dxe_free_mem_pools(ptr noundef %1) #10
  call void @wcn36xx_dxe_free_ctl_blks(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_suspend(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %wow) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %vif_list.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end3
  %vif_priv.0.in.i = phi ptr [ %vif_list.i, %do.end3 ], [ %vif_priv.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %vif_priv.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %vif_priv.0.i = load ptr, ptr %vif_priv.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vif_priv.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end24_crit_edge, label %for.body.i

for.cond.i.if.end24_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.body.i:                                       ; preds = %for.cond.i
  %sta_assoc.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %vif_priv.0.i, i32 0, i32 4
  %4 = ptrtoint ptr %sta_assoc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sta_assoc.i, align 1, !range !503
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %wcn36xx_get_first_assoc_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

wcn36xx_get_first_assoc_vif.exit:                 ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %vif_priv.0.i, i32 -848
  %tobool5.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not, label %wcn36xx_get_first_assoc_vif.exit.if.end24_crit_edge, label %if.then6

wcn36xx_get_first_assoc_vif.exit.if.end24_crit_edge: ; preds = %wcn36xx_get_first_assoc_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then6:                                         ; preds = %wcn36xx_get_first_assoc_vif.exit
  %call7 = tail call i32 @wcn36xx_smd_arp_offload(ptr noundef %1, ptr noundef nonnull %add.ptr.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.then6
  %call11 = tail call i32 @wcn36xx_smd_ipv6_ns_offload(ptr noundef %1, ptr noundef nonnull %add.ptr.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @wcn36xx_smd_gtk_offload(ptr noundef %1, ptr noundef nonnull %add.ptr.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @wcn36xx_smd_set_power_params(ptr noundef %1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @wcn36xx_smd_wlan_host_suspend_ind(ptr noundef %1) #10
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %wcn36xx_get_first_assoc_vif.exit.if.end24_crit_edge, %for.cond.i.if.end24_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end22 ], [ 0, %wcn36xx_get_first_assoc_vif.exit.if.end24_crit_edge ], [ 0, %for.cond.i.if.end24_crit_edge ]
  %tx_irq = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_irq, align 4
  tail call void @disable_irq(i32 noundef %7) #10
  %rx_irq = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_irq, align 4
  tail call void @disable_irq(i32 noundef %9) #10
  br label %out

out:                                              ; preds = %if.end24, %if.end18.out_crit_edge, %if.end14.out_crit_edge, %if.end10.out_crit_edge, %if.then6.out_crit_edge
  %ret.1 = phi i32 [ %call7, %if.then6.out_crit_edge ], [ %call11, %if.end10.out_crit_edge ], [ %call15, %if.end14.out_crit_edge ], [ %call19, %if.end18.out_crit_edge ], [ %ret.0, %if.end24 ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_resume(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %vif_list.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end3
  %vif_priv.0.in.i = phi ptr [ %vif_list.i, %do.end3 ], [ %vif_priv.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %vif_priv.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %vif_priv.0.i = load ptr, ptr %vif_priv.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vif_priv.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end13_crit_edge, label %for.body.i

for.cond.i.if.end13_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

for.body.i:                                       ; preds = %for.cond.i
  %sta_assoc.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %vif_priv.0.i, i32 0, i32 4
  %4 = ptrtoint ptr %sta_assoc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sta_assoc.i, align 1, !range !503
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %wcn36xx_get_first_assoc_vif.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

wcn36xx_get_first_assoc_vif.exit:                 ; preds = %for.body.i
  %add.ptr.i.i = getelementptr i8, ptr %vif_priv.0.i, i32 -848
  %tobool5.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not, label %wcn36xx_get_first_assoc_vif.exit.if.end13_crit_edge, label %if.then6

wcn36xx_get_first_assoc_vif.exit.if.end13_crit_edge: ; preds = %wcn36xx_get_first_assoc_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then6:                                         ; preds = %wcn36xx_get_first_assoc_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @wcn36xx_smd_host_resume(ptr noundef %1) #10
  %call8 = tail call i32 @wcn36xx_smd_set_power_params(ptr noundef %1, i1 noundef zeroext false) #10
  %call9 = tail call i32 @wcn36xx_smd_gtk_offload_get_info(ptr noundef %1, ptr noundef nonnull %add.ptr.i.i) #10
  %call10 = tail call i32 @wcn36xx_smd_gtk_offload(ptr noundef %1, ptr noundef nonnull %add.ptr.i.i, i1 noundef zeroext false) #10
  %call11 = tail call i32 @wcn36xx_smd_ipv6_ns_offload(ptr noundef %1, ptr noundef nonnull %add.ptr.i.i, i1 noundef zeroext false) #10
  %call12 = tail call i32 @wcn36xx_smd_arp_offload(ptr noundef %1, ptr noundef nonnull %add.ptr.i.i, i1 noundef zeroext false) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %wcn36xx_get_first_assoc_vif.exit.if.end13_crit_edge, %for.cond.i.if.end13_crit_edge
  %tx_irq = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_irq, align 4
  tail call void @enable_irq(i32 noundef %7) #10
  %rx_irq = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_irq, align 4
  tail call void @enable_irq(i32 noundef %9) #10
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %vif, i32 noundef %4) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end17 [
    i32 2, label %do.end4.if.end21_crit_edge
    i32 3, label %do.end4.if.end21_crit_edge38
    i32 1, label %do.end4.if.end21_crit_edge39
    i32 7, label %do.end4.if.end21_crit_edge40
  ]

do.end4.if.end21_crit_edge40:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end4.if.end21_crit_edge39:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end4.if.end21_crit_edge38:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end4.if.end21_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end17:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %6) #13
  br label %cleanup

if.end21:                                         ; preds = %do.end4.if.end21_crit_edge, %do.end4.if.end21_crit_edge38, %do.end4.if.end21_crit_edge39, %do.end4.if.end21_crit_edge40
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %8 = ptrtoint ptr %bss_index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %bss_index, align 4
  %sta_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 8
  %9 = ptrtoint ptr %sta_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %sta_list, ptr %sta_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 12
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sta_list, ptr %prev.i, align 4
  %vif_list = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vif_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv_priv.i, ptr noundef %vif_list, ptr noundef %12) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_add.exit_crit_edge

if.end21.list_add.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %drv_priv.i, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %drv_priv.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vif_list, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %vif_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %drv_priv.i, ptr %vif_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end21.list_add.exit_crit_edge
  %call22 = tail call i32 @wcn36xx_smd_add_sta_self(ptr noundef %1, ptr noundef %vif) #10
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end17
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -95, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %vif) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end4.list_del.exit_crit_edge

do.end4.list_del.exit_crit_edge:                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_priv.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end4.list_del.exit_crit_edge
  %9 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %drv_priv.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %drv_priv.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call5 = tail call i32 @wcn36xx_smd_delete_sta_self(ptr noundef %1, ptr noundef %addr) #10
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %changed) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %and4 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.end3.if.end59_crit_edge, label %if.then6

do.end3.if.end59_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then6:                                         ; preds = %do.end3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hw_value, align 2
  %9 = and i16 %8, 255
  %and8 = zext i16 %9 to i32
  %10 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and10 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then6.do.end20_crit_edge, label %do.end15

if.then6.do.end20_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

do.end15:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %and8) #13
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %if.then6.do.end20_crit_edge
  %sw_scan_opchannel = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 34
  %11 = ptrtoint ptr %sw_scan_opchannel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sw_scan_opchannel, align 1
  %13 = trunc i16 %8 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %13)
  %cmp = icmp eq i8 %12, %13
  br i1 %cmp, label %land.lhs.true, label %do.end20.if.else_crit_edge

do.end20.if.else_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %do.end20
  %sw_scan_channel = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %sw_scan_channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sw_scan_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not = icmp eq i8 %15, 0
  br i1 %tobool24.not, label %land.lhs.true.if.else_crit_edge, label %if.then28

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true
  %call30 = tail call i32 @wcn36xx_smd_end_scan(ptr noundef %1, i8 noundef zeroext %15) #10
  %sw_scan_init = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 35
  %16 = ptrtoint ptr %sw_scan_init to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sw_scan_init, align 2, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool32.not = icmp eq i8 %17, 0
  br i1 %tobool32.not, label %if.then28.if.end59_crit_edge, label %if.then33

if.then28.if.end59_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %sw_scan_vif = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 37
  %18 = ptrtoint ptr %sw_scan_vif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw_scan_vif, align 4
  %call34 = tail call i32 @wcn36xx_smd_finish_scan(ptr noundef %1, i32 noundef 2, ptr noundef %19) #10
  br label %if.end59

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end20.if.else_crit_edge
  %sw_scan = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 33
  %20 = ptrtoint ptr %sw_scan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sw_scan, align 4, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool36.not = icmp eq i8 %21, 0
  br i1 %tobool36.not, label %if.else56, label %if.then37

if.then37:                                        ; preds = %if.else
  %sw_scan_channel38 = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 36
  %22 = ptrtoint ptr %sw_scan_channel38 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sw_scan_channel38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool39.not = icmp eq i8 %23, 0
  br i1 %tobool39.not, label %if.then37.if.end43_crit_edge, label %if.then40

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 @wcn36xx_smd_end_scan(ptr noundef %1, i8 noundef zeroext %23) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then37.if.end43_crit_edge
  %sw_scan_init44 = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 35
  %24 = ptrtoint ptr %sw_scan_init44 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sw_scan_init44, align 2, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool45.not = icmp eq i8 %25, 0
  br i1 %tobool45.not, label %if.then46, label %if.end43.if.end53_crit_edge

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then46:                                        ; preds = %if.end43
  %sw_scan_vif47 = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 37
  %26 = ptrtoint ptr %sw_scan_vif47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sw_scan_vif47, align 4
  %call48 = tail call i32 @wcn36xx_smd_init_scan(ptr noundef %1, i32 noundef 2, ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then46.if.end53_crit_edge, label %if.then46.cleanup81_crit_edge

if.then46.cleanup81_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end53:                                         ; preds = %if.then46.if.end53_crit_edge, %if.end43.if.end53_crit_edge
  %call55 = tail call i32 @wcn36xx_smd_start_scan(ptr noundef %1, i8 noundef zeroext %13) #10
  br label %if.end59

if.else56:                                        ; preds = %if.else
  %vif_list.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.013.i = load ptr, ptr %vif_list.i, align 4
  %cmp.not14.i = icmp eq ptr %tmp.013.i, %vif_list.i
  br i1 %cmp.not14.i, label %if.else56.if.end59_crit_edge, label %if.else56.for.body.i_crit_edge

if.else56.for.body.i_crit_edge:                   ; preds = %if.else56
  br label %for.body.i

if.else56.if.end59_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else56.for.body.i_crit_edge
  %tmp.015.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %tmp.013.i, %if.else56.for.body.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %tmp.015.i, i32 -848
  %call3.i = tail call i32 @wcn36xx_smd_switch_channel(ptr noundef %1, ptr noundef %add.ptr.i.i, i32 noundef %and8) #10
  %29 = ptrtoint ptr %tmp.015.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %tmp.0.i = load ptr, ptr %tmp.015.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.body.i.if.end59_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end59_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.end59:                                         ; preds = %for.body.i.if.end59_crit_edge, %if.else56.if.end59_crit_edge, %if.end53, %if.then33, %if.then28.if.end59_crit_edge, %do.end3.if.end59_crit_edge
  %and60 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end66_crit_edge, label %if.then62

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then62:                                        ; preds = %if.end59
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw, align 8
  %and64 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %vif_list.i115 = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %vif_list.i115 to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp.022.i = load ptr, ptr %vif_list.i115, align 4
  %cmp.not23.i = icmp eq ptr %tmp.022.i, %vif_list.i115
  br i1 %cmp.not23.i, label %if.then62.if.end66_crit_edge, label %for.body.lr.ph.i

if.then62.if.end66_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

for.body.lr.ph.i:                                 ; preds = %if.then62
  %sw_scan.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 33
  br label %for.body.i117

for.body.i117:                                    ; preds = %for.inc.i.for.body.i117_crit_edge, %for.body.lr.ph.i
  %tmp.024.i = phi ptr [ %tmp.022.i, %for.body.lr.ph.i ], [ %tmp.0.i118, %for.inc.i.for.body.i117_crit_edge ]
  %add.ptr.i.i116 = getelementptr i8, ptr %tmp.024.i, i32 -848
  br i1 %tobool65.not, label %for.body.i117.if.else.i_crit_edge, label %land.lhs.true.i

for.body.i117.if.else.i_crit_edge:                ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i117
  %33 = ptrtoint ptr %sw_scan.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sw_scan.i, align 4, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool3.not.i = icmp eq i8 %34, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %ps.i = getelementptr i8, ptr %tmp.024.i, i32 -666
  %35 = ptrtoint ptr %ps.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ps.i, align 2, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool4.not.i = icmp eq i8 %36, 0
  br i1 %tobool4.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then5.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @wcn36xx_pmc_enter_bmps_state(ptr noundef %1, ptr noundef %add.ptr.i.i116) #10
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i117.if.else.i_crit_edge
  %call7.i = tail call i32 @wcn36xx_pmc_exit_bmps_state(ptr noundef %1, ptr noundef %add.ptr.i.i116) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then5.i, %if.then.i.for.inc.i_crit_edge
  %37 = ptrtoint ptr %tmp.024.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp.0.i118 = load ptr, ptr %tmp.024.i, align 4
  %cmp.not.i119 = icmp eq ptr %tmp.0.i118, %vif_list.i115
  br i1 %cmp.not.i119, label %for.inc.i.if.end66_crit_edge, label %for.inc.i.for.body.i117_crit_edge

for.inc.i.for.body.i117_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i117

for.inc.i.if.end66_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.end66:                                         ; preds = %for.inc.i.if.end66_crit_edge, %if.then62.if.end66_crit_edge, %if.end59.if.end66_crit_edge
  %and67 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.cleanup81_crit_edge, label %if.then69

if.end66.cleanup81_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

if.then69:                                        ; preds = %if.end66
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw, align 8
  %and72 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else76, label %if.then74

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 @wcn36xx_smd_enter_imps(ptr noundef %1) #10
  br label %cleanup81

if.else76:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %call77 = tail call i32 @wcn36xx_smd_exit_imps(ptr noundef %1) #10
  br label %cleanup81

cleanup81:                                        ; preds = %if.else76, %if.then74, %if.end66.cleanup81_crit_edge, %if.then46.cleanup81_crit_edge
  %retval.1 = phi i32 [ -5, %if.then46.cleanup81_crit_edge ], [ 0, %if.then74 ], [ 0, %if.else76 ], [ 0, %if.end66.cleanup81_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_bss_info_changed(ptr noundef %hw, ptr noundef %vif, ptr noundef %bss_conf, i32 noundef %changed) #5 align 64 {
entry:
  %tim_off = alloca i16, align 2
  %tim_len = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_off) #10
  %2 = ptrtoint ptr %tim_off to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tim_off, align 2, !annotation !504
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_len) #10
  %3 = ptrtoint ptr %tim_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %tim_len, align 2, !annotation !504
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %4 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %vif, i32 noundef %changed) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %and5 = and i32 %changed, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end4.if.end22_crit_edge, label %do.body8

do.end4.if.end22_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.body8:                                         ; preds = %do.end4
  %5 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and9 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end19_crit_edge, label %do.end14

do.body8.do.end19_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 18
  %6 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dtim_period, align 8
  %conv = zext i8 %7 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %conv) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body8.do.end19_crit_edge
  %dtim_period20 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 18
  %8 = ptrtoint ptr %dtim_period20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dtim_period20, align 8
  %dtim_period21 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %10 = ptrtoint ptr %dtim_period21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %dtim_period21, align 8
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %do.end4.if.end22_crit_edge
  %and23 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end60_crit_edge, label %do.body26

if.end22.if.end60_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.body26:                                        ; preds = %if.end22
  %11 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and27 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.do.end37_crit_edge, label %do.end32

do.body26.do.end37_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bss_conf, align 8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %13) #13
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %do.body26.do.end37_crit_edge
  %14 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bss_conf, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %19 to i32
  %or.i = or i32 %17, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %is_joining53 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  br i1 %cmp.i, label %if.else, label %if.then40

if.then40:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %is_joining53 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %is_joining53, align 8
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %21 = ptrtoint ptr %bss_index to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %bss_index, align 4
  %22 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bss_conf, align 8
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call42 = tail call i32 @wcn36xx_smd_set_link_st(ptr noundef %1, ptr noundef %23, ptr noundef %addr, i32 noundef 1) #10
  %24 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bss_conf, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_value, align 2
  %conv49 = trunc i16 %31 to i8
  %call50 = tail call i32 @wcn36xx_smd_join(ptr noundef %1, ptr noundef %25, ptr noundef %addr, i8 noundef zeroext %conv49) #10
  %32 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bss_conf, align 8
  %call52 = tail call i32 @wcn36xx_smd_config_bss(ptr noundef %1, ptr noundef %vif, ptr noundef null, ptr noundef %33, i1 noundef zeroext false) #10
  br label %if.end60

if.else:                                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %is_joining53 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %is_joining53, align 8
  %call54 = tail call i32 @wcn36xx_smd_delete_bss(ptr noundef %1, ptr noundef %vif) #10
  %35 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bss_conf, align 8
  %addr56 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call58 = tail call i32 @wcn36xx_smd_set_link_st(ptr noundef %1, ptr noundef %36, ptr noundef %addr56, i32 noundef 0) #10
  %encrypt_type = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %37 = ptrtoint ptr %encrypt_type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %encrypt_type, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then40, %if.end22.if.end60_crit_edge
  %and61 = and i32 %changed, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end92_crit_edge, label %do.body64

if.end60.if.end92_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

do.body64:                                        ; preds = %if.end60
  %38 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and65 = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.do.body76_crit_edge, label %do.end70

do.body64.do.body76_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body76

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #13
  br label %do.body76

do.body76:                                        ; preds = %do.end70, %do.body64.do.body76_crit_edge
  %39 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and77 = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.do.end83_crit_edge, label %if.then79

do.body76.do.end83_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

if.then79:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  %ssid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 39
  %ssid_len = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 40
  %40 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ssid_len, align 8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %ssid, i32 noundef %41, i1 noundef zeroext false) #10
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body76.do.end83_crit_edge
  %ssid_len84 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 40
  %42 = ptrtoint ptr %ssid_len84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ssid_len84, align 8
  %conv85 = trunc i32 %43 to i8
  %ssid86 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %44 = ptrtoint ptr %ssid86 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv85, ptr %ssid86, align 2
  %ssid88 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 6
  %ssid89 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 39
  %45 = load i32, ptr %ssid_len84, align 8
  %46 = call ptr @memcpy(ptr %ssid88, ptr %ssid89, i32 %45)
  br label %if.end92

if.end92:                                         ; preds = %do.end83, %if.end60.if.end92_crit_edge
  %and93 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end170_crit_edge, label %if.then95

if.end92.if.end170_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then95:                                        ; preds = %if.end92
  %is_joining96 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %47 = ptrtoint ptr %is_joining96 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %is_joining96, align 8
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %48 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %assoc, align 1, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool97.not = icmp eq i8 %49, 0
  %50 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and148 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool97.not, label %do.body147, label %if.then98

if.then98:                                        ; preds = %if.then95
  br i1 %tobool149.not, label %if.then98.do.end114_crit_edge, label %do.end105

if.then98.do.end114_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114

do.end105:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bss_conf, align 8
  %addr108 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %53 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %aid, align 2
  %conv110 = zext i16 %54 to i32
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %52, ptr noundef %addr108, i32 noundef %conv110) #13
  br label %do.end114

do.end114:                                        ; preds = %do.end105, %if.then98.do.end114_crit_edge
  %sta_assoc = getelementptr inbounds %struct.wcn36xx_vif, ptr %drv_priv.i, i32 0, i32 4
  %55 = ptrtoint ptr %sta_assoc to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %sta_assoc, align 1
  %56 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bss_conf, align 8
  %call116 = tail call ptr @ieee80211_find_sta(ptr noundef %vif, ptr noundef %57) #10
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %cleanup, label %if.end125

if.end125:                                        ; preds = %do.end114
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %chandef129 = getelementptr inbounds %struct.ieee80211_conf, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %chandef129 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chandef129, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  tail call fastcc void @wcn36xx_update_allowed_rates(ptr noundef nonnull %call116, i32 noundef %63)
  %64 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bss_conf, align 8
  %addr132 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call134 = tail call i32 @wcn36xx_smd_set_link_st(ptr noundef %1, ptr noundef %65, ptr noundef %addr132, i32 noundef 2) #10
  %66 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bss_conf, align 8
  %call136 = tail call i32 @wcn36xx_smd_config_bss(ptr noundef %1, ptr noundef %vif, ptr noundef nonnull %call116, ptr noundef %67, i1 noundef zeroext true) #10
  %aid137 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %68 = ptrtoint ptr %aid137 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %aid137, align 2
  %aid138 = getelementptr inbounds %struct.ieee80211_sta, ptr %call116, i32 1, i32 0, i32 3
  %70 = ptrtoint ptr %aid138 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %aid138, align 4
  %call139 = tail call i32 @wcn36xx_smd_config_sta(ptr noundef %1, ptr noundef %vif, ptr noundef nonnull %call116) #10
  %71 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp = icmp eq i32 %72, 2
  br i1 %cmp, label %if.then141, label %if.end125.cleanup.thread_crit_edge

if.end125.cleanup.thread_crit_edge:               ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then141:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %call142 = tail call i32 @wcn36xx_smd_add_beacon_filter(ptr noundef %1, ptr noundef %vif) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then141, %if.end125.cleanup.thread_crit_edge
  %call144 = tail call i32 @wcn36xx_enable_keep_alive_null_packet(ptr noundef %1, ptr noundef %vif) #10
  br label %if.end170

cleanup:                                          ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bss_conf, align 8
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %74) #13
  br label %out

do.body147:                                       ; preds = %if.then95
  br i1 %tobool149.not, label %do.body147.do.end163_crit_edge, label %do.end153

do.body147.do.end163_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end163

do.end153:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bss_conf, align 8
  %addr156 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %aid158 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %77 = ptrtoint ptr %aid158 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %aid158, align 2
  %conv159 = zext i16 %78 to i32
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %76, ptr noundef %addr156, i32 noundef %conv159) #13
  br label %do.end163

do.end163:                                        ; preds = %do.end153, %do.body147.do.end163_crit_edge
  %sta_assoc164 = getelementptr inbounds %struct.wcn36xx_vif, ptr %drv_priv.i, i32 0, i32 4
  %79 = ptrtoint ptr %sta_assoc164 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %sta_assoc164, align 1
  %80 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bss_conf, align 8
  %addr166 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call168 = tail call i32 @wcn36xx_smd_set_link_st(ptr noundef %1, ptr noundef %81, ptr noundef %addr166, i32 noundef 0) #10
  br label %if.end170

if.end170:                                        ; preds = %do.end163, %cleanup.thread, %if.end92.if.end170_crit_edge
  %and171 = and i32 %changed, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end170.if.end196_crit_edge, label %do.body174

if.end170.if.end196_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196

do.body174:                                       ; preds = %if.end170
  %82 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and175 = and i32 %82, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.body174.do.end185_crit_edge, label %do.end180

do.body174.do.end185_crit_edge:                   ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end185

do.end180:                                        ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #12
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #13
  br label %do.end185

do.end185:                                        ; preds = %do.end180, %do.body174.do.end185_crit_edge
  %call186 = tail call ptr @ieee80211_proberesp_get(ptr noundef %hw, ptr noundef %vif) #10
  %tobool187.not = icmp eq ptr %call186, null
  br i1 %tobool187.not, label %do.end191, label %if.end194

do.end191:                                        ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #12
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #13
  br label %out

if.end194:                                        ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #12
  %call195 = tail call i32 @wcn36xx_smd_update_proberesp_tmpl(ptr noundef %1, ptr noundef %vif, ptr noundef nonnull %call186) #10
  tail call void @consume_skb(ptr noundef nonnull %call186) #10
  br label %if.end196

if.end196:                                        ; preds = %if.end194, %if.end170.if.end196_crit_edge
  %83 = and i32 %changed, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %if.end196.out_crit_edge, label %do.body202

if.end196.out_crit_edge:                          ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body202:                                       ; preds = %if.end196
  %85 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and203 = and i32 %85, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.body202.do.end215_crit_edge, label %do.end208

do.body202.do.end215_crit_edge:                   ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end215

do.end208:                                        ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #12
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 17
  %86 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %enable_beacon, align 1, !range !503
  %88 = zext i8 %87 to i32
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %88) #13
  br label %do.end215

do.end215:                                        ; preds = %do.end208, %do.body202.do.end215_crit_edge
  %enable_beacon216 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 17
  %89 = ptrtoint ptr %enable_beacon216 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %enable_beacon216, align 1, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool217.not = icmp eq i8 %90, 0
  br i1 %tobool217.not, label %if.else250, label %if.then218

if.then218:                                       ; preds = %do.end215
  %dtim_period219 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 18
  %91 = ptrtoint ptr %dtim_period219 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %dtim_period219, align 8
  %dtim_period220 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %93 = ptrtoint ptr %dtim_period220 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %dtim_period220, align 8
  %bss_index221 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %94 = ptrtoint ptr %bss_index221 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %bss_index221, align 4
  %addr222 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call224 = tail call i32 @wcn36xx_smd_config_bss(ptr noundef %1, ptr noundef %vif, ptr noundef null, ptr noundef %addr222, i1 noundef zeroext false) #10
  %call225 = call ptr @ieee80211_beacon_get_tim(ptr noundef %hw, ptr noundef %vif, ptr noundef nonnull %tim_off, ptr noundef nonnull %tim_len) #10
  %tobool226.not = icmp eq ptr %call225, null
  br i1 %tobool226.not, label %do.end230, label %if.end233

do.end230:                                        ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #12
  %call232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #13
  br label %out

if.end233:                                        ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %tim_off to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %tim_off, align 2
  %call234 = call i32 @wcn36xx_smd_send_beacon(ptr noundef %1, ptr noundef %vif, ptr noundef nonnull %call225, i16 noundef zeroext %96, i16 noundef zeroext 0) #10
  call void @consume_skb(ptr noundef nonnull %call225) #10
  %97 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %switch.selectcmp.case1 = icmp eq i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %98)
  %switch.selectcmp.case2 = icmp eq i32 %98, 7
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %99 = select i1 %switch.selectcmp, i32 4, i32 3
  %call249 = call i32 @wcn36xx_smd_set_link_st(ptr noundef %1, ptr noundef %addr222, ptr noundef %addr222, i32 noundef %99) #10
  br label %out

if.else250:                                       ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #12
  %call251 = tail call i32 @wcn36xx_smd_delete_bss(ptr noundef %1, ptr noundef %vif) #10
  %addr252 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call256 = tail call i32 @wcn36xx_smd_set_link_st(ptr noundef %1, ptr noundef %addr252, ptr noundef %addr252, i32 noundef 0) #10
  br label %out

out:                                              ; preds = %if.else250, %if.end233, %do.end230, %if.end196.out_crit_edge, %do.end191, %cleanup
  call void @mutex_unlock(ptr noundef %conf_mutex) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_len) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_off) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @wcn36xx_prepare_multicast(ptr nocapture noundef readnone %hw, ptr noundef readonly %mc_list) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 1446) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end3
  %mc_addr_count = getelementptr inbounds %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %mc_addr_count to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %mc_addr_count, align 1
  %count = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 241, i32 %4)
  %cmp = icmp slt i32 %4, 241
  br i1 %cmp, label %for.cond.preheader, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

for.cond.preheader:                               ; preds = %if.end12
  %5 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.037 = load ptr, ptr %mc_list, align 4
  %cmp17.not38 = icmp eq ptr %ha.037, %mc_list
  br i1 %cmp17.not38, label %for.cond.preheader.if.end26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.039 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.037, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %mc_addr_count to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %mc_addr_count, align 1
  %arrayidx = getelementptr %struct.wcn36xx_hal_rcv_flt_mc_addr_list_type, ptr %call7.i.i, i32 0, i32 2, i32 %7
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.039, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %9 = load i32, ptr %mc_addr_count, align 1
  %inc = add i32 %9, 1
  store i32 %inc, ptr %mc_addr_count, align 1
  %10 = ptrtoint ptr %ha.039 to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.0 = load ptr, ptr %ha.039, align 4
  %cmp17.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp17.not, label %for.body.if.end26_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %for.body.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %11 = ptrtoint ptr %call7.i.i to i32
  %conv = zext i32 %11 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end9
  %retval.0 = phi i64 [ %conv, %if.end26 ], [ 0, %do.end9 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed, ptr nocapture noundef %total, i64 noundef %multicast) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %3 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total, align 4
  %and5 = and i32 %4, 2
  store i32 %and5, ptr %total, align 4
  %conv = trunc i64 %multicast to i32
  %5 = inttoptr i32 %conv to ptr
  %vif_list = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.040 = load ptr, ptr %vif_list, align 4
  %cmp.not41 = icmp eq ptr %tmp.040, %vif_list
  br i1 %cmp.not41, label %do.end4.for.end_crit_edge, label %do.end4.for.body_crit_edge

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

do.end4.for.end_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end4.for.body_crit_edge
  %tmp.042 = phi ptr [ %tmp.0, %for.inc.for.body_crit_edge ], [ %tmp.040, %do.end4.for.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %tmp.042, i32 -848
  %7 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total, align 4
  %and10 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %for.body.for.inc.sink.split_crit_edge

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp14 = icmp eq i32 %10, 2
  br i1 %cmp14, label %land.lhs.true, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %sta_assoc = getelementptr inbounds %struct.wcn36xx_vif, ptr %tmp.042, i32 0, i32 4
  %11 = ptrtoint ptr %sta_assoc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sta_assoc, align 1, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.inc.sink.split_crit_edge

land.lhs.true.for.inc.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc.sink.split:                               ; preds = %land.lhs.true.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.sink = phi ptr [ null, %for.body.for.inc.sink.split_crit_edge ], [ %5, %land.lhs.true.for.inc.sink.split_crit_edge ]
  %call13 = tail call i32 @wcn36xx_smd_set_mc_list(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %.sink) #10
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true.for.inc_crit_edge, %if.else.for.inc_crit_edge
  %13 = ptrtoint ptr %tmp.042 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0 = load ptr, ptr %tmp.042, align 4
  %cmp.not = icmp eq ptr %tmp.0, %vif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end4.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key_conf) #5 align 64 {
entry:
  %key = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %sta, null
  %drv_priv.i218 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %spec.select = select i1 %tobool.not, ptr null, ptr %drv_priv.i218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #10
  %2 = getelementptr inbounds [32 x i8], ptr %key, i32 0, i32 16
  %3 = getelementptr inbounds [32 x i8], ptr %key, i32 0, i32 24
  %4 = call ptr @memset(ptr %key, i32 255, i32 32)
  %5 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.do.body7_crit_edge, label %do.end

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #13
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %6 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and8 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.body21_crit_edge, label %do.end13

do.body7.do.body21_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 1
  %7 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher, align 8
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 5
  %9 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %10 to i32
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 7
  %11 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %keylen, align 2
  %conv15 = zext i8 %12 to i32
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 8
  %conv16 = zext i16 %14 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %cmd, i32 noundef %8, i32 noundef %conv, i32 noundef %conv15, i32 noundef %conv16) #13
  br label %do.body21

do.body21:                                        ; preds = %do.end13, %do.body7.do.body21_crit_edge
  %15 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and22 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.end30_crit_edge, label %if.then24

do.body21.do.end30_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %key25 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 8
  %keylen26 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 7
  %16 = ptrtoint ptr %keylen26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %keylen26, align 2
  %conv27 = zext i8 %17 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.183, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %key25, i32 noundef %conv27, i1 noundef zeroext false) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body21.do.end30_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %cipher31 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 1
  %18 = ptrtoint ptr %cipher31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cipher31, align 8
  %switch.tableidx = add i32 %19, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 5
  br i1 %20, label %switch.hole_check, label %do.end30.do.end40_crit_edge

do.end30.do.end40_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end40:                                         ; preds = %switch.hole_check.do.end40_crit_edge, %do.end30.do.end40_crit_edge
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i32 noundef %19) #13
  br label %out

switch.hole_check:                                ; preds = %do.end30
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end40_crit_edge, label %switch.lookup

switch.hole_check.do.end40_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wcn36xx_set_key, i32 0, i32 %switch.tableidx
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %encrypt_type37 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %23 = ptrtoint ptr %encrypt_type37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.load, ptr %encrypt_type37, align 4
  %24 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %cmd, label %do.end146 [
    i32 0, label %sw.bb44
    i32 1, label %sw.bb116
  ]

sw.bb44:                                          ; preds = %switch.lookup
  %encrypt_type45 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %25 = ptrtoint ptr %encrypt_type45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %encrypt_type45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp = icmp eq i32 %26, 3
  %key49 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 8
  br i1 %cmp, label %if.then47, label %if.else

if.then47:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %27 = call ptr @memcpy(ptr %key, ptr %key49, i32 16)
  %add.ptr54 = getelementptr %struct.ieee80211_key_conf, ptr %key_conf, i32 1, i32 8
  %28 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %add.ptr54, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %2, align 1
  %add.ptr59 = getelementptr i8, ptr %key49, i32 16
  %31 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %add.ptr59, align 1
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %3, align 1
  br label %if.end65

if.else:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %keylen63 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 7
  %34 = ptrtoint ptr %keylen63 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %keylen63, align 2
  %conv64 = zext i8 %35 to i32
  %36 = call ptr @memcpy(ptr %key, ptr %key49, i32 %conv64)
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then47
  %flags66 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 6
  %37 = ptrtoint ptr %flags66 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags66, align 8
  %39 = and i16 %38, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool69.not = icmp eq i16 %39, 0
  br i1 %tobool69.not, label %if.else84, label %if.then70

if.then70:                                        ; preds = %if.end65
  %is_data_encrypted = getelementptr inbounds %struct.wcn36xx_sta, ptr %spec.select, i32 0, i32 9
  %40 = ptrtoint ptr %is_data_encrypted to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %is_data_encrypted, align 1
  %41 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp71 = icmp eq i32 %42, 2
  br i1 %cmp71, label %if.then73, label %if.then70.if.end77_crit_edge

if.then70.if.end77_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call75 = tail call i32 @wcn36xx_smd_config_bss(ptr noundef %1, ptr noundef %vif, ptr noundef %sta, ptr noundef %addr, i1 noundef zeroext true) #10
  %call76 = tail call i32 @wcn36xx_smd_config_sta(ptr noundef %1, ptr noundef %vif, ptr noundef %sta) #10
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.then70.if.end77_crit_edge
  %43 = ptrtoint ptr %encrypt_type45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %encrypt_type45, align 4
  %keyidx79 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 5
  %45 = ptrtoint ptr %keyidx79 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %keyidx79, align 1
  %keylen80 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 7
  %47 = ptrtoint ptr %keylen80 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %keylen80, align 2
  %49 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i = icmp eq i32 %50, 2
  %bss_sta_index.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %spec.select, i32 0, i32 7
  %sta_index.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %spec.select, i32 0, i32 4
  %cond.in.in.i = select i1 %cmp.i, ptr %bss_sta_index.i, ptr %sta_index.i
  %51 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %cond.in4.i = load i8, ptr %cond.in.in.i, align 1
  %call83 = call i32 @wcn36xx_smd_set_stakey(ptr noundef %1, i32 noundef %44, i8 noundef zeroext %46, i8 noundef zeroext %48, ptr noundef nonnull %key, i8 noundef zeroext %cond.in4.i) #10
  br label %out

if.else84:                                        ; preds = %if.end65
  %bss_index = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %52 = ptrtoint ptr %bss_index to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bss_index, align 4
  %keyidx86 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 5
  %54 = ptrtoint ptr %keyidx86 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %keyidx86, align 1
  %keylen87 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 7
  %56 = ptrtoint ptr %keylen87 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %keylen87, align 2
  %call89 = call i32 @wcn36xx_smd_set_bsskey(ptr noundef %1, i32 noundef %26, i8 noundef zeroext %53, i8 noundef zeroext %55, i8 noundef zeroext %57, ptr noundef nonnull %key) #10
  %58 = ptrtoint ptr %cipher31 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cipher31, align 8
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %59, label %if.else84.out_crit_edge [
    i32 1027073, label %if.else84.if.then96_crit_edge
    i32 1027077, label %if.else84.if.then96_crit_edge232
  ]

if.else84.if.then96_crit_edge232:                 ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then96

if.else84.if.then96_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then96

if.else84.out_crit_edge:                          ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then96:                                        ; preds = %if.else84.if.then96_crit_edge, %if.else84.if.then96_crit_edge232
  %sta_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 8
  %61 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %sta_priv.0229 = load ptr, ptr %sta_list, align 4
  %cmp100.not230 = icmp eq ptr %sta_priv.0229, %sta_list
  br i1 %cmp100.not230, label %if.then96.out_crit_edge, label %if.then96.for.body_crit_edge

if.then96.for.body_crit_edge:                     ; preds = %if.then96
  br label %for.body

if.then96.out_crit_edge:                          ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then96.for.body_crit_edge
  %sta_priv.0231 = phi ptr [ %sta_priv.0, %for.body.for.body_crit_edge ], [ %sta_priv.0229, %if.then96.for.body_crit_edge ]
  %is_data_encrypted102 = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv.0231, i32 0, i32 9
  %62 = ptrtoint ptr %is_data_encrypted102 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %is_data_encrypted102, align 1
  %63 = ptrtoint ptr %encrypt_type45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %encrypt_type45, align 4
  %65 = ptrtoint ptr %keyidx86 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %keyidx86, align 1
  %67 = ptrtoint ptr %keylen87 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %keylen87, align 2
  %69 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp.i219 = icmp eq i32 %70, 2
  %bss_sta_index.i220 = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv.0231, i32 0, i32 7
  %sta_index.i221 = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv.0231, i32 0, i32 4
  %cond.in.in.i222 = select i1 %cmp.i219, ptr %bss_sta_index.i220, ptr %sta_index.i221
  %71 = ptrtoint ptr %cond.in.in.i222 to i32
  call void @__asan_load1_noabort(i32 %71)
  %cond.in4.i223 = load i8, ptr %cond.in.in.i222, align 1
  %call108 = call i32 @wcn36xx_smd_set_stakey(ptr noundef %1, i32 noundef %64, i8 noundef zeroext %66, i8 noundef zeroext %68, ptr noundef nonnull %key, i8 noundef zeroext %cond.in4.i223) #10
  %72 = ptrtoint ptr %sta_priv.0231 to i32
  call void @__asan_load4_noabort(i32 %72)
  %sta_priv.0 = load ptr, ptr %sta_priv.0231, align 4
  %cmp100.not = icmp eq ptr %sta_priv.0, %sta_list
  br i1 %cmp100.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb116:                                         ; preds = %switch.lookup
  %flags117 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 6
  %73 = ptrtoint ptr %flags117 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags117, align 8
  %75 = and i16 %74, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool120.not = icmp eq i16 %75, 0
  br i1 %tobool120.not, label %if.then121, label %if.else133

if.then121:                                       ; preds = %sw.bb116
  %bss_index122 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %76 = ptrtoint ptr %bss_index122 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bss_index122, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %cmp124.not = icmp eq i8 %77, -1
  br i1 %cmp124.not, label %if.then121.if.end131_crit_edge, label %if.then126

if.then121.if.end131_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then126:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  %encrypt_type127 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %78 = ptrtoint ptr %encrypt_type127 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %encrypt_type127, align 4
  %keyidx129 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 5
  %80 = ptrtoint ptr %keyidx129 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %keyidx129, align 1
  %call130 = tail call i32 @wcn36xx_smd_remove_bsskey(ptr noundef %1, i32 noundef %79, i8 noundef zeroext %77, i8 noundef zeroext %81) #10
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %if.then121.if.end131_crit_edge
  %encrypt_type132 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %82 = ptrtoint ptr %encrypt_type132 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %encrypt_type132, align 4
  br label %out

if.else133:                                       ; preds = %sw.bb116
  %is_data_encrypted134 = getelementptr inbounds %struct.wcn36xx_sta, ptr %spec.select, i32 0, i32 9
  %83 = ptrtoint ptr %is_data_encrypted134 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %is_data_encrypted134, align 1
  %aid = getelementptr inbounds %struct.wcn36xx_sta, ptr %spec.select, i32 0, i32 2
  %84 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %aid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool135.not = icmp eq i16 %85, 0
  br i1 %tobool135.not, label %if.else133.out_crit_edge, label %if.then136

if.else133.out_crit_edge:                         ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then136:                                       ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  %encrypt_type137 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %86 = ptrtoint ptr %encrypt_type137 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %encrypt_type137, align 4
  %keyidx138 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key_conf, i32 0, i32 5
  %88 = ptrtoint ptr %keyidx138 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %keyidx138, align 1
  %90 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp.i224 = icmp eq i32 %91, 2
  %bss_sta_index.i225 = getelementptr inbounds %struct.wcn36xx_sta, ptr %spec.select, i32 0, i32 7
  %sta_index.i226 = getelementptr inbounds %struct.wcn36xx_sta, ptr %spec.select, i32 0, i32 4
  %cond.in.in.i227 = select i1 %cmp.i224, ptr %bss_sta_index.i225, ptr %sta_index.i226
  %92 = ptrtoint ptr %cond.in.in.i227 to i32
  call void @__asan_load1_noabort(i32 %92)
  %cond.in4.i228 = load i8, ptr %cond.in.in.i227, align 1
  %call140 = tail call i32 @wcn36xx_smd_remove_stakey(ptr noundef %1, i32 noundef %87, i8 noundef zeroext %89, i8 noundef zeroext %cond.in4.i228) #10
  br label %out

do.end146:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %cmd) #13
  br label %out

out:                                              ; preds = %do.end146, %if.then136, %if.else133.out_crit_edge, %if.end131, %for.body.out_crit_edge, %if.then96.out_crit_edge, %if.else84.out_crit_edge, %if.end77, %do.end40
  %ret.0 = phi i32 [ -95, %do.end40 ], [ -95, %do.end146 ], [ 0, %if.then136 ], [ 0, %if.else133.out_crit_edge ], [ 0, %if.end131 ], [ 0, %if.end77 ], [ 0, %if.else84.out_crit_edge ], [ 0, %if.then96.out_crit_edge ], [ 0, %for.body.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_set_rekey_data(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %vif, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %rekey_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %kek = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = call ptr @memcpy(ptr %kek, ptr %3, i32 16)
  %kck4 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %kck4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kck4, align 4
  %7 = call ptr @memcpy(ptr %rekey_data, ptr %6, i32 16)
  %replay_ctr = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %replay_ctr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %replay_ctr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %replay_ctr7 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33
  %13 = ptrtoint ptr %replay_ctr7 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %replay_ctr7, align 8
  %valid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1
  %14 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %valid, align 8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %hw_req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_feat_caps = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 9
  %call = tail call i32 @get_feat_caps(ptr noundef %fw_feat_caps, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %req = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1
  %n_channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp = icmp ugt i32 %3, 48
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, i32 noundef %3) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %scan_lock = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %scan_lock, i32 noundef 0) #10
  %scan_req = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_req, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %scan_lock) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %scan_aborted = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %scan_aborted to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %scan_aborted, align 4
  %7 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %req, ptr %scan_req, align 4
  tail call void @mutex_unlock(ptr noundef %scan_lock) #10
  %call14 = tail call i32 @wcn36xx_smd_update_channel_list(ptr noundef %1, ptr noundef %req) #10
  %call16 = tail call i32 @wcn36xx_smd_start_hw_scan(ptr noundef %1, ptr noundef %vif, ptr noundef %req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ -16, %if.then7 ], [ %call16, %if.end9 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_cancel_hw_scan(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %scan_lock = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %scan_lock, i32 noundef 0) #10
  %scan_aborted = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %scan_aborted to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %scan_aborted, align 4
  tail call void @mutex_unlock(ptr noundef %scan_lock) #10
  %fw_feat_caps = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 9
  %call = tail call i32 @get_feat_caps(ptr noundef %fw_feat_caps, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @wcn36xx_smd_stop_hw_scan(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_sw_scan_start(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readnone %mac_addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %sw_scan = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %sw_scan to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %sw_scan, align 4
  %sw_scan_vif = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %sw_scan_vif to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vif, ptr %sw_scan_vif, align 4
  %sw_scan_channel = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 36
  %5 = ptrtoint ptr %sw_scan_channel to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %sw_scan_channel, align 1
  %sta_assoc = getelementptr inbounds %struct.wcn36xx_vif, ptr %drv_priv.i, i32 0, i32 4
  %6 = ptrtoint ptr %sta_assoc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sta_assoc, align 1, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %do.end4.if.end11_crit_edge, label %if.then6

do.end4.if.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value, align 2
  %conv9 = trunc i16 %13 to i8
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.end4.if.end11_crit_edge
  %conv9.sink = phi i8 [ %conv9, %if.then6 ], [ 0, %do.end4.if.end11_crit_edge ]
  %14 = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 34
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9.sink, ptr %14, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_sw_scan_complete(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %sw_scan_channel = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 36
  %3 = ptrtoint ptr %sw_scan_channel to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sw_scan_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %do.end3.if.end8_crit_edge, label %if.then5

do.end3.if.end8_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @wcn36xx_smd_end_scan(ptr noundef %1, i8 noundef zeroext %4) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end3.if.end8_crit_edge
  %sw_scan_init = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %sw_scan_init to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sw_scan_init, align 2, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %sw_scan_vif = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 37
  %7 = ptrtoint ptr %sw_scan_vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sw_scan_vif, align 4
  %call11 = tail call i32 @wcn36xx_smd_finish_scan(ptr noundef %1, i32 noundef 2, ptr noundef %8) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %sw_scan = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %sw_scan to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sw_scan, align 4
  %sw_scan_opchannel = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 34
  %10 = ptrtoint ptr %sw_scan_opchannel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sw_scan_opchannel, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i32 noundef %value) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %call4 = tail call i32 @wcn36xx_smd_update_cfg(ptr noundef %1, i32 noundef 11, i32 noundef %value) #10
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_sta_add(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv.i31 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %vif, ptr noundef %addr) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %ampdu_lock = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %ampdu_lock, ptr noundef nonnull @.str.200, ptr noundef nonnull @wcn36xx_sta_add.__key, i16 noundef signext 3) #10
  %vif10 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %vif10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %drv_priv.i, ptr %vif10, align 4
  %sta_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 8
  %4 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv_priv.i31, ptr noundef %sta_list, ptr noundef %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end5.list_add.exit_crit_edge

do.end5.list_add.exit_crit_edge:                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %drv_priv.i31, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %drv_priv.i31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %drv_priv.i31, align 4
  %prev3.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sta_list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %sta_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %drv_priv.i31, ptr %sta_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end5.list_add.exit_crit_edge
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not = icmp eq i32 %11, 2
  br i1 %cmp.not, label %list_add.exit.if.end15_crit_edge, label %if.then11

list_add.exit.if.end15_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chandef, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  tail call fastcc void @wcn36xx_update_allowed_rates(ptr noundef %sta, i32 noundef %17)
  %aid = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %18 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %aid, align 2
  %aid13 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %aid13 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %aid13, align 4
  %call14 = tail call i32 @wcn36xx_smd_config_sta(ptr noundef %1, ptr noundef %vif, ptr noundef %sta) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %list_add.exit.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_sta_remove(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %sta_index = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %sta_index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sta_index, align 4
  %conv = zext i8 %4 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %vif, ptr noundef %addr, i32 noundef %conv) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end4.list_del.exit_crit_edge

do.end4.list_del.exit_crit_edge:                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_priv.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end4.list_del.exit_crit_edge
  %11 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %drv_priv.i, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %sta_index5 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %sta_index5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sta_index5, align 4
  %call6 = tail call i32 @wcn36xx_smd_delete_sta(ptr noundef %1, i8 noundef zeroext %14) #10
  %vif7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %vif7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %vif7, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcn36xx_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %params) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sta = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  %tid4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %tid4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tid4, align 4
  %ssn5 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %8 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %7 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %5, i32 noundef %conv) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %conf_mutex = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #10
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %5, label %do.end73 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb21
    i32 6, label %sw.bb57
    i32 4, label %do.end9.sw.bb63_crit_edge
    i32 5, label %do.end9.sw.bb63_crit_edge148
    i32 3, label %do.end9.sw.bb63_crit_edge149
  ]

do.end9.sw.bb63_crit_edge149:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

do.end9.sw.bb63_crit_edge148:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

do.end9.sw.bb63_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

sw.bb:                                            ; preds = %do.end9
  %tid10 = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 3
  %10 = ptrtoint ptr %tid10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %7, ptr %tid10, align 2
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  %bss_sta_index.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 7
  %sta_index.i = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 0, i32 4
  %cond.in.in.i = select i1 %cmp.i, ptr %bss_sta_index.i, ptr %sta_index.i
  %13 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %cond.in4.i = load i8, ptr %cond.in.in.i, align 1
  %call12 = tail call i32 @wcn36xx_smd_add_ba_session(ptr noundef %1, ptr noundef %3, i16 noundef zeroext %7, ptr noundef %ssn5, i8 noundef zeroext 0, i8 noundef zeroext %cond.in4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %sw.bb.out_crit_edge, label %if.end15

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv16 = trunc i32 %call12 to i8
  %call17 = tail call i32 @wcn36xx_smd_add_ba(ptr noundef %1, i8 noundef zeroext %conv16) #10
  br label %out

sw.bb18:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i128 = icmp eq i32 %15, 2
  %bss_sta_index.i129 = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 7
  %sta_index.i130 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 0, i32 4
  %cond.in.in.i131 = select i1 %cmp.i128, ptr %bss_sta_index.i129, ptr %sta_index.i130
  %16 = ptrtoint ptr %cond.in.in.i131 to i32
  call void @__asan_load1_noabort(i32 %16)
  %cond.in4.i132 = load i8, ptr %cond.in.in.i131, align 1
  %call20 = tail call i32 @wcn36xx_smd_del_ba(ptr noundef %1, i16 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext %cond.in4.i132) #10
  br label %out

sw.bb21:                                          ; preds = %do.end9
  %ampdu_lock = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 6, i32 1, i32 1, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %ampdu_lock) #10
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 12, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ampdu_lock) #10
  %18 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and24 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %sw.bb21.do.end35_crit_edge, label %do.end29

sw.bb21.do.end35_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

do.end29:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ssn5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ssn5, align 2
  %conv31 = zext i16 %20 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %conv31) #13
  br label %do.end35

do.end35:                                         ; preds = %do.end29, %sw.bb21.do.end35_crit_edge
  %21 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i133 = icmp eq i32 %22, 2
  %bss_sta_index.i134 = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 7
  %sta_index.i135 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 0, i32 4
  %cond.in.in.i136 = select i1 %cmp.i133, ptr %bss_sta_index.i134, ptr %sta_index.i135
  %23 = ptrtoint ptr %cond.in.in.i136 to i32
  call void @__asan_load1_noabort(i32 %23)
  %cond.in4.i137 = load i8, ptr %cond.in.in.i136, align 1
  %call37 = tail call i32 @wcn36xx_smd_trigger_ba(ptr noundef %1, i8 noundef zeroext %cond.in4.i137, i16 noundef zeroext %7, ptr noundef %ssn5) #10
  %24 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and39 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end35.do.end50_crit_edge, label %do.end44

do.end35.do.end50_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end44:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %ssn5 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ssn5, align 2
  %conv46 = zext i16 %26 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %conv46) #13
  br label %do.end50

do.end50:                                         ; preds = %do.end44, %do.end35.do.end50_crit_edge
  %27 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i138 = icmp eq i32 %28, 2
  %cond.in.in.i141 = select i1 %cmp.i138, ptr %bss_sta_index.i134, ptr %sta_index.i135
  %29 = ptrtoint ptr %cond.in.in.i141 to i32
  call void @__asan_load1_noabort(i32 %29)
  %cond.in4.i142 = load i8, ptr %cond.in.in.i141, align 1
  %call52 = tail call i32 @wcn36xx_smd_add_ba_session(ptr noundef %1, ptr noundef %3, i16 noundef zeroext %7, ptr noundef %ssn5, i8 noundef zeroext 1, i8 noundef zeroext %cond.in4.i142) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  %call52. = select i1 %cmp53, i32 %call52, i32 1
  br label %out

sw.bb57:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %ampdu_lock58 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 6, i32 1, i32 1, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %ampdu_lock58) #10
  %idxprom60 = zext i16 %7 to i32
  %arrayidx61 = getelementptr %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 12, i32 %idxprom60
  %30 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %arrayidx61, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ampdu_lock58) #10
  br label %out

sw.bb63:                                          ; preds = %do.end9.sw.bb63_crit_edge, %do.end9.sw.bb63_crit_edge148, %do.end9.sw.bb63_crit_edge149
  %ampdu_lock64 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 6, i32 1, i32 1, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %ampdu_lock64) #10
  %idxprom66 = zext i16 %7 to i32
  %arrayidx67 = getelementptr %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 12, i32 %idxprom66
  %31 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx67, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ampdu_lock64) #10
  %32 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.i143 = icmp eq i32 %33, 2
  %bss_sta_index.i144 = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 7
  %sta_index.i145 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 0, i32 4
  %cond.in.in.i146 = select i1 %cmp.i143, ptr %bss_sta_index.i144, ptr %sta_index.i145
  %34 = ptrtoint ptr %cond.in.in.i146 to i32
  call void @__asan_load1_noabort(i32 %34)
  %cond.in4.i147 = load i8, ptr %cond.in.in.i146, align 1
  %call70 = tail call i32 @wcn36xx_smd_del_ba(ptr noundef %1, i16 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext %cond.in4.i147) #10
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %7) #10
  br label %out

do.end73:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #13
  br label %out

out:                                              ; preds = %do.end73, %sw.bb63, %sw.bb57, %do.end50, %sw.bb18, %if.end15, %sw.bb.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.end73 ], [ 0, %sw.bb63 ], [ 0, %sw.bb57 ], [ 0, %sw.bb18 ], [ 0, %if.end15 ], [ %call12, %sw.bb.out_crit_edge ], [ %call52., %do.end50 ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_tm_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @wcn36xx_dxe_tx_flush(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcn36xx_ipv6_addr_change(ptr nocapture noundef readnone %hw, ptr nocapture noundef %vif, ptr noundef %idev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tentative_addrs = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 29
  %0 = ptrtoint ptr %tentative_addrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tentative_addrs, align 8
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %idev, i32 0, i32 2
  %1 = ptrtoint ptr %addr_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn41 = load ptr, ptr %addr_list, align 4
  %cmp.not43 = icmp eq ptr %.pn41, %addr_list
  br i1 %cmp.not43, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %ifa.047 = getelementptr i8, ptr %.pn41, i32 -228
  %arrayidx = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %ifa.047, i32 16)
  %flags = getelementptr i8, ptr %.pn41, i32 -144
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.preheader.if.end_crit_edge, label %if.then

for.body.preheader.if.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %tentative_addrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tentative_addrs, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %tentative_addrs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.preheader.if.end_crit_edge
  %7 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and7 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %do.end

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and14 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond = select i1 %tobool15.not, ptr null, ptr @.str.218
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef %ifa.047, ptr noundef %cond) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, %addr_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %ifa.047.1 = getelementptr i8, ptr %.pn, i32 -228
  %arrayidx.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 4
  %11 = call ptr @memcpy(ptr %arrayidx.1, ptr %ifa.047.1, i32 16)
  %flags.1 = getelementptr i8, ptr %.pn, i32 -144
  %12 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.body.1.for.end_crit_edge, label %if.then.1

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %tentative_addrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tentative_addrs, align 4
  %or.i.1 = or i32 %15, 2
  store i32 %or.i.1, ptr %tentative_addrs, align 4
  br label %for.end

for.end:                                          ; preds = %if.then.1, %for.body.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %if.then.1 ], [ 2, %for.body.1.for.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  %num_target_ipv6_addrs = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 30
  %16 = ptrtoint ptr %num_target_ipv6_addrs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %idx.1, ptr %num_target_ipv6_addrs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_start_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_open(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_dxe_allocate_mem_pools(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_dxe_alloc_ctl_blks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_load_nv(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_feature_caps_exchange(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_dxe_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_debugfs_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_dxe_free_ctl_blks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_dxe_free_mem_pools(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_smd_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_feat_caps(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_debugfs_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcn36xx_dxe_deinit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_arp_offload(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_ipv6_ns_offload(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_gtk_offload(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_set_power_params(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_wlan_host_suspend_ind(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_host_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_gtk_offload_get_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_add_sta_self(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_delete_sta_self(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_end_scan(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_finish_scan(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_init_scan(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_start_scan(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_enter_imps(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_exit_imps(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_switch_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_pmc_enter_bmps_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_pmc_exit_bmps_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_set_link_st(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_join(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_config_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_delete_bss(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcn36xx_update_allowed_rates(ptr nocapture noundef %sta, i32 noundef %band) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %arrayidx = getelementptr [6 x i32], ptr %sta, i32 0, i32 %band
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %supported_rates = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 10
  %2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 62)
  %4 = ptrtoint ptr %supported_rates to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 6, ptr %supported_rates, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp = icmp ne i32 %band, 0
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end7_crit_edge, label %for.inc

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.inc:                                          ; preds = %entry
  %dsss_rates = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 2
  %5 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @wcn_2ghz_rates, i32 0, i32 0, i32 2), align 2
  %6 = ptrtoint ptr %dsss_rates to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %dsss_rates, align 2
  %shr = lshr i32 %1, 1
  %7 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %for.inc.if.end7_crit_edge, label %for.inc.1

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.inc.1:                                        ; preds = %for.inc
  %8 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @wcn_2ghz_rates, i32 0, i32 1, i32 2), align 2
  %arrayidx6.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx6.1, align 2
  %shr.1 = lshr i32 %1, 2
  %10 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.2 = icmp eq i32 %10, 0
  br i1 %tobool.not.2, label %for.inc.1.if.end7_crit_edge, label %for.inc.2

for.inc.1.if.end7_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.inc.2:                                        ; preds = %for.inc.1
  %11 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @wcn_2ghz_rates, i32 0, i32 2, i32 2), align 2
  %arrayidx6.2 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx6.2, align 2
  %shr.2 = lshr i32 %1, 3
  %13 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.3 = icmp eq i32 %13, 0
  br i1 %tobool.not.3, label %for.inc.2.if.end7_crit_edge, label %if.then4.3

for.inc.2.if.end7_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %14 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @wcn_2ghz_rates, i32 0, i32 3, i32 2), align 2
  %arrayidx6.3 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx6.3, align 2
  %shr.3 = lshr i32 %1, 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4.3, %for.inc.2.if.end7_crit_edge, %for.inc.1.if.end7_crit_edge, %for.inc.if.end7_crit_edge, %entry.if.end7_crit_edge
  %rates.2 = phi i32 [ %1, %entry.if.end7_crit_edge ], [ %shr.3, %if.then4.3 ], [ %shr.2, %for.inc.2.if.end7_crit_edge ], [ %shr.1, %for.inc.1.if.end7_crit_edge ], [ %shr, %for.inc.if.end7_crit_edge ]
  %ofdm_rates = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 1
  %and13 = and i32 %rates.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end7.for.inc21.7_crit_edge, label %for.inc21

if.end7.for.inc21.7_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.7

for.inc21:                                        ; preds = %if.end7
  %16 = load i16, ptr getelementptr inbounds ([8 x %struct.ieee80211_rate], ptr @wcn_5ghz_rates, i32 0, i32 0, i32 2), align 2
  %17 = ptrtoint ptr %ofdm_rates to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %ofdm_rates, align 2
  %18 = and i32 %rates.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not.1 = icmp eq i32 %18, 0
  br i1 %tobool14.not.1, label %for.inc21.for.inc21.7_crit_edge, label %for.inc21.1

for.inc21.for.inc21.7_crit_edge:                  ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.7

for.inc21.1:                                      ; preds = %for.inc21
  %19 = load i16, ptr getelementptr inbounds ([8 x %struct.ieee80211_rate], ptr @wcn_5ghz_rates, i32 0, i32 1, i32 2), align 2
  %arrayidx18.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx18.1, align 2
  %21 = and i32 %rates.2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not.2 = icmp eq i32 %21, 0
  br i1 %tobool14.not.2, label %for.inc21.1.for.inc21.7_crit_edge, label %for.inc21.2

for.inc21.1.for.inc21.7_crit_edge:                ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.7

for.inc21.2:                                      ; preds = %for.inc21.1
  %22 = load i16, ptr getelementptr inbounds ([8 x %struct.ieee80211_rate], ptr @wcn_5ghz_rates, i32 0, i32 2, i32 2), align 2
  %arrayidx18.2 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx18.2, align 2
  %24 = and i32 %rates.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not.3 = icmp eq i32 %24, 0
  br i1 %tobool14.not.3, label %for.inc21.2.for.inc21.7_crit_edge, label %for.inc21.3

for.inc21.2.for.inc21.7_crit_edge:                ; preds = %for.inc21.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.7

for.inc21.3:                                      ; preds = %for.inc21.2
  %25 = load i16, ptr getelementptr inbounds ([8 x %struct.ieee80211_rate], ptr @wcn_5ghz_rates, i32 0, i32 3, i32 2), align 2
  %arrayidx18.3 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayidx18.3, align 2
  %27 = and i32 %rates.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool14.not.4 = icmp eq i32 %27, 0
  br i1 %tobool14.not.4, label %for.inc21.3.for.inc21.7_crit_edge, label %for.inc21.4

for.inc21.3.for.inc21.7_crit_edge:                ; preds = %for.inc21.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.7

for.inc21.4:                                      ; preds = %for.inc21.3
  %28 = load i16, ptr getelementptr inbounds ([8 x %struct.ieee80211_rate], ptr @wcn_5ghz_rates, i32 0, i32 4, i32 2), align 2
  %arrayidx18.4 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx18.4, align 2
  %30 = and i32 %rates.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not.5 = icmp eq i32 %30, 0
  br i1 %tobool14.not.5, label %for.inc21.4.for.inc21.7_crit_edge, label %for.inc21.5

for.inc21.4.for.inc21.7_crit_edge:                ; preds = %for.inc21.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.7

for.inc21.5:                                      ; preds = %for.inc21.4
  %31 = load i16, ptr getelementptr inbounds ([8 x %struct.ieee80211_rate], ptr @wcn_5ghz_rates, i32 0, i32 5, i32 2), align 2
  %arrayidx18.5 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx18.5, align 2
  %33 = and i32 %rates.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool14.not.6 = icmp eq i32 %33, 0
  br i1 %tobool14.not.6, label %for.inc21.5.for.inc21.7_crit_edge, label %for.inc21.6

for.inc21.5.for.inc21.7_crit_edge:                ; preds = %for.inc21.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.7

for.inc21.6:                                      ; preds = %for.inc21.5
  %34 = load i16, ptr getelementptr inbounds ([8 x %struct.ieee80211_rate], ptr @wcn_5ghz_rates, i32 0, i32 6, i32 2), align 2
  %arrayidx18.6 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 9
  %35 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx18.6, align 2
  %36 = and i32 %rates.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool14.not.7 = icmp eq i32 %36, 0
  br i1 %tobool14.not.7, label %for.inc21.6.for.inc21.7_crit_edge, label %if.then15.7

for.inc21.6.for.inc21.7_crit_edge:                ; preds = %for.inc21.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.7

if.then15.7:                                      ; preds = %for.inc21.6
  call void @__sanitizer_cov_trace_pc() #12
  %37 = load i16, ptr getelementptr inbounds ([8 x %struct.ieee80211_rate], ptr @wcn_5ghz_rates, i32 0, i32 7, i32 2), align 2
  %arrayidx18.7 = getelementptr i16, ptr %ofdm_rates, i32 7
  %38 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx18.7, align 2
  br label %for.inc21.7

for.inc21.7:                                      ; preds = %if.then15.7, %for.inc21.6.for.inc21.7_crit_edge, %for.inc21.5.for.inc21.7_crit_edge, %for.inc21.4.for.inc21.7_crit_edge, %for.inc21.3.for.inc21.7_crit_edge, %for.inc21.2.for.inc21.7_crit_edge, %for.inc21.1.for.inc21.7_crit_edge, %for.inc21.for.inc21.7_crit_edge, %if.end7.for.inc21.7_crit_edge
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ht_supported, align 2, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool24.not = icmp eq i8 %40, 0
  br i1 %tobool24.not, label %for.inc21.7.if.end30_crit_edge, label %do.end

for.inc21.7.if.end30_crit_edge:                   ; preds = %for.inc21.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end:                                           ; preds = %for.inc21.7
  call void @__sanitizer_cov_trace_pc() #12
  %supported_mcs_set = getelementptr inbounds %struct.wcn36xx_sta, ptr %drv_priv.i, i32 0, i32 10, i32 6
  %mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %41 = call ptr @memcpy(ptr %supported_mcs_set, ptr %mcs, i32 10)
  br label %if.end30

if.end30:                                         ; preds = %do.end, %for.inc21.7.if.end30_crit_edge
  %vht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %42 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vht_cap, align 4, !range !503
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool31.not = icmp eq i8 %43, 0
  br i1 %tobool31.not, label %if.end30.if.end40_crit_edge, label %if.then32

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %supported_rates to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 7, ptr %supported_rates, align 2
  %vht_mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vht_mcs, align 4
  %vht_rx_mcs_map = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 1
  %47 = ptrtoint ptr %vht_rx_mcs_map to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %vht_rx_mcs_map, align 2
  %tx_mcs_map = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2, i32 2
  %48 = ptrtoint ptr %tx_mcs_map to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tx_mcs_map, align 4
  %vht_tx_mcs_map = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 5
  %50 = ptrtoint ptr %vht_tx_mcs_map to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %vht_tx_mcs_map, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %if.end30.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_config_sta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_add_beacon_filter(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_enable_keep_alive_null_packet(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_proberesp_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_update_proberesp_tmpl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_send_beacon(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_set_mc_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_set_stakey(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_set_bsskey(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_remove_bsskey(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_remove_stakey(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_update_channel_list(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_start_hw_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_stop_hw_scan(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_update_cfg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_delete_sta(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_add_ba_session(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_add_ba(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_del_ba(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_trigger_ba(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_dxe_tx_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_state_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_smem_state_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 256)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 256)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !349, !350, !351, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !366, !368, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !386, !388, !389, !391, !392, !393, !394, !396, !397, !398, !399, !401, !402, !403, !405, !406, !407, !409, !410, !411, !413, !414, !415, !416, !418, !419, !420, !421, !422, !424, !426, !427, !428, !429, !431, !433, !434, !435, !437, !439, !440, !441, !443, !445, !446, !447, !449, !451, !452, !453, !455, !457, !459, !461, !462, !463, !465, !467, !468, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !490, !491, !492}
!llvm.module.flags = !{!494, !495, !496, !497, !498, !499, !500, !501}
!llvm.ident = !{!502}

!0 = !{ptr @__param_debug_mask, !1, !"__param_debug_mask", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_masktype490, !1, !"__UNIQUE_ID_debug_masktype490", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug_mask491, !4, !"__UNIQUE_ID_debug_mask491", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 34, i32 1}
!5 = !{ptr @__initcall__kmod_wcn36xx__493_1658_wcn36xx_driver_init6, !6, !"__initcall__kmod_wcn36xx__493_1658_wcn36xx_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1658, i32 1}
!7 = !{ptr @__exitcall_wcn36xx_driver_exit, !6, !"__exitcall_wcn36xx_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file494, !9, !"__UNIQUE_ID_file494", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1660, i32 1}
!10 = !{ptr @__UNIQUE_ID_license495, !9, !"__UNIQUE_ID_license495", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author496, !12, !"__UNIQUE_ID_author496", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1661, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware497, !14, !"__UNIQUE_ID_firmware497", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1662, i32 1}
!15 = !{ptr @wcn36xx_dbg_mask, !16, !"wcn36xx_dbg_mask", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 32, i32 14}
!17 = !{ptr @__param_str_debug_mask, !1, !"__param_str_debug_mask", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1653, i32 13}
!20 = !{ptr @wcn36xx_driver, !21, !"wcn36xx_driver", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1649, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1539, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wcn36xx_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @wcn36xx_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1545, i32 3}
!30 = !{ptr @wcn36xx_probe._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @wcn36xx_probe._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @wcn36xx_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1554, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wcn36xx_probe.__key.8, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1555, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wcn36xx_probe.__key.10, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1556, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1567, i32 3}
!43 = !{ptr @wcn36xx_probe._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @wcn36xx_probe._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1571, i32 17}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1572, i32 59}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1574, i32 3}
!51 = !{ptr @wcn36xx_probe._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @wcn36xx_probe._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1578, i32 52}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1580, i32 3}
!57 = !{ptr @wcn36xx_probe._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @wcn36xx_probe._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1585, i32 44}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1587, i32 3}
!63 = !{ptr @wcn36xx_probe._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wcn36xx_probe._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1591, i32 3}
!67 = !{ptr @wcn36xx_probe._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wcn36xx_probe._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @wcn36xx_ops, !70, !"wcn36xx_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1329, i32 35}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 281, i32 2}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @wcn36xx_start._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @wcn36xx_start._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 286, i32 3}
!78 = !{ptr @wcn36xx_start._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @wcn36xx_start._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 293, i32 3}
!82 = !{ptr @wcn36xx_start._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @wcn36xx_start._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 299, i32 3}
!86 = !{ptr @wcn36xx_start._entry.39, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @wcn36xx_start._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 305, i32 3}
!90 = !{ptr @wcn36xx_start._entry.42, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @wcn36xx_start._entry_ptr.44, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 311, i32 3}
!94 = !{ptr @wcn36xx_start._entry.45, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @wcn36xx_start._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 318, i32 4}
!98 = !{ptr @wcn36xx_start._entry.48, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @wcn36xx_start._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 326, i32 3}
!102 = !{ptr @wcn36xx_start._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @wcn36xx_start._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @wcn36xx_start.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 333, i32 2}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 272, i32 4}
!109 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @wcn36xx_feat_caps_info._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @wcn36xx_feat_caps_info._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 262, i32 10}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 196, i32 2}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 197, i32 2}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 198, i32 2}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 199, i32 2}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 200, i32 2}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 201, i32 2}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 202, i32 2}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 203, i32 2}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 204, i32 2}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 205, i32 2}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 206, i32 2}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 207, i32 2}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 208, i32 2}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 209, i32 2}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 210, i32 2}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 211, i32 2}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 212, i32 2}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 213, i32 2}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 214, i32 2}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 215, i32 2}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 216, i32 2}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 217, i32 2}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 218, i32 2}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 219, i32 2}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 220, i32 2}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 221, i32 2}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 222, i32 2}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 223, i32 2}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 224, i32 2}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 225, i32 2}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 226, i32 2}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 227, i32 2}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 228, i32 2}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 229, i32 2}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 230, i32 2}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 231, i32 2}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 232, i32 2}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 233, i32 2}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 234, i32 2}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 235, i32 2}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 236, i32 2}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 237, i32 2}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 238, i32 2}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 239, i32 2}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 240, i32 2}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 241, i32 2}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 242, i32 2}
!208 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 243, i32 2}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 244, i32 2}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 245, i32 2}
!214 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 246, i32 2}
!216 = !{ptr @.str.109, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 247, i32 2}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 248, i32 2}
!220 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 249, i32 2}
!222 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 250, i32 2}
!224 = !{ptr @.str.113, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 251, i32 2}
!226 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 252, i32 2}
!228 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 253, i32 2}
!230 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 254, i32 2}
!232 = !{ptr @.str.117, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 255, i32 2}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 256, i32 2}
!236 = !{ptr @wcn36xx_caps_names, !237, !"wcn36xx_caps_names", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 195, i32 27}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 353, i32 2}
!240 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @wcn36xx_stop._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @wcn36xx_stop._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1136, i32 2}
!245 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @wcn36xx_suspend._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @wcn36xx_suspend._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1173, i32 2}
!250 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @wcn36xx_resume._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @wcn36xx_resume._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.125, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1039, i32 2}
!255 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @wcn36xx_add_interface._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @wcn36xx_add_interface._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.128, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1046, i32 3}
!260 = !{ptr @wcn36xx_add_interface._entry.127, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @wcn36xx_add_interface._entry_ptr.129, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.130, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1023, i32 2}
!264 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @wcn36xx_remove_interface._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @wcn36xx_remove_interface._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 407, i32 2}
!269 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @wcn36xx_config._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @wcn36xx_config._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.135, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 413, i32 3}
!274 = !{ptr @wcn36xx_config._entry.134, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @wcn36xx_config._entry_ptr.136, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 848, i32 2}
!278 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @wcn36xx_bss_info_changed._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @wcn36xx_bss_info_changed._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.140, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 854, i32 3}
!283 = !{ptr @wcn36xx_bss_info_changed._entry.139, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.141, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.143, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 862, i32 3}
!287 = !{ptr @wcn36xx_bss_info_changed._entry.142, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.144, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.146, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 884, i32 3}
!291 = !{ptr @wcn36xx_bss_info_changed._entry.145, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.147, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.148, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 886, i32 3}
!295 = !{ptr @.str.149, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.151, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 901, i32 4}
!298 = !{ptr @wcn36xx_bss_info_changed._entry.150, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.152, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.154, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 917, i32 5}
!302 = !{ptr @wcn36xx_bss_info_changed._entry.153, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.155, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.157, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 941, i32 4}
!306 = !{ptr @wcn36xx_bss_info_changed._entry.156, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.158, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.160, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 955, i32 3}
!310 = !{ptr @wcn36xx_bss_info_changed._entry.159, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.161, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.163, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 958, i32 4}
!314 = !{ptr @wcn36xx_bss_info_changed._entry.162, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.164, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.166, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 968, i32 3}
!318 = !{ptr @wcn36xx_bss_info_changed._entry.165, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.167, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.169, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 980, i32 5}
!322 = !{ptr @wcn36xx_bss_info_changed._entry.168, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @wcn36xx_bss_info_changed._entry_ptr.170, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @wcn_2ghz_rates, !325, !"wcn_2ghz_rates", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 105, i32 30}
!326 = !{ptr @wcn_5ghz_rates, !327, !"wcn_5ghz_rates", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 120, i32 30}
!328 = !{ptr @.str.171, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 502, i32 2}
!330 = !{ptr @.str.172, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @wcn36xx_prepare_multicast._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @wcn36xx_prepare_multicast._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.174, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 505, i32 3}
!335 = !{ptr @wcn36xx_prepare_multicast._entry.173, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @wcn36xx_prepare_multicast._entry_ptr.175, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.176, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 475, i32 2}
!339 = !{ptr @.str.177, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @wcn36xx_configure_filter._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @wcn36xx_configure_filter._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.178, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 548, i32 2}
!344 = !{ptr @.str.179, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @wcn36xx_set_key._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @wcn36xx_set_key._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.181, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 549, i32 2}
!349 = !{ptr @wcn36xx_set_key._entry.180, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @wcn36xx_set_key._entry_ptr.182, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.183, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 552, i32 2}
!353 = !{ptr @.str.185, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 572, i32 3}
!355 = !{ptr @wcn36xx_set_key._entry.184, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @wcn36xx_set_key._entry_ptr.186, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.188, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 656, i32 3}
!359 = !{ptr @wcn36xx_set_key._entry.187, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @wcn36xx_set_key._entry_ptr.189, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.190, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 682, i32 3}
!363 = !{ptr @.str.191, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @wcn36xx_hw_scan._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @wcn36xx_hw_scan._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.192, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 725, i32 2}
!368 = !{ptr @.str.193, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @wcn36xx_sw_scan_start._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @wcn36xx_sw_scan_start._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.194, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 741, i32 2}
!373 = !{ptr @.str.195, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @wcn36xx_sw_scan_complete._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @wcn36xx_sw_scan_complete._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.196, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1009, i32 2}
!378 = !{ptr @.str.197, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @wcn36xx_set_rts_threshold._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @wcn36xx_set_rts_threshold._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.198, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1069, i32 2}
!383 = !{ptr @.str.199, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @wcn36xx_sta_add._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @wcn36xx_sta_add._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @wcn36xx_sta_add.__key, !387, !"__key", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1074, i32 2}
!388 = !{ptr @.str.200, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.201, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1100, i32 2}
!391 = !{ptr @.str.202, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @wcn36xx_sta_remove._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @wcn36xx_sta_remove._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.203, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1227, i32 2}
!396 = !{ptr @.str.204, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @wcn36xx_ampdu_action._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @wcn36xx_ampdu_action._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.206, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1252, i32 3}
!401 = !{ptr @wcn36xx_ampdu_action._entry.205, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @wcn36xx_ampdu_action._entry_ptr.207, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.209, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1254, i32 3}
!405 = !{ptr @wcn36xx_ampdu_action._entry.208, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @wcn36xx_ampdu_action._entry_ptr.210, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.212, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1282, i32 3}
!409 = !{ptr @wcn36xx_ampdu_action._entry.211, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @wcn36xx_ampdu_action._entry_ptr.213, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.214, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1325, i32 3}
!413 = !{ptr @.str.215, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @wcn36xx_flush._entry, !412, !"_entry", i1 false, i1 false}
!415 = !{ptr @wcn36xx_flush._entry_ptr, !412, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.216, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1310, i32 3}
!418 = !{ptr @.str.217, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @wcn36xx_ipv6_addr_change._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @wcn36xx_ipv6_addr_change._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.218, !417, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.219, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1454, i32 59}
!424 = !{ptr @.str.220, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1456, i32 3}
!426 = !{ptr @.str.221, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @wcn36xx_platform_get_resources._entry, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @wcn36xx_platform_get_resources._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.222, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1462, i32 59}
!431 = !{ptr @.str.224, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1464, i32 3}
!433 = !{ptr @wcn36xx_platform_get_resources._entry.223, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @wcn36xx_platform_get_resources._entry_ptr.225, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.226, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1471, i32 4}
!437 = !{ptr @.str.228, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1473, i32 3}
!439 = !{ptr @wcn36xx_platform_get_resources._entry.227, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @wcn36xx_platform_get_resources._entry_ptr.229, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.230, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1479, i32 4}
!443 = !{ptr @.str.232, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1481, i32 3}
!445 = !{ptr @wcn36xx_platform_get_resources._entry.231, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @wcn36xx_platform_get_resources._entry_ptr.233, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.234, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1485, i32 58}
!449 = !{ptr @.str.236, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1487, i32 3}
!451 = !{ptr @wcn36xx_platform_get_resources._entry.235, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @wcn36xx_platform_get_resources._entry_ptr.237, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.238, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1491, i32 56}
!455 = !{ptr @.str.239, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1494, i32 46}
!457 = !{ptr @.str.240, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1494, i32 59}
!459 = !{ptr @.str.242, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1497, i32 3}
!461 = !{ptr @wcn36xx_platform_get_resources._entry.241, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @wcn36xx_platform_get_resources._entry_ptr.243, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.244, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1503, i32 59}
!465 = !{ptr @.str.246, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1506, i32 3}
!467 = !{ptr @wcn36xx_platform_get_resources._entry.245, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @wcn36xx_platform_get_resources._entry_ptr.247, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.248, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1512, i32 46}
!471 = !{ptr @.str.249, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1514, i32 42}
!473 = !{ptr @.str.250, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1516, i32 42}
!475 = !{ptr @wcn36xx_init_ieee80211.cipher_suites, !476, !"cipher_suites", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1392, i32 19}
!477 = !{ptr @wcn_band_2ghz, !478, !"wcn_band_2ghz", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 131, i32 40}
!479 = !{ptr @wcn_2ghz_channels, !480, !"wcn_2ghz_channels", i1 false, i1 false}
!480 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 52, i32 33}
!481 = !{ptr @wcn_band_5ghz, !482, !"wcn_band_5ghz", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 154, i32 40}
!483 = !{ptr @wcn_5ghz_channels, !484, !"wcn_5ghz_channels", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 70, i32 33}
!485 = !{ptr @wowlan_support, !486, !"wowlan_support", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 179, i32 42}
!487 = !{ptr @.str.253, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1621, i32 2}
!489 = !{ptr @.str.254, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @wcn36xx_remove._entry, !488, !"_entry", i1 false, i1 false}
!491 = !{ptr @wcn36xx_remove._entry_ptr, !488, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @wcn36xx_of_match, !493, !"wcn36xx_of_match", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/ath/wcn36xx/main.c", i32 1643, i32 34}
!494 = !{i32 1, !"wchar_size", i32 2}
!495 = !{i32 1, !"min_enum_size", i32 4}
!496 = !{i32 8, !"branch-target-enforcement", i32 0}
!497 = !{i32 8, !"sign-return-address", i32 0}
!498 = !{i32 8, !"sign-return-address-all", i32 0}
!499 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!500 = !{i32 7, !"uwtable", i32 1}
!501 = !{i32 7, !"frame-pointer", i32 2}
!502 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!503 = !{i8 0, i8 2}
!504 = !{!"auto-init"}
