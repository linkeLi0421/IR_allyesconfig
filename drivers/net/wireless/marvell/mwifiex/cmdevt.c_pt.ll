; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/cmdevt.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/cmdevt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mwifiex_process_hs_config\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_process_hs_config\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_process_hs_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_process_hs_config:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_process_hs_config\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_process_hs_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mwifiex_process_sleep_confirm_resp\22, \22a\22\09"
module asm "\09.weak\09__crc_mwifiex_process_sleep_confirm_resp\09\09\09\09"
module asm "\09.long\09__crc_mwifiex_process_sleep_confirm_resp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_process_sleep_confirm_resp:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_process_sleep_confirm_resp\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_process_sleep_confirm_resp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.151 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.mwifiex_current_bss_params = type { %struct.mwifiex_bssdescriptor, i8, i8, i8, i32, [14 x i8] }
%struct.mwifiex_bssdescriptor = type <{ [6 x i8], %struct.cfg80211_ssid, i8, i32, i32, i32, i32, i16, i8, i8, i32, [14 x i8], [14 x i8], i16, [2 x i8], i64, i64, %union.ieee_types_phy_param_set, %union.ieee_types_ss_param_set, i8, i16, %struct.ieee_types_wmm_parameter, i8, [3 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, i8, i8, ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i32, i8, i8, i8, [5 x i8] }>
%union.ieee_types_phy_param_set = type { %struct.ieee_types_fh_param_set }
%struct.ieee_types_fh_param_set = type <{ i8, i8, i16, i8, i8, i8 }>
%union.ieee_types_ss_param_set = type { %struct.ieee_types_cf_param_set }
%struct.ieee_types_cf_param_set = type { i8, i8, i8, i8, i16, i16 }
%struct.ieee_types_wmm_parameter = type { %struct.ieee_types_vendor_header, i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.148 }
%struct.anon.148 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.149 }
%union.anon.149 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.145, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.145 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.146 }
%union.anon.146 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wps = type { i8 }
%struct.mwifiex_ds_misc_subsc_evt = type { i16, i16, %struct.subsc_evt_cfg, %struct.subsc_evt_cfg }
%struct.subsc_evt_cfg = type { i8, i8 }
%struct.mwifiex_ie = type { i16, i16, i16, [256 x i8] }
%struct.mwifiex_roc_cfg = type { i64, %struct.ieee80211_channel }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.159 }
%union.anon.159 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_ds_misc_cmd = type { i32, [2048 x i8] }
%struct.mwifiex_opt_sleep_confirm = type { i16, i16, i16, i16, i16, i16 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ds_auto_ds = type { i16, i16 }
%struct.mwifiex_ie_types_auto_ds_param = type { %struct.mwifiex_ie_types_header, i16 }
%struct.hw_spec_api_rev = type { %struct.mwifiex_ie_types_header, i16, i8, i8 }
%struct.hw_spec_max_conn = type { %struct.mwifiex_ie_types_header, i8, i8 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cmd: FREE_CMD: cmd=%#x, cmd_pending=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to allocate command buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"info: FREE_CMD_BUF: cmd_pool is null\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmd: free cmd buffer %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmd: free cmd pool\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Event Buf:\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EVENT: cause: %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@mwifiex_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mwifiex: PREP_CMD: adapter is NULL\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mwifiex_send_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/marvell/mwifiex/cmdevt.c\00", [50 x i8] zeroinitializer }, align 32
@mwifiex_send_cmd._entry_ptr = internal global ptr @mwifiex_send_cmd._entry, section ".printk_index", align 4
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PREP_CMD: device in suspended state\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PREP_CMD: host entering sleep state\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PREP_CMD: card is removed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PREP_CMD: FW is in bad state\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PREP_CMD: FW in reset state\0A\00", [35 x i8] zeroinitializer }, align 32
@mwifiex_send_cmd.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.9, ptr @.str.10, ptr @.str.17, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mwifiex\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Ignoring commands in manufacturing mode\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PREP_CMD: no free cmd node\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PREP_CMD: no free cmd buf\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PREP_CMD: cmd %#x preparation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"QUEUE_CMD: host_cmd is NULL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cmd: QUEUE_CMD: cmd=%#x, cmd_pending=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"EXEC_NEXT_CMD: cmd in processing\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: cannot send cmd in sleep state,\09this should not happen\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.mwifiex_exec_next_cmd = private unnamed_addr constant [22 x i8] c"mwifiex_exec_next_cmd\00", align 1
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CMD_RESP: NULL curr_cmd, %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cmdresp error: cmd=0x%x cmd_resp=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"info: host cmd resp size = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cmd: CMD_RESP: 0x%x, result %d, len %d, seqno 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CMD_RESP buffer:\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CMD_RESP: invalid cmd resp\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: cmd %#x failed during\09initialization\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.mwifiex_process_cmdresp = private unnamed_addr constant [24 x i8] c"mwifiex_process_cmdresp\00", align 1
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmd: empty curr_cmd\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Timeout cmd id = %#x, act = %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.mwifiex_cmd_timeout_func = private unnamed_addr constant [25 x i8] c"mwifiex_cmd_timeout_func\00", align 1
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"num_data_h2c_failure = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"num_cmd_h2c_failure = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"is_cmd_timedout = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"num_tx_timeout = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"last_cmd_index = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last_cmd_id: %*ph\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"last_cmd_act: %*ph\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"last_cmd_resp_index = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"last_cmd_resp_id: %*ph\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"last_event_index = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"last_event: %*ph\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data_sent=%d cmd_sent=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ps_mode=%d ps_state=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cmd: Delay Sleep Confirm (%s%s%s%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"event: hs_activated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"event: HS not configured\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event: hs_deactivated\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"cmd: CMD_RESP: HS_CFG cmd reply\09 result=%#x, conditions=0x%x gpio=0x%x gap=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"info: %s: auto cancelling host sleep\09since there is interrupt from the firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.mwifiex_process_hs_config = private unnamed_addr constant [26 x i8] c"mwifiex_process_hs_config\00", align 1
@__kstrtab_mwifiex_process_hs_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_process_hs_config = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_process_hs_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_process_hs_config to i32), ptr @__kstrtab_mwifiex_process_hs_config, ptr @__kstrtabns_mwifiex_process_hs_config }, section "___ksymtab_gpl+mwifiex_process_hs_config", align 4
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: cmd size is 0\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.mwifiex_process_sleep_confirm_resp = private unnamed_addr constant [35 x i8] c"mwifiex_process_sleep_confirm_resp\00", align 1
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: rcvd unexpected resp for cmd %#x, result = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: sleep confirm cmd failed\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_mwifiex_process_sleep_confirm_resp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_process_sleep_confirm_resp = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_process_sleep_confirm_resp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_process_sleep_confirm_resp to i32), ptr @__kstrtab_mwifiex_process_sleep_confirm_resp, ptr @__kstrtabns_mwifiex_process_sleep_confirm_resp }, section "___ksymtab_gpl+mwifiex_process_sleep_confirm_resp", align 4
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cmd: PS Command: Enter PS\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cmd: PS Command: Enter Auto Deep Sleep\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"info: %s: PS_MODE cmd reply result=%#x action=%#X\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.mwifiex_ret_enh_power_mode = private unnamed_addr constant [27 x i8] c"mwifiex_ret_enh_power_mode\00", align 1
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd: Enabled auto deep sleep\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cmd: Enabled STA power save\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cmd: set to uapsd/pps mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd: Disabled auto deep sleep\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmd: Disabled STA power save\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmd: ps_bitmap=%#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"key_api v%d.%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware api version %d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uAP api version %d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"channel report api version %d.%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown api_id: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max p2p connections: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max sta connections: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown GET_HW_SPEC TLV type: %#x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"info: GET_HW_SPEC: fw_release_number- %#x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"info: GET_HW_SPEC: permanent addr: %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"info: GET_HW_SPEC: hw_if_version=%#x version=%#x\0A\00", [46 x i8] zeroinitializer }, align 32
@region_code_index = external dso_local local_unnamed_addr global [9 x i16], align 2
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cmd: unknown region code, use default (USA)\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GET_CMD_NODE: cmd node not available\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmd: host cmd size = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DNLD_CMD: host_cmd is null\09or cmd size is 0, not sending\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DNLD_CMD: FW in reset state, ignore cmd %#x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmd buffer:\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DNLD_CMD: host to card failed\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SLEEP_CFM buffer: \00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SLEEP_CFM: dev_alloc_skb failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SLEEP_CFM: failed\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 175, i64 176, i64 177, i64 178, i64 179, i64 181]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 263]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 16, i64 58368, i64 58624]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 65024]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 16, i64 43264, i64 43520]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 254, i64 255]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 65024, i64 65280]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 455, i64 535]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 142, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 418, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 443, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 453, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 468, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 529, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 533, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 567, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 572, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 579, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 585, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 591, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 598, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 607, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 621, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 630, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 667, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 705, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 739, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 764, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 784, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 832, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 843, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 856, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 884, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 888, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 892, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 916, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 952, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 962, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 967, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 970, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 974, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 978, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 982, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 985, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 989, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 994, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 997, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1002, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1005, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1010, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1014, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1139, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1161, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1167, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1171, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1200, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1227, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1266, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1287, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1294, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1361, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1392, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1420, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1425, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1430, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1433, i32 5 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1439, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1443, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1457, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1597, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1605, i32 6 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1611, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1617, i32 6 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1623, i32 6 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1633, i32 5 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1636, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1641, i32 5 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1653, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1656, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1659, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1675, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 67, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 161, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 191, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 207, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 241, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 246, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 267, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 335, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 343, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [49 x i8] c"../drivers/net/wireless/marvell/mwifiex/cmdevt.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 367, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__ksymtab_mwifiex_process_hs_config, ptr @__ksymtab_mwifiex_process_sleep_confirm_resp, ptr @mwifiex_send_cmd._entry, ptr @mwifiex_send_cmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_recycle_cmd_node(ptr noundef %adapter, ptr noundef %cmd_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_skb = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 4
  %0 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %adapter, ptr noundef %cmd_node)
  %cmd_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending, ptr %cmd_pending, i32 1, ptr elementtype(i32) %cmd_pending) #8, !srcloc !197
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %3, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  %call.i.i6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending, i32 noundef 4) #8
  %8 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cmd_pending, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %adapter, ptr noundef %cmd_node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmd_node, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 7
  %0 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wait_q_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @mwifiex_complete_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd_node) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %cmd_no.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 2
  %2 = ptrtoint ptr %cmd_no.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_no.i, align 4
  %cmd_flag.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 3
  %3 = ptrtoint ptr %cmd_flag.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cmd_flag.i, align 4
  %data_buf.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 6
  %4 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data_buf.i, align 4
  %5 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait_q_enabled, align 4
  %cmd_skb.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 4
  %6 = ptrtoint ptr %cmd_skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_skb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end3.if.end.i_crit_edge, label %if.then.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef nonnull %7, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end3.if.end.i_crit_edge
  %resp_skb.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 5
  %8 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resp_skb.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.mwifiex_clean_cmd_node.exit_crit_edge, label %if.then3.i

if.end.i.mwifiex_clean_cmd_node.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_clean_cmd_node.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmdrsp_complete.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 15
  %10 = ptrtoint ptr %cmdrsp_complete.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmdrsp_complete.i, align 4
  %call.i = tail call i32 %11(ptr noundef %adapter, ptr noundef nonnull %9) #8
  %12 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %resp_skb.i, align 4
  br label %mwifiex_clean_cmd_node.exit

mwifiex_clean_cmd_node.exit:                      ; preds = %if.then3.i, %if.end.i.mwifiex_clean_cmd_node.exit_crit_edge
  %cmd_free_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 65
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_free_q_lock) #8
  %cmd_free_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 64
  %prev.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 64, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %cmd_node, ptr noundef %14, ptr noundef %cmd_free_q) #8
  br i1 %call.i.i, label %if.end.i.i, label %mwifiex_clean_cmd_node.exit.list_add_tail.exit_crit_edge

mwifiex_clean_cmd_node.exit.list_add_tail.exit_crit_edge: ; preds = %mwifiex_clean_cmd_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %mwifiex_clean_cmd_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd_node, ptr %prev.i, align 4
  %16 = ptrtoint ptr %cmd_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cmd_free_q, ptr %cmd_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cmd_node, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %cmd_node, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %mwifiex_clean_cmd_node.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_free_q_lock) #8
  br label %return

return:                                           ; preds = %list_add_tail.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_alloc_cmd_buffer(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2400) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_pool = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 59
  %1 = ptrtoint ptr %cmd_pool to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %cmd_pool, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %for.cond.for.body9_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.body9_crit_edge:                     ; preds = %for.cond
  br label %for.body9

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.027 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2048, i32 noundef 2592) #8
  %skb = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i.i, i32 %i.027, i32 8
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %skb, align 4
  %tobool4.not = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not, label %if.then5, label %for.cond

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.1) #8
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond.for.body9_crit_edge
  %i.128 = phi i32 [ %inc12, %for.body9.for.body9_crit_edge ], [ 0, %for.cond.for.body9_crit_edge ]
  %arrayidx10 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i.i, i32 %i.128
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %adapter, ptr noundef %arrayidx10)
  %inc12 = add nuw nsw i32 %i.128, 1
  %exitcond29.not = icmp eq i32 %inc12, 50
  br i1 %exitcond29.not, label %for.body9.cleanup_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_free_cmd_buffer(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_pool = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 59
  %0 = ptrtoint ptr %cmd_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmdrsp_complete = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 15
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 2, ptr noundef nonnull @.str.2) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.048 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %skb = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 %i.048, i32 8
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.if.end6_crit_edge, label %if.then3

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.048) #8
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %for.body.if.end6_crit_edge
  %resp_skb = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 %i.048, i32 5
  %6 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resp_skb, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end6.for.inc_crit_edge, label %if.end10

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end10:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %adapter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp11 = icmp eq i8 %9, 2
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %cmdrsp_complete to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmdrsp_complete, align 4
  %call = tail call i32 %11(ptr noundef %adapter, ptr noundef nonnull %7) #8
  br label %for.inc

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then13, %if.end6.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %12 = ptrtoint ptr %cmd_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_pool, align 4
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %if.then21

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.4) #8
  %14 = ptrtoint ptr %cmd_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_pool, align 4
  tail call void @kfree(ptr noundef %15) #8
  %16 = ptrtoint ptr %cmd_pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cmd_pool, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_event(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %event_skb = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 51
  %0 = ptrtoint ptr %event_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_skb, align 4
  %event_cause = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 50
  %2 = ptrtoint ptr %event_cause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_cause, align 4
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %and)
  %cmp = icmp eq i32 %and, 83
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1130.not = icmp eq i8 %5, 0
  br i1 %cmp1130.not, label %for.cond.preheader.if.end14_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end14_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0131 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.0131
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call4 = tail call i32 @mwifiex_is_11h_active(ptr noundef nonnull %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %if.then6

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bss_num, align 1
  %conv7 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv7, 16
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bss_type, align 4
  %conv9 = zext i8 %11 to i32
  %shl11 = shl nuw i32 %conv9, 24
  %12 = ptrtoint ptr %event_cause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_cause, align 4
  %or = or i32 %13, %shl
  %or13 = or i32 %or, %shl11
  store i32 %or13, ptr %event_cause, align 4
  br label %if.end14

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0131, 1
  %14 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %priv_num.i, align 4
  %conv = zext i8 %15 to i32
  %cmp1 = icmp ult i32 %inc, %conv
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.if.end14_crit_edge

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end14:                                         ; preds = %for.inc.if.end14_crit_edge, %if.then6, %for.cond.preheader.if.end14_crit_edge, %entry.if.end14_crit_edge
  %16 = ptrtoint ptr %event_cause to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_cause, align 4
  %last_event_index = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 18
  %18 = ptrtoint ptr %last_event_index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %last_event_index, align 4
  %conv16 = zext i16 %19 to i32
  %add = add nuw nsw i32 %conv16, 1
  %rem = urem i32 %add, 5
  %conv17 = trunc i32 %rem to i16
  store i16 %conv17, ptr %last_event_index, align 4
  %conv20 = trunc i32 %17 to i16
  %arrayidx24 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 17, i32 %rem
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv20, ptr %arrayidx24, align 2
  %shr = lshr i32 %17, 16
  %21 = trunc i32 %shr to i8
  %conv26 = and i8 %21, 15
  %shr27 = lshr i32 %17, 24
  %conv29 = trunc i32 %shr27 to i8
  %22 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %priv_num.i, align 4
  %conv.i102 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp36.not.i = icmp eq i8 %23, 0
  br i1 %cmp36.not.i, label %if.end14.if.end34_crit_edge, label %if.end14.for.body.i105_crit_edge

if.end14.for.body.i105_crit_edge:                 ; preds = %if.end14
  br label %for.body.i105

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

for.body.i105:                                    ; preds = %for.inc.i108.for.body.i105_crit_edge, %if.end14.for.body.i105_crit_edge
  %i.037.i = phi i32 [ %inc.i106, %for.inc.i108.for.body.i105_crit_edge ], [ 0, %if.end14.for.body.i105_crit_edge ]
  %arrayidx.i103 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.037.i
  %24 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i103, align 4
  %tobool.not.i104 = icmp eq ptr %25, null
  br i1 %tobool.not.i104, label %for.body.i105.for.inc.i108_crit_edge, label %if.then.i

for.body.i105.for.inc.i108_crit_edge:             ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i108

if.then.i:                                        ; preds = %for.body.i105
  %bss_num4.i = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %bss_num4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bss_num4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %conv26)
  %cmp7.i = icmp eq i8 %27, %conv26
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then.i.for.inc.i108_crit_edge

