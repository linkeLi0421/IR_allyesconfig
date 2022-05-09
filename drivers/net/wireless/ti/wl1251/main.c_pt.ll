; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wl1251_init_ieee80211\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1251_init_ieee80211\09\09\09\09"
module asm "\09.long\09__crc_wl1251_init_ieee80211\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1251_init_ieee80211:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1251_init_ieee80211\22\09\09\09\09\09"
module asm "__kstrtabns_wl1251_init_ieee80211:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl1251_alloc_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1251_alloc_hw\09\09\09\09"
module asm "\09.long\09__crc_wl1251_alloc_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1251_alloc_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1251_alloc_hw\22\09\09\09\09\09"
module asm "__kstrtabns_wl1251_alloc_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wl1251_free_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_wl1251_free_hw\09\09\09\09"
module asm "\09.long\09__crc_wl1251_free_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wl1251_free_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22wl1251_free_hw\22\09\09\09\09\09"
module asm "__kstrtabns_wl1251_free_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1251_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.acx_data_path_params_resp = type { %struct.acx_header, i16, i16, i8, i8, [2 x i8], i32, i32, i32, i32, i32 }
%struct.acx_header = type { %struct.wl1251_cmd_header, i16, i16 }
%struct.wl1251_cmd_header = type { i16, i16, [0 x i8] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_qos_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, i16 }
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
%struct.wl1251_filter_params = type { i8, i32, [8 x [6 x i8]] }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.wl1251_cmd_set_keys = type { %struct.wl1251_cmd_header, [6 x i8], i16, i16, i8, i8, i8, i8, [6 x i8], [32 x i8], [4 x i16], [4 x i32] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }

@wl1251_band_2ghz = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @wl1251_channels, ptr @wl1251_rates, i32 0, i32 13, i32 12, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@wl1251_init_ieee80211.nokia_oui = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1F\DF", [29 x i8] zeroinitializer }, align 32
@wl1251_init_ieee80211._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014wl1251: WARNING MAC address in eeprom or nvs data is not valid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1251_init_ieee80211\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wl1251/main.c\00", [58 x i8] zeroinitializer }, align 32
@wl1251_init_ieee80211._entry_ptr = internal global ptr @wl1251_init_ieee80211._entry, section ".printk_index", align 4
@wl1251_init_ieee80211._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wl1251: WARNING Setting random MAC address: %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@wl1251_init_ieee80211._entry_ptr.5 = internal global ptr @wl1251_init_ieee80211._entry.3, section ".printk_index", align 4
@wl1251_init_ieee80211._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016wl1251: initialized\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1251_init_ieee80211._entry_ptr.8 = internal global ptr @wl1251_init_ieee80211._entry.6, section ".printk_index", align 4
@__kstrtab_wl1251_init_ieee80211 = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1251_init_ieee80211 = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1251_init_ieee80211 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1251_init_ieee80211 to i32), ptr @__kstrtab_wl1251_init_ieee80211, ptr @__kstrtabns_wl1251_init_ieee80211 }, section "___ksymtab_gpl+wl1251_init_ieee80211", align 4
@wl1251_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @wl1251_op_tx, ptr @wl1251_op_start, ptr @wl1251_op_stop, ptr null, ptr null, ptr null, ptr @wl1251_op_add_interface, ptr null, ptr @wl1251_op_remove_interface, ptr @wl1251_op_config, ptr @wl1251_op_bss_info_changed, ptr null, ptr null, ptr @wl1251_op_prepare_multicast, ptr @wl1251_op_configure_filter, ptr null, ptr null, ptr @wl1251_op_set_key, ptr null, ptr null, ptr null, ptr @wl1251_op_hw_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wl1251_op_set_rts_threshold, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wl1251_op_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wl1251_op_get_survey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013wl1251: ERROR could not alloc ieee80211_hw\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_alloc_hw\00", [16 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw._entry_ptr = internal global ptr @wl1251_alloc_hw._entry, section ".printk_index", align 4
@wl1251_alloc_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&wl->elp_work)->work)\00", [54 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&wl->elp_work)->timer\00", [40 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&wl->irq_work)\00", [63 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&wl->tx_work)\00", [32 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wl->mutex\00", [21 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&wl->wl_lock\00", [19 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.2, i32 1638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013wl1251: ERROR could not allocate memory for rx descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1251_alloc_hw._entry_ptr.24 = internal global ptr @wl1251_alloc_hw._entry.22, section ".printk_index", align 4
@__kstrtab_wl1251_alloc_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1251_alloc_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1251_alloc_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1251_alloc_hw to i32), ptr @__kstrtab_wl1251_alloc_hw, ptr @__kstrtabns_wl1251_alloc_hw }, section "___ksymtab_gpl+wl1251_alloc_hw", align 4
@__kstrtab_wl1251_free_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_wl1251_free_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_wl1251_free_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wl1251_free_hw to i32), ptr @__kstrtab_wl1251_free_hw, ptr @__kstrtabns_wl1251_free_hw }, section "___ksymtab_gpl+wl1251_free_hw", align 4
@__UNIQUE_ID_description354 = internal constant [54 x i8] c"wl1251.description=TI wl1251 Wireless LAN Driver Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [50 x i8] c"wl1251.file=drivers/net/wireless/ti/wl1251/wl1251\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [19 x i8] c"wl1251.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [44 x i8] c"wl1251.author=Kalle Valo <kvalo@adurom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [46 x i8] c"wl1251.firmware=ti-connectivity/wl1251-fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [47 x i8] c"wl1251.firmware=ti-connectivity/wl1251-nvs.bin\00", section ".modinfo", align 1
@wl1251_channels = internal global { [13 x %struct.ieee80211_channel], [168 x i8] } { [13 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [168 x i8] zeroinitializer }, align 32
@wl1251_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 1, i16 1 }, %struct.ieee80211_rate { i32 1, i16 20, i16 2, i16 2 }, %struct.ieee80211_rate { i32 1, i16 55, i16 4, i16 4 }, %struct.ieee80211_rate { i32 1, i16 110, i16 32, i16 32 }, %struct.ieee80211_rate { i32 0, i16 60, i16 8, i16 8 }, %struct.ieee80211_rate { i32 0, i16 90, i16 16, i16 16 }, %struct.ieee80211_rate { i32 0, i16 120, i16 64, i16 64 }, %struct.ieee80211_rate { i32 0, i16 180, i16 128, i16 128 }, %struct.ieee80211_rate { i32 0, i16 240, i16 512, i16 512 }, %struct.ieee80211_rate { i32 0, i16 360, i16 1024, i16 1024 }, %struct.ieee80211_rate { i32 0, i16 480, i16 2048, i16 2048 }, %struct.ieee80211_rate { i32 0, i16 540, i16 4096, i16 4096 }], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti-connectivity/wl1251-nvs.bin\00", [33 x i8] zeroinitializer }, align 32
@wl1251_fetch_nvs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wl1251: ERROR could not get nvs file: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl1251_fetch_nvs\00", [47 x i8] zeroinitializer }, align 32
@wl1251_fetch_nvs._entry_ptr = internal global ptr @wl1251_fetch_nvs._entry, section ".printk_index", align 4
@wl1251_fetch_nvs._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013wl1251: ERROR nvs size is not multiple of 32 bits: %zu\0A\00", [38 x i8] zeroinitializer }, align 32
@wl1251_fetch_nvs._entry_ptr.30 = internal global ptr @wl1251_fetch_nvs._entry.28, section ".printk_index", align 4
@wl1251_fetch_nvs._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013wl1251: ERROR could not allocate memory for the nvs file\0A\00", [36 x i8] zeroinitializer }, align 32
@wl1251_fetch_nvs._entry_ptr.33 = internal global ptr @wl1251_fetch_nvs._entry.31, section ".printk_index", align 4
@wl1251_read_eeprom_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014wl1251: WARNING failed to read MAC address from EEPROM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_read_eeprom_mac\00", [41 x i8] zeroinitializer }, align 32
@wl1251_read_eeprom_mac._entry_ptr = internal global ptr @wl1251_read_eeprom_mac._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wl1251_register_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wl1251: ERROR unable to register mac80211 hw: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1251_register_hw\00", [45 x i8] zeroinitializer }, align 32
@wl1251_register_hw._entry_ptr = internal global ptr @wl1251_register_hw._entry, section ".printk_index", align 4
@wl1251_register_hw._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016wl1251: loaded\0A\00", [46 x i8] zeroinitializer }, align 32
@wl1251_register_hw._entry_ptr.41 = internal global ptr @wl1251_register_hw._entry.39, section ".printk_index", align 4
@wl1251_op_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wl1251: ERROR cannot start because not in off state: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_op_start\00", [16 x i8] zeroinitializer }, align 32
@wl1251_op_start._entry_ptr = internal global ptr @wl1251_op_start._entry, section ".printk_index", align 4
@wl1251_op_start._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017wl1251: firmware booted (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@wl1251_op_start._entry_ptr.46 = internal global ptr @wl1251_op_start._entry.44, section ".printk_index", align 4
@wl1251_chip_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wl1251: ERROR unsupported chip id: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl1251_chip_wakeup\00", [45 x i8] zeroinitializer }, align 32
@wl1251_chip_wakeup._entry_ptr = internal global ptr @wl1251_chip_wakeup._entry, section ".printk_index", align 4
@wl1251_fw_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014wl1251: WARNING WLAN not ready\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl1251_fw_wakeup\00", [47 x i8] zeroinitializer }, align 32
@wl1251_fw_wakeup._entry_ptr = internal global ptr @wl1251_fw_wakeup._entry, section ".printk_index", align 4
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti-connectivity/wl1251-fw.bin\00", [34 x i8] zeroinitializer }, align 32
@wl1251_fetch_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wl1251: ERROR could not get firmware: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wl1251_fetch_firmware\00", [42 x i8] zeroinitializer }, align 32
@wl1251_fetch_firmware._entry_ptr = internal global ptr @wl1251_fetch_firmware._entry, section ".printk_index", align 4
@wl1251_fetch_firmware._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013wl1251: ERROR firmware size is not multiple of 32 bits: %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@wl1251_fetch_firmware._entry_ptr.56 = internal global ptr @wl1251_fetch_firmware._entry.54, section ".printk_index", align 4
@wl1251_fetch_firmware._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013wl1251: ERROR could not allocate memory for the firmware\0A\00", [36 x i8] zeroinitializer }, align 32
@wl1251_fetch_firmware._entry_ptr.59 = internal global ptr @wl1251_fetch_firmware._entry.57, section ".printk_index", align 4
@wl1251_op_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017wl1251: down\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1251_op_stop\00", [17 x i8] zeroinitializer }, align 32
@wl1251_op_stop._entry_ptr = internal global ptr @wl1251_op_stop._entry, section ".printk_index", align 4
@__const.wl1251_op_stop.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@wl1251_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014wl1251: WARNING join timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wl1251_join\00", [20 x i8] zeroinitializer }, align 32
@wl1251_join._entry_ptr = internal global ptr @wl1251_join._entry, section ".printk_index", align 4
@wl1251_op_bss_info_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014wl1251: WARNING Set slot time failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wl1251_op_bss_info_changed\00", [37 x i8] zeroinitializer }, align 32
@wl1251_op_bss_info_changed._entry_ptr = internal global ptr @wl1251_op_bss_info_changed._entry, section ".printk_index", align 4
@wl1251_op_bss_info_changed._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014wl1251: WARNING Set ctsprotect failed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1251_op_bss_info_changed._entry_ptr.68 = internal global ptr @wl1251_op_bss_info_changed._entry.66, section ".printk_index", align 4
@wl1251_build_null_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014wl1251: WARNING cmd build null data failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_build_null_data\00", [41 x i8] zeroinitializer }, align 32
@wl1251_build_null_data._entry_ptr = internal global ptr @wl1251_build_null_data._entry, section ".printk_index", align 4
@wl1251_op_prepare_multicast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013wl1251: ERROR Out of memory setting filters.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1251_op_prepare_multicast\00", [36 x i8] zeroinitializer }, align 32
@wl1251_op_prepare_multicast._entry_ptr = internal global ptr @wl1251_op_prepare_multicast._entry, section ".printk_index", align 4
@wl1251_op_set_key.bcast_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@wl1251_op_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013wl1251: ERROR Unsupported key cmd 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl1251_op_set_key\00", [46 x i8] zeroinitializer }, align 32
@wl1251_op_set_key._entry_ptr = internal global ptr @wl1251_op_set_key._entry, section ".printk_index", align 4
@wl1251_op_set_key._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013wl1251: ERROR Set KEY type failed\0A\00", [59 x i8] zeroinitializer }, align 32
@wl1251_op_set_key._entry_ptr.77 = internal global ptr @wl1251_op_set_key._entry.75, section ".printk_index", align 4
@wl1251_op_set_key._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014wl1251: WARNING could not set keys\0A\00", [58 x i8] zeroinitializer }, align 32
@wl1251_op_set_key._entry_ptr.80 = internal global ptr @wl1251_op_set_key._entry.78, section ".printk_index", align 4
@wl1251_set_key_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013wl1251: ERROR Unknown key cipher 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl1251_set_key_type\00", [44 x i8] zeroinitializer }, align 32
@wl1251_set_key_type._entry_ptr = internal global ptr @wl1251_set_key_type._entry, section ".printk_index", align 4
@wl1251_op_set_rts_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014wl1251: WARNING wl1251_op_set_rts_threshold failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1251_op_set_rts_threshold\00", [36 x i8] zeroinitializer }, align 32
@wl1251_op_set_rts_threshold._entry_ptr = internal global ptr @wl1251_op_set_rts_threshold._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@wl1251_irq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014wl1251: WARNING RX: FW and host out of sync: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl1251_irq_work\00", [16 x i8] zeroinitializer }, align 32
@wl1251_irq_work._entry_ptr = internal global ptr @wl1251_irq_work._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 117571841, i64 117637377]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"wl1251_band_2ghz\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1345, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"nokia_oui\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1552, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1557, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1558, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1566, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"wl1251_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1352, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1583, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1596, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1626, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1627, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1630, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1631, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1638, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"wl1251_channels\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1268, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"wl1251_rates\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1225, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 97, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 100, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 105, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 114, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1418, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1495, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1501, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 379, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 403, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 181, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 138, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 58, i32 30 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 61, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 66, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 76, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 422, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 332, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1155, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1173, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 561, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 730, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [11 x i8] c"bcast_addr\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 876, i32 18 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 915, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 925, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 956, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 859, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1067, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1984, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.393 = private constant [41 x i8] c"../drivers/net/wireless/ti/wl1251/main.c\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 244, i32 5 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_license356, ptr @__ksymtab_wl1251_alloc_hw, ptr @__ksymtab_wl1251_free_hw, ptr @__ksymtab_wl1251_init_ieee80211, ptr @wl1251_alloc_hw._entry, ptr @wl1251_alloc_hw._entry.22, ptr @wl1251_alloc_hw._entry_ptr, ptr @wl1251_alloc_hw._entry_ptr.24, ptr @wl1251_build_null_data._entry, ptr @wl1251_build_null_data._entry_ptr, ptr @wl1251_chip_wakeup._entry, ptr @wl1251_chip_wakeup._entry_ptr, ptr @wl1251_fetch_firmware._entry, ptr @wl1251_fetch_firmware._entry.54, ptr @wl1251_fetch_firmware._entry.57, ptr @wl1251_fetch_firmware._entry_ptr, ptr @wl1251_fetch_firmware._entry_ptr.56, ptr @wl1251_fetch_firmware._entry_ptr.59, ptr @wl1251_fetch_nvs._entry, ptr @wl1251_fetch_nvs._entry.28, ptr @wl1251_fetch_nvs._entry.31, ptr @wl1251_fetch_nvs._entry_ptr, ptr @wl1251_fetch_nvs._entry_ptr.30, ptr @wl1251_fetch_nvs._entry_ptr.33, ptr @wl1251_fw_wakeup._entry, ptr @wl1251_fw_wakeup._entry_ptr, ptr @wl1251_init_ieee80211._entry, ptr @wl1251_init_ieee80211._entry.3, ptr @wl1251_init_ieee80211._entry.6, ptr @wl1251_init_ieee80211._entry_ptr, ptr @wl1251_init_ieee80211._entry_ptr.5, ptr @wl1251_init_ieee80211._entry_ptr.8, ptr @wl1251_irq_work._entry, ptr @wl1251_irq_work._entry_ptr, ptr @wl1251_join._entry, ptr @wl1251_join._entry_ptr, ptr @wl1251_op_bss_info_changed._entry, ptr @wl1251_op_bss_info_changed._entry.66, ptr @wl1251_op_bss_info_changed._entry_ptr, ptr @wl1251_op_bss_info_changed._entry_ptr.68, ptr @wl1251_op_prepare_multicast._entry, ptr @wl1251_op_prepare_multicast._entry_ptr, ptr @wl1251_op_set_key._entry, ptr @wl1251_op_set_key._entry.75, ptr @wl1251_op_set_key._entry.78, ptr @wl1251_op_set_key._entry_ptr, ptr @wl1251_op_set_key._entry_ptr.77, ptr @wl1251_op_set_key._entry_ptr.80, ptr @wl1251_op_set_rts_threshold._entry, ptr @wl1251_op_set_rts_threshold._entry_ptr, ptr @wl1251_op_start._entry, ptr @wl1251_op_start._entry.44, ptr @wl1251_op_start._entry_ptr, ptr @wl1251_op_start._entry_ptr.46, ptr @wl1251_op_stop._entry, ptr @wl1251_op_stop._entry_ptr, ptr @wl1251_read_eeprom_mac._entry, ptr @wl1251_read_eeprom_mac._entry_ptr, ptr @wl1251_register_hw._entry, ptr @wl1251_register_hw._entry.39, ptr @wl1251_register_hw._entry_ptr, ptr @wl1251_register_hw._entry_ptr.41, ptr @wl1251_set_key_type._entry, ptr @wl1251_set_key_type._entry_ptr, ptr @wl1251_band_2ghz, ptr @wl1251_init_ieee80211.nokia_oui, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @wl1251_ops, ptr @.str.9, ptr @.str.10, ptr @wl1251_alloc_hw.__key, ptr @.str.11, ptr @wl1251_alloc_hw.__key.12, ptr @.str.13, ptr @wl1251_alloc_hw.__key.14, ptr @.str.15, ptr @wl1251_alloc_hw.__key.16, ptr @.str.17, ptr @wl1251_alloc_hw.__key.18, ptr @.str.19, ptr @wl1251_alloc_hw.__key.20, ptr @.str.21, ptr @.str.23, ptr @wl1251_channels, ptr @wl1251_rates, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @wl1251_op_set_key.bcast_addr, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @skb_queue_head_init.__key, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_band_2ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_init_ieee80211.nokia_oui to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_init_ieee80211._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_init_ieee80211._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_init_ieee80211._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_alloc_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_alloc_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_alloc_hw.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_alloc_hw.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_alloc_hw.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_alloc_hw.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_alloc_hw.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_alloc_hw._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_channels to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_fetch_nvs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_fetch_nvs._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_fetch_nvs._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_read_eeprom_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_register_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_register_hw._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_start._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_chip_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_fw_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_fetch_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_fetch_firmware._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_fetch_firmware._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_bss_info_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_bss_info_changed._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_build_null_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_prepare_multicast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_set_key.bcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_set_key._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_set_key._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_set_key_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_op_set_rts_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_irq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_enable_interrupts(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %if_ops = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %0 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_ops, align 4
  %enable_irq = getelementptr inbounds %struct.wl1251_if_operations, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_irq, align 4
  tail call void %3(ptr noundef %wl) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_disable_interrupts(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %if_ops = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %0 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_ops, align 4
  %disable_irq = getelementptr inbounds %struct.wl1251_if_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_irq, align 4
  tail call void %3(ptr noundef %wl) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_init_ieee80211(ptr noundef %wl) #0 align 64 {
entry:
  %mac.i = alloca [6 x i8], align 1
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %extra_tx_headroom, align 4
  %3 = load ptr, ptr %wl, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %5, 16
  store i32 %or.i.i, ptr %flags.i, align 4
  %6 = load ptr, ptr %wl, align 4
  %flags.i80 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %flags.i80 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i80, align 4
  %or.i.i81 = or i32 %8, 256
  store i32 %or.i.i81, ptr %flags.i80, align 4
  %9 = load ptr, ptr %wl, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 6, ptr %interface_modes, align 4
  %13 = load ptr, ptr %wl, align 4
  %wiphy5 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy5, align 8
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %max_scan_ssids, align 32
  %17 = load ptr, ptr %wl, align 4
  %wiphy7 = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy7, align 8
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 512, ptr %max_scan_ie_len, align 4
  %21 = load ptr, ptr %wl, align 4
  %wiphy9 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy9, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 53
  %24 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @wl1251_band_2ghz, ptr %bands, align 16
  %25 = load ptr, ptr %wl, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 4, ptr %queues, align 4
  %nvs = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 20
  %27 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nvs, align 4
  %cmp = icmp eq ptr %28, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %use_eeprom = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 6
  %29 = ptrtoint ptr %use_eeprom to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %use_eeprom, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #9
  %31 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !204
  %32 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wl, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56, i32 1
  %36 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i.i, align 8
  %call1.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.25, ptr noundef %37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %wl1251_fetch_nvs.exit.thread, label %if.end.i

wl1251_fetch_nvs.exit.thread:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call1.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %out

if.end.i:                                         ; preds = %if.then
  %38 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %rem.i = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %41) #12
  br label %wl1251_fetch_nvs.exit.thread117

if.end10.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %call12.i = call ptr @kmemdup(ptr noundef %43, i32 noundef %41, i32 noundef 3264) #9
  %44 = ptrtoint ptr %nvs to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call12.i, ptr %nvs, align 4
  %tobool14.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool14.not.i, label %do.end18.i, label %wl1251_fetch_nvs.exit

do.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %wl1251_fetch_nvs.exit.thread117

wl1251_fetch_nvs.exit.thread117:                  ; preds = %do.end18.i, %do.end6.i
  %ret.0.i.ph = phi i32 [ -12, %do.end18.i ], [ -84, %do.end6.i ]
  %45 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %46) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %out

wl1251_fetch_nvs.exit:                            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %nvs_len.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 21
  %51 = ptrtoint ptr %nvs_len.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %nvs_len.i, align 4
  call void @release_firmware(ptr noundef %48) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %if.end13

if.end13:                                         ; preds = %wl1251_fetch_nvs.exit, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %use_eeprom14 = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 6
  %52 = ptrtoint ptr %use_eeprom14 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %use_eeprom14, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool15.not = icmp eq i8 %53, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #9
  %54 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 1
  %55 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 2
  %56 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 3
  %57 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %58 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 5
  %59 = call ptr @memset(ptr %mac.i, i32 255, i32 6)
  call void @wl1251_set_partition(ptr noundef %wl, i32 noundef 0, i32 noundef 0, i32 noundef 3145728, i32 noundef 34816) #9
  call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3147788, i32 noundef 0) #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then16
  %i.04.i.i = phi i32 [ 0, %if.then16 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.04.i.i, 28
  %arrayidx.i.i = getelementptr i8, ptr %mac.i, i32 %i.04.i.i
  call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3153928, i32 noundef %add.i.i) #9
  call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3153920, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %60, 10
  %call18.i.i.i = call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3153920) #9
  %and9.i.i.i = and i32 %call18.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool.not10.i.i.i = icmp eq i32 %and9.i.i.i, 0
  br i1 %tobool.not10.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %for.body.i.i.if.end.i.i.i_crit_edge

for.body.i.i.if.end.i.i.i_crit_edge:              ; preds = %for.body.i.i
  br label %if.end.i.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %if.end3.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.i.if.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end19, label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @msleep(i32 noundef 1) #9
  %call1.i.i.i = call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3153920) #9
  %and.i.i.i = and i32 %call1.i.i.i, 2
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end3.i.i.i.for.inc.i.i_crit_edge, label %if.end3.i.i.i.if.end.i.i.i_crit_edge

if.end3.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end3.i.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end3.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %call4.i.i.i = call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3153924) #9
  %conv.i.i.i = trunc i32 %call4.i.i.i to i8
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv.i.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 6
  br i1 %exitcond.not.i.i, label %if.end19.thread125, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end19.thread125:                               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %58, align 1
  %arrayidx4.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 0
  %65 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx4.i, align 1
  %66 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %57, align 1
  %arrayidx4.1.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 1
  %68 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx4.1.i, align 1
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %56, align 1
  %arrayidx4.2.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 2
  %71 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx4.2.i, align 1
  %72 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %55, align 1
  %arrayidx4.3.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 3
  %74 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx4.3.i, align 1
  %75 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %54, align 1
  %arrayidx4.4.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 4
  %77 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx4.4.i, align 1
  %78 = ptrtoint ptr %mac.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %mac.i, align 1
  %arrayidx4.5.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 5
  %80 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx4.5.i, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #9
  br label %land.lhs.true21

if.else:                                          ; preds = %if.end13
  %nvs_len.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 21
  %81 = ptrtoint ptr %nvs_len.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nvs_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %82)
  %cmp.i.i = icmp ult i32 %82, 36
  br i1 %cmp.i.i, label %if.else.if.then26_crit_edge, label %if.end.i.i

if.else.if.then26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end.i.i:                                       ; preds = %if.else
  %83 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nvs, align 4
  %arrayidx.i.i85 = getelementptr i8, ptr %84, i32 25
  %85 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.i85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %cmp1.not.i.i = icmp eq i8 %86, 2
  br i1 %cmp1.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.if.then26_crit_edge

if.end.i.i.if.then26_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %84, i32 26
  %87 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %88)
  %cmp6.not.i.i = icmp eq i8 %88, 109
  br i1 %cmp6.not.i.i, label %lor.lhs.false8.i.i, label %lor.lhs.false.i.i.if.then26_crit_edge

lor.lhs.false.i.i.if.then26_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

lor.lhs.false8.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx10.i.i = getelementptr i8, ptr %84, i32 27
  %89 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %90)
  %cmp12.not.i.i = icmp eq i8 %90, 84
  br i1 %cmp12.not.i.i, label %for.cond.preheader.i, label %lor.lhs.false8.i.i.if.then26_crit_edge

lor.lhs.false8.i.i.if.then26_crit_edge:           ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

for.cond.preheader.i:                             ; preds = %lor.lhs.false8.i.i
  %arrayidx.i = getelementptr i8, ptr %84, i32 33
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i, align 1
  %arrayidx.1.i = getelementptr i8, ptr %84, i32 32
  %93 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %84, i32 31
  %95 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr i8, ptr %84, i32 30
  %97 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx.4.i = getelementptr i8, ptr %84, i32 29
  %99 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.4.i, align 1
  %mac.sroa.12.4.insert.ext.i = zext i8 %100 to i16
  %mac.sroa.12.4.insert.shift.i = shl nuw i16 %mac.sroa.12.4.insert.ext.i, 8
  %arrayidx.5.i = getelementptr i8, ptr %84, i32 28
  %101 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.5.i, align 1
  %mac.sroa.12.5.insert.ext.i = zext i8 %102 to i16
  %mac.sroa.12.5.insert.insert24.i = or i16 %mac.sroa.12.4.insert.shift.i, %mac.sroa.12.5.insert.ext.i
  %mac.sroa.0.sroa.10.0.insert.ext.i = zext i8 %98 to i32
  %mac.sroa.0.sroa.8.0.insert.ext.i = zext i8 %96 to i32
  %mac.sroa.0.sroa.8.0.insert.shift.i = shl nuw nsw i32 %mac.sroa.0.sroa.8.0.insert.ext.i, 8
  %mac.sroa.0.sroa.6.0.insert.ext.i = zext i8 %94 to i32
  %mac.sroa.0.sroa.6.0.insert.shift.i = shl nuw nsw i32 %mac.sroa.0.sroa.6.0.insert.ext.i, 16
  %mac.sroa.0.sroa.0.0.insert.ext.i = zext i8 %92 to i32
  %mac.sroa.0.sroa.0.0.insert.shift.i = shl nuw i32 %mac.sroa.0.sroa.0.0.insert.ext.i, 24
  %mac.sroa.0.sroa.8.0.insert.insert.i = or i32 %mac.sroa.0.sroa.6.0.insert.shift.i, %mac.sroa.0.sroa.0.0.insert.shift.i
  %mac.sroa.0.sroa.6.0.insert.insert.i = or i32 %mac.sroa.0.sroa.8.0.insert.insert.i, %mac.sroa.0.sroa.10.0.insert.ext.i
  %mac.sroa.0.sroa.0.0.insert.insert.i = or i32 %mac.sroa.0.sroa.6.0.insert.insert.i, %mac.sroa.0.sroa.8.0.insert.shift.i
  %xor.i.i.i = xor i32 %mac.sroa.0.sroa.0.0.insert.insert.i, 8199
  %xor37.i.i.i = xor i16 %mac.sroa.12.5.insert.insert24.i, 777
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i86 = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i86, label %for.cond.preheader.i.if.then26_crit_edge, label %if.end19.thread122

for.cond.preheader.i.if.then26_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end19.thread122:                               ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %mac_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 23
  %103 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %mac.sroa.0.sroa.0.0.insert.insert.i, ptr %mac_addr.i, align 2
  %mac.sroa.12.0.mac_addr.sroa_idx.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 23, i32 4
  %104 = ptrtoint ptr %mac.sroa.12.0.mac_addr.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %mac.sroa.12.5.insert.insert24.i, ptr %mac.sroa.12.0.mac_addr.sroa_idx.i, align 2
  br label %land.lhs.true21

if.end19:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #9
  br label %if.then26

land.lhs.true21:                                  ; preds = %if.end19.thread122, %if.end19.thread125
  %mac_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 23
  %105 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mac_addr, align 4
  %107 = and i32 %106, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i = icmp eq i32 %107, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true21.if.then26_crit_edge