if.then.i.for.inc.i108_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i108

land.lhs.true.i:                                  ; preds = %if.then.i
  %bss_type11.i = getelementptr inbounds %struct.mwifiex_private, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %bss_type11.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bss_type11.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %conv29)
  %cmp14.i = icmp eq i8 %29, %conv29
  br i1 %cmp14.i, label %land.lhs.true.i.if.end34_crit_edge, label %land.lhs.true.i.for.inc.i108_crit_edge

land.lhs.true.i.for.inc.i108_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i108

land.lhs.true.i.if.end34_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

for.inc.i108:                                     ; preds = %land.lhs.true.i.for.inc.i108_crit_edge, %if.then.i.for.inc.i108_crit_edge, %for.body.i105.for.inc.i108_crit_edge
  %inc.i106 = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i107 = icmp eq i32 %inc.i106, %conv.i102
  br i1 %exitcond.not.i107, label %for.inc.i108.for.body.i117_crit_edge, label %for.inc.i108.for.body.i105_crit_edge

for.inc.i108.for.body.i105_crit_edge:             ; preds = %for.inc.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i105

for.inc.i108.for.body.i117_crit_edge:             ; preds = %for.inc.i108
  br label %for.body.i117

for.body.i117:                                    ; preds = %for.inc.i120.for.body.i117_crit_edge, %for.inc.i108.for.body.i117_crit_edge
  %i.03.i114 = phi i32 [ %inc.i118, %for.inc.i120.for.body.i117_crit_edge ], [ 0, %for.inc.i108.for.body.i117_crit_edge ]
  %arrayidx.i115 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i114
  %30 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i115, align 4
  %tobool.not.i116 = icmp eq ptr %31, null
  br i1 %tobool.not.i116, label %for.inc.i120, label %for.body.i117.if.end34_crit_edge

for.body.i117.if.end34_crit_edge:                 ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

for.inc.i120:                                     ; preds = %for.body.i117
  %inc.i118 = add nuw nsw i32 %i.03.i114, 1
  %exitcond.not.i119 = icmp eq i32 %inc.i118, %conv.i102
  br i1 %exitcond.not.i119, label %for.inc.i120.if.end34_crit_edge, label %for.inc.i120.for.body.i117_crit_edge

for.inc.i120.for.body.i117_crit_edge:             ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i117

for.inc.i120.if.end34_crit_edge:                  ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %for.inc.i120.if.end34_crit_edge, %for.body.i117.if.end34_crit_edge, %land.lhs.true.i.if.end34_crit_edge, %if.end14.if.end34_crit_edge
  %priv.0 = phi ptr [ null, %if.end14.if.end34_crit_edge ], [ %31, %for.body.i117.if.end34_crit_edge ], [ null, %for.inc.i120.if.end34_crit_edge ], [ %25, %land.lhs.true.i.if.end34_crit_edge ]
  %and35 = and i32 %17, 65535
  %32 = ptrtoint ptr %event_cause to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and35, ptr %event_cause, align 4
  %tobool37.not = icmp eq ptr %1, null
  br i1 %tobool37.not, label %if.end34.if.end48_crit_edge, label %if.then38

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then38:                                        ; preds = %if.end34
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 0, ptr %33, align 4
  %bss_num40 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 4
  %35 = ptrtoint ptr %bss_num40 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bss_num40, align 1
  %bss_num41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %bss_num41 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %bss_num41, align 4
  %bss_type42 = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 1
  %38 = ptrtoint ptr %bss_type42 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bss_type42, align 4
  %bss_type43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %40 = ptrtoint ptr %bss_type43 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %bss_type43, align 1
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 1
  %41 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_mask, align 4
  %and44 = and i32 %42, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then38.if.end48_crit_edge, label %if.then46

if.then38.if.end48_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then46:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %44, i32 noundef %46, i1 noundef zeroext false) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then38.if.end48_crit_edge, %if.end34.if.end48_crit_edge
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %and35) #8
  %bss_role = getelementptr inbounds %struct.mwifiex_private, ptr %priv.0, i32 0, i32 2
  %47 = ptrtoint ptr %bss_role to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bss_role, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp50 = icmp eq i8 %48, 1
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 @mwifiex_process_uap_event(ptr noundef %priv.0) #8
  br label %if.end55

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call i32 @mwifiex_process_sta_event(ptr noundef %priv.0) #8
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then52
  %ret.0 = phi i32 [ %call53, %if.then52 ], [ %call54, %if.else ]
  %49 = ptrtoint ptr %event_cause to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %event_cause, align 4
  %50 = ptrtoint ptr %event_skb to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %event_skb, align 4
  %event_complete = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 16
  %51 = ptrtoint ptr %event_complete to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %event_complete, align 4
  %call58 = tail call i32 %52(ptr noundef %adapter, ptr noundef %1) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_is_11h_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_uap_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_sta_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_cmd(ptr noundef %priv, i16 noundef zeroext %cmd_no, i16 noundef zeroext %cmd_action, i32 noundef %cmd_oid, ptr noundef %data_buf, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %work_flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %work_flags, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 229, i16 %cmd_no)
  %cmp.not = icmp eq i16 %cmd_no, 229
  %or.cond = or i1 %cmp.not, %tobool8.not
  br i1 %or.cond, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %work_flags, align 4
  %and1.i168 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i168)
  %tobool14.not = icmp eq i32 %and1.i168, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %work_flags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %hw_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 45
  %13 = ptrtoint ptr %hw_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp22 = icmp ne i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 169, i16 %cmd_no)
  %cmp26.not = icmp eq i16 %cmd_no, 169
  %or.cond163 = or i1 %cmp26.not, %cmp22
  br i1 %or.cond163, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %mfg_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 147
  %15 = ptrtoint ptr %mfg_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mfg_mode, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_no)
  %tobool35.not = icmp eq i16 %cmd_no, 0
  %or.cond164 = or i1 %tobool35.not, %tobool31.not
  br i1 %or.cond164, label %if.end48, label %do.body37

do.body37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mwifiex_send_cmd.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mwifiex_send_cmd, %if.then44)) #8
          to label %cleanup [label %if.then44], !srcloc !199

if.then44:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mwifiex_send_cmd.__UNIQUE_ID_ddebug488, ptr noundef %18, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end30
  %hs_activated_manually = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 109
  %19 = ptrtoint ptr %hs_activated_manually to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hs_activated_manually, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool51.not = icmp eq i8 %20, 0
  %or.cond165 = or i1 %cmp.not, %tobool51.not
  br i1 %or.cond165, label %if.end48.if.end60_crit_edge, label %if.then56

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 @mwifiex_cancel_hs(ptr noundef %priv, i32 noundef 0) #8
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %hs_activated_manually59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 109
  %23 = ptrtoint ptr %hs_activated_manually59 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %hs_activated_manually59, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end48.if.end60_crit_edge
  %call61 = tail call fastcc ptr @mwifiex_get_cmd_node(ptr noundef nonnull %1)
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %conv65 = zext i16 %cmd_no to i32
  %priv1.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 1
  %24 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %priv, ptr %priv1.i, align 4
  %cmd_no2.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 2
  %25 = ptrtoint ptr %cmd_no2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv65, ptr %cmd_no2.i, align 4
  br i1 %sync, label %if.then.i, label %if.end64.mwifiex_init_cmd_node.exit_crit_edge

if.end64.mwifiex_init_cmd_node.exit_crit_edge:    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_init_cmd_node.exit

if.then.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %wait_q_enabled.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 7
  %26 = ptrtoint ptr %wait_q_enabled.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %wait_q_enabled.i, align 4
  %cmd_wait_q_woken.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 10
  %27 = ptrtoint ptr %cmd_wait_q_woken.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %cmd_wait_q_woken.i, align 4
  %condition.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 9
  %28 = ptrtoint ptr %condition.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cmd_wait_q_woken.i, ptr %condition.i, align 4
  br label %mwifiex_init_cmd_node.exit

mwifiex_init_cmd_node.exit:                       ; preds = %if.then.i, %if.end64.mwifiex_init_cmd_node.exit_crit_edge
  %data_buf4.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 6
  %29 = ptrtoint ptr %data_buf4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data_buf, ptr %data_buf4.i, align 4
  %skb.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 8
  %30 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb.i, align 4
  %cmd_skb.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 4
  %32 = ptrtoint ptr %cmd_skb.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %cmd_skb.i, align 4
  %tobool67.not = icmp eq ptr %31, null
  br i1 %tobool67.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %mwifiex_init_cmd_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end69:                                         ; preds = %mwifiex_init_cmd_node.exit
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %31, i32 noundef 252) #8
  %33 = call ptr @memset(ptr %call.i, i32 0, i32 252)
  %34 = ptrtoint ptr %cmd_skb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd_skb.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %cmd_no)
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %37, align 1
  %result = getelementptr inbounds %struct.host_cmd_ds_command, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %result to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 0, ptr %result, align 1
  %41 = zext i16 %cmd_no to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i16 %cmd_no, label %sw.default [
    i16 0, label %if.end83.thread
    i16 176, label %if.end69.sw.bb_crit_edge
    i16 177, label %if.end69.sw.bb_crit_edge175
    i16 178, label %if.end69.sw.bb_crit_edge176
    i16 181, label %if.end69.sw.bb_crit_edge177
    i16 175, label %if.end69.sw.bb_crit_edge178
    i16 179, label %if.end69.sw.bb_crit_edge179
  ]

if.end69.sw.bb_crit_edge179:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end69.sw.bb_crit_edge178:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end69.sw.bb_crit_edge177:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end69.sw.bb_crit_edge176:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end69.sw.bb_crit_edge175:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end69.sw.bb_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end69.sw.bb_crit_edge, %if.end69.sw.bb_crit_edge175, %if.end69.sw.bb_crit_edge176, %if.end69.sw.bb_crit_edge177, %if.end69.sw.bb_crit_edge178, %if.end69.sw.bb_crit_edge179
  %call76 = tail call i32 @mwifiex_uap_prepare_cmd(ptr noundef %priv, i16 noundef zeroext %cmd_no, i16 noundef zeroext %cmd_action, i32 noundef %cmd_oid, ptr noundef %data_buf, ptr noundef %37) #8
  br label %if.end79

sw.default:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = tail call i32 @mwifiex_sta_prepare_cmd(ptr noundef %priv, i16 noundef zeroext %cmd_no, i16 noundef zeroext %cmd_action, i32 noundef %cmd_oid, ptr noundef %data_buf, ptr noundef %37) #8
  br label %if.end79

if.end83.thread:                                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %cmd1.i = getelementptr inbounds %struct.mwifiex_ds_misc_cmd, ptr %data_buf, i32 0, i32 1
  %42 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_buf, align 4
  %44 = call ptr @memcpy(ptr %37, ptr %cmd1.i, i32 %43)
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %47 = load i32, ptr %data_buf, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %46, i32 noundef 16, ptr noundef nonnull @.str.83, i32 noundef %47) #8
  %cmd_flag = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 3
  %48 = ptrtoint ptr %cmd_flag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmd_flag, align 4
  %or = or i32 %49, 1
  store i32 %or, ptr %cmd_flag, align 4
  br label %if.else91

if.end79:                                         ; preds = %sw.default, %sw.bb
  %ret.0 = phi i32 [ %call77, %sw.default ], [ %call76, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool80.not = icmp eq i32 %ret.0, 0
  br i1 %tobool80.not, label %if.end83, label %if.then81

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %conv65) #8
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef nonnull %1, ptr noundef nonnull %call61)
  br label %cleanup

if.end83:                                         ; preds = %if.end79
  %50 = zext i16 %cmd_no to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %cmd_no, label %if.end83.if.else91_crit_edge [
    i16 6, label %if.end83.if.then90_crit_edge
    i16 263, label %if.end83.if.then90_crit_edge180
  ]

if.end83.if.then90_crit_edge180:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90

if.end83.if.then90_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90

if.end83.if.else91_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else91

if.then90:                                        ; preds = %if.end83.if.then90_crit_edge, %if.end83.if.then90_crit_edge180
  tail call void @mwifiex_queue_scan_cmd(ptr noundef %priv, ptr noundef nonnull %call61) #8
  br label %cleanup

if.else91:                                        ; preds = %if.end83.if.else91_crit_edge, %if.end83.thread
  tail call void @mwifiex_insert_cmd_to_pending_q(ptr noundef nonnull %1, ptr noundef nonnull %call61)
  %workqueue = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 24
  %51 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %workqueue, align 4
  %main_work = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 25
  %call.i171 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %main_work) #8
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call61, i32 0, i32 7
  %53 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wait_q_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool93.not = icmp eq i32 %54, 0
  br i1 %tobool93.not, label %if.else91.cleanup_crit_edge, label %if.then94

if.else91.cleanup_crit_edge:                      ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then94:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  %call95 = tail call i32 @mwifiex_wait_queue_complete(ptr noundef nonnull %1, ptr noundef nonnull %call61) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %if.else91.cleanup_crit_edge, %if.then90, %if.then81, %if.then68, %if.then63, %if.then44, %do.body37, %if.then28, %if.then20, %if.then15, %if.then10, %if.then4, %do.end
  %retval.0 = phi i32 [ -1, %if.then4 ], [ -1, %if.then10 ], [ -1, %if.then15 ], [ -1, %if.then20 ], [ -1, %if.then28 ], [ -1, %if.then81 ], [ -1, %if.then68 ], [ -1, %if.then63 ], [ -1, %do.end ], [ -1, %if.then44 ], [ 0, %if.then90 ], [ %call95, %if.then94 ], [ 0, %if.else91.cleanup_crit_edge ], [ -1, %do.body37 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cancel_hs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mwifiex_get_cmd_node(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_free_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 65
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_free_q_lock) #8
  %cmd_free_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 64
  %0 = ptrtoint ptr %cmd_free_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_free_q, align 4
  %cmp.i.not = icmp eq ptr %1, %cmd_free_q
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.82) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %1, %list_del.exit ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_free_q_lock) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_uap_prepare_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_sta_prepare_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_queue_scan_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_insert_cmd_to_pending_q(ptr noundef %adapter, ptr noundef %cmd_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_skb = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node, i32 0, i32 4
  %0 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %7 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %5, label %if.end.if.then31.sink.split_crit_edge [
    i16 -7168, label %if.then3
    i16 -6912, label %if.then21
  ]

if.end.if.then31.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.sink.split

if.then3:                                         ; preds = %if.end
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %params, align 1
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %9, label %if.then3.if.then31.sink.split_crit_edge [
    i16 512, label %if.then3.if.end29_crit_edge
    i16 -512, label %if.then3.if.end29_crit_edge77
  ]

if.then3.if.end29_crit_edge77:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then3.if.end29_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then3.if.then31.sink.split_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.sink.split

if.then21:                                        ; preds = %if.end
  %params22 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %params22 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %params22, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %12)
  %cmp25.not = icmp eq i16 %12, 512
  %cmd_pending_q_lock71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_pending_q_lock71) #8
  br i1 %cmp25.not, label %if.then21.if.else_crit_edge, label %if.then21.if.then31_crit_edge

if.then21.if.then31_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then21.if.else_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end29:                                         ; preds = %if.then3.if.end29_crit_edge, %if.then3.if.end29_crit_edge77
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %13 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12.not = icmp eq i32 %14, 0
  %cmd_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_pending_q_lock) #8
  br i1 %cmp12.not, label %if.end29.if.then31_crit_edge, label %if.end29.if.else_crit_edge

if.end29.if.else_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31.sink.split:                             ; preds = %if.then3.if.then31.sink.split_crit_edge, %if.end.if.then31.sink.split_crit_edge
  %cmd_pending_q_lock68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_pending_q_lock68) #8
  br label %if.then31

if.then31:                                        ; preds = %if.then31.sink.split, %if.end29.if.then31_crit_edge, %if.then21.if.then31_crit_edge
  %cmd_pending_q_lock70 = phi ptr [ %cmd_pending_q_lock, %if.end29.if.then31_crit_edge ], [ %cmd_pending_q_lock71, %if.then21.if.then31_crit_edge ], [ %cmd_pending_q_lock68, %if.then31.sink.split ]
  %cmd_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66
  %prev.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i61 = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd_node, ptr noundef %16, ptr noundef %cmd_pending_q) #8
  br i1 %call.i.i61, label %if.then31.if.end34.sink.split_crit_edge, label %if.then31.if.end34_crit_edge

if.then31.if.end34_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then31.if.end34.sink.split_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.sink.split