land.lhs.true21.if.then26_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true21
  %add.ptr.i.i = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 4
  %108 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %109 to i32
  %or.i.i88 = or i32 %106, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i88)
  %cmp.i.i89.not = icmp eq i32 %or.i.i88, 0
  br i1 %cmp.i.i89.not, label %is_valid_ether_addr.exit.if.then26_crit_edge, label %is_valid_ether_addr.exit.if.end44_crit_edge

is_valid_ether_addr.exit.if.end44_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

is_valid_ether_addr.exit.if.then26_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %is_valid_ether_addr.exit.if.then26_crit_edge, %land.lhs.true21.if.then26_crit_edge, %if.end19, %for.cond.preheader.i.if.then26_crit_edge, %lor.lhs.false8.i.i.if.then26_crit_edge, %lor.lhs.false.i.i.if.then26_crit_edge, %if.end.i.i.if.then26_crit_edge, %if.else.if.then26_crit_edge
  %mac_addr27 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23
  %110 = call ptr @memcpy(ptr %mac_addr27, ptr @wl1251_init_ieee80211.nokia_oui, i32 3)
  %add.ptr = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 3
  call void @get_random_bytes(ptr noundef %add.ptr, i32 noundef 3) #9
  %111 = ptrtoint ptr %use_eeprom14 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %use_eeprom14, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool32.not = icmp eq i8 %112, 0
  br i1 %tobool32.not, label %if.then33, label %if.then26.do.end_crit_edge

if.then26.do.end_crit_edge:                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then33:                                        ; preds = %if.then26
  %nvs_len.i.i90 = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 21
  %113 = ptrtoint ptr %nvs_len.i.i90 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nvs_len.i.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %114)
  %cmp.i.i91 = icmp ult i32 %114, 36
  br i1 %cmp.i.i91, label %if.then33.do.end_crit_edge, label %if.end.i.i95

if.then33.do.end_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i.i95:                                     ; preds = %if.then33
  %115 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %nvs, align 4
  %arrayidx.i.i93 = getelementptr i8, ptr %116, i32 25
  %117 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %118)
  %cmp1.not.i.i94 = icmp eq i8 %118, 2
  br i1 %cmp1.not.i.i94, label %lor.lhs.false.i.i98, label %if.end.i.i95.do.end_crit_edge

if.end.i.i95.do.end_crit_edge:                    ; preds = %if.end.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.i.i98:                              ; preds = %if.end.i.i95
  %arrayidx4.i.i96 = getelementptr i8, ptr %116, i32 26
  %119 = ptrtoint ptr %arrayidx4.i.i96 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx4.i.i96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %120)
  %cmp6.not.i.i97 = icmp eq i8 %120, 109
  br i1 %cmp6.not.i.i97, label %lor.lhs.false8.i.i101, label %lor.lhs.false.i.i98.do.end_crit_edge

lor.lhs.false.i.i98.do.end_crit_edge:             ; preds = %lor.lhs.false.i.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false8.i.i101:                            ; preds = %lor.lhs.false.i.i98
  %arrayidx10.i.i99 = getelementptr i8, ptr %116, i32 27
  %121 = ptrtoint ptr %arrayidx10.i.i99 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx10.i.i99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %122)
  %cmp12.not.i.i100 = icmp eq i8 %122, 84
  br i1 %cmp12.not.i.i100, label %for.cond.preheader.i108, label %lor.lhs.false8.i.i101.do.end_crit_edge

lor.lhs.false8.i.i101.do.end_crit_edge:           ; preds = %lor.lhs.false8.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.preheader.i108:                          ; preds = %lor.lhs.false8.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i102 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 5
  %123 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i102, align 1
  %arrayidx2.i = getelementptr i8, ptr %116, i32 28
  %125 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx2.i, align 1
  %arrayidx.1.i103 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 4
  %126 = ptrtoint ptr %arrayidx.1.i103 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.1.i103, align 1
  %128 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %nvs, align 4
  %arrayidx2.1.i = getelementptr i8, ptr %129, i32 29
  %130 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %127, ptr %arrayidx2.1.i, align 1
  %131 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %add.ptr, align 1
  %133 = load ptr, ptr %nvs, align 4
  %arrayidx2.2.i = getelementptr i8, ptr %133, i32 30
  %134 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %132, ptr %arrayidx2.2.i, align 1
  %arrayidx.3.i105 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 2
  %135 = ptrtoint ptr %arrayidx.3.i105 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.3.i105, align 1
  %137 = load ptr, ptr %nvs, align 4
  %arrayidx2.3.i = getelementptr i8, ptr %137, i32 31
  %138 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %136, ptr %arrayidx2.3.i, align 1
  %arrayidx.4.i106 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 23, i32 1
  %139 = ptrtoint ptr %arrayidx.4.i106 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.4.i106, align 1
  %141 = load ptr, ptr %nvs, align 4
  %arrayidx2.4.i = getelementptr i8, ptr %141, i32 32
  %142 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %140, ptr %arrayidx2.4.i, align 1
  %143 = ptrtoint ptr %mac_addr27 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %mac_addr27, align 1
  %145 = load ptr, ptr %nvs, align 4
  %arrayidx2.5.i = getelementptr i8, ptr %145, i32 33
  %146 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %144, ptr %arrayidx2.5.i, align 1
  br label %do.end

do.end:                                           ; preds = %for.cond.preheader.i108, %lor.lhs.false8.i.i101.do.end_crit_edge, %lor.lhs.false.i.i98.do.end_crit_edge, %if.end.i.i95.do.end_crit_edge, %if.then33.do.end_crit_edge, %if.then26.do.end_crit_edge
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %mac_addr27) #12
  br label %if.end44

if.end44:                                         ; preds = %do.end, %is_valid_ether_addr.exit.if.end44_crit_edge
  %mac80211_registered.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 1
  %147 = ptrtoint ptr %mac80211_registered.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %mac80211_registered.i, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i109 = icmp eq i8 %148, 0
  br i1 %tobool.not.i109, label %if.end.i112, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end.i112:                                      ; preds = %if.end44
  %149 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wl, align 4
  %mac_addr.i110 = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 23
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %wiphy.i.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %152, i32 0, i32 1
  %153 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %mac_addr.i110, i32 6)
  %154 = load ptr, ptr %wl, align 4
  %call.i = call i32 @ieee80211_register_hw(ptr noundef %154) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i111 = icmp slt i32 %call.i, 0
  br i1 %cmp.i111, label %wl1251_register_hw.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %mac80211_registered.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %mac80211_registered.i, align 4
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  br label %if.end48

wl1251_register_hw.exit:                          ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call.i) #12
  br label %out

if.end48:                                         ; preds = %if.end4.i, %if.end44.if.end48_crit_edge
  %call49 = call i32 @wl1251_debugfs_init(ptr noundef %wl) #9
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %out

out:                                              ; preds = %if.end48, %wl1251_register_hw.exit, %wl1251_fetch_nvs.exit.thread117, %wl1251_fetch_nvs.exit.thread
  %ret.2 = phi i32 [ %call.i, %wl1251_register_hw.exit ], [ 0, %if.end48 ], [ %call1.i, %wl1251_fetch_nvs.exit.thread ], [ %ret.0.i.ph, %wl1251_fetch_nvs.exit.thread117 ]
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wl1251_alloc_hw() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 1072, ptr noundef nonnull @wl1251_ops, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = getelementptr inbounds i8, ptr %1, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 1068)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %1, align 4
  %tx_queue = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 32
  %lock.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 32, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %5 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_queue, ptr %tx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 32, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 32, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i, align 4
  %elp_work = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 52
  tail call void @__init_work(ptr noundef %elp_work, i32 noundef 0) #9
  %8 = ptrtoint ptr %elp_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %elp_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 52, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @wl1251_alloc_hw.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 52, i32 0, i32 1
  %9 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 52, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 52, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wl1251_elp_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 52, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @wl1251_alloc_hw.__key.12) #9
  %channel = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %channel, align 4
  %monitor_present = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %monitor_present to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %monitor_present, align 4
  %joined = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 28
  %14 = ptrtoint ptr %joined to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %joined, align 1
  %scanning = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 45
  %15 = ptrtoint ptr %scanning to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %scanning, align 4
  %bss_type = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %bss_type, align 4
  %default_key = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 46
  %17 = ptrtoint ptr %default_key to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %default_key, align 4
  %listen_int = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 25
  %18 = ptrtoint ptr %listen_int to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %listen_int, align 1
  %rx_counter = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 37
  %rx_config = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 49
  %19 = call ptr @memset(ptr %rx_counter, i32 0, i32 16)
  %20 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 112, ptr %rx_config, align 4
  %rx_filter = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 50
  %21 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3796, ptr %rx_filter, align 4
  %elp = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 51
  %22 = ptrtoint ptr %elp to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %elp, align 4
  %station_mode = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 53
  %23 = ptrtoint ptr %station_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %station_mode, align 4
  %psm_requested = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 54
  %24 = ptrtoint ptr %psm_requested to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %psm_requested, align 4
  %psm_entry_retry = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 55
  %25 = ptrtoint ptr %psm_entry_retry to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %psm_entry_retry, align 1
  %tx_queue_stopped = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 33
  %26 = ptrtoint ptr %tx_queue_stopped to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %tx_queue_stopped, align 4
  %power_level = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 58
  %27 = ptrtoint ptr %power_level to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %power_level, align 4
  %rssi_thold = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 59
  %28 = ptrtoint ptr %rssi_thold to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rssi_thold, align 4
  %beacon_int = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %29 = ptrtoint ptr %beacon_int to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 100, ptr %beacon_int, align 2
  %dtim_period = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 57
  %30 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %dtim_period, align 4
  %vif = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 66
  %31 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %vif, align 4
  %uglygep = getelementptr i8, ptr %1, i32 376
  %irq_work = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 42
  %32 = call ptr @memset(ptr %uglygep, i32 0, i32 68)
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #9
  %33 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map29 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 42, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.15, ptr noundef nonnull @wl1251_alloc_hw.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry31 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 42, i32 1
  %34 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i126 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 42, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i126 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry31, ptr %prev.i126, align 4
  %func33 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 42, i32 2
  %36 = ptrtoint ptr %func33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @wl1251_irq_work, ptr %func33, align 4
  %tx_work = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 34
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #9
  %37 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map42 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 34, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map42, ptr noundef nonnull @.str.17, ptr noundef nonnull @wl1251_alloc_hw.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry44 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 34, i32 1
  %38 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i127 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 34, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i127 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry44, ptr %prev.i127, align 4
  %func46 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 34, i32 2
  %40 = ptrtoint ptr %func46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @wl1251_tx_work, ptr %func46, align 4
  %state = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %state, align 4
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @wl1251_alloc_hw.__key.18) #9
  %wl_lock = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %wl_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @wl1251_alloc_hw.__key.20, i16 noundef signext 3) #9
  %tx_mgmt_frm_rate = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 47
  %42 = ptrtoint ptr %tx_mgmt_frm_rate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 20, ptr %tx_mgmt_frm_rate, align 4
  %tx_mgmt_frm_mod = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 48
  %43 = ptrtoint ptr %tx_mgmt_frm_mod to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx_mgmt_frm_mod, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3264, i32 noundef 16) #13
  %rx_descriptor = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 65
  %45 = ptrtoint ptr %rx_descriptor to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i, ptr %rx_descriptor, align 4
  %tobool58.not = icmp eq ptr %call7.i, null
  br i1 %tobool58.not, label %do.end62, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end62:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end62 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_elp_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_irq_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -464
  %mutex = getelementptr i8, ptr %work, i32 -384
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %state = getelementptr i8, ptr %work, i32 -388
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  tail call void @wl1251_reg_write32(ptr noundef %add.ptr, i32 noundef 2, i32 noundef -1) #9
  %call4 = tail call i32 @wl1251_reg_read32(ptr noundef %add.ptr, i32 noundef 6) #9
  %data_path = getelementptr i8, ptr %work, i32 -200
  %rx_counter = getelementptr i8, ptr %work, i32 -20
  %rx_handled = getelementptr i8, ptr %work, i32 -16
  %intr_mask = getelementptr i8, ptr %work, i32 -4
  br label %do.body8

do.body8:                                         ; preds = %if.end96.do.body8_crit_edge, %if.end3
  %ctr.0 = phi i32 [ 10, %if.end3 ], [ %dec, %if.end96.do.body8_crit_edge ]
  %intr.0 = phi i32 [ %call4, %if.end3 ], [ %call97, %if.end96.do.body8_crit_edge ]
  %2 = ptrtoint ptr %data_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_path, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body8.if.end42_crit_edge, label %if.then9

do.body8.if.end42_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then9:                                         ; preds = %do.body8
  %rx_control_addr = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %rx_control_addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rx_control_addr, align 1
  %call11 = tail call i32 @wl1251_mem_read32(ptr noundef %add.ptr, i32 noundef %5) #9
  %6 = ptrtoint ptr %rx_counter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call11, ptr %rx_counter, align 4
  %7 = ptrtoint ptr %rx_handled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_handled, align 4
  %sub = sub i32 %call11, %8
  %and = and i32 %sub, 15
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end31 [
    i32 0, label %do.end15
    i32 1, label %do.end21
    i32 2, label %do.end26
  ]

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %and17 = and i32 %intr.0, -10
  br label %sw.epilog

do.end21:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %or = and i32 %intr.0, -10
  %and22 = or i32 %or, 1
  br label %sw.epilog

do.end26:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %or28 = or i32 %intr.0, 9
  br label %sw.epilog

do.end31:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %sub) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end31, %do.end26, %do.end21, %do.end15
  %intr.1 = phi i32 [ %intr.0, %do.end31 ], [ %or28, %do.end26 ], [ %and22, %do.end21 ], [ %and17, %do.end15 ]
  %10 = ptrtoint ptr %rx_counter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_counter, align 4
  %12 = ptrtoint ptr %rx_handled to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_handled, align 4
  br label %if.end42

if.end42:                                         ; preds = %sw.epilog, %do.body8.if.end42_crit_edge
  %intr.2 = phi i32 [ %intr.1, %sw.epilog ], [ %intr.0, %do.body8.if.end42_crit_edge ]
  %13 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_mask, align 4
  %and43 = and i32 %14, %intr.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %if.end42.out_sleep_crit_edge, label %if.end49

if.end42.out_sleep_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end49:                                         ; preds = %if.end42
  %and50 = and i32 %and43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end56_crit_edge, label %do.end55

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wl1251_rx(ptr noundef %add.ptr) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %if.end49.if.end56_crit_edge
  %and57 = and i32 %and43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end63_crit_edge, label %do.end62

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wl1251_rx(ptr noundef %add.ptr) #9
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %if.end56.if.end63_crit_edge
  %and64 = and i32 %and43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end70_crit_edge, label %do.end69

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wl1251_tx_complete(ptr noundef %add.ptr) #9
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %if.end63.if.end70_crit_edge
  %and71 = and i32 %and43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end78_crit_edge, label %do.end76

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = tail call i32 @wl1251_event_handle(ptr noundef %add.ptr, i8 noundef zeroext 0) #9
  br label %if.end78