if.else:                                          ; preds = %if.end29.if.else_crit_edge, %if.then21.if.else_crit_edge
  %cmd_pending_q_lock72 = phi ptr [ %cmd_pending_q_lock71, %if.then21.if.else_crit_edge ], [ %cmd_pending_q_lock, %if.end29.if.else_crit_edge ]
  %cmd_pending_q33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66
  %17 = ptrtoint ptr %cmd_pending_q33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd_pending_q33, align 4
  %call.i.i62 = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd_node, ptr noundef %cmd_pending_q33, ptr noundef %18) #8
  br i1 %call.i.i62, label %if.end.i.i64, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end.i.i64:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.end.i.i64, %if.then31.if.end34.sink.split_crit_edge
  %prev1.i.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i64 ], [ %prev.i, %if.then31.if.end34.sink.split_crit_edge ]
  %.sink = phi ptr [ %18, %if.end.i.i64 ], [ %cmd_pending_q, %if.then31.if.end34.sink.split_crit_edge ]
  %cmd_pending_q33.sink76 = phi ptr [ %cmd_pending_q33, %if.end.i.i64 ], [ %16, %if.then31.if.end34.sink.split_crit_edge ]
  %cmd_pending_q_lock69.ph = phi ptr [ %cmd_pending_q_lock72, %if.end.i.i64 ], [ %cmd_pending_q_lock70, %if.then31.if.end34.sink.split_crit_edge ]
  %19 = ptrtoint ptr %prev1.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmd_node, ptr %prev1.i.i.sink, align 4
  %20 = ptrtoint ptr %cmd_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.sink, ptr %cmd_node, align 4
  %prev3.i.i63 = getelementptr inbounds %struct.list_head, ptr %cmd_node, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i63 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd_pending_q33.sink76, ptr %prev3.i.i63, align 4
  %22 = ptrtoint ptr %cmd_pending_q33.sink76 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %cmd_node, ptr %cmd_pending_q33.sink76, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else.if.end34_crit_edge, %if.then31.if.end34_crit_edge
  %cmd_pending_q_lock69 = phi ptr [ %cmd_pending_q_lock70, %if.then31.if.end34_crit_edge ], [ %cmd_pending_q_lock72, %if.else.if.end34_crit_edge ], [ %cmd_pending_q_lock69.ph, %if.end34.sink.split ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock69) #8
  %cmd_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending, ptr %cmd_pending, i32 1, ptr elementtype(i32) %cmd_pending) #8, !srcloc !200
  %call.i.i60 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending, i32 noundef 4) #8
  %24 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %cmd_pending, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wait_queue_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_exec_next_cmd(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 60
  %0 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 2, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mwifiex_cmd_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock) #8
  %cmd_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_pending_q_lock) #8
  %cmd_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66
  %2 = ptrtoint ptr %cmd_pending_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cmd_pending_q, align 4
  %cmp.i.not = icmp eq ptr %3, %cmd_pending_q
  br i1 %cmp.i.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmd_skb = getelementptr inbounds %struct.cmd_ctrl_node, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %8 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ps_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mwifiex_exec_next_cmd) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %priv7 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv7, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del.exit_crit_edge

if.end11.list_del.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end11.list_del.exit_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #8
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  %tobool.not.i = icmp eq ptr %21, null
  %tobool2.not.i = icmp eq ptr %3, null
  %or.cond.i = or i1 %tobool2.not.i, %tobool.not.i
  br i1 %or.cond.i, label %list_del.exit.mwifiex_dnld_cmd_to_fw.exit_crit_edge, label %if.end.i

list_del.exit.mwifiex_dnld_cmd_to_fw.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_dnld_cmd_to_fw.exit

if.end.i:                                         ; preds = %list_del.exit
  %22 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_skb, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %size.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i49 = icmp eq i16 %27, 0
  br i1 %cmp.i49, label %if.then4.i, label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %21, i32 noundef 4, ptr noundef nonnull @.str.84) #8
  %wait_q_enabled.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %wait_q_enabled.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wait_q_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.i, label %if.then4.i.if.end7.i_crit_edge, label %if.then6.i

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 121, i32 1
  %30 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %status.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then4.i.if.end7.i_crit_edge
  %31 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd_skb, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef nonnull %21, ptr noundef nonnull %3) #8
  %cmd_pending.i.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 22
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending.i.i, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending.i.i, ptr %cmd_pending.i.i, i32 1, ptr elementtype(i32) %cmd_pending.i.i) #8, !srcloc !197
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %34, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #8
  %conv.i.i = zext i16 %38 to i32
  %call.i.i6.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending.i.i, i32 noundef 4) #8
  %39 = ptrtoint ptr %cmd_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %cmd_pending.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %21, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv.i.i, i32 noundef %40) #8
  br label %mwifiex_dnld_cmd_to_fw.exit

if.end8.i:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %25, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #8
  %conv9.i = zext i16 %43 to i32
  %cmd_no.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %3, i32 0, i32 2
  %44 = ptrtoint ptr %cmd_no.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv9.i, ptr %cmd_no.i, align 4
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %size.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #8
  %hw_status.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 45
  %48 = ptrtoint ptr %hw_status.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hw_status.i, align 4
  %.fr.i = freeze i32 %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.fr.i)
  %cmp11.not.i = icmp eq i32 %.fr.i, 3
  br i1 %cmp11.not.i, label %switch.early.test.i, label %if.end8.i.if.end22.i_crit_edge

if.end8.i.if.end22.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

switch.early.test.i:                              ; preds = %if.end8.i
  %50 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %42, label %if.then20.i [
    i16 -22016, label %switch.early.test.i.if.end22.i_crit_edge
    i16 -22272, label %switch.early.test.i.if.end22.i_crit_edge63
  ]

switch.early.test.i.if.end22.i_crit_edge63:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

switch.early.test.i.if.end22.i_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then20.i:                                      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %21, i32 noundef 4, ptr noundef nonnull @.str.85, i32 noundef %conv9.i) #8
  %51 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd_skb, align 4
  %data.i235.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 19
  %53 = ptrtoint ptr %data.i235.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i235.i, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef nonnull %21, ptr noundef nonnull %3) #8
  %cmd_pending.i236.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 22
  %call.i.i.i237.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending.i236.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending.i236.i, i32 1, i32 3, i32 1) #8
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending.i236.i, ptr %cmd_pending.i236.i, i32 1, ptr elementtype(i32) %cmd_pending.i236.i) #8, !srcloc !197
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %54, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #8
  %conv.i238.i = zext i16 %58 to i32
  %call.i.i6.i239.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending.i236.i, i32 noundef 4) #8
  %59 = ptrtoint ptr %cmd_pending.i236.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %cmd_pending.i236.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %21, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv.i238.i, i32 noundef %60) #8
  %workqueue.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 24
  %61 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %workqueue.i, align 4
  %main_work.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 25
  %call.i.i50 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %main_work.i) #8
  br label %mwifiex_dnld_cmd_to_fw.exit

if.end22.i:                                       ; preds = %switch.early.test.i.if.end22.i_crit_edge, %switch.early.test.i.if.end22.i_crit_edge63, %if.end8.i.if.end22.i_crit_edge
  %seq_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 58
  %63 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %seq_num.i, align 2
  %inc.i = add i16 %64, 1
  store i16 %inc.i, ptr %seq_num.i, align 2
  %65 = and i16 %inc.i, 255
  %66 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv7, align 4
  %bss_num.i = getelementptr inbounds %struct.mwifiex_private, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %bss_num.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bss_num.i, align 1
  %70 = and i8 %69, 15
  %and27.i = zext i8 %70 to i16
  %shl.i = shl nuw nsw i16 %and27.i, 8
  %or.i = or i16 %shl.i, %65
  %bss_type.i = getelementptr inbounds %struct.mwifiex_private, ptr %67, i32 0, i32 1
  %71 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bss_type.i, align 4
  %and30.i = zext i8 %72 to i16
  %shl31.i = shl i16 %and30.i, 12
  %or32.i = or i16 %or.i, %shl31.i
  %73 = tail call i16 @llvm.bswap.i16(i16 %or32.i) #8
  %seq_num34.i = getelementptr inbounds %struct.host_cmd_ds_command, ptr %25, i32 0, i32 2
  %74 = ptrtoint ptr %seq_num34.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %seq_num34.i, align 1
  %mwifiex_cmd_lock.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock.i) #8
  %curr_cmd.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 60
  %75 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %3, ptr %curr_cmd.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock.i) #8
  %76 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cmd_skb, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i, align 4
  %conv37.i = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv37.i)
  %cmp38.i = icmp ugt i32 %79, %conv37.i
  br i1 %cmp38.i, label %if.then40.i, label %if.else.i

if.then40.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %77, i32 noundef %conv37.i) #8
  br label %if.end55.i

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv37.i)
  %cmp46.i = icmp ult i32 %79, %conv37.i
  br i1 %cmp46.i, label %if.then48.i, label %if.else.i.if.end55.i_crit_edge

if.else.i.if.end55.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then48.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %conv37.i, %79
  %call53.i = tail call ptr @skb_put(ptr noundef %77, i32 noundef %sub.i) #8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then48.i, %if.else.i.if.end55.i_crit_edge, %if.then40.i
  %add.ptr.i = getelementptr i8, ptr %25, i32 8
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %add.ptr.i, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #8
  %conv58.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %seq_num34.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %seq_num34.i, align 1
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #8
  %conv61.i = zext i16 %85 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %21, i32 noundef 16, ptr noundef nonnull @.str.86, i32 noundef %conv9.i, i32 noundef %conv58.i, i32 noundef %conv37.i, i32 noundef %conv61.i) #8
  %debug_mask.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 1
  %86 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %debug_mask.i, align 4
  %and62.i = and i32 %87, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end55.i.do.end.i_crit_edge, label %if.then64.i

if.end55.i.do.end.i_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then64.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.87, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %25, i32 noundef %conv37.i, i1 noundef zeroext false) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then64.i, %if.end55.i.do.end.i_crit_edge
  %88 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %89)
  %cmp68.i = icmp eq i8 %89, 2
  %90 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cmd_skb, align 4
  br i1 %cmp68.i, label %if.then70.i, label %if.else84.i

if.then70.i:                                      ; preds = %do.end.i
  %call72.i = tail call ptr @skb_push(ptr noundef %91, i32 noundef 4) #8
  %92 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cmd_skb, align 4
  %data74.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 19
  %94 = ptrtoint ptr %data74.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data74.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 -822473232, ptr %95, align 1
  %cmd_sent.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 54
  %97 = ptrtoint ptr %cmd_sent.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %cmd_sent.i, align 1
  %host_to_card.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 18, i32 10
  %98 = ptrtoint ptr %host_to_card.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %host_to_card.i, align 4
  %100 = load ptr, ptr %cmd_skb, align 4
  %call76.i = tail call i32 %99(ptr noundef nonnull %21, i8 noundef zeroext 1, ptr noundef %100, ptr noundef null) #8
  %101 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cmd_skb, align 4
  %call78.i = tail call ptr @skb_pull(ptr noundef %102, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call76.i)
  %cmp79.i = icmp eq i32 %call76.i, -16
  br i1 %cmp79.i, label %if.end96.thread.i, label %if.then70.i.if.end96.i_crit_edge

if.then70.i.if.end96.i_crit_edge:                 ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96.i

if.end96.thread.i:                                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %cmd_skb, align 4
  br label %if.end118.i

if.else84.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %intf_hdr_len.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 14
  %104 = ptrtoint ptr %intf_hdr_len.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %intf_hdr_len.i, align 4
  %conv86.i = zext i8 %105 to i32
  %call87.i = tail call ptr @skb_push(ptr noundef %91, i32 noundef %conv86.i) #8
  %host_to_card89.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 18, i32 10
  %106 = ptrtoint ptr %host_to_card89.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %host_to_card89.i, align 4
  %108 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cmd_skb, align 4
  %call91.i = tail call i32 %107(ptr noundef nonnull %21, i8 noundef zeroext 1, ptr noundef %109, ptr noundef null) #8
  %110 = ptrtoint ptr %cmd_skb to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cmd_skb, align 4
  %112 = ptrtoint ptr %intf_hdr_len.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %intf_hdr_len.i, align 4
  %conv94.i = zext i8 %113 to i32
  %call95.i = tail call ptr @skb_pull(ptr noundef %111, i32 noundef %conv94.i) #8
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.else84.i, %if.then70.i.if.end96.i_crit_edge
  %ret.0.i = phi i32 [ %call76.i, %if.then70.i.if.end96.i_crit_edge ], [ %call91.i, %if.else84.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp97.i = icmp eq i32 %ret.0.i, -1
  br i1 %cmp97.i, label %if.then99.i, label %if.end96.i.if.end118.i_crit_edge

if.end96.i.if.end118.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.then99.i:                                      ; preds = %if.end96.i
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %21, i32 noundef 4, ptr noundef nonnull @.str.88) #8
  %114 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %115)
  %cmp102.i = icmp eq i8 %115, 2
  br i1 %cmp102.i, label %if.then104.i, label %if.then99.i.if.end106.i_crit_edge

if.then99.i.if.end106.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.i

if.then104.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_sent105.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 54
  %116 = ptrtoint ptr %cmd_sent105.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %cmd_sent105.i, align 1
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then104.i, %if.then99.i.if.end106.i_crit_edge
  %wait_q_enabled107.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %3, i32 0, i32 7
  %117 = ptrtoint ptr %wait_q_enabled107.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %wait_q_enabled107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool108.not.i = icmp eq i32 %118, 0
  br i1 %tobool108.not.i, label %if.end106.i.if.end112.i_crit_edge, label %if.then109.i

if.end106.i.if.end112.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.i

if.then109.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  %status111.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 121, i32 1
  %119 = ptrtoint ptr %status111.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %status111.i, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then109.i, %if.end106.i.if.end112.i_crit_edge
  %120 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %curr_cmd.i, align 4
  %cmd_skb.i240.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %cmd_skb.i240.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cmd_skb.i240.i, align 4
  %data.i241.i = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 19
  %124 = ptrtoint ptr %data.i241.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i241.i, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef nonnull %21, ptr noundef %121) #8
  %cmd_pending.i242.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 22
  %call.i.i.i243.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending.i242.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending.i242.i, i32 1, i32 3, i32 1) #8
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending.i242.i, ptr %cmd_pending.i242.i, i32 1, ptr elementtype(i32) %cmd_pending.i242.i) #8, !srcloc !197
  %127 = ptrtoint ptr %125 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %125, align 1
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #8
  %conv.i244.i = zext i16 %129 to i32
  %call.i.i6.i245.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending.i242.i, i32 noundef 4) #8
  %130 = ptrtoint ptr %cmd_pending.i242.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %cmd_pending.i242.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %21, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv.i244.i, i32 noundef %131) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock.i) #8
  %132 = ptrtoint ptr %curr_cmd.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %curr_cmd.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock.i) #8
  %dbg.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 118
  %133 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dbg.i, align 4
  %inc117.i = add i32 %134, 1
  store i32 %inc117.i, ptr %dbg.i, align 4
  br label %mwifiex_dnld_cmd_to_fw.exit

if.end118.i:                                      ; preds = %if.end96.i.if.end118.i_crit_edge, %if.end96.thread.i
  %last_cmd_index.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 118, i32 14
  %135 = ptrtoint ptr %last_cmd_index.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %last_cmd_index.i, align 4
  %conv120.i = zext i16 %136 to i32
  %add.i = add nuw nsw i32 %conv120.i, 1
  %rem.i = urem i32 %add.i, 5
  %conv121.i = trunc i32 %rem.i to i16
  store i16 %conv121.i, ptr %last_cmd_index.i, align 4
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %21, i32 0, i32 118, i32 12, i32 %rem.i
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %43, ptr %arrayidx.i, align 2
  %138 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %add.ptr.i, align 1
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #8
  %arrayidx133.i = getelementptr %struct.mwifiex_adapter, ptr %21, i32 0, i32 118, i32 13, i32 %rem.i
  %141 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %arrayidx133.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9473, i16 %42)
  %cmp135.not.i = icmp eq i16 %42, 9473
  br i1 %cmp135.not.i, label %if.end118.i.mwifiex_dnld_cmd_to_fw.exit_crit_edge, label %if.then137.i

if.end118.i.mwifiex_dnld_cmd_to_fw.exit_crit_edge: ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_dnld_cmd_to_fw.exit

if.then137.i:                                     ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_timer.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %142 = load volatile i32, ptr @jiffies, align 128
  %add139.i = add i32 %142, 1000
  %call140.i = tail call i32 @mod_timer(ptr noundef %cmd_timer.i, i32 noundef %add139.i) #8
  br label %mwifiex_dnld_cmd_to_fw.exit

mwifiex_dnld_cmd_to_fw.exit:                      ; preds = %if.then137.i, %if.end118.i.mwifiex_dnld_cmd_to_fw.exit_crit_edge, %if.end112.i, %if.then20.i, %if.end7.i, %list_del.exit.mwifiex_dnld_cmd_to_fw.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.end7.i ], [ -1, %if.then20.i ], [ -1, %if.end112.i ], [ -1, %list_del.exit.mwifiex_dnld_cmd_to_fw.exit_crit_edge ], [ 0, %if.then137.i ], [ 0, %if.end118.i.mwifiex_dnld_cmd_to_fw.exit_crit_edge ]
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %143 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %priv_num.i, align 4
  %conv.i51 = zext i8 %144 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp2.not.i = icmp eq i8 %144, 0
  br i1 %cmp2.not.i, label %mwifiex_dnld_cmd_to_fw.exit.cleanup_crit_edge, label %mwifiex_dnld_cmd_to_fw.exit.for.body.i_crit_edge

mwifiex_dnld_cmd_to_fw.exit.for.body.i_crit_edge: ; preds = %mwifiex_dnld_cmd_to_fw.exit
  br label %for.body.i

mwifiex_dnld_cmd_to_fw.exit.cleanup_crit_edge:    ; preds = %mwifiex_dnld_cmd_to_fw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mwifiex_dnld_cmd_to_fw.exit.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i54, %for.inc.i.for.body.i_crit_edge ], [ 0, %mwifiex_dnld_cmd_to_fw.exit.for.body.i_crit_edge ]
  %arrayidx.i52 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i
  %145 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i52, align 4
  %tobool.not.i53 = icmp eq ptr %146, null
  br i1 %tobool.not.i53, label %for.inc.i, label %land.lhs.true

for.inc.i:                                        ; preds = %for.body.i
  %inc.i54 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i54, %conv.i51
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.i
  %147 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6912, i16 %148)
  %cmp17.not = icmp eq i16 %148, -6912
  br i1 %cmp17.not, label %land.lhs.true.cleanup_crit_edge, label %if.then19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  %hs_activated = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 108
  %149 = ptrtoint ptr %hs_activated to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %hs_activated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool20.not = icmp eq i8 %150, 0
  br i1 %tobool20.not, label %if.then19.cleanup_crit_edge, label %if.then21

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %work_flags) #8
  %151 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %146, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %152, i32 noundef 32, ptr noundef nonnull @.str.55) #8
  %153 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %146, align 8
  %hs_activated12.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %154, i32 0, i32 108
  %155 = ptrtoint ptr %hs_activated12.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %hs_activated12.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.then19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %mwifiex_dnld_cmd_to_fw.exit.cleanup_crit_edge, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then2 ], [ 0, %if.then8 ], [ %retval.0.i, %if.then19.cleanup_crit_edge ], [ %retval.0.i, %if.then21 ], [ %retval.0.i, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.i, %mwifiex_dnld_cmd_to_fw.exit.cleanup_crit_edge ], [ %retval.0.i, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_hs_activated_event(ptr nocapture noundef readonly %priv, i8 noundef zeroext %activated) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %activated)
  %tobool.not = icmp eq i8 %activated, 0
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %tobool.not, label %if.else9, label %if.then

if.then:                                          ; preds = %entry
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %work_flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %hs_activated = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 108
  %5 = ptrtoint ptr %hs_activated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %hs_activated, align 2
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %7, i8 noundef zeroext 1) #8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.53) #8
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %hs_activate_wait_q_woken = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 110
  %12 = ptrtoint ptr %hs_activate_wait_q_woken to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %hs_activate_wait_q_woken, align 4
  %13 = load ptr, ptr %priv, align 8
  %hs_activate_wait_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %hs_activate_wait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.54) #8
  br label %if.end13

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.55) #8
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %hs_activated12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %15, i32 0, i32 108
  %16 = ptrtoint ptr %hs_activated12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %hs_activated12, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.else9, %if.else, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_cmdresp(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 60
  %0 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %resp_skb = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resp_skb, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %upld_buf = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 52
  %4 = ptrtoint ptr %upld_buf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %upld_buf, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %conv) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %8, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv6 = zext i16 %11 to i32
  %and = and i16 %11, 4095
  %cmd_no = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cmd_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_no, align 4
  %conv9 = zext i16 %and to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv9)
  %cmp.not = icmp eq i32 %13, %conv9
  br i1 %cmp.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %13, i32 noundef %conv9) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %cmd_timer = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 63
  %call16 = tail call i32 @del_timer_sync(ptr noundef %cmd_timer) #8
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %work_flags) #8
  %14 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %curr_cmd, align 4
  %cmd_flag = getelementptr inbounds %struct.cmd_ctrl_node, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cmd_flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_flag, align 4
  %and18 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end15.if.end39_crit_edge, label %if.then20

if.end15.if.end39_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then20:                                        ; preds = %if.end15
  %size21 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %8, i32 0, i32 1
  %18 = ptrtoint ptr %size21 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %size21, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv22 = zext i16 %20 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.27, i32 noundef %conv22) #8
  %21 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %curr_cmd, align 4
  %data_buf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_buf, align 4
  %tobool31.not = icmp eq ptr %24, null
  br i1 %tobool31.not, label %if.then20.if.end39_crit_edge, label %if.then32

if.then20.if.end39_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then32:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i16 @llvm.umin.i16(i16 %20, i16 2048)
  %26 = zext i16 %25 to i32
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %24, align 4
  %cmd = getelementptr inbounds %struct.mwifiex_ds_misc_cmd, ptr %24, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %cmd, ptr %8, i32 %26)
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.then20.if.end39_crit_edge, %if.end15.if.end39_crit_edge
  %seq_num = getelementptr inbounds %struct.host_cmd_ds_command, ptr %8, i32 0, i32 2
  %29 = ptrtoint ptr %seq_num to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %seq_num, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %and41 = lshr i16 %31, 8
  %32 = trunc i16 %and41 to i8
  %conv42 = and i8 %32, 15
  %33 = lshr i16 %31, 12
  %conv47 = trunc i16 %33 to i8
  %34 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priv_num.i, align 4
  %conv.i229 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp36.not.i = icmp eq i8 %35, 0
  br i1 %cmp36.not.i, label %if.end39.if.end52_crit_edge, label %if.end39.for.body.i232_crit_edge

if.end39.for.body.i232_crit_edge:                 ; preds = %if.end39
  br label %for.body.i232

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.body.i232:                                    ; preds = %for.inc.i235.for.body.i232_crit_edge, %if.end39.for.body.i232_crit_edge
  %i.037.i = phi i32 [ %inc.i233, %for.inc.i235.for.body.i232_crit_edge ], [ 0, %if.end39.for.body.i232_crit_edge ]
  %arrayidx.i230 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.037.i
  %36 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i230, align 4
  %tobool.not.i231 = icmp eq ptr %37, null
  br i1 %tobool.not.i231, label %for.body.i232.for.inc.i235_crit_edge, label %if.then.i

for.body.i232.for.inc.i235_crit_edge:             ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i235

if.then.i:                                        ; preds = %for.body.i232
  %bss_num4.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %bss_num4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bss_num4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %conv42)
  %cmp7.i = icmp eq i8 %39, %conv42
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then.i.for.inc.i235_crit_edge

if.then.i.for.inc.i235_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i235

land.lhs.true.i:                                  ; preds = %if.then.i
  %bss_type11.i = getelementptr inbounds %struct.mwifiex_private, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %bss_type11.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bss_type11.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %conv47)
  %cmp14.i = icmp eq i8 %41, %conv47
  br i1 %cmp14.i, label %land.lhs.true.i.if.end52_crit_edge, label %land.lhs.true.i.for.inc.i235_crit_edge

land.lhs.true.i.for.inc.i235_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i235

land.lhs.true.i.if.end52_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.inc.i235:                                     ; preds = %land.lhs.true.i.for.inc.i235_crit_edge, %if.then.i.for.inc.i235_crit_edge, %for.body.i232.for.inc.i235_crit_edge
  %inc.i233 = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i234 = icmp eq i32 %inc.i233, %conv.i229
  br i1 %exitcond.not.i234, label %for.inc.i235.for.body.i244_crit_edge, label %for.inc.i235.for.body.i232_crit_edge

for.inc.i235.for.body.i232_crit_edge:             ; preds = %for.inc.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i232

for.inc.i235.for.body.i244_crit_edge:             ; preds = %for.inc.i235
  br label %for.body.i244

for.body.i244:                                    ; preds = %for.inc.i247.for.body.i244_crit_edge, %for.inc.i235.for.body.i244_crit_edge
  %i.03.i241 = phi i32 [ %inc.i245, %for.inc.i247.for.body.i244_crit_edge ], [ 0, %for.inc.i235.for.body.i244_crit_edge ]
  %arrayidx.i242 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i241
  %42 = ptrtoint ptr %arrayidx.i242 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i242, align 4
  %tobool.not.i243 = icmp eq ptr %43, null
  br i1 %tobool.not.i243, label %for.inc.i247, label %for.body.i244.if.end52_crit_edge

for.body.i244.if.end52_crit_edge:                 ; preds = %for.body.i244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.inc.i247:                                     ; preds = %for.body.i244
  %inc.i245 = add nuw nsw i32 %i.03.i241, 1
  %exitcond.not.i246 = icmp eq i32 %inc.i245, %conv.i229
  br i1 %exitcond.not.i246, label %for.inc.i247.if.end52_crit_edge, label %for.inc.i247.for.body.i244_crit_edge

for.inc.i247.for.body.i244_crit_edge:             ; preds = %for.inc.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i244

for.inc.i247.if.end52_crit_edge:                  ; preds = %for.inc.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52:                                         ; preds = %for.inc.i247.if.end52_crit_edge, %for.body.i244.if.end52_crit_edge, %land.lhs.true.i.if.end52_crit_edge, %if.end39.if.end52_crit_edge
  %priv.0 = phi ptr [ null, %if.end39.if.end52_crit_edge ], [ %43, %for.body.i244.if.end52_crit_edge ], [ null, %for.inc.i247.if.end52_crit_edge ], [ %37, %land.lhs.true.i.if.end52_crit_edge ]
  %44 = tail call i16 @llvm.bswap.i16(i16 %and)
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %8, align 1
  %result = getelementptr inbounds %struct.host_cmd_ds_command, ptr %8, i32 0, i32 3
  %46 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %result, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %last_cmd_resp_index = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 16
  %49 = ptrtoint ptr %last_cmd_resp_index to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %last_cmd_resp_index, align 4
  %conv58 = zext i16 %50 to i32
  %add = add nuw nsw i32 %conv58, 1
  %rem = urem i32 %add, 5
  %conv59 = trunc i32 %rem to i16
  store i16 %conv59, ptr %last_cmd_resp_index, align 4
  %arrayidx = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 15, i32 %rem
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %11, ptr %arrayidx, align 2
  %conv66 = zext i16 %48 to i32
  %size67 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %8, i32 0, i32 1
  %52 = ptrtoint ptr %size67 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %size67, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %conv68 = zext i16 %54 to i32
  %55 = ptrtoint ptr %seq_num to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %seq_num, align 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  %conv70 = zext i16 %57 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %conv6, i32 noundef %conv66, i32 noundef %conv68, i32 noundef %conv70) #8
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 1
  %58 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug_mask, align 4
  %and71 = and i32 %59, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end52.do.end_crit_edge, label %if.then73

if.end52.do.end_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then73:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %size67 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %size67, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %conv75 = zext i16 %62 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %8, i32 noundef %conv75, i1 noundef zeroext false) #8
  br label %do.end

do.end:                                           ; preds = %if.then73, %if.end52.do.end_crit_edge
  %and78 = and i32 %conv6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end88

if.then80:                                        ; preds = %do.end
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.30) #8
  %63 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %curr_cmd, align 4
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %wait_q_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool82.not = icmp eq i32 %66, 0
  br i1 %tobool82.not, label %if.then80.if.end84_crit_edge, label %if.then83

if.then80.if.end84_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121, i32 1
  %67 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %status, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.then80.if.end84_crit_edge
  %cmd_skb.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %64, i32 0, i32 4
  %68 = ptrtoint ptr %cmd_skb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cmd_skb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %adapter, ptr noundef %64) #8
  %cmd_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending.i, i32 1, i32 3, i32 1) #8
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending.i, ptr %cmd_pending.i, i32 1, ptr elementtype(i32) %cmd_pending.i) #8, !srcloc !197
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %71, align 1
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #8
  %conv.i251 = zext i16 %75 to i32
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending.i, i32 noundef 4) #8
  %76 = ptrtoint ptr %cmd_pending.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %cmd_pending.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv.i251, i32 noundef %77) #8
  %mwifiex_cmd_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock) #8
  %78 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %curr_cmd, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #8
  br label %cleanup

if.end88:                                         ; preds = %do.end
  %79 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %curr_cmd, align 4
  %cmd_flag90 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %cmd_flag90 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cmd_flag90, align 4
  %and91 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else, label %if.then93

if.then93:                                        ; preds = %if.end88
  %and96 = and i32 %82, -2
  %83 = ptrtoint ptr %cmd_flag90 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and96, ptr %cmd_flag90, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp98 = icmp eq i16 %47, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 229, i16 %and)
  %cmp101 = icmp eq i16 %and, 229
  %or.cond = select i1 %cmp98, i1 %cmp101, i1 false
  br i1 %or.cond, label %if.then103, label %if.then93.if.end107_crit_edge

if.then93.if.end107_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then103:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %call104 = tail call i32 @mwifiex_ret_802_11_hs_cfg(ptr noundef %priv.0, ptr noundef %8)
  br label %if.end107

if.else:                                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %call106 = tail call i32 @mwifiex_process_sta_cmdresp(ptr noundef %priv.0, i16 noundef zeroext %and, ptr noundef %8) #8
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.then103, %if.then93.if.end107_crit_edge
  %ret.0 = phi i32 [ 0, %if.then103 ], [ 0, %if.then93.if.end107_crit_edge ], [ %call106, %if.else ]
  %hw_status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 45
  %84 = ptrtoint ptr %hw_status to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp108 = icmp eq i32 %85, 1
  br i1 %cmp108, label %if.then110, label %if.end107.if.end124_crit_edge

if.end107.if.end124_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool111.not = icmp eq i32 %ret.0, 0
  br i1 %tobool111.not, label %if.else115, label %if.then112

if.then112:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.mwifiex_process_cmdresp, i32 noundef %13) #8
  %call114 = tail call i32 @mwifiex_init_fw_complete(ptr noundef %adapter) #8
  br label %cleanup

if.else115:                                       ; preds = %if.then110
  %last_init_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 62
  %86 = ptrtoint ptr %last_init_cmd to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %last_init_cmd, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %and)
  %cmp118 = icmp eq i16 %87, %and
  br i1 %cmp118, label %if.then120, label %if.else115.if.end124_crit_edge

if.else115.if.end124_crit_edge:                   ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then120:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %hw_status to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %hw_status, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.else115.if.end124_crit_edge, %if.end107.if.end124_crit_edge
  %89 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %curr_cmd, align 4
  %tobool126.not = icmp eq ptr %90, null
  br i1 %tobool126.not, label %if.end124.cleanup_crit_edge, label %if.then127

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then127:                                       ; preds = %if.end124
  %wait_q_enabled129 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %wait_q_enabled129 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %wait_q_enabled129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool130.not = icmp eq i32 %92, 0
  br i1 %tobool130.not, label %if.then127.if.end134_crit_edge, label %if.then131

if.then127.if.end134_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then131:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  %status133 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121, i32 1
  %93 = ptrtoint ptr %status133 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %ret.0, ptr %status133, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.then127.if.end134_crit_edge
  %cmd_skb.i252 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %90, i32 0, i32 4
  %94 = ptrtoint ptr %cmd_skb.i252 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cmd_skb.i252, align 4
  %data.i253 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 19
  %96 = ptrtoint ptr %data.i253 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i253, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %adapter, ptr noundef nonnull %90) #8
  %cmd_pending.i254 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 22
  %call.i.i.i255 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending.i254, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending.i254, i32 1, i32 3, i32 1) #8
  %98 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending.i254, ptr %cmd_pending.i254, i32 1, ptr elementtype(i32) %cmd_pending.i254) #8, !srcloc !197
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %97, align 1
  %101 = tail call i16 @llvm.bswap.i16(i16 %100) #8
  %conv.i256 = zext i16 %101 to i32
  %call.i.i6.i257 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending.i254, i32 noundef 4) #8
  %102 = ptrtoint ptr %cmd_pending.i254 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %cmd_pending.i254, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv.i256, i32 noundef %103) #8
  %mwifiex_cmd_lock136 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock136) #8
  %104 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %curr_cmd, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock136) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.end124.cleanup_crit_edge, %if.then112, %if.end84, %if.then11, %if.then
  %retval.0 = phi i32 [ -1, %if.then11 ], [ -1, %if.then112 ], [ -1, %if.end84 ], [ -1, %if.then ], [ %ret.0, %if.end134 ], [ %ret.0, %if.end124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_hs_cfg(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %params2 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %params2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %params2, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %6)
  %cmp = icmp eq i16 %6, 512
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp6.not = icmp eq i8 %8, 2
  br i1 %cmp6.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %work_flags.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %work_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %work_flags.i, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %hs_activated.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 108
  %12 = ptrtoint ptr %hs_activated.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hs_activated.i, align 2
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %14, i8 noundef zeroext 1) #8
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.53) #8
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %hs_activate_wait_q_woken.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 110
  %19 = ptrtoint ptr %hs_activate_wait_q_woken.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %hs_activate_wait_q_woken.i, align 4
  %20 = load ptr, ptr %priv, align 8
  %hs_activate_wait_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %20, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %hs_activate_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.54) #8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %result = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 3
  %21 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %result, align 1
  %conv8 = zext i16 %22 to i32
  %gpio = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3
  %23 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gpio, align 1
  %conv10 = zext i8 %24 to i32
  %gap = getelementptr inbounds %struct.mwifiex_hs_config_param, ptr %params2, i32 0, i32 2
  %25 = ptrtoint ptr %gap to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %gap, align 1
  %conv12 = zext i8 %26 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.56, i32 noundef %conv8, i32 noundef %4, i32 noundef %conv10, i32 noundef %conv12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp13.not = icmp eq i32 %3, -1
  %work_flags23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 12
  br i1 %cmp13.not, label %if.else22, label %if.then15