if.end78:                                         ; preds = %do.end76, %if.end70.if.end78_crit_edge
  %and79 = and i32 %and43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end86_crit_edge, label %do.end84

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %call85 = tail call i32 @wl1251_event_handle(ptr noundef %add.ptr, i8 noundef zeroext 1) #9
  br label %if.end86

if.end86:                                         ; preds = %do.end84, %if.end78.if.end86_crit_edge
  %dec = add nsw i32 %ctr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp94 = icmp eq i32 %dec, 0
  br i1 %cmp94, label %if.end86.out_sleep_crit_edge, label %if.end96

if.end86.out_sleep_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end96:                                         ; preds = %if.end86
  %call97 = tail call i32 @wl1251_reg_read32(ptr noundef %add.ptr, i32 noundef 6) #9
  %tobool99.not = icmp eq i32 %call97, 0
  br i1 %tobool99.not, label %if.end96.out_sleep_crit_edge, label %if.end96.do.body8_crit_edge

if.end96.do.body8_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.end96.out_sleep_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

out_sleep:                                        ; preds = %if.end96.out_sleep_crit_edge, %if.end86.out_sleep_crit_edge, %if.end42.out_sleep_crit_edge
  %15 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intr_mask, align 4
  %neg = xor i32 %16, -1
  tail call void @wl1251_reg_write32(ptr noundef %add.ptr, i32 noundef 2, i32 noundef %neg) #9
  tail call void @wl1251_ps_elp_sleep(ptr noundef %add.ptr) #9
  br label %out

out:                                              ; preds = %out_sleep, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_tx_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_free_hw(ptr noundef %wl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #9
  tail call void @wl1251_debugfs_exit(ptr noundef %wl) #9
  %target_mem_map = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 29
  %2 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target_mem_map, align 4
  tail call void @kfree(ptr noundef %3) #9
  %data_path = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 30
  %4 = ptrtoint ptr %data_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_path, align 4
  tail call void @kfree(ptr noundef %5) #9
  %fw = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 18
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  tail call void @vfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fw, align 4
  %nvs = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 20
  %9 = ptrtoint ptr %nvs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nvs, align 4
  tail call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %nvs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %nvs, align 4
  %rx_descriptor = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 65
  %12 = ptrtoint ptr %rx_descriptor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_descriptor, align 4
  tail call void @kfree(ptr noundef %13) #9
  %14 = ptrtoint ptr %rx_descriptor to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_descriptor, align 4
  %15 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wl, align 4
  tail call void @ieee80211_free_hw(ptr noundef %16) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_debugfs_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_set_partition(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_reg_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_reg_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_op_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_queue = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 32
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef %skb) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tx_work = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 34
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %tx_work) #9
  %qlen.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 32, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %5)
  %cmp = icmp ugt i32 %5, 24
  br i1 %cmp, label %do.body4, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wl_lock = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wl_lock) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %7) #9
  %tx_queue_stopped = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %tx_queue_stopped to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %tx_queue_stopped, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wl_lock, i32 noundef %call7) #9
  br label %if.end

if.end:                                           ; preds = %do.body4, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_op_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %fw.i.i = alloca ptr, align 4
  %response.i.i.i = alloca i32, align 4
  %val.addr.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %5) #12
  br label %if.then33

if.end:                                           ; preds = %entry
  %if_ops.i.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_ops.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %1, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.if.then33_crit_edge, label %if.end.i

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end.i:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 10) #9
  %10 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_ops.i.i, align 4
  %reset.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset.i, align 4
  tail call void %13(ptr noundef %1) #9
  tail call void @wl1251_set_partition(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 3145728, i32 noundef 34816) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i.i) #9
  %14 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %val.addr.i.i.i, align 4
  %15 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %if_ops.i.i, align 4
  %write_elp.i.i.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %write_elp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_elp.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %18(ptr noundef %1, i32 noundef 131068, i32 noundef 1) #9
  br label %wl1251_write_elp.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %write.i.i.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i.i, align 4
  call void %20(ptr noundef %1, i32 noundef 131068, ptr noundef nonnull %val.addr.i.i.i, i32 noundef 4) #9
  br label %wl1251_write_elp.exit.i.i

wl1251_write_elp.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response.i.i.i) #9
  %21 = ptrtoint ptr %response.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %response.i.i.i, align 4, !annotation !204
  %22 = ptrtoint ptr %if_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %if_ops.i.i, align 4
  %read_elp.i.i.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read_elp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_elp.i.i.i, align 4
  %tobool.not.i5.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i5.i.i, label %if.else.i7.i.i, label %if.then.i6.i.i

if.then.i6.i.i:                                   ; preds = %wl1251_write_elp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %25(ptr noundef %1, i32 noundef 131068, ptr noundef nonnull %response.i.i.i) #9
  br label %wl1251_read_elp.exit.i.i

if.else.i7.i.i:                                   ; preds = %wl1251_write_elp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  call void %27(ptr noundef %1, i32 noundef 131068, ptr noundef nonnull %response.i.i.i, i32 noundef 4) #9
  br label %wl1251_read_elp.exit.i.i

wl1251_read_elp.exit.i.i:                         ; preds = %if.else.i7.i.i, %if.then.i6.i.i
  %28 = ptrtoint ptr %response.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %response.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response.i.i.i) #9
  %and.i.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %wl1251_read_elp.exit.i.i.wl1251_fw_wakeup.exit.i_crit_edge

wl1251_read_elp.exit.i.i.wl1251_fw_wakeup.exit.i_crit_edge: ; preds = %wl1251_read_elp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wl1251_fw_wakeup.exit.i

do.end.i.i:                                       ; preds = %wl1251_read_elp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  br label %wl1251_fw_wakeup.exit.i

wl1251_fw_wakeup.exit.i:                          ; preds = %do.end.i.i, %wl1251_read_elp.exit.i.i.wl1251_fw_wakeup.exit.i_crit_edge
  %call1.i = call i32 @wl1251_reg_read32(ptr noundef %1, i32 noundef 3167860) #9
  %chip_id.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 67
  %30 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call1.i, ptr %chip_id.i, align 4
  %31 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call1.i, label %do.end10.i [
    i32 117637377, label %wl1251_fw_wakeup.exit.i.sw.epilog.i_crit_edge
    i32 117571841, label %wl1251_fw_wakeup.exit.i.sw.epilog.i_crit_edge72
  ]

wl1251_fw_wakeup.exit.i.sw.epilog.i_crit_edge72:  ; preds = %wl1251_fw_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

wl1251_fw_wakeup.exit.i.sw.epilog.i_crit_edge:    ; preds = %wl1251_fw_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end10.i:                                       ; preds = %wl1251_fw_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call1.i) #12
  br label %if.then33

sw.epilog.i:                                      ; preds = %wl1251_fw_wakeup.exit.i.sw.epilog.i_crit_edge, %wl1251_fw_wakeup.exit.i.sw.epilog.i_crit_edge72
  %fw.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 18
  %32 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw.i, align 4
  %cmp13.i = icmp eq ptr %33, null
  br i1 %cmp13.i, label %if.then14.i, label %sw.epilog.i.if.end9_crit_edge

sw.epilog.i.if.end9_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then14.i:                                      ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #9
  %34 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !204
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56, i32 1
  %39 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i.i.i, align 8
  %call1.i32.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.51, ptr noundef %40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %cmp.i.i = icmp slt i32 %call1.i32.i, 0
  br i1 %cmp.i.i, label %wl1251_chip_wakeup.exit.thread61, label %if.end.i.i

wl1251_chip_wakeup.exit.thread61:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call1.i32.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #9
  br label %if.then33

if.end.i.i:                                       ; preds = %if.then14.i
  %41 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %rem.i.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i34.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i34.i, label %if.end10.i.i, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %44) #12
  br label %wl1251_chip_wakeup.exit.thread65

if.end10.i.i:                                     ; preds = %if.end.i.i
  %fw_len.i.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %fw_len.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %fw_len.i.i, align 4
  %call13.i.i = call noalias ptr @vmalloc(i32 noundef %44) #14
  %46 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call13.i.i, ptr %fw.i, align 4
  %tobool16.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool16.not.i.i, label %do.end20.i.i, label %wl1251_chip_wakeup.exit

do.end20.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %wl1251_chip_wakeup.exit.thread65

wl1251_chip_wakeup.exit.thread65:                 ; preds = %do.end20.i.i, %do.end6.i.i
  %ret.0.i.i.ph = phi i32 [ -12, %do.end20.i.i ], [ -84, %do.end6.i.i ]
  %47 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %48) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #9
  br label %if.then33

wl1251_chip_wakeup.exit:                          ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %53 = ptrtoint ptr %fw_len.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw_len.i.i, align 4
  %55 = call ptr @memcpy(ptr %call13.i.i, ptr %52, i32 %54)
  call void @release_firmware(ptr noundef %50) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #9
  br label %if.end9

if.end9:                                          ; preds = %wl1251_chip_wakeup.exit, %sw.epilog.i.if.end9_crit_edge
  %call10 = call i32 @wl1251_boot(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.if.then33_crit_edge, label %if.end13

if.end9.if.then33_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @wl1251_hw_init(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.if.then33_crit_edge, label %if.end17

if.end13.if.then33_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @wl1251_acx_station_id(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.if.then33_crit_edge, label %out

if.end17.if.then33_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

out:                                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %state, align 4
  %fw_ver = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 68
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %fw_ver) #12
  %57 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chip_id.i, align 4
  %hw_version = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 39
  %59 = ptrtoint ptr %hw_version to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %hw_version, align 4
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 38
  %call31 = call ptr @strncpy(ptr noundef %fw_version, ptr noundef %fw_ver, i32 noundef 32)
  br label %if.end35

if.then33:                                        ; preds = %if.end17.if.then33_crit_edge, %if.end13.if.then33_crit_edge, %if.end9.if.then33_crit_edge, %wl1251_chip_wakeup.exit.thread65, %wl1251_chip_wakeup.exit.thread61, %do.end10.i, %if.end.if.then33_crit_edge, %do.end4
  %ret.0.ph = phi i32 [ %ret.0.i.i.ph, %wl1251_chip_wakeup.exit.thread65 ], [ %call1.i32.i, %wl1251_chip_wakeup.exit.thread61 ], [ %call18, %if.end17.if.then33_crit_edge ], [ %call14, %if.end13.if.then33_crit_edge ], [ %call10, %if.end9.if.then33_crit_edge ], [ -16, %do.end4 ], [ -19, %do.end10.i ], [ %call.i.i, %if.end.if.then33_crit_edge ]
  %if_ops.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %if_ops.i, align 4
  %power.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %power.i, align 4
  %call.i = call i32 %63(ptr noundef %1, i1 noundef zeroext false) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %out
  %ret.070 = phi i32 [ %ret.0.ph, %if.then33 ], [ %call18, %out ]
  call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.070
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_op_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end13, !prof !205

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 428, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end13, %entry.if.end_crit_edge
  %scanning = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %scanning to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scanning, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool26.not = icmp eq i8 %5, 0
  br i1 %tobool26.not, label %if.end.if.end30_crit_edge, label %if.then27

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %6 = call ptr @memcpy(ptr %info, ptr @__const.wl1251_op_stop.info, i32 16)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void @ieee80211_scan_completed(ptr noundef %8, ptr noundef nonnull %info) #9
  %9 = ptrtoint ptr %scanning to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %scanning, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end.if.end30_crit_edge
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %if_ops.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %if_ops.i, align 4
  %disable_irq.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %disable_irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disable_irq.i, align 4
  call void %14(ptr noundef %1) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  %irq_work = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 42
  %call33 = call zeroext i1 @cancel_work_sync(ptr noundef %irq_work) #9
  %tx_work = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 34
  %call34 = call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #9
  %elp_work = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 52
  %call35 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %elp_work) #9
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @wl1251_tx_flush(ptr noundef %1) #9
  %15 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %if_ops.i, align 4
  %power.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %power.i, align 4
  %call.i = call i32 %18(ptr noundef %1, i1 noundef zeroext false) #9
  %bssid = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 22
  %19 = call ptr @memset(ptr %bssid, i32 0, i32 6)
  %listen_int = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 25
  %20 = ptrtoint ptr %listen_int to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %listen_int, align 1
  %bss_type = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %bss_type, align 4
  %data_in_count = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 31
  %22 = ptrtoint ptr %data_in_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %data_in_count, align 4
  %next_tx_complete = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 36
  %elp = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 51
  %23 = ptrtoint ptr %elp to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %elp, align 4
  %station_mode = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 53
  %24 = ptrtoint ptr %station_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %station_mode, align 4
  %psm_entry_retry = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 55
  %25 = ptrtoint ptr %psm_entry_retry to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %psm_entry_retry, align 1
  %tx_queue_stopped = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 33
  %26 = ptrtoint ptr %tx_queue_stopped to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %tx_queue_stopped, align 4
  %power_level = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 58
  %27 = call ptr @memset(ptr %next_tx_complete, i32 0, i32 20)
  %28 = ptrtoint ptr %power_level to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 20, ptr %power_level, align 4
  %rssi_thold = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 59
  %29 = ptrtoint ptr %rssi_thold to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rssi_thold, align 4
  %channel = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 26
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %channel, align 4
  %monitor_present = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 27
  %31 = ptrtoint ptr %monitor_present to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %monitor_present, align 4
  %joined = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 28
  %32 = ptrtoint ptr %joined to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %joined, align 1
  call void @wl1251_debugfs_reset(ptr noundef %1) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_op_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %2 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_flags, align 8
  %or = or i32 %3, 7
  store i32 %or, ptr %driver_flags, align 8
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %vif1 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vif1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vif, ptr %vif1, align 4
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vif, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %8, label %if.end.out_crit_edge [
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb3 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %bss_type4 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %bss_type4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %bss_type4, align 4
  %mac_addr = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 23
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %11 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac_addr, align 4
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %14, %12
  %add.ptr.i.i = getelementptr %struct.wl1251, ptr %1, i32 0, i32 23, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %18, %16
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %sw.epilog.out_crit_edge, label %if.then6

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then6:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call ptr @memcpy(ptr %mac_addr, ptr %addr, i32 6)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 1
  %24 = call ptr @memmove(ptr %perm_addr.i, ptr %addr, i32 6)
  %call14 = tail call i32 @wl1251_acx_station_id(ptr noundef %1) #9
  br label %out

out:                                              ; preds = %if.then6, %sw.epilog.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %sw.epilog.out_crit_edge ], [ %call14, %if.then6 ], [ -16, %entry.out_crit_edge ], [ -95, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_op_remove_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %vif1 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vif1, align 4
  %bssid = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 22
  %3 = call ptr @memset(ptr %bssid, i32 0, i32 6)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_op_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %5, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #9
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call2 = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw, align 4
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %not.tobool5.not = xor i1 %tobool5.not, true
  %spec.select = zext i1 %not.tobool5.not to i8
  %spec.select223 = select i1 %tobool5.not, i32 0, i32 129
  %8 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %8, align 4
  %call9 = tail call i32 @wl1251_acx_feature_cfg(ptr noundef %1, i32 noundef %spec.select223) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then3.out_sleep_crit_edge, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then3.out_sleep_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end13:                                         ; preds = %if.then3.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then3.if.end13_crit_edge ], [ %call2, %if.end.if.end13_crit_edge ]
  %channel14 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %channel14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %11)
  %cmp15.not = icmp eq i32 %call.i, %11
  br i1 %cmp15.not, label %if.end13.if.end31_crit_edge, label %if.then16

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then16:                                        ; preds = %if.end13
  %12 = ptrtoint ptr %channel14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i, ptr %channel14, align 4
  %vif = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 66
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vif, align 4
  %cmp18 = icmp eq ptr %14, null
  br i1 %cmp18, label %if.end26, label %if.else22