if.then15:                                        ; preds = %if.else
  tail call void @_set_bit(i32 noundef 3, ptr noundef %work_flags23) #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp18 = icmp eq i8 %28, 2
  br i1 %cmp18, label %if.then20, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.then15
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %work_flags.i42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %work_flags.i42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %work_flags.i42, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.i43 = icmp eq i32 %33, 0
  br i1 %tobool1.not.i43, label %if.else.i48, label %if.then2.i47

if.then2.i47:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %hs_activated.i44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %30, i32 0, i32 108
  %34 = ptrtoint ptr %hs_activated.i44 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %hs_activated.i44, align 2
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %36, i8 noundef zeroext 1) #8
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str.53) #8
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %hs_activate_wait_q_woken.i45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %40, i32 0, i32 110
  %41 = ptrtoint ptr %hs_activate_wait_q_woken.i45 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %hs_activate_wait_q_woken.i45, align 4
  %42 = load ptr, ptr %priv, align 8
  %hs_activate_wait_q.i46 = getelementptr inbounds %struct.mwifiex_adapter, ptr %42, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %hs_activate_wait_q.i46, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.else.i48:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.54) #8
  br label %cleanup

if.else22:                                        ; preds = %if.else
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %work_flags23) #8
  %hs_activated = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 108
  %43 = ptrtoint ptr %hs_activated to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hs_activated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not = icmp eq i8 %44, 0
  br i1 %tobool.not, label %if.else22.cleanup_crit_edge, label %if.then24

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %46, i32 noundef 32, ptr noundef nonnull @.str.55) #8
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %hs_activated12.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %48, i32 0, i32 108
  %49 = ptrtoint ptr %hs_activated12.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %hs_activated12.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.else22.cleanup_crit_edge, %if.else.i48, %if.then2.i47, %if.then15.cleanup_crit_edge, %if.else.i, %if.then2.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_sta_cmdresp(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_init_fw_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_cmd_timeout_func(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3124
  %work_flags = getelementptr i8, ptr %t, i32 -3036
  tail call void @_set_bit(i32 noundef 1, ptr noundef %work_flags) #8
  %curr_cmd = getelementptr i8, ptr %t, i32 -52
  %0 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.then3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 4, ptr noundef nonnull @.str.32) #8
  br label %cleanup

if.then3:                                         ; preds = %entry
  %dbg = getelementptr i8, ptr %t, i32 2816
  %last_cmd_id = getelementptr i8, ptr %t, i32 2860
  %last_cmd_index = getelementptr i8, ptr %t, i32 2880
  %2 = ptrtoint ptr %last_cmd_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %last_cmd_index, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr [5 x i16], ptr %last_cmd_id, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %timeout_cmd_id = getelementptr i8, ptr %t, i32 2856
  %6 = ptrtoint ptr %timeout_cmd_id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %timeout_cmd_id, align 4
  %last_cmd_act = getelementptr i8, ptr %t, i32 2870
  %arrayidx10 = getelementptr [5 x i16], ptr %last_cmd_act, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx10, align 2
  %timeout_cmd_act = getelementptr i8, ptr %t, i32 2858
  %9 = ptrtoint ptr %timeout_cmd_act to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %timeout_cmd_act, align 2
  %conv = zext i16 %5 to i32
  %conv16 = zext i16 %8 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.mwifiex_cmd_timeout_func, i32 noundef %conv, i32 noundef %conv16) #8
  %num_tx_host_to_card_failure = getelementptr i8, ptr %t, i32 2824
  %10 = ptrtoint ptr %num_tx_host_to_card_failure to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_host_to_card_failure, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %11) #8
  %12 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dbg, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %13) #8
  %14 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %work_flags, align 4
  %shr.i = lshr i32 %15, 1
  %and1.i = and i32 %shr.i, 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.36, i32 noundef %and1.i) #8
  %num_tx_timeout = getelementptr i8, ptr %t, i32 2852
  %16 = ptrtoint ptr %num_tx_timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_timeout, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %17) #8
  %18 = ptrtoint ptr %last_cmd_index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %last_cmd_index, align 4
  %conv23 = zext i16 %19 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.38, i32 noundef %conv23) #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef 10, ptr noundef %last_cmd_id) #8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef 10, ptr noundef %last_cmd_act) #8
  %last_cmd_resp_index = getelementptr i8, ptr %t, i32 2892
  %20 = ptrtoint ptr %last_cmd_resp_index to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %last_cmd_resp_index, align 4
  %conv30 = zext i16 %21 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %conv30) #8
  %last_cmd_resp_id = getelementptr i8, ptr %t, i32 2882
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef 10, ptr noundef %last_cmd_resp_id) #8
  %last_event_index = getelementptr i8, ptr %t, i32 2904
  %22 = ptrtoint ptr %last_event_index to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %last_event_index, align 4
  %conv34 = zext i16 %23 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.43, i32 noundef %conv34) #8
  %last_event = getelementptr i8, ptr %t, i32 2894
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef 10, ptr noundef %last_event) #8
  %data_sent = getelementptr i8, ptr %t, i32 -64
  %24 = ptrtoint ptr %data_sent to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data_sent, align 4
  %conv37 = zext i8 %25 to i32
  %cmd_sent = getelementptr i8, ptr %t, i32 -63
  %26 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cmd_sent, align 1
  %conv38 = zext i8 %27 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.45, i32 noundef %conv37, i32 noundef %conv38) #8
  %ps_mode = getelementptr i8, ptr %t, i32 608
  %28 = ptrtoint ptr %ps_mode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ps_mode, align 4
  %conv39 = zext i16 %29 to i32
  %ps_state = getelementptr i8, ptr %t, i32 612
  %30 = ptrtoint ptr %ps_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ps_state, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.46, i32 noundef %conv39, i32 noundef %31) #8
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wait_q_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool40.not = icmp eq i32 %33, 0
  br i1 %tobool40.not, label %if.then3.if.end43_crit_edge, label %if.then41

if.then3.if.end43_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %if.then3
  %status = getelementptr i8, ptr %t, i32 3196
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -110, ptr %status, align 4
  %35 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %curr_cmd, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.then41.mwifiex_cancel_pending_ioctl.exit_crit_edge, label %land.lhs.true.i

if.then41.mwifiex_cancel_pending_ioctl.exit_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_cancel_pending_ioctl.exit

land.lhs.true.i:                                  ; preds = %if.then41
  %wait_q_enabled.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %wait_q_enabled.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wait_q_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool2.not.i = icmp eq i32 %38, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.mwifiex_cancel_pending_ioctl.exit_crit_edge, label %if.then.i

land.lhs.true.i.mwifiex_cancel_pending_ioctl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_cancel_pending_ioctl.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %mwifiex_cmd_lock.i = getelementptr i8, ptr %t, i32 -48
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock.i) #8
  %39 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %curr_cmd, align 4
  store ptr null, ptr %curr_cmd, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock.i) #8
  %cmd_skb.i.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %cmd_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cmd_skb.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %add.ptr, ptr noundef %40) #8
  %cmd_pending.i.i = getelementptr i8, ptr %t, i32 -2836
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending.i.i, i32 1, i32 3, i32 1) #8
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending.i.i, ptr %cmd_pending.i.i, i32 1, ptr elementtype(i32) %cmd_pending.i.i) #8, !srcloc !197
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %44, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #8
  %conv.i.i = zext i16 %48 to i32
  %call.i.i6.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending.i.i, i32 noundef 4) #8
  %49 = ptrtoint ptr %cmd_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %cmd_pending.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %add.ptr, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv.i.i, i32 noundef %50) #8
  br label %mwifiex_cancel_pending_ioctl.exit

mwifiex_cancel_pending_ioctl.exit:                ; preds = %if.then.i, %land.lhs.true.i.mwifiex_cancel_pending_ioctl.exit_crit_edge, %if.then41.mwifiex_cancel_pending_ioctl.exit_crit_edge
  tail call void @mwifiex_cancel_scan(ptr noundef %add.ptr) #8
  br label %if.end43

if.end43:                                         ; preds = %mwifiex_cancel_pending_ioctl.exit, %if.then3.if.end43_crit_edge
  %hw_status = getelementptr i8, ptr %t, i32 -2444
  %51 = ptrtoint ptr %hw_status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp = icmp eq i32 %52, 1
  br i1 %cmp, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 @mwifiex_init_fw_complete(ptr noundef %add.ptr) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %device_dump = getelementptr i8, ptr %t, i32 -2884
  %53 = ptrtoint ptr %device_dump to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device_dump, align 4
  %tobool48.not = icmp eq ptr %54, null
  br i1 %tobool48.not, label %if.end47.if.end52_crit_edge, label %if.then49

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %54(ptr noundef %add.ptr) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end47.if.end52_crit_edge
  %card_reset = getelementptr i8, ptr %t, i32 -2892
  %55 = ptrtoint ptr %card_reset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card_reset, align 4
  %tobool54.not = icmp eq ptr %56, null
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.then55

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %56(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end52.cleanup_crit_edge, %if.then45, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_cancel_pending_scan_cmd(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %scan_pending_q_lock) #8
  %scan_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 68
  %0 = ptrtoint ptr %scan_pending_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_pending_q, align 4
  %cmp.not23 = icmp eq ptr %1, %scan_pending_q
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %cmd_node.024 = phi ptr [ %tmp_node.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %cmd_node.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_node.0 = load ptr, ptr %cmd_node.024, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd_node.024) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cmd_node.024, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %cmd_node.024 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_node.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %cmd_node.024 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd_node.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cmd_node.024, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node.024, i32 0, i32 7
  %11 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait_q_enabled, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %adapter, ptr noundef %cmd_node.024)
  %cmp.not = icmp eq ptr %tmp_node.0, %scan_pending_q
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %scan_pending_q_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_cancel_all_pending_cmd(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mwifiex_cmd_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %mwifiex_cmd_lock) #8
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 60
  %0 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %wait_q_enabled = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wait_q_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wait_q_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4
  %call = tail call i32 @mwifiex_complete_cmd(ptr noundef %adapter, ptr noundef nonnull %1) #8
  %5 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %curr_cmd, align 4
  %wait_q_enabled5 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %wait_q_enabled5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait_q_enabled5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_pending_q_lock = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_pending_q_lock) #8
  %cmd_pending_q = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 66
  %8 = ptrtoint ptr %cmd_pending_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_pending_q, align 4
  %cmp.not46 = icmp eq ptr %9, %cmd_pending_q
  br i1 %cmp.not46, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %status17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 121, i32 1
  %cmd_pending.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %cmd_node.047 = phi ptr [ %9, %for.body.lr.ph ], [ %tmp_node.048, %if.end18.for.body_crit_edge ]
  %10 = ptrtoint ptr %cmd_node.047 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp_node.048 = load ptr, ptr %cmd_node.047, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd_node.047) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cmd_node.047, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %cmd_node.047 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_node.047, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %cmd_node.047 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd_node.047, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cmd_node.047, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %wait_q_enabled13 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node.047, i32 0, i32 7
  %19 = ptrtoint ptr %wait_q_enabled13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wait_q_enabled13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %list_del.exit.if.end18_crit_edge, label %if.then15

list_del.exit.if.end18_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %status17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %status17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %list_del.exit.if.end18_crit_edge
  %cmd_skb.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd_node.047, i32 0, i32 4
  %22 = ptrtoint ptr %cmd_skb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_skb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %adapter, ptr noundef %cmd_node.047) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_pending.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %cmd_pending.i, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_pending.i, ptr %cmd_pending.i, i32 1, ptr elementtype(i32) %cmd_pending.i) #8, !srcloc !197
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %25, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #8
  %conv.i = zext i16 %29 to i32
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pending.i, i32 noundef 4) #8
  %30 = ptrtoint ptr %cmd_pending.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %cmd_pending.i, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %31) #8
  %cmp.not = icmp eq ptr %tmp_node.048, %cmd_pending_q
  br i1 %cmp.not, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_pending_q_lock) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mwifiex_cmd_lock) #8
  tail call void @mwifiex_cancel_scan(ptr noundef %adapter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_complete_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_check_ps_cond(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_sent = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 54
  %0 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_sent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %tx_hw_pending = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_hw_pending, i32 noundef 4) #8
  %2 = ptrtoint ptr %tx_hw_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_hw_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %curr_cmd = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 60
  %4 = ptrtoint ptr %curr_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_cmd, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true2.if.else_crit_edge

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %cmd_resp_received = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 55
  %6 = ptrtoint ptr %cmd_resp_received to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_resp_received, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %event_received = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 56
  %8 = ptrtoint ptr %event_received to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %event_received, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %data_received = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 57
  %10 = ptrtoint ptr %data_received to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_received, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.then, label %lor.lhs.false8.if.else_crit_edge

lor.lhs.false8.if.else_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mwifiex_dnld_sleep_confirm_cmd(ptr noundef %adapter)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false8.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge, %land.lhs.true4.if.else_crit_edge, %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %12 = ptrtoint ptr %cmd_sent to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd_sent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool14.not, ptr @.str.49, ptr @.str.48
  %tx_hw_pending15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 23
  %call.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_hw_pending15, i32 noundef 4) #8
  %14 = ptrtoint ptr %tx_hw_pending15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tx_hw_pending15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.49, ptr @.str.50
  %curr_cmd19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 60
  %16 = ptrtoint ptr %curr_cmd19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curr_cmd19, align 4
  %tobool20.not = icmp eq ptr %17, null
  %cond21 = select i1 %tobool20.not, ptr @.str.49, ptr @.str.51
  %cmd_resp_received22 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 55
  %18 = ptrtoint ptr %cmd_resp_received22 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmd_resp_received22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.else.lor.end_crit_edge

if.else.lor.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false25:                                  ; preds = %if.else
  %event_received26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 56
  %20 = ptrtoint ptr %event_received26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %event_received26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool28.not = icmp eq i8 %21, 0
  br i1 %tobool28.not, label %lor.rhs, label %lor.lhs.false25.lor.end_crit_edge

lor.lhs.false25.lor.end_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  %data_received29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 57
  %22 = ptrtoint ptr %data_received29 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_received29, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool31.not = icmp eq i8 %23, 0
  %phi.sel = select i1 %tobool31.not, ptr @.str.49, ptr @.str.52
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false25.lor.end_crit_edge, %if.else.lor.end_crit_edge
  %24 = phi ptr [ @.str.52, %lor.lhs.false25.lor.end_crit_edge ], [ @.str.52, %if.else.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond, ptr noundef nonnull %cond18, ptr noundef nonnull %cond21, ptr noundef nonnull %24) #8
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mwifiex_dnld_sleep_confirm_cmd(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_cfm = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 95
  %0 = ptrtoint ptr %sleep_cfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleep_cfm, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 0
  br i1 %cmp2.not.i, label %entry.mwifiex_get_priv.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mwifiex_get_priv.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %entry.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %entry.mwifiex_get_priv.exit_crit_edge ], [ %7, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %seq_num = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 58
  %8 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %seq_num, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %seq_num, align 2
  %10 = and i16 %inc, 255
  %bss_num = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 4
  %11 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bss_num, align 1
  %13 = and i8 %12, 15
  %and3 = zext i8 %13 to i16
  %shl = shl nuw nsw i16 %and3, 8
  %or = or i16 %shl, %10
  %bss_type = getelementptr inbounds %struct.mwifiex_private, ptr %cond.i, i32 0, i32 1
  %14 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bss_type, align 4
  %and5 = zext i8 %15 to i16
  %shl6 = shl i16 %and5, 12
  %or7 = or i16 %or, %shl6
  %16 = tail call i16 @llvm.bswap.i16(i16 %or7)
  %seq_num9 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %seq_num9 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %seq_num9, align 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %3, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv10 = zext i16 %20 to i32
  %action = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %action, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv11 = zext i16 %23 to i32
  %size = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %size, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv12 = zext i16 %26 to i32
  %conv14 = zext i16 %or7 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.86, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv14) #8
  %debug_mask = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 1
  %27 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_mask, align 4
  %and15 = and i32 %28, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %mwifiex_get_priv.exit.do.end_crit_edge, label %if.then

mwifiex_get_priv.exit.do.end_crit_edge:           ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %mwifiex_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %size, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv17 = zext i16 %31 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.89, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %3, i32 noundef %conv17, i1 noundef zeroext false) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %mwifiex_get_priv.exit.do.end_crit_edge
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %adapter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp = icmp eq i8 %33, 2
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %do.end
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #8
  %tobool22.not = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.90) #8
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  %call25 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %data26 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data26, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 -822473232, ptr %35, align 1
  %37 = load ptr, ptr %data26, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %sleep_cfm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sleep_cfm, align 4
  %data29 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data29, align 4
  %42 = call ptr @memcpy(ptr %add.ptr, ptr %41, i32 12)
  %host_to_card = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 10
  %43 = ptrtoint ptr %host_to_card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host_to_card, align 4
  %call30 = tail call i32 %44(ptr noundef %adapter, i8 noundef zeroext 1, ptr noundef nonnull %call.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, -16
  br i1 %cmp31.not, label %if.end24.if.end51_crit_edge, label %if.then33

if.end24.if.end51_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %if.end46

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %sleep_cfm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sleep_cfm, align 4
  %intf_hdr_len = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 14
  %47 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %intf_hdr_len, align 4
  %conv36 = zext i8 %48 to i32
  %call37 = tail call ptr @skb_push(ptr noundef %46, i32 noundef %conv36) #8
  %host_to_card39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 10
  %49 = ptrtoint ptr %host_to_card39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host_to_card39, align 4
  %51 = ptrtoint ptr %sleep_cfm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sleep_cfm, align 4
  %call41 = tail call i32 %50(ptr noundef %adapter, i8 noundef zeroext 1, ptr noundef %52, ptr noundef null) #8
  %53 = ptrtoint ptr %sleep_cfm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sleep_cfm, align 4
  %55 = ptrtoint ptr %intf_hdr_len to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %intf_hdr_len, align 4
  %conv44 = zext i8 %56 to i32
  %call45 = tail call ptr @skb_pull(ptr noundef %54, i32 noundef %conv44) #8
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then33
  %ret.0 = phi i32 [ %call30, %if.then33 ], [ %call41, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp47 = icmp eq i32 %ret.0, -1
  br i1 %cmp47, label %if.then49, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.91) #8
  %num_cmd_sleep_cfm_host_to_card_failure = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 118, i32 1
  %57 = ptrtoint ptr %num_cmd_sleep_cfm_host_to_card_failure to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_cmd_sleep_cfm_host_to_card_failure, align 4
  %inc50 = add i32 %58, 1
  store i32 %inc50, ptr %num_cmd_sleep_cfm_host_to_card_failure, align 4
  br label %cleanup

if.end51:                                         ; preds = %if.end46.if.end51_crit_edge, %if.end24.if.end51_crit_edge
  %resp_ctrl = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %3, i32 0, i32 5
  %59 = ptrtoint ptr %resp_ctrl to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %resp_ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool52.not = icmp eq i16 %60, 0
  %spec.select = select i1 %tobool52.not, i32 3, i32 2
  %61 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.select, ptr %61, align 4
  %63 = ptrtoint ptr %resp_ctrl to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %resp_ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool58.not = icmp eq i16 %64, 0
  br i1 %tobool58.not, label %land.lhs.true, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end51
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  %65 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %work_flags, align 4
  %67 = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool60.not = icmp eq i32 %67, 0
  br i1 %tobool60.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true61

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true61:                                  ; preds = %land.lhs.true
  %sleep_period = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 88
  %68 = ptrtoint ptr %sleep_period to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sleep_period, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool62.not = icmp eq i16 %69, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true61.cleanup_crit_edge

land.lhs.true61.cleanup_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %land.lhs.true61
  %pm_wakeup_card_req = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 102
  %70 = ptrtoint ptr %pm_wakeup_card_req to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %pm_wakeup_card_req, align 2
  %71 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %priv_num.i, align 4
  %conv.i2 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp2.not.i3 = icmp eq i8 %72, 0
  br i1 %cmp2.not.i3, label %if.then63.mwifiex_get_priv.exit13_crit_edge, label %if.then63.for.body.i7_crit_edge

if.then63.for.body.i7_crit_edge:                  ; preds = %if.then63
  br label %for.body.i7

if.then63.mwifiex_get_priv.exit13_crit_edge:      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit13

for.body.i7:                                      ; preds = %for.inc.i10.for.body.i7_crit_edge, %if.then63.for.body.i7_crit_edge
  %i.03.i4 = phi i32 [ %inc.i8, %for.inc.i10.for.body.i7_crit_edge ], [ 0, %if.then63.for.body.i7_crit_edge ]
  %arrayidx.i5 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i4
  %73 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i5, align 4
  %tobool.not.i6 = icmp eq ptr %74, null
  br i1 %tobool.not.i6, label %for.inc.i10, label %for.body.i7.mwifiex_get_priv.exit13_crit_edge

for.body.i7.mwifiex_get_priv.exit13_crit_edge:    ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit13

for.inc.i10:                                      ; preds = %for.body.i7
  %inc.i8 = add nuw nsw i32 %i.03.i4, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, %conv.i2
  br i1 %exitcond.not.i9, label %for.inc.i10.mwifiex_get_priv.exit13_crit_edge, label %for.inc.i10.for.body.i7_crit_edge

for.inc.i10.for.body.i7_crit_edge:                ; preds = %for.inc.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i7

for.inc.i10.mwifiex_get_priv.exit13_crit_edge:    ; preds = %for.inc.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit13

mwifiex_get_priv.exit13:                          ; preds = %for.inc.i10.mwifiex_get_priv.exit13_crit_edge, %for.body.i7.mwifiex_get_priv.exit13_crit_edge, %if.then63.mwifiex_get_priv.exit13_crit_edge
  %cond.i12 = phi ptr [ null, %if.then63.mwifiex_get_priv.exit13_crit_edge ], [ %74, %for.body.i7.mwifiex_get_priv.exit13_crit_edge ], [ null, %for.inc.i10.mwifiex_get_priv.exit13_crit_edge ]
  %75 = ptrtoint ptr %cond.i12 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cond.i12, align 8
  %work_flags.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %work_flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %work_flags.i, align 4
  %79 = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool1.not.i = icmp eq i32 %79, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %mwifiex_get_priv.exit13
  call void @__sanitizer_cov_trace_pc() #10
  %hs_activated.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %76, i32 0, i32 108
  %80 = ptrtoint ptr %hs_activated.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %hs_activated.i, align 2
  %81 = ptrtoint ptr %cond.i12 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cond.i12, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %82, i8 noundef zeroext 1) #8
  %83 = ptrtoint ptr %cond.i12 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cond.i12, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %84, i32 noundef 32, ptr noundef nonnull @.str.53) #8
  %85 = ptrtoint ptr %cond.i12 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cond.i12, align 8
  %hs_activate_wait_q_woken.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %86, i32 0, i32 110
  %87 = ptrtoint ptr %hs_activate_wait_q_woken.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %hs_activate_wait_q_woken.i, align 4
  %88 = load ptr, ptr %cond.i12, align 8
  %hs_activate_wait_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %88, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %hs_activate_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.else.i:                                        ; preds = %mwifiex_get_priv.exit13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %76, i32 noundef 32, ptr noundef nonnull @.str.54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then2.i, %land.lhs.true61.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then49, %if.then23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_update_rxreor_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_process_hs_config(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 1073741824, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.mwifiex_process_hs_config) #8
  %wakeup = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 18, i32 11
  %0 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup, align 4
  %call = tail call i32 %1(ptr noundef %adapter) #8
  %hs_activated_manually = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 109
  %2 = ptrtoint ptr %hs_activated_manually to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hs_activated_manually, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %4 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_num.i, align 4
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 0
  br i1 %cmp2.not.i, label %if.then.mwifiex_get_priv.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mwifiex_get_priv.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.mwifiex_get_priv.exit_crit_edge

for.body.i.mwifiex_get_priv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.mwifiex_get_priv.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mwifiex_get_priv.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit

mwifiex_get_priv.exit:                            ; preds = %for.inc.i.mwifiex_get_priv.exit_crit_edge, %for.body.i.mwifiex_get_priv.exit_crit_edge, %if.then.mwifiex_get_priv.exit_crit_edge
  %cond.i = phi ptr [ null, %if.then.mwifiex_get_priv.exit_crit_edge ], [ %7, %for.body.i.mwifiex_get_priv.exit_crit_edge ], [ null, %for.inc.i.mwifiex_get_priv.exit_crit_edge ]
  %call2 = tail call i32 @mwifiex_cancel_hs(ptr noundef %cond.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %hs_activated_manually to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %hs_activated_manually, align 1
  br label %if.end

if.end:                                           ; preds = %mwifiex_get_priv.exit, %entry.if.end_crit_edge
  %hs_activated = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 108
  %9 = ptrtoint ptr %hs_activated to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %hs_activated, align 2
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %work_flags) #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %work_flags) #8
  %priv_num.i15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %10 = ptrtoint ptr %priv_num.i15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priv_num.i15, align 4
  %conv.i16 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp2.not.i17 = icmp eq i8 %11, 0
  br i1 %cmp2.not.i17, label %if.end.mwifiex_get_priv.exit27_crit_edge, label %if.end.for.body.i21_crit_edge

if.end.for.body.i21_crit_edge:                    ; preds = %if.end
  br label %for.body.i21

if.end.mwifiex_get_priv.exit27_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit27

for.body.i21:                                     ; preds = %for.inc.i24.for.body.i21_crit_edge, %if.end.for.body.i21_crit_edge
  %i.03.i18 = phi i32 [ %inc.i22, %for.inc.i24.for.body.i21_crit_edge ], [ 0, %if.end.for.body.i21_crit_edge ]
  %arrayidx.i19 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i18
  %12 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i19, align 4
  %tobool.not.i20 = icmp eq ptr %13, null
  br i1 %tobool.not.i20, label %for.inc.i24, label %for.body.i21.mwifiex_get_priv.exit27_crit_edge

for.body.i21.mwifiex_get_priv.exit27_crit_edge:   ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit27

for.inc.i24:                                      ; preds = %for.body.i21
  %inc.i22 = add nuw nsw i32 %i.03.i18, 1
  %exitcond.not.i23 = icmp eq i32 %inc.i22, %conv.i16
  br i1 %exitcond.not.i23, label %for.inc.i24.mwifiex_get_priv.exit27_crit_edge, label %for.inc.i24.for.body.i21_crit_edge

for.inc.i24.for.body.i21_crit_edge:               ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i21

for.inc.i24.mwifiex_get_priv.exit27_crit_edge:    ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit27

mwifiex_get_priv.exit27:                          ; preds = %for.inc.i24.mwifiex_get_priv.exit27_crit_edge, %for.body.i21.mwifiex_get_priv.exit27_crit_edge, %if.end.mwifiex_get_priv.exit27_crit_edge
  %cond.i26 = phi ptr [ null, %if.end.mwifiex_get_priv.exit27_crit_edge ], [ %13, %for.body.i21.mwifiex_get_priv.exit27_crit_edge ], [ null, %for.inc.i24.mwifiex_get_priv.exit27_crit_edge ]
  %14 = ptrtoint ptr %cond.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cond.i26, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.55) #8
  %16 = ptrtoint ptr %cond.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cond.i26, align 8
  %hs_activated12.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %17, i32 0, i32 108
  %18 = ptrtoint ptr %hs_activated12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %hs_activated12.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mwifiex_process_sleep_confirm_resp(ptr noundef %adapter, ptr nocapture noundef %pbuf, i32 noundef %upld_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %result1 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %pbuf, i32 0, i32 3
  %0 = ptrtoint ptr %result1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %result1, align 1
  %seq_num3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %pbuf, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %upld_len)
  %tobool.not = icmp eq i32 %upld_len, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.mwifiex_process_sleep_confirm_resp) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_num.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 5
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %seq_num3 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %seq_num3, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %pbuf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %pbuf, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %conv4 = zext i16 %2 to i32
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %pbuf, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %size, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv5 = zext i16 %11 to i32
  %conv6 = zext i16 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #8
  %and = lshr i16 %5, 8
  %12 = trunc i16 %and to i8
  %conv8 = and i8 %12, 15
  %13 = lshr i16 %5, 12
  %conv12 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %priv_num.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %priv_num.i, align 4
  %conv.i74 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp36.not.i = icmp eq i8 %15, 0
  br i1 %cmp36.not.i, label %if.end.if.end17_crit_edge, label %if.end.for.body.i77_crit_edge

if.end.for.body.i77_crit_edge:                    ; preds = %if.end
  br label %for.body.i77

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.body.i77:                                     ; preds = %for.body.i77.backedge, %if.end.for.body.i77_crit_edge
  %i.037.i = phi i32 [ %i.037.i.be, %for.body.i77.backedge ], [ 0, %if.end.for.body.i77_crit_edge ]
  %arrayidx.i75 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.037.i
  %16 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i75, align 4
  %tobool.not.i76 = icmp eq ptr %17, null
  br i1 %tobool.not.i76, label %for.body.i77.for.inc.i80_crit_edge, label %if.then.i

for.body.i77.for.inc.i80_crit_edge:               ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i80

if.then.i:                                        ; preds = %for.body.i77
  %bss_num4.i = getelementptr inbounds %struct.mwifiex_private, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %bss_num4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bss_num4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %conv8)
  %cmp7.i = icmp eq i8 %19, %conv8
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then.i.for.inc.i80_crit_edge

if.then.i.for.inc.i80_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i80

land.lhs.true.i:                                  ; preds = %if.then.i
  %bss_type11.i = getelementptr inbounds %struct.mwifiex_private, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %bss_type11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bss_type11.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %conv12)
  %cmp14.i = icmp eq i8 %21, %conv12
  %inc.i78 = add nuw nsw i32 %i.037.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i78, i32 %conv.i74)
  %exitcond.not.i79 = icmp eq i32 %inc.i78, %conv.i74
  %or.cond = select i1 %cmp14.i, i1 true, i1 %exitcond.not.i79
  br i1 %or.cond, label %land.lhs.true.i.if.end17_crit_edge, label %land.lhs.true.i.for.body.i77.backedge_crit_edge

land.lhs.true.i.for.body.i77.backedge_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i77.backedge

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.i80:                                      ; preds = %if.then.i.for.inc.i80_crit_edge, %for.body.i77.for.inc.i80_crit_edge
  %inc.i78.old = add nuw nsw i32 %i.037.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i78.old, i32 %conv.i74)
  %exitcond.not.i79.old = icmp eq i32 %inc.i78.old, %conv.i74
  br i1 %exitcond.not.i79.old, label %for.inc.i80.if.end17_crit_edge, label %for.inc.i80.for.body.i77.backedge_crit_edge

for.inc.i80.for.body.i77.backedge_crit_edge:      ; preds = %for.inc.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i77.backedge

for.inc.i80.if.end17_crit_edge:                   ; preds = %for.inc.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.body.i77.backedge:                            ; preds = %for.inc.i80.for.body.i77.backedge_crit_edge, %land.lhs.true.i.for.body.i77.backedge_crit_edge
  %i.037.i.be = phi i32 [ %inc.i78.old, %for.inc.i80.for.body.i77.backedge_crit_edge ], [ %inc.i78, %land.lhs.true.i.for.body.i77.backedge_crit_edge ]
  br label %for.body.i77

if.end17:                                         ; preds = %for.inc.i80.if.end17_crit_edge, %land.lhs.true.i.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %and22 = and i16 %8, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 228, i16 %and22)
  %cmp.not = icmp eq i16 %and22, 228
  br i1 %cmp.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv24 = zext i16 %and22 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.mwifiex_process_sleep_confirm_resp, i32 noundef %conv24, i32 noundef %conv4) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool30.not = icmp eq i16 %1, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %adapter, i32 noundef 4, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.mwifiex_process_sleep_confirm_resp) #8
  %pm_wakeup_card_req = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 102
  %22 = ptrtoint ptr %pm_wakeup_card_req to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pm_wakeup_card_req, align 2
  %ps_state = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %23 = ptrtoint ptr %ps_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ps_state, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %pm_wakeup_card_req33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 102
  %24 = ptrtoint ptr %pm_wakeup_card_req33 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %pm_wakeup_card_req33, align 2
  %work_flags = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 12
  %25 = ptrtoint ptr %work_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %work_flags, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool35.not = icmp eq i32 %27, 0
  br i1 %tobool35.not, label %if.end32.if.end38_crit_edge, label %if.then36

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  br i1 %cmp36.not.i, label %if.then36.mwifiex_get_priv.exit108_crit_edge, label %if.then36.for.body.i102_crit_edge

if.then36.for.body.i102_crit_edge:                ; preds = %if.then36
  br label %for.body.i102

if.then36.mwifiex_get_priv.exit108_crit_edge:     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit108

for.body.i102:                                    ; preds = %for.inc.i105.for.body.i102_crit_edge, %if.then36.for.body.i102_crit_edge
  %i.03.i99 = phi i32 [ %inc.i103, %for.inc.i105.for.body.i102_crit_edge ], [ 0, %if.then36.for.body.i102_crit_edge ]
  %arrayidx.i100 = getelementptr %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 4, i32 %i.03.i99
  %28 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i100, align 4
  %tobool.not.i101 = icmp eq ptr %29, null
  br i1 %tobool.not.i101, label %for.inc.i105, label %for.body.i102.mwifiex_get_priv.exit108_crit_edge