if.else22:                                        ; preds = %if.then16
  %bss_type = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bss_type, align 4
  %conv24 = trunc i32 %call.i to i8
  %beacon_int = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %17 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %beacon_int, align 2
  %dtim_period = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 57
  %19 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dtim_period, align 4
  %tx_mgmt_frm_rate.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 47
  %21 = ptrtoint ptr %tx_mgmt_frm_rate.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_mgmt_frm_rate.i, align 4
  %conv.i = trunc i32 %22 to i8
  %tx_mgmt_frm_mod.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 48
  %23 = ptrtoint ptr %tx_mgmt_frm_mod.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_mgmt_frm_mod.i, align 4
  %conv1.i = trunc i32 %24 to i8
  %call.i182 = tail call i32 @wl1251_acx_frame_rates(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp.i = icmp slt i32 %call.i182, 0
  br i1 %cmp.i, label %if.else22.out_sleep_crit_edge, label %if.end.i

if.else22.out_sleep_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end.i:                                         ; preds = %if.else22
  %bssid.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 22
  %25 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bssid.i, align 4
  %add.ptr.i.i = getelementptr %struct.wl1251, ptr %1, i32 0, i32 22, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %28 to i32
  %or.i.i = or i32 %26, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_config.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 49
  %29 = ptrtoint ptr %rx_config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_config.i, align 4
  %and.i = and i32 %30, -33
  store i32 %and.i, ptr %rx_config.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %call6.i = tail call i32 @wl1251_cmd_join(ptr noundef %1, i8 noundef zeroext %16, i8 noundef zeroext %conv24, i16 noundef zeroext %18, i8 noundef zeroext %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.out_sleep_crit_edge, label %if.end10.i

if.end5.i.out_sleep_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end10.i:                                       ; preds = %if.end5.i
  %call11.i = tail call i32 @wl1251_event_wait(ptr noundef %1, i32 noundef 8192, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end10.i.if.end31_crit_edge

if.end10.i.if.end31_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %out_sleep

if.end26:                                         ; preds = %if.then16
  %joined = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 28
  %31 = ptrtoint ptr %joined to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %joined, align 1
  %conv = trunc i32 %call.i to i8
  %call21 = tail call i32 @wl1251_cmd_data_path_rx(ptr noundef %1, i8 noundef zeroext %conv, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp27 = icmp slt i32 %call21, 0
  br i1 %cmp27, label %if.end26.out_sleep_crit_edge, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end26.out_sleep_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end31:                                         ; preds = %if.end26.if.end31_crit_edge, %if.end10.i.if.end31_crit_edge, %if.end13.if.end31_crit_edge
  %ret.2 = phi i32 [ %call21, %if.end26.if.end31_crit_edge ], [ %ret.0, %if.end13.if.end31_crit_edge ], [ %call11.i, %if.end10.i.if.end31_crit_edge ]
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw, align 4
  %and.i183 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool.not.i = icmp eq i32 %and.i183, 0
  br i1 %tobool.not.i, label %if.end31.land.lhs.true51_crit_edge, label %wl1251_can_do_pm.exit

if.end31.land.lhs.true51_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true51

wl1251_can_do_pm.exit:                            ; preds = %if.end31
  %monitor_present.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 27
  %34 = ptrtoint ptr %monitor_present.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %monitor_present.i, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not.i = icmp eq i8 %35, 0
  br i1 %tobool1.not.i, label %land.lhs.true, label %wl1251_can_do_pm.exit.land.lhs.true51_crit_edge

wl1251_can_do_pm.exit.land.lhs.true51_crit_edge:  ; preds = %wl1251_can_do_pm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true51

land.lhs.true:                                    ; preds = %wl1251_can_do_pm.exit
  %psm_requested = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 54
  %36 = ptrtoint ptr %psm_requested to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %psm_requested, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool34.not = icmp eq i8 %37, 0
  br i1 %tobool34.not, label %do.end38, label %wl1251_can_do_pm.exit189

do.end38:                                         ; preds = %land.lhs.true
  %38 = ptrtoint ptr %psm_requested to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %psm_requested, align 4
  %ps_dtim_period = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 4
  %39 = ptrtoint ptr %ps_dtim_period to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ps_dtim_period, align 2
  %dtim_period40 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 57
  %41 = ptrtoint ptr %dtim_period40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %dtim_period40, align 4
  %beacon_int41 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %42 = ptrtoint ptr %beacon_int41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %beacon_int41, align 2
  %call43 = tail call i32 @wl1251_acx_wr_tbtt_and_dtim(ptr noundef %1, i16 noundef zeroext %43, i8 noundef zeroext %40) #9
  %call44 = tail call i32 @wl1251_ps_set_mode(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end38.out_sleep_crit_edge, label %do.end38.if.end70_crit_edge

do.end38.if.end70_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end38.out_sleep_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

wl1251_can_do_pm.exit189:                         ; preds = %land.lhs.true
  %44 = ptrtoint ptr %monitor_present.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr = load i8, ptr %monitor_present.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool1.not.i187 = icmp eq i8 %.pr, 0
  br i1 %tobool1.not.i187, label %wl1251_can_do_pm.exit189.if.end70_crit_edge, label %wl1251_can_do_pm.exit189.land.lhs.true51_crit_edge

wl1251_can_do_pm.exit189.land.lhs.true51_crit_edge: ; preds = %wl1251_can_do_pm.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true51

wl1251_can_do_pm.exit189.if.end70_crit_edge:      ; preds = %wl1251_can_do_pm.exit189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true51:                                  ; preds = %wl1251_can_do_pm.exit189.land.lhs.true51_crit_edge, %wl1251_can_do_pm.exit.land.lhs.true51_crit_edge, %if.end31.land.lhs.true51_crit_edge
  %psm_requested52 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 54
  %45 = ptrtoint ptr %psm_requested52 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %psm_requested52, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool53.not = icmp eq i8 %46, 0
  br i1 %tobool53.not, label %land.lhs.true51.if.end70_crit_edge, label %do.end58

land.lhs.true51.if.end70_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end58:                                         ; preds = %land.lhs.true51
  %47 = ptrtoint ptr %psm_requested52 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %psm_requested52, align 4
  %station_mode = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 53
  %48 = ptrtoint ptr %station_mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %station_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp60.not = icmp eq i32 %49, 0
  br i1 %cmp60.not, label %do.end58.if.end70_crit_edge, label %if.then62

do.end58.if.end70_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then62:                                        ; preds = %do.end58
  %call63 = tail call i32 @wl1251_ps_set_mode(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then62.out_sleep_crit_edge, label %if.then62.if.end70_crit_edge

if.then62.if.end70_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then62.out_sleep_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end70:                                         ; preds = %if.then62.if.end70_crit_edge, %do.end58.if.end70_crit_edge, %land.lhs.true51.if.end70_crit_edge, %wl1251_can_do_pm.exit189.if.end70_crit_edge, %do.end38.if.end70_crit_edge
  %ret.3 = phi i32 [ %ret.2, %wl1251_can_do_pm.exit189.if.end70_crit_edge ], [ %call63, %if.then62.if.end70_crit_edge ], [ %ret.2, %do.end58.if.end70_crit_edge ], [ %ret.2, %land.lhs.true51.if.end70_crit_edge ], [ %call44, %do.end38.if.end70_crit_edge ]
  %and71 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end102_crit_edge, label %land.lhs.true73

if.end70.if.end102_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

land.lhs.true73:                                  ; preds = %if.end70
  %scanning = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 45
  %50 = ptrtoint ptr %scanning to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %scanning, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool74.not = icmp eq i8 %51, 0
  br i1 %tobool74.not, label %if.then75, label %land.lhs.true73.if.end102_crit_edge

land.lhs.true73.if.end102_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then75:                                        ; preds = %land.lhs.true73
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw, align 4
  %and77 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.else85, label %if.then79

if.then79:                                        ; preds = %if.then75
  %call80 = tail call i32 @wl1251_ps_set_mode(ptr noundef %1, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then79.out_sleep_crit_edge, label %if.then79.if.end102_crit_edge

if.then79.if.end102_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then79.out_sleep_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.else85:                                        ; preds = %if.then75
  %call86 = tail call i32 @wl1251_ps_set_mode(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.else85.out_sleep_crit_edge, label %if.end90

if.else85.out_sleep_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end90:                                         ; preds = %if.else85
  %bss_type91 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %54 = ptrtoint ptr %bss_type91 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bss_type91, align 4
  %56 = ptrtoint ptr %channel14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %channel14, align 4
  %conv93 = trunc i32 %57 to i8
  %beacon_int94 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %58 = ptrtoint ptr %beacon_int94 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %beacon_int94, align 2
  %dtim_period95 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 57
  %60 = ptrtoint ptr %dtim_period95 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dtim_period95, align 4
  %tx_mgmt_frm_rate.i190 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 47
  %62 = ptrtoint ptr %tx_mgmt_frm_rate.i190 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_mgmt_frm_rate.i190, align 4
  %conv.i191 = trunc i32 %63 to i8
  %tx_mgmt_frm_mod.i192 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 48
  %64 = ptrtoint ptr %tx_mgmt_frm_mod.i192 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_mgmt_frm_mod.i192, align 4
  %conv1.i193 = trunc i32 %65 to i8
  %call.i194 = tail call i32 @wl1251_acx_frame_rates(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext %conv.i191, i8 noundef zeroext %conv1.i193) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp.i195 = icmp slt i32 %call.i194, 0
  br i1 %cmp.i195, label %if.end90.out_sleep_crit_edge, label %if.end.i201

if.end90.out_sleep_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end.i201:                                      ; preds = %if.end90
  %bssid.i196 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 22
  %66 = ptrtoint ptr %bssid.i196 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bssid.i196, align 4
  %add.ptr.i.i197 = getelementptr %struct.wl1251, ptr %1, i32 0, i32 22, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i197 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i.i197, align 2
  %conv.i.i198 = zext i16 %69 to i32
  %or.i.i199 = or i32 %67, %conv.i.i198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i199)
  %cmp.i.i200 = icmp eq i32 %or.i.i199, 0
  br i1 %cmp.i.i200, label %if.then4.i204, label %if.end.i201.if.end5.i207_crit_edge

if.end.i201.if.end5.i207_crit_edge:               ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i207

if.then4.i204:                                    ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #11
  %rx_config.i202 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 49
  %70 = ptrtoint ptr %rx_config.i202 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_config.i202, align 4
  %and.i203 = and i32 %71, -33
  store i32 %and.i203, ptr %rx_config.i202, align 4
  br label %if.end5.i207

if.end5.i207:                                     ; preds = %if.then4.i204, %if.end.i201.if.end5.i207_crit_edge
  %call6.i205 = tail call i32 @wl1251_cmd_join(ptr noundef %1, i8 noundef zeroext %55, i8 noundef zeroext %conv93, i16 noundef zeroext %59, i8 noundef zeroext %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i205)
  %cmp7.i206 = icmp slt i32 %call6.i205, 0
  br i1 %cmp7.i206, label %if.end5.i207.out_sleep_crit_edge, label %if.end10.i210

if.end5.i207.out_sleep_crit_edge:                 ; preds = %if.end5.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end10.i210:                                    ; preds = %if.end5.i207
  %call11.i208 = tail call i32 @wl1251_event_wait(ptr noundef %1, i32 noundef 8192, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i208)
  %cmp12.i209 = icmp slt i32 %call11.i208, 0
  br i1 %cmp12.i209, label %do.end.i212, label %if.end10.i210.if.end102_crit_edge

if.end10.i210.if.end102_crit_edge:                ; preds = %if.end10.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

do.end.i212:                                      ; preds = %if.end10.i210
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %out_sleep

if.end102:                                        ; preds = %if.end10.i210.if.end102_crit_edge, %if.then79.if.end102_crit_edge, %land.lhs.true73.if.end102_crit_edge, %if.end70.if.end102_crit_edge
  %ret.4 = phi i32 [ %ret.3, %land.lhs.true73.if.end102_crit_edge ], [ %call80, %if.then79.if.end102_crit_edge ], [ %ret.3, %if.end70.if.end102_crit_edge ], [ %call11.i208, %if.end10.i210.if.end102_crit_edge ]
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %72 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %power_level, align 4
  %power_level103 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 58
  %74 = ptrtoint ptr %power_level103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %power_level103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp104.not = icmp eq i32 %73, %75
  br i1 %cmp104.not, label %if.end102.out_sleep_crit_edge, label %if.then106

if.end102.out_sleep_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.then106:                                       ; preds = %if.end102
  %call108 = tail call i32 @wl1251_acx_tx_power(ptr noundef %1, i32 noundef %73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then106.out_sleep_crit_edge, label %if.end112

if.then106.out_sleep_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end112:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %power_level, align 4
  %78 = ptrtoint ptr %power_level103 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %power_level103, align 4
  br label %out_sleep

out_sleep:                                        ; preds = %if.end112, %if.then106.out_sleep_crit_edge, %if.end102.out_sleep_crit_edge, %do.end.i212, %if.end5.i207.out_sleep_crit_edge, %if.end90.out_sleep_crit_edge, %if.else85.out_sleep_crit_edge, %if.then79.out_sleep_crit_edge, %if.then62.out_sleep_crit_edge, %do.end38.out_sleep_crit_edge, %if.end26.out_sleep_crit_edge, %do.end.i, %if.end5.i.out_sleep_crit_edge, %if.else22.out_sleep_crit_edge, %if.then3.out_sleep_crit_edge
  %ret.5 = phi i32 [ %call9, %if.then3.out_sleep_crit_edge ], [ %call21, %if.end26.out_sleep_crit_edge ], [ %call108, %if.then106.out_sleep_crit_edge ], [ %call108, %if.end112 ], [ %ret.4, %if.end102.out_sleep_crit_edge ], [ %call80, %if.then79.out_sleep_crit_edge ], [ %call86, %if.else85.out_sleep_crit_edge ], [ %call63, %if.then62.out_sleep_crit_edge ], [ %call44, %do.end38.out_sleep_crit_edge ], [ %call11.i, %do.end.i ], [ %call6.i, %if.end5.i.out_sleep_crit_edge ], [ %call.i182, %if.else22.out_sleep_crit_edge ], [ %call11.i208, %do.end.i212 ], [ %call6.i205, %if.end5.i207.out_sleep_crit_edge ], [ %call.i194, %if.end90.out_sleep_crit_edge ]
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #9
  br label %out

out:                                              ; preds = %out_sleep, %entry.out_crit_edge
  %ret.6 = phi i32 [ %call2, %entry.out_crit_edge ], [ %ret.5, %out_sleep ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_op_bss_info_changed(ptr noundef %hw, ptr noundef %vif, ptr nocapture noundef readonly %bss_conf, i32 noundef %changed) #0 align 64 {
entry:
  %template.i = alloca %struct.ieee80211_qos_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %changed, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then1

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then1:                                         ; preds = %if.end
  %cqm_rssi_thold = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 28
  %2 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqm_rssi_thold, align 4
  %conv = trunc i32 %3 to i8
  %call2 = tail call i32 @wl1251_acx_low_rssi(ptr noundef %1, i8 noundef signext %conv, i8 noundef zeroext 10, i8 noundef zeroext 10, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.out_crit_edge, label %if.end6

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqm_rssi_thold, align 4
  %rssi_thold = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 59
  %6 = ptrtoint ptr %rssi_thold to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rssi_thold, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %and9 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end39_crit_edge, label %land.lhs.true

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end8
  %bssid = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bss_conf, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid, ptr noundef dereferenceable(6) %8, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end39_crit_edge, label %if.then14

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then14:                                        ; preds = %land.lhs.true
  %9 = call ptr @memcpy(ptr %bssid, ptr %8, i32 6)
  %10 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr %struct.wl1251, ptr %1, i32 0, i32 22, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %13 to i32
  %or.i = or i32 %11, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then14.if.end39_crit_edge, label %if.then21

if.then14.if.end39_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then21:                                        ; preds = %if.then14
  %bss_type.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bss_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i271 = icmp eq i8 %15, 0
  br i1 %cmp.i271, label %if.then21.out.i_crit_edge, label %if.else.i

if.then21.out.i_crit_edge:                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else.i:                                        ; preds = %if.then21
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %vif.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 66
  %18 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vif.i, align 4
  %call.i = tail call ptr @ieee80211_nullfunc_get(ptr noundef %17, ptr noundef %19, i1 noundef zeroext false) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %wl1251_build_null_data.exit.thread309, label %if.end.i

wl1251_build_null_data.exit.thread309:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef null) #9
  %call7.i311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef -12) #12
  br label %out_sleep

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end.i, %if.then21.out.i_crit_edge
  %size.0.i = phi i32 [ %21, %if.end.i ], [ 24, %if.then21.out.i_crit_edge ]
  %ptr.0.i = phi ptr [ %23, %if.end.i ], [ null, %if.then21.out.i_crit_edge ]
  %skb.0.i = phi ptr [ %call.i, %if.end.i ], [ null, %if.then21.out.i_crit_edge ]
  %call4.i = tail call i32 @wl1251_cmd_template_set(ptr noundef %1, i16 noundef zeroext 21, ptr noundef %ptr.0.i, i32 noundef %size.0.i) #9
  tail call void @consume_skb(ptr noundef %skb.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %out.i.if.end26_crit_edge, label %wl1251_build_null_data.exit

out.i.if.end26_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

wl1251_build_null_data.exit:                      ; preds = %out.i
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %call4.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp23 = icmp slt i32 %call4.i, 0
  br i1 %cmp23, label %wl1251_build_null_data.exit.out_sleep_crit_edge, label %wl1251_build_null_data.exit.if.end26_crit_edge

wl1251_build_null_data.exit.if.end26_crit_edge:   ; preds = %wl1251_build_null_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

wl1251_build_null_data.exit.out_sleep_crit_edge:  ; preds = %wl1251_build_null_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end26:                                         ; preds = %wl1251_build_null_data.exit.if.end26_crit_edge, %out.i.if.end26_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %template.i) #9
  %24 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %template.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %template.i, i32 0, i32 3
  %26 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %template.i, i32 0, i32 4
  %27 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %template.i, i32 0, i32 6
  %28 = getelementptr inbounds i8, ptr %template.i, i32 2
  %29 = call ptr @memset(ptr %28, i32 0, i32 22)
  %30 = call ptr @memcpy(ptr %24, ptr %bssid, i32 6)
  %mac_addr.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 23
  %31 = call ptr @memcpy(ptr %25, ptr %mac_addr.i, i32 6)
  %32 = call ptr @memcpy(ptr %26, ptr %bssid, i32 6)
  %33 = ptrtoint ptr %template.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -14335, ptr %template.i, align 2
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %27, align 2
  %call.i272 = call i32 @wl1251_cmd_template_set(ptr noundef %1, i16 noundef zeroext 31, ptr noundef nonnull %template.i, i32 noundef 26) #9
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %template.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %cmp28 = icmp slt i32 %call.i272, 0
  br i1 %cmp28, label %if.end26.out_sleep_crit_edge, label %if.end31

if.end26.out_sleep_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end31:                                         ; preds = %if.end26
  %35 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bss_type.i, align 4
  %channel = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel, align 4
  %conv32 = trunc i32 %38 to i8
  %beacon_int = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %39 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %beacon_int, align 2
  %dtim_period = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 57
  %41 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dtim_period, align 4
  %tx_mgmt_frm_rate.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 47
  %43 = ptrtoint ptr %tx_mgmt_frm_rate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_mgmt_frm_rate.i, align 4
  %conv.i273 = trunc i32 %44 to i8
  %tx_mgmt_frm_mod.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 48
  %45 = ptrtoint ptr %tx_mgmt_frm_mod.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_mgmt_frm_mod.i, align 4
  %conv1.i = trunc i32 %46 to i8
  %call.i274 = call i32 @wl1251_acx_frame_rates(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext %conv.i273, i8 noundef zeroext %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %cmp.i275 = icmp slt i32 %call.i274, 0
  br i1 %cmp.i275, label %if.end31.out_sleep_crit_edge, label %if.end.i277

if.end31.out_sleep_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end.i277:                                      ; preds = %if.end31
  %47 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bssid, align 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i, align 2
  %conv.i.i = zext i16 %50 to i32
  %or.i.i = or i32 %48, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i277.if.end5.i_crit_edge

if.end.i277.if.end5.i_crit_edge:                  ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #11
  %rx_config.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 49
  %51 = ptrtoint ptr %rx_config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_config.i, align 4
  %and.i = and i32 %52, -33
  store i32 %and.i, ptr %rx_config.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i277.if.end5.i_crit_edge
  %call6.i = call i32 @wl1251_cmd_join(ptr noundef %1, i8 noundef zeroext %36, i8 noundef zeroext %conv32, i16 noundef zeroext %40, i8 noundef zeroext %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.out_sleep_crit_edge, label %if.end10.i

if.end5.i.out_sleep_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end10.i:                                       ; preds = %if.end5.i
  %call11.i = call i32 @wl1251_event_wait(ptr noundef %1, i32 noundef 8192, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end.i278, label %if.end10.i.if.end39_crit_edge

if.end10.i.if.end39_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end.i278:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %out_sleep

if.end39:                                         ; preds = %if.end10.i.if.end39_crit_edge, %if.then14.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.end8.if.end39_crit_edge
  %and40 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end66_crit_edge, label %if.then42

if.end39.if.end66_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then42:                                        ; preds = %if.end39
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %53 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %assoc, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool43.not = icmp eq i8 %54, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.then42
  %beacon_int45 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %55 = ptrtoint ptr %beacon_int45 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %beacon_int45, align 2
  %beacon_int46 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %57 = ptrtoint ptr %beacon_int46 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %beacon_int46, align 2
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %vif48 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 66
  %60 = ptrtoint ptr %vif48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vif48, align 4
  %call49 = call ptr @ieee80211_pspoll_get(ptr noundef %59, ptr noundef %61) #9
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.then44.out_sleep_crit_edge, label %if.end52

if.then44.out_sleep_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end52:                                         ; preds = %if.then44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call49, i32 0, i32 19
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call49, i32 0, i32 6
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %call53 = call i32 @wl1251_cmd_template_set(ptr noundef %1, i16 noundef zeroext 30, ptr noundef %63, i32 noundef %65) #9
  call void @consume_skb(ptr noundef nonnull %call49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.out_sleep_crit_edge, label %if.end57

if.end52.out_sleep_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end57:                                         ; preds = %if.end52
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %66 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %aid, align 2
  %call58 = call i32 @wl1251_acx_aid(ptr noundef %1, i16 noundef zeroext %67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.out_sleep_crit_edge, label %if.end57.if.end66_crit_edge

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end57.out_sleep_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.else:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %beacon_int63 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %68 = ptrtoint ptr %beacon_int63 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 100, ptr %beacon_int63, align 2
  %dtim_period64 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 57
  %69 = ptrtoint ptr %dtim_period64 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %dtim_period64, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.end57.if.end66_crit_edge, %if.end39.if.end66_crit_edge
  %and67 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end84_crit_edge, label %if.then69

if.end66.if.end84_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then69:                                        ; preds = %if.end66
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 16
  %70 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %use_short_slot, align 2, !range !203
  %72 = zext i8 %71 to i32
  %call74 = call i32 @wl1251_acx_slot(ptr noundef %1, i32 noundef %72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp76 = icmp slt i32 %call74, 0
  br i1 %cmp76, label %do.end81, label %if.then69.if.end84_crit_edge

if.then69.if.end84_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

do.end81:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call74) #12
  br label %out_sleep

if.end84:                                         ; preds = %if.then69.if.end84_crit_edge, %if.end66.if.end84_crit_edge
  %and85 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end94_crit_edge, label %if.then87

if.end84.if.end94_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 15
  %73 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %use_short_preamble, align 1, !range !203
  %75 = zext i8 %74 to i32
  %call90 = call i32 @wl1251_acx_set_preamble(ptr noundef %1, i32 noundef %75) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then87, %if.end84.if.end94_crit_edge
  %and95 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end113_crit_edge, label %if.then97

if.end94.if.end113_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then97:                                        ; preds = %if.end94
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 14
  %76 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %use_cts_prot, align 4, !range !203
  %78 = zext i8 %77 to i32
  %call102 = call i32 @wl1251_acx_cts_protect(ptr noundef %1, i32 noundef %78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp104 = icmp slt i32 %call102, 0
  br i1 %cmp104, label %do.end109, label %if.then97.if.end113_crit_edge

if.then97.if.end113_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

do.end109:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call102) #12
  br label %out_sleep

if.end113:                                        ; preds = %if.then97.if.end113_crit_edge, %if.end94.if.end113_crit_edge
  %and114 = and i32 %changed, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end157, label %if.then116

if.then116:                                       ; preds = %if.end113
  %arp_addr_list = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 34
  %79 = ptrtoint ptr %arp_addr_list to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arp_addr_list, align 8
  %bss_type117 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %81 = ptrtoint ptr %bss_type117 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bss_type117, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp119.not = icmp eq i8 %82, 2
  br i1 %cmp119.not, label %if.then116.if.end138_crit_edge, label %do.end132, !prof !205

if.then116.if.end138_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

do.end132:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1180, i32 noundef 9, ptr noundef null) #9
  br label %if.end138

if.end138:                                        ; preds = %do.end132, %if.then116.if.end138_crit_edge
  %arp_addr_cnt = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 35
  %83 = ptrtoint ptr %arp_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arp_addr_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp146 = icmp eq i32 %84, 1
  br i1 %cmp146, label %land.rhs, label %if.end138.land.end_crit_edge

if.end138.land.end_crit_edge:                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %assoc148 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %85 = ptrtoint ptr %assoc148 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %assoc148, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool149 = icmp ne i8 %86, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end138.land.end_crit_edge
  %87 = phi i1 [ false, %if.end138.land.end_crit_edge ], [ %tobool149, %land.rhs ]
  %call152 = call i32 @wl1251_acx_arp_ip_filter(ptr noundef %1, i1 noundef zeroext %87, i32 noundef %80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp slt i32 %call152, 0
  %and158 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  %or.cond = or i1 %tobool159.not, %cmp153
  br i1 %or.cond, label %land.end.out_sleep_crit_edge, label %land.end.if.then160_crit_edge

land.end.if.then160_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then160

land.end.out_sleep_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end157:                                        ; preds = %if.end113
  %and158.old = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.old)
  %tobool159.not.old = icmp eq i32 %and158.old, 0
  br i1 %tobool159.not.old, label %if.end157.out_sleep_crit_edge, label %if.end157.if.then160_crit_edge

if.end157.if.then160_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then160

if.end157.out_sleep_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.then160:                                       ; preds = %if.end157.if.then160_crit_edge, %land.end.if.then160_crit_edge
  %call.i280 = call ptr @ieee80211_beacon_get_tim(ptr noundef %hw, ptr noundef %vif, ptr noundef null, ptr noundef null) #9
  %tobool162.not = icmp eq ptr %call.i280, null
  br i1 %tobool162.not, label %if.then160.out_sleep_crit_edge, label %if.end164

if.then160.out_sleep_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end164:                                        ; preds = %if.then160
  %data165 = getelementptr inbounds %struct.sk_buff, ptr %call.i280, i32 0, i32 19
  %88 = ptrtoint ptr %data165 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data165, align 4
  %len166 = getelementptr inbounds %struct.sk_buff, ptr %call.i280, i32 0, i32 6
  %90 = ptrtoint ptr %len166 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len166, align 4
  %call167 = call i32 @wl1251_cmd_template_set(ptr noundef %1, i16 noundef zeroext 19, ptr noundef %89, i32 noundef %91) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  call void @consume_skb(ptr noundef nonnull %call.i280) #9
  br label %out_sleep

if.end171:                                        ; preds = %if.end164
  %92 = ptrtoint ptr %data165 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data165, align 4
  %94 = ptrtoint ptr %len166 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len166, align 4
  %call174 = call i32 @wl1251_cmd_template_set(ptr noundef %1, i16 noundef zeroext 20, ptr noundef %93, i32 noundef %95) #9
  call void @consume_skb(ptr noundef nonnull %call.i280) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %if.end171.out_sleep_crit_edge, label %if.end178

if.end171.out_sleep_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end178:                                        ; preds = %if.end171
  %bss_type179 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %96 = ptrtoint ptr %bss_type179 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bss_type179, align 4
  %channel180 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 26
  %98 = ptrtoint ptr %channel180 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %channel180, align 4
  %conv181 = trunc i32 %99 to i8
  %beacon_int182 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %100 = ptrtoint ptr %beacon_int182 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %beacon_int182, align 2
  %dtim_period183 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 57
  %102 = ptrtoint ptr %dtim_period183 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dtim_period183, align 4
  %tx_mgmt_frm_rate.i281 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 47
  %104 = ptrtoint ptr %tx_mgmt_frm_rate.i281 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_mgmt_frm_rate.i281, align 4
  %conv.i282 = trunc i32 %105 to i8
  %tx_mgmt_frm_mod.i283 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 48
  %106 = ptrtoint ptr %tx_mgmt_frm_mod.i283 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_mgmt_frm_mod.i283, align 4
  %conv1.i284 = trunc i32 %107 to i8
  %call.i285 = call i32 @wl1251_acx_frame_rates(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext %conv.i282, i8 noundef zeroext %conv1.i284) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %cmp.i286 = icmp slt i32 %call.i285, 0
  br i1 %cmp.i286, label %if.end178.out_sleep_crit_edge, label %if.end.i292

if.end178.out_sleep_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end.i292:                                      ; preds = %if.end178
  %bssid.i287 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 22
  %108 = ptrtoint ptr %bssid.i287 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bssid.i287, align 4
  %add.ptr.i.i288 = getelementptr %struct.wl1251, ptr %1, i32 0, i32 22, i32 4
  %110 = ptrtoint ptr %add.ptr.i.i288 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %add.ptr.i.i288, align 2
  %conv.i.i289 = zext i16 %111 to i32
  %or.i.i290 = or i32 %109, %conv.i.i289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i290)
  %cmp.i.i291 = icmp eq i32 %or.i.i290, 0
  br i1 %cmp.i.i291, label %if.then4.i295, label %if.end.i292.if.end5.i298_crit_edge

if.end.i292.if.end5.i298_crit_edge:               ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i298

if.then4.i295:                                    ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #11
  %rx_config.i293 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 49
  %112 = ptrtoint ptr %rx_config.i293 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx_config.i293, align 4
  %and.i294 = and i32 %113, -33
  store i32 %and.i294, ptr %rx_config.i293, align 4
  br label %if.end5.i298

if.end5.i298:                                     ; preds = %if.then4.i295, %if.end.i292.if.end5.i298_crit_edge
  %call6.i296 = call i32 @wl1251_cmd_join(ptr noundef %1, i8 noundef zeroext %97, i8 noundef zeroext %conv181, i16 noundef zeroext %101, i8 noundef zeroext %103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i296)
  %cmp7.i297 = icmp slt i32 %call6.i296, 0
  br i1 %cmp7.i297, label %if.end5.i298.out_sleep_crit_edge, label %if.end10.i301

if.end5.i298.out_sleep_crit_edge:                 ; preds = %if.end5.i298
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end10.i301:                                    ; preds = %if.end5.i298
  %call11.i299 = call i32 @wl1251_event_wait(ptr noundef %1, i32 noundef 8192, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i299)
  %cmp12.i300 = icmp slt i32 %call11.i299, 0
  br i1 %cmp12.i300, label %do.end.i303, label %if.end10.i301.out_sleep_crit_edge

if.end10.i301.out_sleep_crit_edge:                ; preds = %if.end10.i301
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

do.end.i303:                                      ; preds = %if.end10.i301
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %out_sleep

out_sleep:                                        ; preds = %do.end.i303, %if.end10.i301.out_sleep_crit_edge, %if.end5.i298.out_sleep_crit_edge, %if.end178.out_sleep_crit_edge, %if.end171.out_sleep_crit_edge, %if.then170, %if.then160.out_sleep_crit_edge, %if.end157.out_sleep_crit_edge, %land.end.out_sleep_crit_edge, %do.end109, %do.end81, %if.end57.out_sleep_crit_edge, %if.end52.out_sleep_crit_edge, %if.then44.out_sleep_crit_edge, %do.end.i278, %if.end5.i.out_sleep_crit_edge, %if.end31.out_sleep_crit_edge, %if.end26.out_sleep_crit_edge, %wl1251_build_null_data.exit.out_sleep_crit_edge, %wl1251_build_null_data.exit.thread309
  call void @wl1251_ps_elp_sleep(ptr noundef %1) #9
  br label %out

out:                                              ; preds = %out_sleep, %if.then1.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @wl1251_op_prepare_multicast(ptr nocapture noundef readonly %hw, ptr noundef readonly %mc_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !206

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 56) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mc_list_length = getelementptr inbounds %struct.wl1251_filter_params, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %mc_list_length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mc_list_length, align 4
  %count = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp6 = icmp sgt i32 %7, 8
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call7.i.i, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end5
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.038 = load ptr, ptr %mc_list, align 4
  %cmp12.not39 = icmp eq ptr %ha.038, %mc_list
  br i1 %cmp12.not39, label %if.else.if.end24_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %ha.040 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.038, %if.else.for.body_crit_edge ]
  %11 = ptrtoint ptr %mc_list_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mc_list_length, align 4
  %arrayidx = getelementptr %struct.wl1251_filter_params, ptr %call7.i.i, i32 0, i32 2, i32 %12
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.040, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %14 = load i32, ptr %mc_list_length, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %mc_list_length, align 4
  %15 = ptrtoint ptr %ha.040 to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.0 = load ptr, ptr %ha.040, align 4
  %cmp12.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp12.not, label %for.body.if.end24_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %for.body.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then7
  %16 = ptrtoint ptr %call7.i.i to i32
  %conv = zext i32 %16 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.end24 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_op_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed, ptr nocapture noundef %total, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %multicast to i32
  %0 = inttoptr i32 %conv to ptr
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %3 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total, align 4
  %and = and i32 %4, 374
  store i32 %and, ptr %total, align 4
  %and1 = and i32 %changed, 374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp = icmp eq i32 %and1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.wl1251, ptr %2, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %rx_config = getelementptr inbounds %struct.wl1251, ptr %2, i32 0, i32 49
  %5 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 112, ptr %rx_config, align 4
  %rx_filter = getelementptr inbounds %struct.wl1251, ptr %2, i32 0, i32 50
  %6 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3796, ptr %rx_filter, align 4
  %7 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total, align 4
  %and3 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 48, ptr %rx_config, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %10 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total, align 4
  %and8 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_filter, align 4
  %or = or i32 %13, 32
  store i32 %or, ptr %rx_filter, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %14 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total, align 4
  %and13 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_config, align 4
  %and19 = and i32 %17, -1057
  store i32 %and19, ptr %rx_config, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12.if.end20_crit_edge
  %18 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total, align 4
  %and21 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_filter, align 4
  %or25 = or i32 %21, 128
  store i32 %or25, ptr %rx_filter, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %22 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total, align 4
  %and27 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.end26.if.then30_crit_edge

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end26
  %bssid = getelementptr inbounds %struct.wl1251, ptr %2, i32 0, i32 22
  %24 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr %struct.wl1251, ptr %2, i32 0, i32 22, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %27 to i32
  %or.i = or i32 %25, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %lor.lhs.false.if.then30_crit_edge, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end26.if.then30_crit_edge
  %28 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_config, align 4
  %and32 = and i32 %29, -33
  store i32 %and32, ptr %rx_config, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %lor.lhs.false.if.end33_crit_edge
  %30 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total, align 4
  %and34 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_filter, align 4
  %or38 = or i32 %33, 8
  store i32 %or38, ptr %rx_filter, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %state = getelementptr inbounds %struct.wl1251, ptr %2, i32 0, i32 9
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp40 = icmp eq i32 %35, 0
  br i1 %cmp40, label %if.end39.out_crit_edge, label %if.end43

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end43:                                         ; preds = %if.end39
  %call44 = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.out_crit_edge, label %if.end48

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end48:                                         ; preds = %if.end43
  %36 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %total, align 4
  %and49 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call i32 @wl1251_acx_group_address_tbl(ptr noundef %2, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #9
  br label %if.end59

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool53.not = icmp eq i32 %conv, 0
  br i1 %tobool53.not, label %if.else.if.end63_crit_edge, label %if.then54

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool55 = icmp ne i8 %39, 0
  %mc_list = getelementptr inbounds %struct.wl1251_filter_params, ptr %0, i32 0, i32 2
  %mc_list_length = getelementptr inbounds %struct.wl1251_filter_params, ptr %0, i32 0, i32 1
  %40 = ptrtoint ptr %mc_list_length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mc_list_length, align 4
  %call57 = tail call i32 @wl1251_acx_group_address_tbl(ptr noundef %2, i1 noundef zeroext %tobool55, ptr noundef %mc_list, i32 noundef %41) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.then51
  %ret.0 = phi i32 [ %call52, %if.then51 ], [ %call57, %if.then54 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp60 = icmp slt i32 %ret.0, 0
  br i1 %cmp60, label %if.end59.out_crit_edge, label %if.end59.if.end63_crit_edge

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end63:                                         ; preds = %if.end59.if.end63_crit_edge, %if.else.if.end63_crit_edge
  %42 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_config, align 4
  %44 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_filter, align 4
  %call66 = tail call i32 @wl1251_acx_rx_config(ptr noundef %2, i32 noundef %43, i32 noundef %45) #9
  tail call void @wl1251_ps_elp_sleep(ptr noundef %2) #9
  br label %out

out:                                              ; preds = %if.end63, %if.end59.out_crit_edge, %if.end43.out_crit_edge, %if.end39.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_op_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr nocapture noundef readnone %vif, ptr noundef readonly %sta, ptr nocapture noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %sta, null
  %addr2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %spec.select = select i1 %tobool1.not, ptr @wl1251_op_set_key.bcast_addr, ptr %addr2
  %3 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %spec.select, align 4
  %add.ptr.i = getelementptr i8, ptr %spec.select, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %6 to i32
  %or.i = or i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.end17

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %cmd, label %do.end25 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end17
  %monitor_present = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %monitor_present to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %monitor_present, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb.out_unlock_crit_edge

sw.bb.out_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end20:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %key_action = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %key_action to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %key_action, align 2
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %key_action22 = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %key_action22 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %key_action22, align 2
  br label %sw.epilog

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %cmd) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end25, %sw.bb21, %if.end20
  %call27 = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %sw.epilog.out_unlock_crit_edge, label %if.end29

sw.epilog.out_unlock_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end29:                                         ; preds = %sw.epilog
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %12 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cipher.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %13, label %do.end35 [
    i32 1027073, label %if.end29.sw.bb.i_crit_edge
    i32 1027077, label %if.end29.sw.bb.i_crit_edge129
    i32 1027074, label %sw.bb2.i
    i32 1027076, label %sw.bb11.i
  ]

if.end29.sw.bb.i_crit_edge129:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end29.sw.bb.i_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end29.sw.bb.i_crit_edge, %if.end29.sw.bb.i_crit_edge129
  %15 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %spec.select, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %spec.select, i32 2
  %17 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %18, %16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i, align 2
  %and510.i.i = and i16 %and9.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp ne i16 %and510.i.i, -1
  %spec.select.i = zext i1 %cmp.i.i to i8
  %21 = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select.i, ptr %21, align 1
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %23 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %keyidx.i, align 1
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %25 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %hw_key_idx.i, align 2
  br label %if.end38

sw.bb2.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %spec.select, align 2
  %add.ptr1.i1.i = getelementptr i8, ptr %spec.select, i32 2
  %28 = ptrtoint ptr %add.ptr1.i1.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr1.i1.i, align 2
  %and9.i2.i = and i16 %29, %27
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i, align 2
  %and510.i4.i = and i16 %and9.i2.i, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i4.i)
  %cmp.i5.i = icmp eq i16 %and510.i4.i, -1
  %spec.select13.i = select i1 %cmp.i5.i, i8 10, i8 11
  %32 = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select13.i, ptr %32, align 1
  %keyidx9.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %34 = ptrtoint ptr %keyidx9.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %keyidx9.i, align 1
  %hw_key_idx10.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %36 = ptrtoint ptr %hw_key_idx10.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %hw_key_idx10.i, align 2
  br label %if.end38

sw.bb11.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %spec.select, align 2
  %add.ptr1.i6.i = getelementptr i8, ptr %spec.select, i32 2
  %39 = ptrtoint ptr %add.ptr1.i6.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr1.i6.i, align 2
  %and9.i7.i = and i16 %40, %38
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i, align 2
  %and510.i9.i = and i16 %and9.i7.i, %42
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i9.i)
  %cmp.i10.i = icmp eq i16 %and510.i9.i, -1
  %spec.select14.i = select i1 %cmp.i10.i, i8 4, i8 5
  %43 = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %spec.select14.i, ptr %43, align 1
  %flags.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags.i, align 8
  %47 = or i16 %46, 2
  store i16 %47, ptr %flags.i, align 8
  br label %if.end38

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %13) #12
  br label %out_sleep.sink.split

if.end38:                                         ; preds = %sw.bb11.i, %sw.bb2.i, %sw.bb.i
  %key_type = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %key_type to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %key_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp39.not = icmp eq i8 %49, 0
  br i1 %cmp39.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %addr42 = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %addr42, ptr %spec.select, i32 6)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %51 = ptrtoint ptr %key_type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %key_type, align 1
  %53 = and i8 %52, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %53)
  %switch = icmp eq i8 %53, 10
  %key54 = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 9
  %key56 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  br i1 %switch, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %54 = call ptr @memcpy(ptr %key54, ptr %key56, i32 16)
  %add.ptr = getelementptr %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 9, i32 16
  %add.ptr62 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %55 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %add.ptr62, align 1
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %add.ptr, align 8
  %add.ptr65 = getelementptr %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 9, i32 24
  %add.ptr68 = getelementptr i8, ptr %key56, i32 16
  %58 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %add.ptr68, align 1
  %60 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %add.ptr65, align 8
  br label %if.end74

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %61 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %keylen, align 2
  %conv73 = zext i8 %62 to i32
  %63 = call ptr @memcpy(ptr %key54, ptr %key56, i32 %conv73)
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then53
  %keylen75 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %64 = ptrtoint ptr %keylen75 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %keylen75, align 2
  %key_size = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 4
  %66 = ptrtoint ptr %key_size to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %key_size, align 2
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %67 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %keyidx, align 1
  %id = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 7
  %69 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %id, align 1
  %ssid_profile = getelementptr inbounds %struct.wl1251_cmd_set_keys, ptr %call7.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %ssid_profile to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %ssid_profile, align 8
  %call79 = tail call i32 @wl1251_cmd_send(ptr noundef %1, i16 noundef zeroext 12, ptr noundef nonnull %call7.i.i, i32 noundef 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end74.out_sleep.sink.split_crit_edge, label %if.end74.out_sleep_crit_edge

if.end74.out_sleep_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end74.out_sleep.sink.split_crit_edge:          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep.sink.split

out_sleep.sink.split:                             ; preds = %if.end74.out_sleep.sink.split_crit_edge, %do.end35
  %.str.79.sink = phi ptr [ @.str.76, %do.end35 ], [ @.str.79, %if.end74.out_sleep.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -95, %do.end35 ], [ %call79, %if.end74.out_sleep.sink.split_crit_edge ]
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.79.sink) #12
  br label %out_sleep

out_sleep:                                        ; preds = %out_sleep.sink.split, %if.end74.out_sleep_crit_edge
  %ret.0 = phi i32 [ %call79, %if.end74.out_sleep_crit_edge ], [ %ret.0.ph, %out_sleep.sink.split ]
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #9
  br label %out_unlock

out_unlock:                                       ; preds = %out_sleep, %sw.epilog.out_unlock_crit_edge, %sw.bb.out_unlock_crit_edge
  %ret.1 = phi i32 [ %call27, %sw.epilog.out_unlock_crit_edge ], [ %ret.0, %out_sleep ], [ -95, %sw.bb.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %out

out:                                              ; preds = %out_unlock, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_unlock ], [ -12, %entry.out_crit_edge ], [ -95, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #9
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_op_hw_scan(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %hw_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %n_ssids = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %req1 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1
  %4 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req1, align 8
  %ssid_len5 = getelementptr inbounds %struct.cfg80211_ssid, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ssid_len5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssid_len5, align 1
  %conv = zext i8 %7 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ssid_len.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %ssid.0 = phi ptr [ %5, %if.then ], [ null, %entry.if.end_crit_edge ]
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %scanning = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 45
  %8 = ptrtoint ptr %scanning to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scanning, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end11, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.end
  %call = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end14:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw, align 8
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end28_crit_edge, label %if.then16

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then16:                                        ; preds = %if.end14
  %call17 = tail call i32 @wl1251_ps_set_mode(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then16.out_sleep_crit_edge, label %if.end21

if.then16.out_sleep_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end21:                                         ; preds = %if.then16
  %bss_type = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bss_type, align 4
  %channel = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %conv22 = trunc i32 %15 to i8
  %beacon_int = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 56
  %16 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %beacon_int, align 2
  %dtim_period = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 57
  %18 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dtim_period, align 4
  %tx_mgmt_frm_rate.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 47
  %20 = ptrtoint ptr %tx_mgmt_frm_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_mgmt_frm_rate.i, align 4
  %conv.i = trunc i32 %21 to i8
  %tx_mgmt_frm_mod.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 48
  %22 = ptrtoint ptr %tx_mgmt_frm_mod.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_mgmt_frm_mod.i, align 4
  %conv1.i = trunc i32 %23 to i8
  %call.i = tail call i32 @wl1251_acx_frame_rates(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end21.out_sleep_crit_edge, label %if.end.i

if.end21.out_sleep_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end.i:                                         ; preds = %if.end21
  %bssid.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bssid.i, align 4
  %add.ptr.i.i = getelementptr %struct.wl1251, ptr %1, i32 0, i32 22, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %27 to i32
  %or.i.i = or i32 %25, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_config.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 49
  %28 = ptrtoint ptr %rx_config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_config.i, align 4
  %and.i = and i32 %29, -33
  store i32 %and.i, ptr %rx_config.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %call6.i = tail call i32 @wl1251_cmd_join(ptr noundef %1, i8 noundef zeroext %13, i8 noundef zeroext %conv22, i16 noundef zeroext %17, i8 noundef zeroext %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.out_sleep_crit_edge, label %if.end10.i

if.end5.i.out_sleep_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end10.i:                                       ; preds = %if.end5.i
  %call11.i = tail call i32 @wl1251_event_wait(ptr noundef %1, i32 noundef 8192, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end10.i.if.end28_crit_edge

if.end10.i.if.end28_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %out_sleep

if.end28:                                         ; preds = %if.end10.i.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %vif30 = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 66
  %32 = ptrtoint ptr %vif30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vif30, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %33, i32 0, i32 2
  %ie_len = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ie_len, align 4
  %call32 = tail call ptr @ieee80211_probereq_get(ptr noundef %31, ptr noundef %addr, ptr noundef %ssid.0, i32 noundef %ssid_len.0, i32 noundef %35) #9
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end28.out_idle_crit_edge, label %if.end35

if.end28.out_idle_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_idle

if.end35:                                         ; preds = %if.end28
  %36 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool37.not = icmp eq i32 %37, 0
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %ie = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ie, align 8
  %call.i111 = tail call ptr @skb_put(ptr noundef nonnull %call32, i32 noundef %37) #9
  %40 = call ptr @memcpy(ptr %call.i111, ptr %39, i32 %37)
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 19
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %call42 = tail call i32 @wl1251_cmd_template_set(ptr noundef %1, i16 noundef zeroext 22, ptr noundef %42, i32 noundef %44) #9
  tail call void @consume_skb(ptr noundef nonnull %call32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.out_idle_crit_edge, label %if.end46

if.end41.out_idle_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_idle

if.end46:                                         ; preds = %if.end41
  %call47 = tail call i32 @wl1251_cmd_trigger_scan_to(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.out_idle_crit_edge, label %if.end51

if.end46.out_idle_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_idle

if.end51:                                         ; preds = %if.end46
  %45 = ptrtoint ptr %scanning to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %scanning, align 4
  %channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 22
  %n_channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_channels, align 8
  %call54 = tail call i32 @wl1251_cmd_scan(ptr noundef %1, ptr noundef %ssid.0, i32 noundef %ssid_len.0, ptr noundef %channels, i32 noundef %47, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end60, label %if.end51.out_sleep_crit_edge

if.end51.out_sleep_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

do.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %scanning to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %scanning, align 4
  br label %out_idle

out_idle:                                         ; preds = %do.end60, %if.end46.out_idle_crit_edge, %if.end41.out_idle_crit_edge, %if.end28.out_idle_crit_edge
  %ret.0 = phi i32 [ %call42, %if.end41.out_idle_crit_edge ], [ %call47, %if.end46.out_idle_crit_edge ], [ %call54, %do.end60 ], [ -12, %if.end28.out_idle_crit_edge ]
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw, align 8
  %and65 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %out_idle.out_sleep_crit_edge, label %if.then67

out_idle.out_sleep_crit_edge:                     ; preds = %out_idle
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.then67:                                        ; preds = %out_idle
  call void @__sanitizer_cov_trace_pc() #11
  %call68 = tail call i32 @wl1251_ps_set_mode(ptr noundef %1, i32 noundef 2) #9
  br label %out_sleep

out_sleep:                                        ; preds = %if.then67, %out_idle.out_sleep_crit_edge, %if.end51.out_sleep_crit_edge, %do.end.i, %if.end5.i.out_sleep_crit_edge, %if.end21.out_sleep_crit_edge, %if.then16.out_sleep_crit_edge
  %ret.1 = phi i32 [ %call17, %if.then16.out_sleep_crit_edge ], [ %call68, %if.then67 ], [ %ret.0, %out_idle.out_sleep_crit_edge ], [ %call54, %if.end51.out_sleep_crit_edge ], [ %call11.i, %do.end.i ], [ %call6.i, %if.end5.i.out_sleep_crit_edge ], [ %call.i, %if.end21.out_sleep_crit_edge ]
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #9
  br label %out

out:                                              ; preds = %out_sleep, %if.end11.out_crit_edge, %if.end.out_crit_edge
  %ret.2 = phi i32 [ %call, %if.end11.out_crit_edge ], [ %ret.1, %out_sleep ], [ -22, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_op_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %conv = trunc i32 %value to i16
  %call1 = tail call i32 @wl1251_acx_rts_threshold(ptr noundef %1, i16 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %call1) #12
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #9
  br label %out

out:                                              ; preds = %if.end6, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end6 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl1251_op_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %queue)
  %2 = icmp ult i16 %queue, 4
  %switch.cast = zext i16 %queue to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 16777731, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %retval.0.i = select i1 %2, i8 %switch.masked, i8 0
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cw_min, align 2
  %conv3 = trunc i16 %4 to i8
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cw_max, align 2
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aifs, align 2
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %params, align 2
  %mul = shl i16 %10, 5
  %call6 = tail call i32 @wl1251_acx_ac_cfg(ptr noundef %1, i8 noundef zeroext %retval.0.i, i8 noundef zeroext %conv3, i16 noundef zeroext %6, i8 noundef zeroext %8, i16 noundef zeroext %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.out_sleep_crit_edge, label %if.end10

if.end.out_sleep_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sleep

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %uapsd = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 5
  %11 = ptrtoint ptr %uapsd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %uapsd, align 2, !range !203
  %13 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %queue)
  %14 = icmp ult i16 %queue, 4
  %switch.cast66 = zext i16 %queue to i32
  %switch.shiftamt67 = shl nuw nsw i32 %switch.cast66, 3
  %switch.downshift68 = lshr i32 16777731, %switch.shiftamt67
  %switch.masked69 = trunc i32 %switch.downshift68 to i8
  %conv1552 = select i1 %14, i8 %switch.masked69, i8 0
  %call19 = tail call i32 @wl1251_acx_tid_cfg(ptr noundef %1, i8 noundef zeroext %conv1552, i32 noundef 1, i8 noundef zeroext %conv1552, i32 noundef %13, i32 noundef 0) #9
  br label %out_sleep

out_sleep:                                        ; preds = %if.end10, %if.end.out_sleep_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.out_sleep_crit_edge ], [ %call19, %if.end10 ]
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #9
  br label %out

out:                                              ; preds = %out_sleep, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %ret.0, %out_sleep ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl1251_op_get_survey(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef writeonly %survey) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %4 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %survey, align 8
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %5 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %filled, align 8
  %noise = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 69
  %6 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %noise, align 1
  %noise2 = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 9
  %8 = ptrtoint ptr %noise2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %noise2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_boot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_station_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_tx_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_debugfs_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_ps_elp_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_feature_cfg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_data_path_rx(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_wr_tbtt_and_dtim(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_ps_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_tx_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_ps_elp_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_frame_rates(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_join(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_event_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_low_rssi(ptr noundef, i8 noundef signext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_pspoll_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_template_set(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_aid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_set_preamble(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_cts_protect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_arp_ip_filter(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_nullfunc_get(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_group_address_tbl(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_rx_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_send(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_probereq_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_trigger_scan_to(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_scan(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_rts_threshold(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_ac_cfg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_tid_cfg(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_mem_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_tx_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_event_handle(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !191, !192, !193}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @wl1251_init_ieee80211.nokia_oui, !1, !"nokia_oui", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1552, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1557, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wl1251_init_ieee80211._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @wl1251_init_ieee80211._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1558, i32 3}
!10 = !{ptr @wl1251_init_ieee80211._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @wl1251_init_ieee80211._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1566, i32 2}
!14 = !{ptr @wl1251_init_ieee80211._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @wl1251_init_ieee80211._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_wl1251_init_ieee80211, !17, !"__ksymtab_wl1251_init_ieee80211", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1573, i32 1}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1583, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wl1251_alloc_hw._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @wl1251_alloc_hw._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @wl1251_alloc_hw.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1596, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wl1251_alloc_hw.__key.12, !24, !"__key", i1 false, i1 false}
!27 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wl1251_alloc_hw.__key.14, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1626, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wl1251_alloc_hw.__key.16, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1627, i32 2}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @wl1251_alloc_hw.__key.18, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1630, i32 2}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wl1251_alloc_hw.__key.20, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1631, i32 2}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1638, i32 3}
!42 = !{ptr @wl1251_alloc_hw._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wl1251_alloc_hw._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab_wl1251_alloc_hw, !45, !"__ksymtab_wl1251_alloc_hw", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1645, i32 1}
!46 = !{ptr @__ksymtab_wl1251_free_hw, !47, !"__ksymtab_wl1251_free_hw", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1667, i32 1}
!48 = !{ptr @__UNIQUE_ID_description354, !49, !"__UNIQUE_ID_description354", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1669, i32 1}
!50 = !{ptr @__UNIQUE_ID_file355, !51, !"__UNIQUE_ID_file355", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1670, i32 1}
!52 = !{ptr @__UNIQUE_ID_license356, !51, !"__UNIQUE_ID_license356", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_author357, !54, !"__UNIQUE_ID_author357", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1671, i32 1}
!55 = !{ptr @__UNIQUE_ID_firmware358, !56, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1672, i32 1}
!57 = !{ptr @__UNIQUE_ID_firmware359, !58, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1673, i32 1}
!59 = !{ptr @wl1251_band_2ghz, !60, !"wl1251_band_2ghz", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1345, i32 40}
!61 = !{ptr @wl1251_channels, !62, !"wl1251_channels", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1268, i32 33}
!63 = !{ptr @wl1251_rates, !64, !"wl1251_rates", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1225, i32 30}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 97, i32 30}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 100, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @wl1251_fetch_nvs._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @wl1251_fetch_nvs._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 105, i32 3}
!74 = !{ptr @wl1251_fetch_nvs._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @wl1251_fetch_nvs._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 114, i32 3}
!78 = !{ptr @wl1251_fetch_nvs._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @wl1251_fetch_nvs._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1418, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @wl1251_read_eeprom_mac._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @wl1251_read_eeprom_mac._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1462, i32 38}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1495, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @wl1251_register_hw._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @wl1251_register_hw._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1501, i32 2}
!94 = !{ptr @wl1251_register_hw._entry.39, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @wl1251_register_hw._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @wl1251_ops, !97, !"wl1251_ops", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1352, i32 35}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 379, i32 3}
!100 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @wl1251_op_start._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @wl1251_op_start._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 403, i32 2}
!105 = !{ptr @wl1251_op_start._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @wl1251_op_start._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 181, i32 3}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @wl1251_chip_wakeup._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @wl1251_chip_wakeup._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 138, i32 3}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @wl1251_fw_wakeup._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @wl1251_fw_wakeup._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 58, i32 30}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 61, i32 3}
!121 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @wl1251_fetch_firmware._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @wl1251_fetch_firmware._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 66, i32 3}
!126 = !{ptr @wl1251_fetch_firmware._entry.54, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @wl1251_fetch_firmware._entry_ptr.56, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 76, i32 3}
!130 = !{ptr @wl1251_fetch_firmware._entry.57, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @wl1251_fetch_firmware._entry_ptr.59, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 422, i32 2}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @wl1251_op_stop._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @wl1251_op_stop._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 332, i32 3}
!139 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @wl1251_join._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @wl1251_join._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1155, i32 4}
!144 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @wl1251_op_bss_info_changed._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @wl1251_op_bss_info_changed._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1173, i32 4}
!149 = !{ptr @wl1251_op_bss_info_changed._entry.66, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @wl1251_op_bss_info_changed._entry_ptr.68, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 561, i32 3}
!153 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @wl1251_build_null_data._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @wl1251_build_null_data._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 730, i32 3}
!158 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @wl1251_op_prepare_multicast._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @wl1251_op_prepare_multicast._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @wl1251_op_set_key.bcast_addr, !162, !"bcast_addr", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 876, i32 18}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 915, i32 3}
!165 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @wl1251_op_set_key._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @wl1251_op_set_key._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 925, i32 3}
!170 = !{ptr @wl1251_op_set_key._entry.75, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @wl1251_op_set_key._entry_ptr.77, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 956, i32 3}
!174 = !{ptr @wl1251_op_set_key._entry.78, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @wl1251_op_set_key._entry_ptr.80, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 859, i32 3}
!178 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @wl1251_set_key_type._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @wl1251_set_key_type._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 1067, i32 3}
!183 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @wl1251_op_set_rts_threshold._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @wl1251_op_set_rts_threshold._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @skb_queue_head_init.__key, !187, !"__key", i1 false, i1 false}
!187 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!188 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ti/wl1251/main.c", i32 244, i32 5}
!191 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @wl1251_irq_work._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @wl1251_irq_work._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{i8 0, i8 2}
!204 = !{!"auto-init"}
!205 = !{!"branch_weights", i32 2000, i32 1}
!206 = !{!"branch_weights", i32 1, i32 2000}