for.body.i102.mwifiex_get_priv.exit108_crit_edge: ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit108

for.inc.i105:                                     ; preds = %for.body.i102
  %inc.i103 = add nuw nsw i32 %i.03.i99, 1
  %exitcond.not.i104 = icmp eq i32 %inc.i103, %conv.i74
  br i1 %exitcond.not.i104, label %for.inc.i105.mwifiex_get_priv.exit108_crit_edge, label %for.inc.i105.for.body.i102_crit_edge

for.inc.i105.for.body.i102_crit_edge:             ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i102

for.inc.i105.mwifiex_get_priv.exit108_crit_edge:  ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %mwifiex_get_priv.exit108

mwifiex_get_priv.exit108:                         ; preds = %for.inc.i105.mwifiex_get_priv.exit108_crit_edge, %for.body.i102.mwifiex_get_priv.exit108_crit_edge, %if.then36.mwifiex_get_priv.exit108_crit_edge
  %cond.i107 = phi ptr [ null, %if.then36.mwifiex_get_priv.exit108_crit_edge ], [ %29, %for.body.i102.mwifiex_get_priv.exit108_crit_edge ], [ null, %for.inc.i105.mwifiex_get_priv.exit108_crit_edge ]
  %30 = ptrtoint ptr %cond.i107 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cond.i107, align 8
  %work_flags.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %work_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %work_flags.i, align 4
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool1.not.i = icmp eq i32 %34, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %mwifiex_get_priv.exit108
  call void @__sanitizer_cov_trace_pc() #10
  %hs_activated.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %31, i32 0, i32 108
  %35 = ptrtoint ptr %hs_activated.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %hs_activated.i, align 2
  %36 = ptrtoint ptr %cond.i107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cond.i107, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %37, i8 noundef zeroext 1) #8
  %38 = ptrtoint ptr %cond.i107 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cond.i107, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 32, ptr noundef nonnull @.str.53) #8
  %40 = ptrtoint ptr %cond.i107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cond.i107, align 8
  %hs_activate_wait_q_woken.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %41, i32 0, i32 110
  %42 = ptrtoint ptr %hs_activate_wait_q_woken.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %hs_activate_wait_q_woken.i, align 4
  %43 = load ptr, ptr %cond.i107, align 8
  %hs_activate_wait_q.i = getelementptr inbounds %struct.mwifiex_adapter, ptr %43, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %hs_activate_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end38

if.else.i:                                        ; preds = %mwifiex_get_priv.exit108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.54) #8
  br label %if.end38

if.end38:                                         ; preds = %if.else.i, %if.then2.i, %if.end32.if.end38_crit_edge
  %ps_state39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %adapter, i32 0, i32 90
  %44 = ptrtoint ptr %ps_state39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %ps_state39, align 4
  %45 = ptrtoint ptr %pbuf to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 -7168, ptr %pbuf, align 1
  %and19 = shl i16 %5, 8
  %46 = ptrtoint ptr %seq_num3 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %and19, ptr %seq_num3, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then31, %if.then26, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_enh_power_mode(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %cmd_action, i16 noundef zeroext %ps_bitmap, ptr noundef readonly %auto_ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 -7168, ptr %cmd, align 1
  %1 = zext i16 %cmd_action to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %cmd_action, label %entry.if.end49_crit_edge [
    i16 254, label %if.then
    i16 0, label %if.then6
    i16 255, label %if.then14
  ]

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -512, ptr %params, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %ps_bitmap)
  %params2 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %params2 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %params2, align 1
  br label %if.end49.sink.split

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %params, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %ps_bitmap)
  %params8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %params8 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %params8, align 1
  br label %if.end49.sink.split

if.then14:                                        ; preds = %entry
  %8 = ptrtoint ptr %params to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 -256, ptr %params, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %ps_bitmap)
  %params16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %params16 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %params16, align 1
  %add.ptr = getelementptr i8, ptr %cmd, i32 12
  %conv18 = zext i16 %ps_bitmap to i32
  %and = and i32 %conv18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then14.if.end_crit_edge, label %if.then19

if.then14.if.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %param = getelementptr i8, ptr %cmd, i32 16
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 29185, ptr %add.ptr, align 1
  %len = getelementptr i8, ptr %cmd, i32 14
  %14 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 3584, ptr %len, align 1
  %add.ptr24 = getelementptr i8, ptr %cmd, i32 30
  %15 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 16, ptr noundef nonnull @.str.61) #8
  %null_pkt_interval = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 94
  %16 = ptrtoint ptr %null_pkt_interval to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %null_pkt_interval, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %param to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %param, align 1
  %multiple_dtim = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 92
  %20 = ptrtoint ptr %multiple_dtim to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %multiple_dtim, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %multiple_dtims = getelementptr i8, ptr %cmd, i32 18
  %23 = ptrtoint ptr %multiple_dtims to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %multiple_dtims, align 1
  %bcn_miss_time_out = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 96
  %24 = ptrtoint ptr %bcn_miss_time_out to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bcn_miss_time_out, align 4
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %bcn_miss_timeout = getelementptr i8, ptr %cmd, i32 20
  %27 = ptrtoint ptr %bcn_miss_timeout to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %bcn_miss_timeout, align 1
  %local_listen_interval = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 93
  %28 = ptrtoint ptr %local_listen_interval to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %local_listen_interval, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %local_listen_interval27 = getelementptr i8, ptr %cmd, i32 22
  %31 = ptrtoint ptr %local_listen_interval27 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %local_listen_interval27, align 1
  %adhoc_awake_period = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 97
  %32 = ptrtoint ptr %adhoc_awake_period to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %adhoc_awake_period, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %adhoc_wake_period = getelementptr i8, ptr %cmd, i32 24
  %35 = ptrtoint ptr %adhoc_wake_period to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %adhoc_wake_period, align 1
  %delay_to_ps = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 100
  %36 = ptrtoint ptr %delay_to_ps to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %delay_to_ps, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %delay_to_ps28 = getelementptr i8, ptr %cmd, i32 28
  %39 = ptrtoint ptr %delay_to_ps28 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %delay_to_ps28, align 1
  %enhanced_ps_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 101
  %40 = ptrtoint ptr %enhanced_ps_mode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %enhanced_ps_mode, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %mode = getelementptr i8, ptr %cmd, i32 26
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %mode, align 1
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then14.if.end_crit_edge
  %cmd_size.0 = phi i16 [ 30, %if.then19 ], [ 12, %if.then14.if.end_crit_edge ]
  %tlv.0 = phi ptr [ %add.ptr24, %if.then19 ], [ %add.ptr, %if.then14.if.end_crit_edge ]
  %and30 = and i32 %conv18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end.if.end45_crit_edge, label %if.then32

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then32:                                        ; preds = %if.end
  %44 = ptrtoint ptr %tlv.0 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 28929, ptr %tlv.0, align 1
  %len36 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %tlv.0, i32 0, i32 1
  %45 = ptrtoint ptr %len36 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 512, ptr %len36, align 1
  %narrow = add nuw nsw i16 %cmd_size.0, 6
  %tobool41.not = icmp eq ptr %auto_ds, null
  br i1 %tobool41.not, label %if.then32.if.end43_crit_edge, label %if.then42

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %idle_time = getelementptr inbounds %struct.mwifiex_ds_auto_ds, ptr %auto_ds, i32 0, i32 1
  %46 = ptrtoint ptr %idle_time to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %idle_time, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then32.if.end43_crit_edge
  %idletime.0 = phi i16 [ %47, %if.then42 ], [ 0, %if.then32.if.end43_crit_edge ]
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %49, i32 noundef 16, ptr noundef nonnull @.str.62) #8
  %50 = tail call i16 @llvm.bswap.i16(i16 %idletime.0)
  %deep_sleep_timeout = getelementptr inbounds %struct.mwifiex_ie_types_auto_ds_param, ptr %tlv.0, i32 0, i32 1
  %51 = ptrtoint ptr %deep_sleep_timeout to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %deep_sleep_timeout, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end.if.end45_crit_edge
  %cmd_size.1 = phi i16 [ %narrow, %if.end43 ], [ %cmd_size.0, %if.end.if.end45_crit_edge ]
  %52 = tail call i16 @llvm.bswap.i16(i16 %cmd_size.1)
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end45, %if.then6, %if.then
  %.sink = phi i16 [ 3072, %if.then6 ], [ %52, %if.end45 ], [ 3072, %if.then ]
  %size9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %53 = ptrtoint ptr %size9 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %.sink, ptr %size9, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %entry.if.end49_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_enh_power_mode(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %resp, ptr noundef writeonly %pm_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %params, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %params3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %params3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %params3, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %result = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %result, align 1
  %conv = zext i16 %9 to i32
  %conv5 = zext i16 %4 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.mwifiex_ret_enh_power_mode, i32 noundef %conv, i32 noundef %conv5) #8
  %10 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %3, label %entry.if.end66_crit_edge [
    i16 -256, label %if.then
    i16 -512, label %if.then22
    i16 0, label %if.then44
  ]

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then:                                          ; preds = %entry
  %conv8 = zext i16 %7 to i32
  %and = and i32 %conv8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.64) #8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %is_deep_sleep = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 98
  %13 = ptrtoint ptr %is_deep_sleep to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_deep_sleep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %and12 = and i32 %conv8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end66_crit_edge, label %if.then14

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then14:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.65) #8
  %sleep_period = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 88
  %14 = ptrtoint ptr %sleep_period to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sleep_period, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool15.not = icmp eq i16 %15, 0
  br i1 %tobool15.not, label %if.then14.if.end66_crit_edge, label %if.then16

if.then14.if.end66_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.66) #8
  br label %if.end66

if.then22:                                        ; preds = %entry
  %conv23 = zext i16 %7 to i32
  %and24 = and i32 %conv23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then22.if.end29_crit_edge, label %if.then26

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %is_deep_sleep28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %17, i32 0, i32 98
  %18 = ptrtoint ptr %is_deep_sleep28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_deep_sleep28, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.67) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then22.if.end29_crit_edge
  %and31 = and i32 %conv23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end66_crit_edge, label %if.then33

if.end29.if.end66_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then33:                                        ; preds = %if.end29
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.68) #8
  %sleep_period34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 88
  %19 = ptrtoint ptr %sleep_period34 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sleep_period34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool36.not = icmp eq i16 %20, 0
  br i1 %tobool36.not, label %if.then33.if.end66_crit_edge, label %if.then37

if.then33.if.end66_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %delay_null_pkt = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 99
  %21 = ptrtoint ptr %delay_null_pkt to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %delay_null_pkt, align 1
  %tx_lock_flag = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 86
  %22 = ptrtoint ptr %tx_lock_flag to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %tx_lock_flag, align 4
  %pps_uapsd_mode = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 104
  %23 = ptrtoint ptr %pps_uapsd_mode to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %pps_uapsd_mode, align 2
  br label %if.end66

if.then44:                                        ; preds = %entry
  %conv45 = zext i16 %7 to i32
  %and46 = and i32 %conv45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %ps_mode51 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 89
  br i1 %tobool47.not, label %if.end52, label %if.end52.thread

if.end52:                                         ; preds = %if.then44
  %24 = ptrtoint ptr %ps_mode51 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %ps_mode51, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.69, i32 noundef %conv45) #8
  %tobool54.not = icmp eq ptr %pm_cfg, null
  br i1 %tobool54.not, label %if.end52.if.end66_crit_edge, label %if.else60

if.end52.if.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end52.thread:                                  ; preds = %if.then44
  %25 = ptrtoint ptr %ps_mode51 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %ps_mode51, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.69, i32 noundef %conv45) #8
  %tobool54.not95 = icmp eq ptr %pm_cfg, null
  br i1 %tobool54.not95, label %if.end52.thread.if.end66_crit_edge, label %if.then59

if.end52.thread.if.end66_crit_edge:               ; preds = %if.end52.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then59:                                        ; preds = %if.end52.thread
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %pm_cfg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %pm_cfg, align 4
  br label %if.end66

if.else60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %pm_cfg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %pm_cfg, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else60, %if.then59, %if.end52.thread.if.end66_crit_edge, %if.end52.if.end66_crit_edge, %if.then37, %if.then33.if.end66_crit_edge, %if.end29.if.end66_crit_edge, %if.then16, %if.then14.if.end66_crit_edge, %if.end.if.end66_crit_edge, %entry.if.end66_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_get_hw_spec(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %cmd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 768, ptr %cmd, align 1
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 18176, ptr %size, align 1
  %permanent_addr = getelementptr inbounds %struct.host_cmd_ds_command, ptr %cmd, i32 0, i32 4, i32 0, i32 3, i32 1
  %curr_addr = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %permanent_addr, ptr %curr_addr, i32 6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_get_hw_spec(ptr nocapture noundef %priv, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_cap_info = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 2
  %2 = ptrtoint ptr %fw_cap_info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %fw_cap_info, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %fw_cap_info2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %fw_cap_info2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fw_cap_info2, align 4
  %and = and i32 %4, 12032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else52.thread, label %if.end

if.else52.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 82
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %6, align 4
  %config_bands288 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 84
  %8 = ptrtoint ptr %config_bands288 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %config_bands288, align 2
  br label %if.then57

if.end:                                           ; preds = %entry
  %shr = lshr exact i32 %and, 8
  %conv = trunc i32 %shr to i8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 82
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %9, align 4
  %config_bands = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 84
  %11 = ptrtoint ptr %config_bands to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %config_bands, align 2
  %12 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  %13 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool39.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.else35, label %if.then13

if.then13:                                        ; preds = %if.end
  br i1 %tobool39.not, label %if.then13.if.end26_crit_edge, label %if.then18

if.then13.if.end26_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = or i8 %conv, 16
  %15 = ptrtoint ptr %config_bands to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %config_bands, align 2
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %9, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.then13.if.end26_crit_edge
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %9, align 4
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool30.not = icmp eq i8 %19, 0
  br i1 %tobool30.not, label %if.end26.if.end34_crit_edge, label %if.then31

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %adhoc_11n_enabled = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 116
  %20 = ptrtoint ptr %adhoc_11n_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %adhoc_11n_enabled, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end26.if.end34_crit_edge
  %.sink = phi i8 [ 20, %if.then31 ], [ 4, %if.end26.if.end34_crit_edge ]
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 83
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %21, align 1
  %adhoc_channel = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 56
  %23 = ptrtoint ptr %adhoc_channel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 36, ptr %adhoc_channel, align 8
  br label %if.end63

if.else35:                                        ; preds = %if.end
  br i1 %tobool39.not, label %if.else44, label %if.then40

if.then40:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  %adhoc_start_band41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 83
  %24 = ptrtoint ptr %adhoc_start_band41 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 11, ptr %adhoc_start_band41, align 1
  %adhoc_channel42 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 56
  %25 = ptrtoint ptr %adhoc_channel42 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %adhoc_channel42, align 8
  %adhoc_11n_enabled43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 116
  %26 = ptrtoint ptr %adhoc_11n_enabled43 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %adhoc_11n_enabled43, align 2
  br label %if.end63

if.else44:                                        ; preds = %if.else35
  %27 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool48.not = icmp eq i32 %27, 0
  br i1 %tobool48.not, label %if.else52, label %if.then49

if.then49:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  %adhoc_start_band50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 83
  %28 = ptrtoint ptr %adhoc_start_band50 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %adhoc_start_band50, align 1
  %adhoc_channel51 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 56
  %29 = ptrtoint ptr %adhoc_channel51 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 6, ptr %adhoc_channel51, align 8
  br label %if.end63

if.else52:                                        ; preds = %if.else44
  %30 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool56.not = icmp eq i32 %30, 0
  br i1 %tobool56.not, label %if.else52.if.end63_crit_edge, label %if.else52.if.then57_crit_edge

if.else52.if.then57_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.else52.if.end63_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then57:                                        ; preds = %if.else52.if.then57_crit_edge, %if.else52.thread
  %adhoc_start_band58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 83
  %31 = ptrtoint ptr %adhoc_start_band58 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %adhoc_start_band58, align 1
  %adhoc_channel59 = getelementptr inbounds %struct.mwifiex_private, ptr %priv, i32 0, i32 56
  %32 = ptrtoint ptr %adhoc_channel59 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 6, ptr %adhoc_channel59, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.else52.if.end63_crit_edge, %if.then49, %if.then40, %if.end34
  %fw_release_number = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 6
  %33 = ptrtoint ptr %fw_release_number to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %fw_release_number, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %fw_release_number64 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %fw_release_number64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %fw_release_number64, align 4
  %shr66 = lshr i32 %35, 16
  %conv68 = trunc i32 %shr66 to i8
  %fw_api_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 138
  %37 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv68, ptr %fw_api_ver, align 2
  %number_of_antenna = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %number_of_antenna to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %number_of_antenna, align 1
  %40 = lshr i16 %39, 8
  %41 = and i16 %40, 15
  %number_of_antenna72 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 46
  %42 = ptrtoint ptr %number_of_antenna72 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %number_of_antenna72, align 4
  %dot_11ac_dev_cap = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 23
  %43 = ptrtoint ptr %dot_11ac_dev_cap to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %dot_11ac_dev_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool73.not = icmp eq i32 %44, 0
  %is_hw_11ac_capable82 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 128
  br i1 %tobool73.not, label %if.else81, label %if.then74

if.then74:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %is_hw_11ac_capable82 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %is_hw_11ac_capable82, align 4
  %46 = ptrtoint ptr %dot_11ac_dev_cap to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %dot_11ac_dev_cap, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %hw_dot_11ac_dev_cap = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 129
  %49 = ptrtoint ptr %hw_dot_11ac_dev_cap to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %hw_dot_11ac_dev_cap, align 4
  %and77 = and i32 %48, -2033665
  %usr_dot_11ac_dev_cap_bg = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 131
  %50 = ptrtoint ptr %usr_dot_11ac_dev_cap_bg to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and77, ptr %usr_dot_11ac_dev_cap_bg, align 4
  %usr_dot_11ac_dev_cap_a = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 132
  %51 = ptrtoint ptr %usr_dot_11ac_dev_cap_a to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and77, ptr %usr_dot_11ac_dev_cap_a, align 4
  %dot_11ac_mcs_support = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 27
  %52 = ptrtoint ptr %dot_11ac_mcs_support to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %dot_11ac_mcs_support, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %hw_dot_11ac_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 130
  %55 = ptrtoint ptr %hw_dot_11ac_mcs_support to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %hw_dot_11ac_mcs_support, align 4
  %usr_dot_11ac_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 133
  %56 = ptrtoint ptr %usr_dot_11ac_mcs_support to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %usr_dot_11ac_mcs_support, align 4
  br label %if.end83

if.else81:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %is_hw_11ac_capable82 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %is_hw_11ac_capable82, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then74
  %size = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 1
  %58 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %size, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %sub = add i16 %60, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %sub)
  %cmp = icmp ugt i16 %sub, 63
  br i1 %cmp, label %if.then88, label %if.end83.if.end136_crit_edge

if.end83.if.end136_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then88:                                        ; preds = %if.end83
  %conv86 = zext i16 %sub to i32
  %sub90 = add nsw i32 %conv86, -63
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub90)
  %cmp91283 = icmp ugt i32 %sub90, 4
  br i1 %cmp91283, label %while.body.lr.ph, label %if.then88.if.end136_crit_edge

if.then88.if.end136_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

while.body.lr.ph:                                 ; preds = %if.then88
  %tlvs = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 31
  %max_p2p_conn120 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 141
  %max_sta_conn121 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 142
  %key_api_major_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 139
  %key_api_minor_ver = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 140
  br label %while.body

while.body:                                       ; preds = %sw.epilog129.while.body_crit_edge, %while.body.lr.ph
  %parsed_len.0285 = phi i32 [ 0, %while.body.lr.ph ], [ %add131, %sw.epilog129.while.body_crit_edge ]
  %left_len.0284 = phi i32 [ %sub90, %while.body.lr.ph ], [ %sub135, %sw.epilog129.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %tlvs, i32 %parsed_len.0285
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %add.ptr, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %64 = zext i16 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %63, label %sw.default126 [
    i16 455, label %sw.bb
    i16 535, label %sw.bb119
  ]

sw.bb:                                            ; preds = %while.body
  %api_id94 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 1
  %65 = ptrtoint ptr %api_id94 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %api_id94, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %68 = zext i16 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %67, label %sw.default [
    i16 1, label %sw.bb96
    i16 2, label %sw.bb101
    i16 3, label %sw.bb108
    i16 4, label %sw.bb113
  ]

sw.bb96:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %major_ver = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 2
  %69 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %major_ver, align 1
  %71 = ptrtoint ptr %key_api_major_ver to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %key_api_major_ver, align 1
  %minor_ver = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 3
  %72 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %minor_ver, align 1
  %74 = ptrtoint ptr %key_api_minor_ver to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %key_api_minor_ver, align 4
  %conv98 = zext i8 %70 to i32
  %conv100 = zext i8 %73 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.70, i32 noundef %conv98, i32 noundef %conv100) #8
  br label %sw.epilog129

sw.bb101:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %major_ver102 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 2
  %75 = ptrtoint ptr %major_ver102 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %major_ver102, align 1
  %77 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %fw_api_ver, align 2
  %conv105 = zext i8 %76 to i32
  %minor_ver106 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 3
  %78 = ptrtoint ptr %minor_ver106 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %minor_ver106, align 1
  %conv107 = zext i8 %79 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.71, i32 noundef %conv105, i32 noundef %conv107) #8
  br label %sw.epilog129

sw.bb108:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %major_ver109 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 2
  %80 = ptrtoint ptr %major_ver109 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %major_ver109, align 1
  %conv110 = zext i8 %81 to i32
  %minor_ver111 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 3
  %82 = ptrtoint ptr %minor_ver111 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %minor_ver111, align 1
  %conv112 = zext i8 %83 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.72, i32 noundef %conv110, i32 noundef %conv112) #8
  br label %sw.epilog129

sw.bb113:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %major_ver114 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 2
  %84 = ptrtoint ptr %major_ver114 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %major_ver114, align 1
  %conv115 = zext i8 %85 to i32
  %minor_ver116 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %add.ptr, i32 0, i32 3
  %86 = ptrtoint ptr %minor_ver116 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %minor_ver116, align 1
  %conv117 = zext i8 %87 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.73, i32 noundef %conv115, i32 noundef %conv117) #8
  br label %sw.epilog129

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv95 = zext i16 %67 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %conv95) #8
  br label %sw.epilog129

sw.bb119:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %max_p2p_conn = getelementptr inbounds %struct.hw_spec_max_conn, ptr %add.ptr, i32 0, i32 1
  %88 = ptrtoint ptr %max_p2p_conn to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %max_p2p_conn, align 1
  %90 = ptrtoint ptr %max_p2p_conn120 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %max_p2p_conn120, align 1
  %max_sta_conn = getelementptr inbounds %struct.hw_spec_max_conn, ptr %add.ptr, i32 0, i32 2
  %91 = ptrtoint ptr %max_sta_conn to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %max_sta_conn, align 1
  %93 = ptrtoint ptr %max_sta_conn121 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %max_sta_conn121, align 2
  %conv123 = zext i8 %89 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.75, i32 noundef %conv123) #8
  %94 = ptrtoint ptr %max_sta_conn121 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %max_sta_conn121, align 2
  %conv125 = zext i8 %95 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.76, i32 noundef %conv125) #8
  br label %sw.epilog129

sw.default126:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv93 = zext i16 %63 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef %conv93) #8
  br label %sw.epilog129

sw.epilog129:                                     ; preds = %sw.default126, %sw.bb119, %sw.default, %sw.bb113, %sw.bb108, %sw.bb101, %sw.bb96
  %len = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %add.ptr, i32 0, i32 1
  %96 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %len, align 1
  %98 = tail call i16 @llvm.bswap.i16(i16 %97)
  %conv130 = zext i16 %98 to i32
  %add = add nuw nsw i32 %conv130, 4
  %add131 = add i32 %add, %parsed_len.0285
  %sub135 = sub i32 %left_len.0284, %add
  %cmp91 = icmp ugt i32 %sub135, 4
  br i1 %cmp91, label %sw.epilog129.while.body_crit_edge, label %sw.epilog129.if.end136_crit_edge

sw.epilog129.if.end136_crit_edge:                 ; preds = %sw.epilog129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

sw.epilog129.while.body_crit_edge:                ; preds = %sw.epilog129
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end136:                                        ; preds = %sw.epilog129.if.end136_crit_edge, %if.then88.if.end136_crit_edge, %if.end83.if.end136_crit_edge
  %99 = ptrtoint ptr %fw_release_number64 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fw_release_number64, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.78, i32 noundef %100) #8
  %permanent_addr = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.79, ptr noundef %permanent_addr) #8
  %101 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %params, align 1
  %103 = tail call i16 @llvm.bswap.i16(i16 %102)
  %conv138 = zext i16 %103 to i32
  %version = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 1
  %104 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %version, align 1
  %106 = tail call i16 @llvm.bswap.i16(i16 %105)
  %conv139 = zext i16 %106 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 1073741824, ptr noundef nonnull @.str.80, i32 noundef %conv138, i32 noundef %conv139) #8
  %107 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv, align 8
  %perm_addr = getelementptr inbounds %struct.mwifiex_adapter, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %permanent_addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %permanent_addr, align 4
  %111 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %perm_addr, align 4
  %add.ptr.i = getelementptr %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 3
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mwifiex_adapter, ptr %108, i32 0, i32 11, i32 4
  %114 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %add.ptr1.i, align 2
  %region_code = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 0, i32 3, i32 4
  %115 = ptrtoint ptr %region_code to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %region_code, align 1
  %117 = tail call i16 @llvm.bswap.i16(i16 %116)
  %region_code144 = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 74
  %118 = ptrtoint ptr %region_code144 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %region_code144, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @region_code_index to i32))
  %119 = load i16, ptr @region_code_index, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %119)
  %cmp150 = icmp eq i16 %117, %119
  br i1 %cmp150, label %if.end136.if.end158_crit_edge, label %for.cond

if.end136.if.end158_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond:                                         ; preds = %if.end136
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 1) to i32))
  %120 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %120)
  %cmp150.1 = icmp eq i16 %117, %120
  br i1 %cmp150.1, label %for.cond.if.end158_crit_edge, label %for.cond.1

for.cond.if.end158_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 2) to i32))
  %121 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %121)
  %cmp150.2 = icmp eq i16 %117, %121
  br i1 %cmp150.2, label %for.cond.1.if.end158_crit_edge, label %for.cond.2

for.cond.1.if.end158_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 3) to i32))
  %122 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 3), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %122)
  %cmp150.3 = icmp eq i16 %117, %122
  br i1 %cmp150.3, label %for.cond.2.if.end158_crit_edge, label %for.cond.3

for.cond.2.if.end158_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 4) to i32))
  %123 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 4), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %123)
  %cmp150.4 = icmp eq i16 %117, %123
  br i1 %cmp150.4, label %for.cond.3.if.end158_crit_edge, label %for.cond.4

for.cond.3.if.end158_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 5) to i32))
  %124 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 5), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %124)
  %cmp150.5 = icmp eq i16 %117, %124
  br i1 %cmp150.5, label %for.cond.4.if.end158_crit_edge, label %for.cond.5

for.cond.4.if.end158_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 6) to i32))
  %125 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 6), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %125)
  %cmp150.6 = icmp eq i16 %117, %125
  br i1 %cmp150.6, label %for.cond.5.if.end158_crit_edge, label %for.cond.6

for.cond.5.if.end158_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond.6:                                       ; preds = %for.cond.5
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 7) to i32))
  %126 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 7), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %126)
  %cmp150.7 = icmp eq i16 %117, %126
  br i1 %cmp150.7, label %for.cond.6.if.end158_crit_edge, label %for.cond.7

for.cond.6.if.end158_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond.7:                                       ; preds = %for.cond.6
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 8) to i32))
  %127 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 8), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %127)
  %cmp150.8 = icmp eq i16 %117, %127
  br i1 %cmp150.8, label %for.cond.7.if.end158_crit_edge, label %for.cond.8

for.cond.7.if.end158_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %region_code144 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %region_code144, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %1, i32 noundef 536870912, ptr noundef nonnull @.str.81) #8
  br label %if.end158

if.end158:                                        ; preds = %for.cond.8, %for.cond.7.if.end158_crit_edge, %for.cond.6.if.end158_crit_edge, %for.cond.5.if.end158_crit_edge, %for.cond.4.if.end158_crit_edge, %for.cond.3.if.end158_crit_edge, %for.cond.2.if.end158_crit_edge, %for.cond.1.if.end158_crit_edge, %for.cond.if.end158_crit_edge, %if.end136.if.end158_crit_edge
  %dot_11n_dev_cap = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 6
  %129 = ptrtoint ptr %dot_11n_dev_cap to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %dot_11n_dev_cap, align 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %hw_dot_11n_dev_cap = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 113
  %132 = ptrtoint ptr %hw_dot_11n_dev_cap to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %hw_dot_11n_dev_cap, align 4
  %dev_mcs_support = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 10
  %133 = ptrtoint ptr %dev_mcs_support to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dev_mcs_support, align 1
  %hw_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 114
  %135 = ptrtoint ptr %hw_dev_mcs_support to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %hw_dev_mcs_support, align 4
  %user_dev_mcs_support = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 115
  %136 = ptrtoint ptr %user_dev_mcs_support to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %134, ptr %user_dev_mcs_support, align 1
  %update_mp_end_port = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 18, i32 13
  %137 = ptrtoint ptr %update_mp_end_port to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %update_mp_end_port, align 4
  %tobool160.not = icmp eq ptr %138, null
  br i1 %tobool160.not, label %if.end158.if.end164_crit_edge, label %if.then161

if.end158.if.end164_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %mp_end_port = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4, i32 1, i32 11
  %139 = ptrtoint ptr %mp_end_port to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %mp_end_port, align 1
  %141 = tail call i16 @llvm.bswap.i16(i16 %140)
  tail call void %138(ptr noundef %1, i16 noundef zeroext %141) #8
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %if.end158.if.end164_crit_edge
  %142 = ptrtoint ptr %fw_api_ver to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %fw_api_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %143)
  %cmp167 = icmp eq i8 %143, 15
  br i1 %cmp167, label %if.then169, label %if.end164.if.end170_crit_edge

if.end164.if.end170_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then169:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  %scan_chan_gap_enabled = getelementptr inbounds %struct.mwifiex_adapter, ptr %1, i32 0, i32 145
  %144 = ptrtoint ptr %scan_chan_gap_enabled to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %scan_chan_gap_enabled, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.end164.if.end170_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_ret_wakeup_reason(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %resp, ptr nocapture noundef writeonly %wakeup_reason) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.host_cmd_ds_command, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %params, align 1
  %2 = ptrtoint ptr %wakeup_reason to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %wakeup_reason, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !102, !103, !105, !107, !109, !111, !113, !114, !116, !118, !119, !121, !123, !125, !127, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 142, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 418, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 443, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 453, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 468, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 529, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 533, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 567, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mwifiex_send_cmd._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @mwifiex_send_cmd._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 572, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 579, i32 3}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 585, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 591, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 598, i32 4}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 607, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mwifiex_send_cmd.__UNIQUE_ID_ddebug488, !32, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 621, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 630, i32 3}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 667, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 705, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 739, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 764, i32 3}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 784, i32 3}
!49 = !{ptr @__func__.mwifiex_exec_next_cmd, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 832, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 843, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 856, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 884, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 888, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 892, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 916, i32 4}
!64 = !{ptr @__func__.mwifiex_process_cmdresp, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 952, i32 3}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 962, i32 3}
!69 = !{ptr @__func__.mwifiex_cmd_timeout_func, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 967, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 970, i32 3}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 974, i32 3}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 978, i32 3}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 982, i32 3}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 985, i32 3}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 989, i32 3}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 994, i32 3}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 997, i32 3}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1002, i32 3}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1005, i32 3}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1010, i32 3}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1014, i32 3}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1139, i32 3}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1161, i32 4}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1167, i32 4}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1171, i32 3}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1200, i32 3}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1227, i32 2}
!113 = !{ptr @__func__.mwifiex_process_hs_config, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__ksymtab_mwifiex_process_hs_config, !115, !"__ksymtab_mwifiex_process_hs_config", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1247, i32 1}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1266, i32 3}
!118 = !{ptr @__func__.mwifiex_process_sleep_confirm_resp, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1287, i32 3}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1294, i32 3}
!123 = !{ptr @__ksymtab_mwifiex_process_sleep_confirm_resp, !124, !"__ksymtab_mwifiex_process_sleep_confirm_resp", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1310, i32 1}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1361, i32 4}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1392, i32 4}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1420, i32 2}
!131 = !{ptr @__func__.mwifiex_ret_enh_power_mode, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1425, i32 4}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1430, i32 4}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1433, i32 5}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1439, i32 4}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1443, i32 4}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1457, i32 3}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1597, i32 6}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1605, i32 6}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1611, i32 6}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1617, i32 6}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1623, i32 6}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1633, i32 5}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1636, i32 5}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1641, i32 5}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1653, i32 2}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1656, i32 2}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1659, i32 2}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 1675, i32 3}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 67, i32 3}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 161, i32 2}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 191, i32 3}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 207, i32 3}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 241, i32 2}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 246, i32 2}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 267, i32 3}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 335, i32 2}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 343, i32 4}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/marvell/mwifiex/cmdevt.c", i32 367, i32 3}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i64 2148610559, i64 2148610585, i64 2148610614, i64 2148610648, i64 2148610679, i64 2148610702}
!198 = !{i8 0, i8 2}
!199 = !{i64 2148432692, i64 2148432697, i64 2148432710, i64 2148432754, i64 2148432788, i64 2148432809}
!200 = !{i64 2148608094, i64 2148608120, i64 2148608149, i64 2148608183, i64 2148608214, i64 2148608237}
