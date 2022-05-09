; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/event.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cfg80211_update_owe_info = type { [6 x i8], i16, ptr, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qlink_event = type { %struct.qlink_msg_header, i16, i8, i8 }
%struct.qlink_msg_header = type { i16, i16 }
%struct.qtnf_wmac = type { i8, i8, [6 x i8], ptr, %struct.qtnf_mac_info, [8 x %struct.qtnf_vif], ptr, %struct.mutex, %struct.delayed_work, ptr, ptr }
%struct.qtnf_mac_info = type <{ i8, i8, i8, i8, i16, [2 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [2 x i8], ptr, i32, ptr, ptr, i8, [3 x i8], ptr }>
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.qtnf_vif = type { %struct.wireless_dev, [6 x i8], [6 x i8], i8, i8, i8, i16, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.qtnf_sta_list, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.146, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.146 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.147 }
%union.anon.147 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.qtnf_sta_list = type { %struct.list_head, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qlink_event_scan_result = type { %struct.qlink_event, i64, i16, i16, i16, i8, i8, [32 x i8], [6 x i8], [2 x i8], [0 x i8] }
%struct.qlink_tlv_hdr = type { i16, i16, [0 x i8] }
%struct.qlink_tlv_ie_set = type { %struct.qlink_tlv_hdr, i8, i8, [2 x i8], [0 x i8] }
%struct.qlink_event_scan_complete = type { %struct.qlink_event, i32 }
%struct.qlink_event_radar = type { %struct.qlink_event, %struct.qlink_chandef, i8, [3 x i8] }
%struct.qlink_chandef = type { %struct.qlink_channel, i16, i16, i8, [3 x i8] }
%struct.qlink_channel = type { i16, i16, i32, i8, i8, i8, i8, i32, i8, i8, [2 x i8] }
%struct.qlink_event_mic_failure = type { %struct.qlink_event, [6 x i8], i8, i8 }
%struct.qlink_event_update_owe = type { %struct.qlink_event, [6 x i8], [2 x i8], [0 x i8] }
%struct.qlink_event_sta_assoc = type { %struct.qlink_event, [6 x i8], i16, [0 x i8] }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.qlink_event_sta_deauth = type { %struct.qlink_event, [6 x i8], i16 }
%struct.qlink_event_rxmgmt = type { %struct.qlink_event, i32, i32, i8, [3 x i8], [0 x i8] }
%struct.ieee80211_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.qlink_event_bss_join = type { %struct.qlink_event, %struct.qlink_chandef, [6 x i8], i16, [0 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.qlink_event_bss_leave = type { %struct.qlink_event, i16, [2 x i8] }
%struct.qlink_event_freq_change = type { %struct.qlink_event, %struct.qlink_chandef }
%struct.cfg80211_external_auth_params = type { i32, [6 x i8], %struct.cfg80211_ssid, i32, i16, ptr }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.qlink_event_external_auth = type { %struct.qlink_event, i32, [32 x i8], [6 x i8], i8, i8 }

@qtnf_event_process_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013qtnfmac: %s: invalid event buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qtnf_event_process_skb\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/quantenna/qtnfmac/event.c\00", [49 x i8] zeroinitializer }, align 32
@qtnf_event_process_skb._entry_ptr = internal global ptr @qtnf_event_process_skb._entry, section ".printk_index", align 4
@qtnf_event_process_skb.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qtnfmac\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"new event id:%x len:%u mac:%u vif:%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"qtnfmac: %s: new event id:%x len:%u mac:%u vif:%u\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_event_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013qtnfmac: %s: invalid vif(%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qtnf_event_parse\00", [47 x i8] zeroinitializer }, align 32
@qtnf_event_parse._entry_ptr = internal global ptr @qtnf_event_parse._entry, section ".printk_index", align 4
@qtnf_event_parse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014qtnfmac: %s: unknown event type: %x\0A\00", [57 x i8] zeroinitializer }, align 32
@qtnf_event_parse._entry_ptr.10 = internal global ptr @qtnf_event_parse._entry.8, section ".printk_index", align 4
@qtnf_event_handle_sta_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013qtnfmac: %s: VIF%u.%u: payload is too short (%u < %zu)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qtnf_event_handle_sta_assoc\00", [36 x i8] zeroinitializer }, align 32
@qtnf_event_handle_sta_assoc._entry_ptr = internal global ptr @qtnf_event_handle_sta_assoc._entry, section ".printk_index", align 4
@qtnf_event_handle_sta_assoc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013qtnfmac: %s: VIF%u.%u: STA_ASSOC event when not in AP mode\0A\00", [34 x i8] zeroinitializer }, align 32
@qtnf_event_handle_sta_assoc._entry_ptr.15 = internal global ptr @qtnf_event_handle_sta_assoc._entry.13, section ".printk_index", align 4
@qtnf_event_handle_sta_assoc.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VIF%u.%u: MAC:%pM FC:%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qtnfmac: %s: VIF%u.%u: MAC:%pM FC:%x\0A\00", [58 x i8] zeroinitializer }, align 32
@qtnf_event_handle_sta_assoc._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013qtnfmac: %s: Malformed TLV buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@qtnf_event_handle_sta_assoc._entry_ptr.20 = internal global ptr @qtnf_event_handle_sta_assoc._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qtnf_event_handle_sta_deauth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.21, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qtnf_event_handle_sta_deauth\00", [35 x i8] zeroinitializer }, align 32
@qtnf_event_handle_sta_deauth._entry_ptr = internal global ptr @qtnf_event_handle_sta_deauth._entry, section ".printk_index", align 4
@qtnf_event_handle_sta_deauth._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013qtnfmac: %s: VIF%u.%u: STA_DEAUTH event when not in AP mode\0A\00", [33 x i8] zeroinitializer }, align 32
@qtnf_event_handle_sta_deauth._entry_ptr.24 = internal global ptr @qtnf_event_handle_sta_deauth._entry.22, section ".printk_index", align 4
@qtnf_event_handle_sta_deauth.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VIF%u.%u: MAC:%pM reason:%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"qtnfmac: %s: VIF%u.%u: MAC:%pM reason:%x\0A\00", [54 x i8] zeroinitializer }, align 32
@qtnf_event_handle_mgmt_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.27, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qtnf_event_handle_mgmt_received\00", [32 x i8] zeroinitializer }, align 32
@qtnf_event_handle_mgmt_received._entry_ptr = internal global ptr @qtnf_event_handle_mgmt_received._entry, section ".printk_index", align 4
@qtnf_event_handle_mgmt_received.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s LEN:%u FC:%.4X SA:%pM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"qtnfmac: %s: %s LEN:%u FC:%.4X SA:%pM\0A\00", [57 x i8] zeroinitializer }, align 32
@qtnf_event_handle_scan_results._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qtnfmac: %s: VIF%u.%u: payload is too short\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qtnf_event_handle_scan_results\00", [33 x i8] zeroinitializer }, align 32
@qtnf_event_handle_scan_results._entry_ptr = internal global ptr @qtnf_event_handle_scan_results._entry, section ".printk_index", align 4
@qtnf_event_handle_scan_results._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qtnfmac: %s: VIF%u.%u: channel at %u MHz not found\0A\00", [42 x i8] zeroinitializer }, align 32
@qtnf_event_handle_scan_results._entry_ptr.34 = internal global ptr @qtnf_event_handle_scan_results._entry.32, section ".printk_index", align 4
@qtnf_event_handle_scan_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qtnfmac: %s: MAC%u: payload is too short\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qtnf_event_handle_scan_complete\00", [32 x i8] zeroinitializer }, align 32
@qtnf_event_handle_scan_complete._entry_ptr = internal global ptr @qtnf_event_handle_scan_complete._entry, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.37, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qtnf_event_handle_bss_join\00", [37 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr = internal global ptr @qtnf_event_handle_bss_join._entry, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013qtnfmac: %s: VIF%u.%u: BSS_JOIN event when not in STA mode\0A\00", [34 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.40 = internal global ptr @qtnf_event_handle_bss_join._entry.38, section ".printk_index", align 4
@qtnf_event_handle_bss_join.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.2, ptr @.str.41, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VIF%u.%u: BSSID:%pM chan:%u status:%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"qtnfmac: %s: VIF%u.%u: BSSID:%pM chan:%u status:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014qtnfmac: %s: MAC%u.%u: bad channel freq=%u cf1=%u cf2=%u bw=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.45 = internal global ptr @qtnf_event_handle_bss_join._entry.43, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.37, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014qtnfmac: %s: VIF%u.%u: add missing BSS:%pM chan:%u\0A\00", [42 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.48 = internal global ptr @qtnf_event_handle_bss_join._entry.46, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.37, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014qtnfmac: %s: VIF%u.%u: SSID unknown for BSS:%pM\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.51 = internal global ptr @qtnf_event_handle_bss_join._entry.49, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.37, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014qtnfmac: %s: VIF%u.%u: IE alloc failed for BSS:%pM\0A\00", [42 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.54 = internal global ptr @qtnf_event_handle_bss_join._entry.52, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.37, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014qtnfmac: %s: VIF%u.%u: can't connect to unknown BSS: %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.57 = internal global ptr @qtnf_event_handle_bss_join._entry.55, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.37, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014qtnfmac: %s: invalid IE_SET TLV\0A\00", [61 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.60 = internal global ptr @qtnf_event_handle_bss_join._entry.58, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.37, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014qtnfmac: %s: unexpected IE type: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.63 = internal global ptr @qtnf_event_handle_bss_join._entry.61, section ".printk_index", align 4
@qtnf_event_handle_bss_join._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.37, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014qtnfmac: %s: Malformed TLV buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_join._entry_ptr.66 = internal global ptr @qtnf_event_handle_bss_join._entry.64, section ".printk_index", align 4
@qtnf_event_handle_bss_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.67, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qtnf_event_handle_bss_leave\00", [36 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_leave._entry_ptr = internal global ptr @qtnf_event_handle_bss_leave._entry, section ".printk_index", align 4
@qtnf_event_handle_bss_leave._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013qtnfmac: %s: VIF%u.%u: BSS_LEAVE event when not in STA mode\0A\00", [33 x i8] zeroinitializer }, align 32
@qtnf_event_handle_bss_leave._entry_ptr.70 = internal global ptr @qtnf_event_handle_bss_leave._entry.68, section ".printk_index", align 4
@qtnf_event_handle_bss_leave.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.67, ptr @.str.2, ptr @.str.71, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VIF%u.%u: disconnected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qtnfmac: %s: VIF%u.%u: disconnected\0A\00", [59 x i8] zeroinitializer }, align 32
@qtnf_event_handle_freq_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.73, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qtnf_event_handle_freq_change\00", [34 x i8] zeroinitializer }, align 32
@qtnf_event_handle_freq_change._entry_ptr = internal global ptr @qtnf_event_handle_freq_change._entry, section ".printk_index", align 4
@qtnf_event_handle_freq_change._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013qtnfmac: %s: MAC%u: bad channel freq=%u cf1=%u cf2=%u bw=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@qtnf_event_handle_freq_change._entry_ptr.76 = internal global ptr @qtnf_event_handle_freq_change._entry.74, section ".printk_index", align 4
@qtnf_event_handle_freq_change.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.73, ptr @.str.2, ptr @.str.77, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MAC%d: new channel ieee=%u freq1=%u freq2=%u bw=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"qtnfmac: %s: MAC%d: new channel ieee=%u freq1=%u freq2=%u bw=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@qtnf_event_handle_radar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.79, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qtnf_event_handle_radar\00", [40 x i8] zeroinitializer }, align 32
@qtnf_event_handle_radar._entry_ptr = internal global ptr @qtnf_event_handle_radar._entry, section ".printk_index", align 4
@qtnf_event_handle_radar._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013qtnfmac: %s: MAC%u: bad channel f1=%u f2=%u bw=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@qtnf_event_handle_radar._entry_ptr.82 = internal global ptr @qtnf_event_handle_radar._entry.80, section ".printk_index", align 4
@qtnf_event_handle_radar._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016qtnfmac: %s: %s: radar event=%u f1=%u f2=%u bw=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@qtnf_event_handle_radar._entry_ptr.85 = internal global ptr @qtnf_event_handle_radar._entry.83, section ".printk_index", align 4
@qtnf_event_handle_radar._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014qtnfmac: %s: %s: unhandled radar event %u\0A\00", [51 x i8] zeroinitializer }, align 32
@qtnf_event_handle_radar._entry_ptr.88 = internal global ptr @qtnf_event_handle_radar._entry.86, section ".printk_index", align 4
@qtnf_event_handle_external_auth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.89, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qtnf_event_handle_external_auth\00", [32 x i8] zeroinitializer }, align 32
@qtnf_event_handle_external_auth._entry_ptr = internal global ptr @qtnf_event_handle_external_auth._entry, section ".printk_index", align 4
@qtnf_event_handle_external_auth.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: external SAE processing: bss=%pM action=%u akm=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"qtnfmac: %s: %s: external SAE processing: bss=%pM action=%u akm=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@qtnf_event_handle_external_auth._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.89, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014qtnfmac: %s: failed to offload external auth request\0A\00", [40 x i8] zeroinitializer }, align 32
@qtnf_event_handle_external_auth._entry_ptr.94 = internal global ptr @qtnf_event_handle_external_auth._entry.92, section ".printk_index", align 4
@qtnf_event_handle_mic_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.95, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qtnf_event_handle_mic_failure\00", [34 x i8] zeroinitializer }, align 32
@qtnf_event_handle_mic_failure._entry_ptr = internal global ptr @qtnf_event_handle_mic_failure._entry, section ".printk_index", align 4
@qtnf_event_handle_mic_failure._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013qtnfmac: %s: VIF%u.%u: MIC_FAILURE event when not in STA mode\0A\00", [63 x i8] zeroinitializer }, align 32
@qtnf_event_handle_mic_failure._entry_ptr.98 = internal global ptr @qtnf_event_handle_mic_failure._entry.96, section ".printk_index", align 4
@qtnf_event_handle_mic_failure._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016qtnfmac: %s: %s: MIC error: src=%pM key_index=%u pairwise=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@qtnf_event_handle_mic_failure._entry_ptr.101 = internal global ptr @qtnf_event_handle_mic_failure._entry.99, section ".printk_index", align 4
@qtnf_event_handle_update_owe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.102, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qtnf_event_handle_update_owe\00", [35 x i8] zeroinitializer }, align 32
@qtnf_event_handle_update_owe._entry_ptr = internal global ptr @qtnf_event_handle_update_owe._entry, section ".printk_index", align 4
@qtnf_event_handle_update_owe._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013qtnfmac: %s: VIF%u.%u: UPDATE_OWE event when not in AP mode\0A\00", [33 x i8] zeroinitializer }, align 32
@qtnf_event_handle_update_owe._entry_ptr.105 = internal global ptr @qtnf_event_handle_update_owe._entry.103, section ".printk_index", align 4
@qtnf_event_handle_update_owe._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016qtnfmac: %s: %s: external OWE processing: peer=%pM\0A\00", [42 x i8] zeroinitializer }, align 32
@qtnf_event_handle_update_owe._entry_ptr.108 = internal global ptr @qtnf_event_handle_update_owe._entry.106, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 16, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 762, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 770, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 689, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 747, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 33, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 39, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 51, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 88, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 110, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 117, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 125, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 321, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 329, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 355, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 362, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 425, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 153, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 160, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 165, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 174, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 188, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 193, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 202, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 220, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 240, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 257, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 265, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 288, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 295, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 300, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 445, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 455, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 462, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 495, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 505, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 512, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 547, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 565, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 583, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 589, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 603, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 613, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 621, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 641, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 651, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.406 = private constant [50 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/event.c\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 665, i32 2 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @qtnf_event_handle_bss_join._entry, ptr @qtnf_event_handle_bss_join._entry.38, ptr @qtnf_event_handle_bss_join._entry.43, ptr @qtnf_event_handle_bss_join._entry.46, ptr @qtnf_event_handle_bss_join._entry.49, ptr @qtnf_event_handle_bss_join._entry.52, ptr @qtnf_event_handle_bss_join._entry.55, ptr @qtnf_event_handle_bss_join._entry.58, ptr @qtnf_event_handle_bss_join._entry.61, ptr @qtnf_event_handle_bss_join._entry.64, ptr @qtnf_event_handle_bss_join._entry_ptr, ptr @qtnf_event_handle_bss_join._entry_ptr.40, ptr @qtnf_event_handle_bss_join._entry_ptr.45, ptr @qtnf_event_handle_bss_join._entry_ptr.48, ptr @qtnf_event_handle_bss_join._entry_ptr.51, ptr @qtnf_event_handle_bss_join._entry_ptr.54, ptr @qtnf_event_handle_bss_join._entry_ptr.57, ptr @qtnf_event_handle_bss_join._entry_ptr.60, ptr @qtnf_event_handle_bss_join._entry_ptr.63, ptr @qtnf_event_handle_bss_join._entry_ptr.66, ptr @qtnf_event_handle_bss_leave._entry, ptr @qtnf_event_handle_bss_leave._entry.68, ptr @qtnf_event_handle_bss_leave._entry_ptr, ptr @qtnf_event_handle_bss_leave._entry_ptr.70, ptr @qtnf_event_handle_external_auth._entry, ptr @qtnf_event_handle_external_auth._entry.92, ptr @qtnf_event_handle_external_auth._entry_ptr, ptr @qtnf_event_handle_external_auth._entry_ptr.94, ptr @qtnf_event_handle_freq_change._entry, ptr @qtnf_event_handle_freq_change._entry.74, ptr @qtnf_event_handle_freq_change._entry_ptr, ptr @qtnf_event_handle_freq_change._entry_ptr.76, ptr @qtnf_event_handle_mgmt_received._entry, ptr @qtnf_event_handle_mgmt_received._entry_ptr, ptr @qtnf_event_handle_mic_failure._entry, ptr @qtnf_event_handle_mic_failure._entry.96, ptr @qtnf_event_handle_mic_failure._entry.99, ptr @qtnf_event_handle_mic_failure._entry_ptr, ptr @qtnf_event_handle_mic_failure._entry_ptr.101, ptr @qtnf_event_handle_mic_failure._entry_ptr.98, ptr @qtnf_event_handle_radar._entry, ptr @qtnf_event_handle_radar._entry.80, ptr @qtnf_event_handle_radar._entry.83, ptr @qtnf_event_handle_radar._entry.86, ptr @qtnf_event_handle_radar._entry_ptr, ptr @qtnf_event_handle_radar._entry_ptr.82, ptr @qtnf_event_handle_radar._entry_ptr.85, ptr @qtnf_event_handle_radar._entry_ptr.88, ptr @qtnf_event_handle_scan_complete._entry, ptr @qtnf_event_handle_scan_complete._entry_ptr, ptr @qtnf_event_handle_scan_results._entry, ptr @qtnf_event_handle_scan_results._entry.32, ptr @qtnf_event_handle_scan_results._entry_ptr, ptr @qtnf_event_handle_scan_results._entry_ptr.34, ptr @qtnf_event_handle_sta_assoc._entry, ptr @qtnf_event_handle_sta_assoc._entry.13, ptr @qtnf_event_handle_sta_assoc._entry.18, ptr @qtnf_event_handle_sta_assoc._entry_ptr, ptr @qtnf_event_handle_sta_assoc._entry_ptr.15, ptr @qtnf_event_handle_sta_assoc._entry_ptr.20, ptr @qtnf_event_handle_sta_deauth._entry, ptr @qtnf_event_handle_sta_deauth._entry.22, ptr @qtnf_event_handle_sta_deauth._entry_ptr, ptr @qtnf_event_handle_sta_deauth._entry_ptr.24, ptr @qtnf_event_handle_update_owe._entry, ptr @qtnf_event_handle_update_owe._entry.103, ptr @qtnf_event_handle_update_owe._entry.106, ptr @qtnf_event_handle_update_owe._entry_ptr, ptr @qtnf_event_handle_update_owe._entry_ptr.105, ptr @qtnf_event_handle_update_owe._entry_ptr.108, ptr @qtnf_event_parse._entry, ptr @qtnf_event_parse._entry.8, ptr @qtnf_event_parse._entry_ptr, ptr @qtnf_event_parse._entry_ptr.10, ptr @qtnf_event_process_skb._entry, ptr @qtnf_event_process_skb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.107], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_process_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_parse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_sta_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_sta_assoc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_sta_assoc._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_sta_deauth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_sta_deauth._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_mgmt_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_scan_results._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_scan_results._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_scan_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_join._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_bss_leave._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_freq_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_freq_change._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_radar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_radar._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_radar._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_radar._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_external_auth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_external_auth._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_mic_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_mic_failure._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_mic_failure._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_update_owe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_update_owe._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_event_handle_update_owe._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_event_work_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2868
  %event_queue1 = getelementptr i8, ptr %work, i32 -2728
  %call = tail call ptr @skb_dequeue(ptr noundef %event_queue1) #7
  %tobool.not8 = icmp eq ptr %call, null
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %current_event_skb.09 = phi ptr [ %call3, %while.body.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  tail call fastcc void @qtnf_event_process_skb(ptr noundef %add.ptr, ptr noundef nonnull %current_event_skb.09)
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %current_event_skb.09, i32 noundef 1) #7
  %call3 = tail call ptr @skb_dequeue(ptr noundef %event_queue1) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_event_process_skb(ptr noundef %bus, ptr noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %owe_info.i.i = alloca %struct.cfg80211_update_owe_info, align 4
  %chandef.i.i = alloca %struct.cfg80211_chan_def, align 4
  %data.i.i.i = alloca %struct.cfg80211_inform_bss, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs, !prof !200

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !200

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %macid = getelementptr inbounds %struct.qlink_event, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %macid, align 1
  %call3 = tail call ptr @qtnf_core_get_mac(ptr noundef %bus, i8 noundef zeroext %5) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_event_process_skb.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_event_process_skb, %if.then14)) #7
          to label %do.end22 [label %if.then14], !srcloc !201

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %event_id = getelementptr inbounds %struct.qlink_event, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %event_id to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %event_id, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %len15 = getelementptr inbounds %struct.qlink_msg_header, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %len15 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %len15, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv16 = zext i16 %11 to i32
  %12 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %macid, align 1
  %conv18 = zext i8 %13 to i32
  %vifid = getelementptr inbounds %struct.qlink_event, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vifid, align 1
  %conv19 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_event_process_skb.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv19) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then14, %if.end
  %tobool23.not = icmp eq ptr %call3, null
  br i1 %tobool23.not, label %do.end22.cleanup_crit_edge, label %if.end33, !prof !200

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %do.end22
  tail call void @rtnl_lock() #7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.qlink_msg_header, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %len.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #7
  %vifid2.i = getelementptr inbounds %struct.qlink_event, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %vifid2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vifid2.i, align 1
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp.i = icmp ugt i8 %22, 7
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %conv.i) #10
  br label %qtnf_event_parse.exit

if.end.i:                                         ; preds = %if.end33
  %event_id1.i = getelementptr inbounds %struct.qlink_event, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %event_id1.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %event_id1.i, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #7
  %26 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv.i, i32 8) #7, !srcloc !202
  %27 = trunc i32 %26 to i8
  %conv17.i = and i8 %22, %27
  %idxprom.i = zext i8 %conv17.i to i32
  %arrayidx.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i
  %28 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i16 %25, label %do.end44.i [
    i16 33, label %sw.bb.i
    i16 34, label %sw.bb20.i
    i16 35, label %sw.bb22.i
    i16 36, label %sw.bb24.i
    i16 37, label %sw.bb26.i
    i16 38, label %sw.bb28.i
    i16 39, label %sw.bb30.i
    i16 40, label %sw.bb32.i
    i16 41, label %sw.bb34.i
    i16 48, label %sw.bb36.i
    i16 49, label %sw.bb38.i
    i16 50, label %sw.bb40.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call fastcc i32 @qtnf_event_handle_sta_assoc(ptr noundef nonnull %call3, ptr noundef %arrayidx.i, ptr noundef %17, i16 noundef zeroext %20) #7
  br label %qtnf_event_parse.exit

sw.bb20.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call fastcc i32 @qtnf_event_handle_sta_deauth(ptr noundef nonnull %call3, ptr noundef %arrayidx.i, ptr noundef %17, i16 noundef zeroext %20) #7
  br label %qtnf_event_parse.exit

sw.bb22.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call fastcc i32 @qtnf_event_handle_mgmt_received(ptr noundef %arrayidx.i, ptr noundef %17, i16 noundef zeroext %20) #7
  br label %qtnf_event_parse.exit

sw.bb24.i:                                        ; preds = %if.end.i
  %mac.i.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 8
  %29 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %priv_to_wiphy.exit.i.i, !prof !200

do.body4.i.i.i:                                   ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #7, !srcloc !203
  unreachable

priv_to_wiphy.exit.i.i:                           ; preds = %sw.bb24.i
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 -1408
  %conv.i.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %20)
  %cmp.i.i = icmp ult i16 %20, 64
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %priv_to_wiphy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv3.i.i = zext i8 %32 to i32
  %vifid.i.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 3
  %33 = ptrtoint ptr %vifid.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %vifid.i.i, align 4
  %conv4.i.i = zext i8 %34 to i32
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i) #10
  br label %qtnf_event_parse.exit

if.end.i.i:                                       ; preds = %priv_to_wiphy.exit.i.i
  %freq.i.i = getelementptr inbounds %struct.qlink_event_scan_result, ptr %17, i32 0, i32 2
  %35 = ptrtoint ptr %freq.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %freq.i.i, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #7
  %conv6.i.i = zext i16 %37 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv6.i.i, 1000
  %call.i.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %add.ptr.i.i.i, i32 noundef %mul.i.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end11.i.i, label %if.end21.i.i

do.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mac.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 4
  %conv15.i.i = zext i8 %41 to i32
  %vifid16.i.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 3
  %42 = ptrtoint ptr %vifid16.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vifid16.i.i, align 4
  %conv17.i.i = zext i8 %43 to i32
  %44 = ptrtoint ptr %freq.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %freq.i.i, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #7
  %conv19.i.i = zext i16 %46 to i32
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %conv15.i.i, i32 noundef %conv17.i.i, i32 noundef %conv19.i.i) #10
  br label %qtnf_event_parse.exit

if.end21.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = add nsw i32 %conv.i.i, -64
  %payload.i.i = getelementptr inbounds %struct.qlink_event_scan_result, ptr %17, i32 0, i32 10
  %add.ptr.i.i = getelementptr i8, ptr %payload.i.i, i32 %sub.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %20)
  %cmp25135.i.i = icmp ugt i16 %20, 67
  br i1 %cmp25135.i.i, label %if.end21.i.i.land.rhs.i.i_crit_edge, label %if.end21.i.i.for.end.i.i_crit_edge

if.end21.i.i.for.end.i.i_crit_edge:               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.end21.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end21.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.end21.i.i.land.rhs.i.i_crit_edge
  %sub.ptr.sub141.i.i = phi i32 [ %sub.ptr.sub.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %sub.i.i, %if.end21.i.i.land.rhs.i.i_crit_edge ]
  %ies_len.0140.i.i = phi i32 [ %ies_len.3.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end21.i.i.land.rhs.i.i_crit_edge ]
  %ies.0139.i.i = phi ptr [ %ies.3.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ null, %if.end21.i.i.land.rhs.i.i_crit_edge ]
  %tlv.0137.i.i = phi ptr [ %add.ptr63.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %payload.i.i, %if.end21.i.i.land.rhs.i.i_crit_edge ]
  %frame_type.0136.i.i = phi i32 [ %frame_type.3.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end21.i.i.land.rhs.i.i_crit_edge ]
  %len33.i.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0137.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %len33.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %len33.i.i, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #7
  %conv34.i.i = zext i16 %49 to i32
  %add.i.i = add nuw nsw i32 %conv34.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub141.i.i, i32 %add.i.i)
  %cmp35.not.i.i = icmp ult i32 %sub.ptr.sub141.i.i, %add.i.i
  br i1 %cmp35.not.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge, label %for.body.i.i

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %50 = ptrtoint ptr %tlv.0137.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %tlv.0137.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1283, i16 %51)
  %cmp39.i.i = icmp eq i16 %51, 1283
  br i1 %cmp39.i.i, label %if.then41.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then41.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %49)
  %cmp43.i.i = icmp ult i16 %49, 4
  br i1 %cmp43.i.i, label %if.then41.i.i.qtnf_event_parse.exit_crit_edge, label %cleanup.i.i

if.then41.i.i.qtnf_event_parse.exit_crit_edge:    ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_parse.exit

cleanup.i.i:                                      ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub48.i.i = add nsw i32 %conv34.i.i, -4
  %type49.i.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %tlv.0137.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %type49.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %type49.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %53)
  %switch.selectcmp.i.i = icmp eq i8 %53, 9
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %53)
  %switch.selectcmp123.i.i = icmp eq i8 %53, 7
  %switch.select124.i.i = select i1 %switch.selectcmp123.i.i, i32 1, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48.i.i)
  %tobool52.not.i.i = icmp eq i32 %sub48.i.i, 0
  %ie_data.i.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %tlv.0137.i.i, i32 0, i32 4
  %ies.1.i.i = select i1 %tobool52.not.i.i, ptr %ies.0139.i.i, ptr %ie_data.i.i
  %ies_len.1.i.i = select i1 %tobool52.not.i.i, i32 %ies_len.0140.i.i, i32 %sub48.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %cleanup.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %frame_type.3.i.i = phi i32 [ %switch.select124.i.i, %cleanup.i.i ], [ %frame_type.0136.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %ies.3.i.i = phi ptr [ %ies.1.i.i, %cleanup.i.i ], [ %ies.0139.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %ies_len.3.i.i = phi i32 [ %ies_len.1.i.i, %cleanup.i.i ], [ %ies_len.0140.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %val.i.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0137.i.i, i32 0, i32 2
  %sub61.i.i = add nsw i32 %conv34.i.i, -1
  %or.i.i = or i32 %sub61.i.i, 3
  %add62.i.i = add nsw i32 %or.i.i, 1
  %add.ptr63.i.i = getelementptr i8, ptr %val.i.i, i32 %add62.i.i
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr63.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cmp25.i.i = icmp sgt i32 %sub.ptr.sub.i.i, 3
  br i1 %cmp25.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %land.rhs.i.i.for.end.i.i_crit_edge, %if.end21.i.i.for.end.i.i_crit_edge
  %frame_type.0.lcssa.i.i = phi i32 [ 0, %if.end21.i.i.for.end.i.i_crit_edge ], [ %frame_type.3.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %frame_type.0136.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %tlv.0.lcssa.i.i = phi ptr [ %payload.i.i, %if.end21.i.i.for.end.i.i_crit_edge ], [ %add.ptr63.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %tlv.0137.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %ies.0.lcssa.i.i = phi ptr [ null, %if.end21.i.i.for.end.i.i_crit_edge ], [ %ies.3.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %ies.0139.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %ies_len.0.lcssa.i.i = phi i32 [ 0, %if.end21.i.i.for.end.i.i_crit_edge ], [ %ies_len.3.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %ies_len.0140.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %sub66.i.i = add nsw i32 %conv.i.i, -65
  %or67.i.i = or i32 %sub66.i.i, 3
  %add68.i.i = add nsw i32 %or67.i.i, 1
  %add.ptr69.i.i = getelementptr i8, ptr %payload.i.i, i32 %add68.i.i
  %cmp70.i.i = icmp eq ptr %tlv.0.lcssa.i.i, %add.ptr69.i.i
  br i1 %cmp70.i.i, label %if.end73.i.i, label %for.end.i.i.qtnf_event_parse.exit_crit_edge

for.end.i.i.qtnf_event_parse.exit_crit_edge:      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_parse.exit

if.end73.i.i:                                     ; preds = %for.end.i.i
  %bssid.i.i = getelementptr inbounds %struct.qlink_event_scan_result, ptr %17, i32 0, i32 8
  %tsf.i.i = getelementptr inbounds %struct.qlink_event_scan_result, ptr %17, i32 0, i32 1
  %54 = ptrtoint ptr %tsf.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %tsf.i.i, align 1
  %56 = tail call i64 @llvm.bswap.i64(i64 %55) #7
  %capab.i.i = getelementptr inbounds %struct.qlink_event_scan_result, ptr %17, i32 0, i32 3
  %57 = ptrtoint ptr %capab.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %capab.i.i, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #7
  %bintval.i.i = getelementptr inbounds %struct.qlink_event_scan_result, ptr %17, i32 0, i32 4
  %60 = ptrtoint ptr %bintval.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %bintval.i.i, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #7
  %sig_dbm.i.i = getelementptr inbounds %struct.qlink_event_scan_result, ptr %17, i32 0, i32 5
  %63 = ptrtoint ptr %sig_dbm.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sig_dbm.i.i, align 1
  %conv76.i.i = sext i8 %64 to i32
  %mul.i.i = mul nsw i32 %conv76.i.i, 100
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i.i.i) #7
  %65 = getelementptr inbounds i8, ptr %data.i.i.i, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i.i.i, ptr %data.i.i.i, align 8
  %scan_width.i.i.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %scan_width.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %scan_width.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul.i.i, ptr %65, align 8
  %call.i125.i.i = call ptr @cfg80211_inform_bss_data(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %data.i.i.i, i32 noundef %frame_type.0.lcssa.i.i, ptr noundef %bssid.i.i, i64 noundef %56, i16 noundef zeroext %59, i16 noundef zeroext %62, ptr noundef %ies.0.lcssa.i.i, i32 noundef %ies_len.0.lcssa.i.i, i32 noundef 3264) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i.i.i) #7
  %tobool78.not.i.i = icmp eq ptr %call.i125.i.i, null
  br i1 %tobool78.not.i.i, label %if.end73.i.i.qtnf_event_parse.exit_crit_edge, label %if.end80.i.i

if.end73.i.i.qtnf_event_parse.exit_crit_edge:     ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_parse.exit

if.end80.i.i:                                     ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @cfg80211_put_bss(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %call.i125.i.i) #7
  br label %qtnf_event_parse.exit

sw.bb26.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %20)
  %cmp.i95.i = icmp ult i16 %20, 12
  br i1 %cmp.i95.i, label %do.end.i96.i, label %if.end.i97.i

do.end.i96.i:                                     ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %call3, align 4
  %conv2.i.i = zext i8 %71 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %conv2.i.i) #10
  br label %qtnf_event_parse.exit

if.end.i97.i:                                     ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i.i = getelementptr inbounds %struct.qlink_event_scan_complete, ptr %17, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %flags.i.i, align 1
  %74 = and i32 %73, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.i = icmp ne i32 %74, 0
  tail call void @qtnf_scan_done(ptr noundef nonnull %call3, i1 noundef zeroext %tobool.i.i) #7
  br label %qtnf_event_parse.exit

sw.bb28.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = tail call fastcc i32 @qtnf_event_handle_bss_join(ptr noundef %arrayidx.i, ptr noundef %17, i16 noundef zeroext %20) #7
  br label %qtnf_event_parse.exit

sw.bb30.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call31.i = tail call fastcc i32 @qtnf_event_handle_bss_leave(ptr noundef %arrayidx.i, ptr noundef %17, i16 noundef zeroext %20) #7
  br label %qtnf_event_parse.exit

sw.bb32.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call33.i = tail call fastcc i32 @qtnf_event_handle_freq_change(ptr noundef nonnull %call3, ptr noundef %17, i16 noundef zeroext %20) #7
  br label %qtnf_event_parse.exit

sw.bb34.i:                                        ; preds = %if.end.i
  %mac.i98.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 8
  %75 = ptrtoint ptr %mac.i98.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mac.i98.i, align 4
  %tobool.not.i.i99.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i99.i, label %do.body4.i.i100.i, label %priv_to_wiphy.exit.i103.i, !prof !200

do.body4.i.i100.i:                                ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #7, !srcloc !203
  unreachable

priv_to_wiphy.exit.i103.i:                        ; preds = %sw.bb34.i
  %add.ptr.i.i101.i = getelementptr i8, ptr %76, i32 -1408
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef.i.i) #7
  %77 = call ptr @memset(ptr %chandef.i.i, i32 255, i32 28)
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %20)
  %cmp.i102.i = icmp ult i16 %20, 40
  br i1 %cmp.i102.i, label %do.end.i105.i, label %if.end.i107.i

do.end.i105.i:                                    ; preds = %priv_to_wiphy.exit.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %76, align 4
  %conv3.i104.i = zext i8 %79 to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.79, i32 noundef %conv3.i104.i) #10
  br label %qtnf_event_handle_radar.exit.i

if.end.i107.i:                                    ; preds = %priv_to_wiphy.exit.i103.i
  %registered.i.i = getelementptr i8, ptr %76, i32 -144
  %80 = ptrtoint ptr %registered.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %registered.i.i, align 16, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i106.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i106.i, label %if.end.i107.i.qtnf_event_handle_radar.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i107.i.qtnf_event_handle_radar.exit.i_crit_edge: ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_radar.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i107.i
  %netdev.i.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 7
  %82 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %83, null
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i.i.qtnf_event_handle_radar.exit.i_crit_edge, label %if.end7.i.i

lor.lhs.false.i.i.qtnf_event_handle_radar.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_radar.exit.i

if.end7.i.i:                                      ; preds = %lor.lhs.false.i.i
  %chan.i.i = getelementptr inbounds %struct.qlink_event_radar, ptr %17, i32 0, i32 1
  call void @qlink_chandef_q2cfg(ptr noundef %add.ptr.i.i101.i, ptr noundef %chan.i.i, ptr noundef nonnull %chandef.i.i) #7
  %call8.i.i = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %chandef.i.i) #7
  br i1 %call8.i.i, label %do.end21.i.i, label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %mac.i98.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mac.i98.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 4
  %conv16.i.i = zext i8 %87 to i32
  %center_freq1.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %center_freq1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %center_freq1.i.i, align 4
  %center_freq2.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %center_freq2.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %center_freq2.i.i, align 4
  %width.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %width.i.i, align 4
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef %conv16.i.i, i32 noundef %89, i32 noundef %91, i32 noundef %93) #10
  br label %qtnf_event_handle_radar.exit.i

do.end21.i.i:                                     ; preds = %if.end7.i.i
  %94 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %netdev.i.i, align 4
  %event.i.i = getelementptr inbounds %struct.qlink_event_radar, ptr %17, i32 0, i32 2
  %96 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %event.i.i, align 1
  %conv24.i.i = zext i8 %97 to i32
  %center_freq125.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %center_freq125.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %center_freq125.i.i, align 4
  %center_freq226.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i.i, i32 0, i32 3
  %100 = ptrtoint ptr %center_freq226.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %center_freq226.i.i, align 4
  %width27.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %width27.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %width27.i.i, align 4
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.79, ptr noundef %95, i32 noundef %conv24.i.i, i32 noundef %99, i32 noundef %101, i32 noundef %103) #10
  %104 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %event.i.i, align 1
  %106 = zext i8 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %105, label %do.end55.i.i [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb31.i.i
    i8 2, label %sw.bb36.i.i
    i8 5, label %sw.bb43.i.i
  ]

sw.bb.i.i:                                        ; preds = %do.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__cfg80211_radar_event(ptr noundef %add.ptr.i.i101.i, ptr noundef nonnull %chandef.i.i, i1 noundef zeroext false, i32 noundef 3264) #7
  br label %qtnf_event_handle_radar.exit.i

sw.bb31.i.i:                                      ; preds = %do.end21.i.i
  %cac_started.i.i = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx.i, i32 0, i32 36
  %107 = ptrtoint ptr %cac_started.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %cac_started.i.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool32.not.i.i = icmp eq i8 %108, 0
  br i1 %tobool32.not.i.i, label %sw.bb31.i.i.qtnf_event_handle_radar.exit.i_crit_edge, label %if.end34.i.i

sw.bb31.i.i.qtnf_event_handle_radar.exit.i_crit_edge: ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_radar.exit.i

if.end34.i.i:                                     ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %netdev.i.i, align 4
  call void @cfg80211_cac_event(ptr noundef %110, ptr noundef nonnull %chandef.i.i, i32 noundef 1, i32 noundef 3264) #7
  br label %qtnf_event_handle_radar.exit.i

sw.bb36.i.i:                                      ; preds = %do.end21.i.i
  %cac_started38.i.i = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx.i, i32 0, i32 36
  %111 = ptrtoint ptr %cac_started38.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %cac_started38.i.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool39.not.i.i = icmp eq i8 %112, 0
  br i1 %tobool39.not.i.i, label %sw.bb36.i.i.qtnf_event_handle_radar.exit.i_crit_edge, label %if.end41.i.i

sw.bb36.i.i.qtnf_event_handle_radar.exit.i_crit_edge: ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_radar.exit.i

if.end41.i.i:                                     ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %netdev.i.i, align 4
  call void @cfg80211_cac_event(ptr noundef %114, ptr noundef nonnull %chandef.i.i, i32 noundef 2, i32 noundef 3264) #7
  br label %qtnf_event_handle_radar.exit.i

sw.bb43.i.i:                                      ; preds = %do.end21.i.i
  %cac_started45.i.i = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx.i, i32 0, i32 36
  %115 = ptrtoint ptr %cac_started45.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %cac_started45.i.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool46.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool46.not.i.i, label %if.end48.i.i, label %sw.bb43.i.i.qtnf_event_handle_radar.exit.i_crit_edge

sw.bb43.i.i.qtnf_event_handle_radar.exit.i_crit_edge: ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_radar.exit.i

if.end48.i.i:                                     ; preds = %sw.bb43.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %76, i32 -1265
  %117 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i.i.i, align 1
  %119 = and i8 %118, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp.i.not.i.i = icmp eq i8 %119, 0
  br i1 %cmp.i.not.i.i, label %if.end48.i.i.qtnf_event_handle_radar.exit.i_crit_edge, label %if.end51.i.i

if.end48.i.i.qtnf_event_handle_radar.exit.i_crit_edge: ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_radar.exit.i

if.end51.i.i:                                     ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %netdev.i.i, align 4
  call void @cfg80211_cac_event(ptr noundef %121, ptr noundef nonnull %chandef.i.i, i32 noundef 5, i32 noundef 3264) #7
  br label %qtnf_event_handle_radar.exit.i

do.end55.i.i:                                     ; preds = %do.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv30.i.i = zext i8 %105 to i32
  %122 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %netdev.i.i, align 4
  %call62.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.79, ptr noundef %123, i32 noundef %conv30.i.i) #10
  br label %qtnf_event_handle_radar.exit.i

qtnf_event_handle_radar.exit.i:                   ; preds = %do.end55.i.i, %if.end51.i.i, %if.end48.i.i.qtnf_event_handle_radar.exit.i_crit_edge, %sw.bb43.i.i.qtnf_event_handle_radar.exit.i_crit_edge, %if.end41.i.i, %sw.bb36.i.i.qtnf_event_handle_radar.exit.i_crit_edge, %if.end34.i.i, %sw.bb31.i.i.qtnf_event_handle_radar.exit.i_crit_edge, %sw.bb.i.i, %do.end12.i.i, %lor.lhs.false.i.i.qtnf_event_handle_radar.exit.i_crit_edge, %if.end.i107.i.qtnf_event_handle_radar.exit.i_crit_edge, %do.end.i105.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i.i) #7
  br label %qtnf_event_parse.exit

sw.bb36.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i = tail call fastcc i32 @qtnf_event_handle_external_auth(ptr noundef %arrayidx.i, ptr noundef %17, i16 noundef zeroext %20) #7
  br label %qtnf_event_parse.exit

sw.bb38.i:                                        ; preds = %if.end.i
  %mac.i110.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 8
  %124 = ptrtoint ptr %mac.i110.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mac.i110.i, align 4
  %tobool.not.i.i111.i = icmp eq ptr %125, null
  br i1 %tobool.not.i.i111.i, label %do.body4.i.i112.i, label %priv_to_wiphy.exit.i114.i, !prof !200

do.body4.i.i112.i:                                ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #7, !srcloc !203
  unreachable

priv_to_wiphy.exit.i114.i:                        ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %20)
  %cmp.i113.i = icmp ult i16 %20, 16
  br i1 %cmp.i113.i, label %do.end.i119.i, label %if.end.i122.i

do.end.i119.i:                                    ; preds = %priv_to_wiphy.exit.i114.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i115.i = zext i16 %20 to i32
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 4
  %conv3.i116.i = zext i8 %127 to i32
  %vifid.i117.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 3
  %128 = ptrtoint ptr %vifid.i117.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %vifid.i117.i, align 4
  %conv4.i118.i = zext i8 %129 to i32
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.95, i32 noundef %conv3.i116.i, i32 noundef %conv4.i118.i, i32 noundef %conv.i115.i, i32 noundef 16) #10
  br label %qtnf_event_parse.exit

if.end.i122.i:                                    ; preds = %priv_to_wiphy.exit.i114.i
  %registered.i120.i = getelementptr i8, ptr %125, i32 -144
  %130 = ptrtoint ptr %registered.i120.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %registered.i120.i, align 16, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i121.i = icmp eq i8 %131, 0
  br i1 %tobool.not.i121.i, label %if.end.i122.i.qtnf_event_parse.exit_crit_edge, label %lor.lhs.false.i124.i

if.end.i122.i.qtnf_event_parse.exit_crit_edge:    ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_parse.exit

lor.lhs.false.i124.i:                             ; preds = %if.end.i122.i
  %netdev.i123.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 7
  %132 = ptrtoint ptr %netdev.i123.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %netdev.i123.i, align 4
  %tobool7.not.i.i = icmp eq ptr %133, null
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i124.i.qtnf_event_parse.exit_crit_edge, label %if.end9.i.i

lor.lhs.false.i124.i.qtnf_event_parse.exit_crit_edge: ; preds = %lor.lhs.false.i124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_parse.exit

if.end9.i.i:                                      ; preds = %lor.lhs.false.i124.i
  %iftype.i.i = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx.i, i32 0, i32 1
  %134 = ptrtoint ptr %iftype.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %iftype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp10.not.i.i = icmp eq i32 %135, 2
  br i1 %cmp10.not.i.i, label %if.end23.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %125, align 4
  %conv19.i125.i = zext i8 %137 to i32
  %vifid20.i.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 3
  %138 = ptrtoint ptr %vifid20.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %vifid20.i.i, align 4
  %conv21.i.i = zext i8 %139 to i32
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95, i32 noundef %conv19.i125.i, i32 noundef %conv21.i.i) #10
  br label %qtnf_event_parse.exit

if.end23.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pairwise24.i.i = getelementptr inbounds %struct.qlink_event_mic_failure, ptr %17, i32 0, i32 3
  %140 = ptrtoint ptr %pairwise24.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %pairwise24.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool26.not.i.i = icmp ne i8 %141, 0
  %src.i.i = getelementptr inbounds %struct.qlink_event_mic_failure, ptr %17, i32 0, i32 1
  %key_index.i.i = getelementptr inbounds %struct.qlink_event_mic_failure, ptr %17, i32 0, i32 2
  %142 = ptrtoint ptr %key_index.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %key_index.i.i, align 1
  %conv34.i126.i = zext i8 %143 to i32
  %conv35.i.i = zext i1 %tobool26.not.i.i to i32
  %call36.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.95, ptr noundef nonnull %133, ptr noundef %src.i.i, i32 noundef %conv34.i126.i, i32 noundef %conv35.i.i) #10
  %144 = ptrtoint ptr %netdev.i123.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %netdev.i123.i, align 4
  %146 = ptrtoint ptr %key_index.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %key_index.i.i, align 1
  %conv42.i.i = zext i8 %147 to i32
  tail call void @cfg80211_michael_mic_failure(ptr noundef %145, ptr noundef %src.i.i, i32 noundef %conv35.i.i, i32 noundef %conv42.i.i, ptr noundef null, i32 noundef 3264) #7
  br label %qtnf_event_parse.exit

sw.bb40.i:                                        ; preds = %if.end.i
  %mac.i129.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 8
  %148 = ptrtoint ptr %mac.i129.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mac.i129.i, align 4
  %tobool.not.i.i130.i = icmp eq ptr %149, null
  br i1 %tobool.not.i.i130.i, label %do.body4.i.i131.i, label %priv_to_wiphy.exit.i134.i, !prof !200

do.body4.i.i131.i:                                ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #7, !srcloc !203
  unreachable

priv_to_wiphy.exit.i134.i:                        ; preds = %sw.bb40.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %owe_info.i.i) #7
  %150 = getelementptr inbounds i8, ptr %owe_info.i.i, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %150, align 4
  %sub.i132.i = add i16 %20, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %20)
  %cmp.i133.i = icmp ult i16 %20, 16
  br i1 %cmp.i133.i, label %do.end.i139.i, label %if.end.i142.i

do.end.i139.i:                                    ; preds = %priv_to_wiphy.exit.i134.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i135.i = zext i16 %20 to i32
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %149, align 4
  %conv5.i.i = zext i8 %153 to i32
  %vifid.i136.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 3
  %154 = ptrtoint ptr %vifid.i136.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %vifid.i136.i, align 4
  %conv6.i137.i = zext i8 %155 to i32
  %call8.i138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.102, i32 noundef %conv5.i.i, i32 noundef %conv6.i137.i, i32 noundef %conv.i135.i, i32 noundef 16) #10
  br label %qtnf_event_handle_update_owe.exit.i

if.end.i142.i:                                    ; preds = %priv_to_wiphy.exit.i134.i
  %registered.i140.i = getelementptr i8, ptr %149, i32 -144
  %156 = ptrtoint ptr %registered.i140.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %registered.i140.i, align 16, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i141.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i141.i, label %if.end.i142.i.qtnf_event_handle_update_owe.exit.i_crit_edge, label %lor.lhs.false.i144.i

if.end.i142.i.qtnf_event_handle_update_owe.exit.i_crit_edge: ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_update_owe.exit.i

lor.lhs.false.i144.i:                             ; preds = %if.end.i142.i
  %netdev.i143.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 7
  %158 = ptrtoint ptr %netdev.i143.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %netdev.i143.i, align 4
  %tobool9.not.i.i = icmp eq ptr %159, null
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i144.i.qtnf_event_handle_update_owe.exit.i_crit_edge, label %if.end11.i.i

lor.lhs.false.i144.i.qtnf_event_handle_update_owe.exit.i_crit_edge: ; preds = %lor.lhs.false.i144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_update_owe.exit.i

if.end11.i.i:                                     ; preds = %lor.lhs.false.i144.i
  %iftype.i145.i = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx.i, i32 0, i32 1
  %160 = ptrtoint ptr %iftype.i145.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %iftype.i145.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %161)
  %cmp12.not.i.i = icmp eq i32 %161, 3
  br i1 %cmp12.not.i.i, label %if.end25.i.i, label %do.end17.i.i

do.end17.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %149, align 4
  %conv21.i146.i = zext i8 %163 to i32
  %vifid22.i.i = getelementptr %struct.qtnf_wmac, ptr %call3, i32 0, i32 5, i32 %idxprom.i, i32 3
  %164 = ptrtoint ptr %vifid22.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %vifid22.i.i, align 4
  %conv23.i.i = zext i8 %165 to i32
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, i32 noundef %conv21.i146.i, i32 noundef %conv23.i.i) #10
  br label %qtnf_event_handle_update_owe.exit.i

if.end25.i.i:                                     ; preds = %if.end11.i.i
  %conv26.i.i = zext i16 %sub.i132.i to i32
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv26.i.i, i32 noundef 3520) #11
  %tobool28.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool28.not.i.i, label %if.end25.i.i.qtnf_event_handle_update_owe.exit.i_crit_edge, label %if.end30.i.i

if.end25.i.i.qtnf_event_handle_update_owe.exit.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_event_handle_update_owe.exit.i

if.end30.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %peer31.i.i = getelementptr inbounds %struct.qlink_event_update_owe, ptr %17, i32 0, i32 1
  %166 = call ptr @memcpy(ptr %owe_info.i.i, ptr %peer31.i.i, i32 6)
  %ies.i.i = getelementptr inbounds %struct.qlink_event_update_owe, ptr %17, i32 0, i32 3
  %167 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr %ies.i.i, i32 %conv26.i.i)
  %ie_len36.i.i = getelementptr inbounds %struct.cfg80211_update_owe_info, ptr %owe_info.i.i, i32 0, i32 3
  %168 = ptrtoint ptr %ie_len36.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %conv26.i.i, ptr %ie_len36.i.i, align 4
  %ie37.i.i = getelementptr inbounds %struct.cfg80211_update_owe_info, ptr %owe_info.i.i, i32 0, i32 2
  %169 = ptrtoint ptr %ie37.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call9.i.i.i.i, ptr %ie37.i.i, align 4
  %170 = ptrtoint ptr %netdev.i143.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %netdev.i143.i, align 4
  %call46.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.102, ptr noundef %171, ptr noundef %peer31.i.i) #10
  %172 = ptrtoint ptr %netdev.i143.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %netdev.i143.i, align 4
  call void @cfg80211_update_owe_info_event(ptr noundef %173, ptr noundef nonnull %owe_info.i.i, i32 noundef 3264) #7
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #7
  br label %qtnf_event_handle_update_owe.exit.i

qtnf_event_handle_update_owe.exit.i:              ; preds = %if.end30.i.i, %if.end25.i.i.qtnf_event_handle_update_owe.exit.i_crit_edge, %do.end17.i.i, %lor.lhs.false.i144.i.qtnf_event_handle_update_owe.exit.i_crit_edge, %if.end.i142.i.qtnf_event_handle_update_owe.exit.i_crit_edge, %do.end.i139.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %owe_info.i.i) #7
  br label %qtnf_event_parse.exit

do.end44.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv18.i = zext i16 %25 to i32
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %conv18.i) #10
  br label %qtnf_event_parse.exit

qtnf_event_parse.exit:                            ; preds = %do.end44.i, %qtnf_event_handle_update_owe.exit.i, %if.end23.i.i, %do.end15.i.i, %lor.lhs.false.i124.i.qtnf_event_parse.exit_crit_edge, %if.end.i122.i.qtnf_event_parse.exit_crit_edge, %do.end.i119.i, %sw.bb36.i, %qtnf_event_handle_radar.exit.i, %sw.bb32.i, %sw.bb30.i, %sw.bb28.i, %if.end.i97.i, %do.end.i96.i, %if.end80.i.i, %if.end73.i.i.qtnf_event_parse.exit_crit_edge, %for.end.i.i.qtnf_event_parse.exit_crit_edge, %if.then41.i.i.qtnf_event_parse.exit_crit_edge, %do.end11.i.i, %do.end.i.i, %sw.bb22.i, %sw.bb20.i, %sw.bb.i, %do.end.i
  call void @rtnl_unlock() #7
  br label %cleanup

cleanup:                                          ; preds = %qtnf_event_parse.exit, %do.end22.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_core_get_mac(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_event_handle_sta_assoc(ptr nocapture noundef readonly %mac, ptr noundef %vif, ptr noundef %sta_assoc, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %len)
  %cmp = icmp ult i16 %len, 16
  br i1 %cmp, label %do.end, label %if.end, !prof !200

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac, align 4
  %conv3 = zext i8 %1 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %2 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vifid, align 4
  %conv4 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv, i32 noundef 16) #10
  br label %cleanup109

if.end:                                           ; preds = %entry
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp6.not = icmp eq i32 %5, 3
  br i1 %cmp6.not, label %if.end18, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac, align 4
  %conv14 = zext i8 %7 to i32
  %vifid15 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %8 = ptrtoint ptr %vifid15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vifid15, align 4
  %conv16 = zext i8 %9 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %conv14, i32 noundef %conv16) #10
  br label %cleanup109

if.end18:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 208) #12
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end18.cleanup109_crit_edge, label %if.end22

if.end18.cleanup109_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end22:                                         ; preds = %if.end18
  %sta_addr23 = getelementptr inbounds %struct.qlink_event_sta_assoc, ptr %sta_assoc, i32 0, i32 1
  %frame_control24 = getelementptr inbounds %struct.qlink_event_sta_assoc, ptr %sta_assoc, i32 0, i32 2
  %11 = ptrtoint ptr %frame_control24 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %frame_control24, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_event_handle_sta_assoc.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_event_handle_sta_assoc, %if.then35)) #7
          to label %do.end43 [label %if.then35], !srcloc !201

if.then35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac, align 4
  %conv37 = zext i8 %15 to i32
  %vifid38 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %16 = ptrtoint ptr %vifid38 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vifid38, align 4
  %conv39 = zext i8 %17 to i32
  %conv40 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_event_handle_sta_assoc.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef %conv37, i32 noundef %conv39, ptr noundef %sta_addr23, i32 noundef %conv40) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %if.end22
  %call44 = tail call ptr @qtnf_sta_list_add(ptr noundef %vif, ptr noundef %sta_addr23) #7
  %assoc_req_ies = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 24
  %18 = ptrtoint ptr %assoc_req_ies to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %assoc_req_ies, align 8
  %assoc_req_ies_len = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 25
  %19 = ptrtoint ptr %assoc_req_ies_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %assoc_req_ies_len, align 4
  %generation = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 14
  %20 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generation, align 4
  %generation45 = getelementptr inbounds %struct.station_info, ptr %call7.i.i, i32 0, i32 23
  %22 = ptrtoint ptr %generation45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %generation45, align 4
  %sub = add nsw i32 %conv, -16
  %ies = getelementptr inbounds %struct.qlink_event_sta_assoc, ptr %sta_assoc, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %ies, i32 %sub
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %len)
  %cmp50160 = icmp ugt i16 %len, 19
  br i1 %cmp50160, label %do.end43.land.rhs_crit_edge, label %do.end43.for.end_crit_edge

do.end43.for.end_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end43.land.rhs_crit_edge:                      ; preds = %do.end43
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %do.end43.land.rhs_crit_edge
  %sub.ptr.sub163 = phi i32 [ %sub.ptr.sub, %for.inc.land.rhs_crit_edge ], [ %sub, %do.end43.land.rhs_crit_edge ]
  %tlv.0161 = phi ptr [ %add.ptr91, %for.inc.land.rhs_crit_edge ], [ %ies, %do.end43.land.rhs_crit_edge ]
  %len58 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0161, i32 0, i32 1
  %23 = ptrtoint ptr %len58 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %len58, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv59 = zext i16 %25 to i32
  %add = add nuw nsw i32 %conv59, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub163, i32 %add)
  %cmp60.not = icmp ult i32 %sub.ptr.sub163, %add
  br i1 %cmp60.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %26 = ptrtoint ptr %tlv.0161 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %tlv.0161, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1283, i16 %27)
  %cmp64 = icmp eq i16 %27, 1283
  br i1 %cmp64, label %if.then66, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then66:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %25)
  %cmp68 = icmp ult i16 %25, 4
  br i1 %cmp68, label %if.then66.out_crit_edge, label %if.end71

if.then66.out_crit_edge:                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end71:                                         ; preds = %if.then66
  %sub73 = add nsw i32 %conv59, -4
  %type74 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %tlv.0161, i32 0, i32 1
  %28 = ptrtoint ptr %type74 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp76 = icmp ne i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub73)
  %tobool78.not = icmp eq i32 %sub73, 0
  %or.cond = select i1 %cmp76, i1 true, i1 %tobool78.not
  br i1 %or.cond, label %if.end71.for.inc_crit_edge, label %if.then79

if.end71.for.inc_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then79:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %ie_data = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %tlv.0161, i32 0, i32 4
  %30 = ptrtoint ptr %assoc_req_ies to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ie_data, ptr %assoc_req_ies, align 8
  %31 = ptrtoint ptr %assoc_req_ies_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub73, ptr %assoc_req_ies_len, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then79, %if.end71.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %val = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0161, i32 0, i32 2
  %sub89 = add nsw i32 %conv59, -1
  %or = or i32 %sub89, 3
  %add90 = add nsw i32 %or, 1
  %add.ptr91 = getelementptr i8, ptr %val, i32 %add90
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr91 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp50 = icmp sgt i32 %sub.ptr.sub, 3
  br i1 %cmp50, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %do.end43.for.end_crit_edge
  %tlv.0.lcssa = phi ptr [ %ies, %do.end43.for.end_crit_edge ], [ %add.ptr91, %for.inc.for.end_crit_edge ], [ %tlv.0161, %land.rhs.for.end_crit_edge ]
  %sub94 = add nsw i32 %conv, -17
  %or95 = or i32 %sub94, 3
  %add96 = add nsw i32 %or95, 1
  %add.ptr97 = getelementptr i8, ptr %ies, i32 %add96
  %cmp98 = icmp eq ptr %tlv.0.lcssa, %add.ptr97
  br i1 %cmp98, label %if.end106, label %do.end103

do.end103:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12) #10
  br label %out

if.end106:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %32 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_new_sta(ptr noundef %33, ptr noundef %sta_addr23, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #7
  br label %out

out:                                              ; preds = %if.end106, %do.end103, %if.then66.out_crit_edge
  %ret.3 = phi i32 [ 0, %if.end106 ], [ -22, %do.end103 ], [ -22, %if.then66.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup109

cleanup109:                                       ; preds = %out, %if.end18.cleanup109_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -71, %do.end11 ], [ %ret.3, %out ], [ -12, %if.end18.cleanup109_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_event_handle_sta_deauth(ptr nocapture noundef readonly %mac, ptr noundef %vif, ptr noundef %sta_deauth, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %len)
  %cmp = icmp ult i16 %len, 16
  br i1 %cmp, label %do.end, label %if.end, !prof !200

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %len to i32
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac, align 4
  %conv3 = zext i8 %1 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %2 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vifid, align 4
  %conv4 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv, i32 noundef 16) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp6.not = icmp eq i32 %5, 3
  br i1 %cmp6.not, label %if.end18, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac, align 4
  %conv14 = zext i8 %7 to i32
  %vifid15 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %8 = ptrtoint ptr %vifid15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vifid15, align 4
  %conv16 = zext i8 %9 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %conv14, i32 noundef %conv16) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %sta_addr19 = getelementptr inbounds %struct.qlink_event_sta_deauth, ptr %sta_deauth, i32 0, i32 1
  %reason20 = getelementptr inbounds %struct.qlink_event_sta_deauth, ptr %sta_deauth, i32 0, i32 2
  %10 = ptrtoint ptr %reason20 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %reason20, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_event_handle_sta_deauth.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_event_handle_sta_deauth, %if.then31)) #7
          to label %do.end39 [label %if.then31], !srcloc !201

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mac, align 4
  %conv33 = zext i8 %14 to i32
  %vifid34 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %15 = ptrtoint ptr %vifid34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vifid34, align 4
  %conv35 = zext i8 %16 to i32
  %conv36 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_event_handle_sta_deauth.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef %conv33, i32 noundef %conv35, ptr noundef %sta_addr19, i32 noundef %conv36) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then31, %if.end18
  %call40 = tail call zeroext i1 @qtnf_sta_list_del(ptr noundef %vif, ptr noundef %sta_addr19) #7
  br i1 %call40, label %if.then41, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %18, ptr noundef %sta_addr19, ptr noundef null, i32 noundef 3264) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.end39.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -71, %do.end11 ], [ 0, %if.then41 ], [ 0, %do.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_event_handle_mgmt_received(ptr noundef %vif, ptr noundef %rxmgmt, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_data = getelementptr inbounds %struct.qlink_event_rxmgmt, ptr %rxmgmt, i32 0, i32 5
  %sub = add i16 %len, -20
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %len)
  %cmp = icmp ult i16 %len, 44
  br i1 %cmp, label %do.end, label %if.end, !prof !200

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %len to i32
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %conv5 = zext i8 %3 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %conv6 = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.27, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv, i32 noundef 44) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags8 = getelementptr inbounds %struct.qlink_event_rxmgmt, ptr %rxmgmt, i32 0, i32 2
  %6 = ptrtoint ptr %flags8 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %flags8, align 1
  %8 = lshr i32 %7, 24
  %.lobit = and i32 %8, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_event_handle_mgmt_received.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_event_handle_mgmt_received, %if.then22)) #7
          to label %do.end29 [label %if.then22], !srcloc !201

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %conv24 = zext i16 %sub to i32
  %11 = ptrtoint ptr %frame_data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %frame_data, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv25 = zext i16 %13 to i32
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %frame_data, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_event_handle_mgmt_received.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef %10, i32 noundef %conv24, i32 noundef %conv25, ptr noundef %addr2) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then22, %if.end
  %freq = getelementptr inbounds %struct.qlink_event_rxmgmt, ptr %rxmgmt, i32 0, i32 1
  %14 = ptrtoint ptr %freq to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %freq, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %sig_dbm = getelementptr inbounds %struct.qlink_event_rxmgmt, ptr %rxmgmt, i32 0, i32 3
  %17 = ptrtoint ptr %sig_dbm to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sig_dbm, align 1
  %conv30 = sext i8 %18 to i32
  %conv33 = zext i16 %sub to i32
  %mul.i = mul i32 %16, 1000
  %call.i = tail call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %vif, i32 noundef %mul.i, i32 noundef %conv30, ptr noundef %frame_data, i32 noundef %conv33, i32 noundef %.lobit) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_event_handle_bss_join(ptr nocapture noundef %vif, ptr noundef %join_info, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !200

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #7, !srcloc !203
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1408
  %status1 = getelementptr inbounds %struct.qlink_event_bss_join, ptr %join_info, i32 0, i32 3
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %status1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #7
  %5 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  %conv2 = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %len)
  %cmp = icmp ult i16 %len, 44
  br i1 %cmp, label %do.end, label %if.end, !prof !200

do.end:                                           ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %conv6 = zext i8 %7 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %8 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vifid, align 4
  %conv7 = zext i8 %9 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.37, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv2, i32 noundef 44) #10
  br label %cleanup247

if.end:                                           ; preds = %priv_to_wiphy.exit
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %10 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp10.not = icmp eq i32 %11, 2
  br i1 %cmp10.not, label %do.body24, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 4
  %conv19 = zext i8 %13 to i32
  %vifid20 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %14 = ptrtoint ptr %vifid20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vifid20, align 4
  %conv21 = zext i8 %15 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv19, i32 noundef %conv21) #10
  br label %cleanup247

do.body24:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_event_handle_bss_join.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_event_handle_bss_join, %if.then34)) #7
          to label %do.end44 [label %if.then34], !srcloc !201

if.then34:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv37 = zext i8 %19 to i32
  %vifid38 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %20 = ptrtoint ptr %vifid38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vifid38, align 4
  %conv39 = zext i8 %21 to i32
  %bssid = getelementptr inbounds %struct.qlink_event_bss_join, ptr %join_info, i32 0, i32 2
  %center_freq = getelementptr inbounds %struct.qlink_event_bss_join, ptr %join_info, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %center_freq to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %center_freq, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv41 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_event_handle_bss_join.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef %conv37, i32 noundef %conv39, ptr noundef %bssid, i32 noundef %conv41, i32 noundef %conv) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then34, %do.body24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp45.not = icmp eq i16 %3, 0
  br i1 %cmp45.not, label %if.end48, label %do.end44.done_crit_edge

do.end44.done_crit_edge:                          ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end48:                                         ; preds = %do.end44
  %chan49 = getelementptr inbounds %struct.qlink_event_bss_join, ptr %join_info, i32 0, i32 1
  call void @qlink_chandef_q2cfg(ptr noundef %add.ptr.i, ptr noundef %chan49, ptr noundef nonnull %chandef) #7
  %call50 = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %chandef) #7
  br i1 %call50, label %if.end66, label %do.end54

do.end54:                                         ; preds = %if.end48
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv58 = zext i8 %28 to i32
  %vifid59 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %29 = ptrtoint ptr %vifid59 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vifid59, align 4
  %conv60 = zext i8 %30 to i32
  %31 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chandef, align 4
  %tobool62.not = icmp eq ptr %32, null
  br i1 %tobool62.not, label %do.end54.cond.end_crit_edge, label %cond.true

do.end54.cond.end_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  %center_freq64 = getelementptr inbounds %struct.ieee80211_channel, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %center_freq64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %center_freq64, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end54.cond.end_crit_edge
  %cond = phi i32 [ %34, %cond.true ], [ 0, %do.end54.cond.end_crit_edge ]
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %35 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %center_freq1, align 4
  %center_freq2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 3
  %37 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %center_freq2, align 4
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %39 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width, align 4
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.37, i32 noundef %conv58, i32 noundef %conv60, i32 noundef %cond, i32 noundef %36, i32 noundef %38, i32 noundef %40) #10
  br label %done

if.end66:                                         ; preds = %if.end48
  %41 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chandef, align 4
  %bssid68 = getelementptr inbounds %struct.qlink_event_bss_join, ptr %join_info, i32 0, i32 2
  %call70 = call ptr @cfg80211_get_bss(ptr noundef %add.ptr.i, ptr noundef %42, ptr noundef %bssid68, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 2) #7
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %do.end75, label %if.end66.if.end153_crit_edge

if.end66.if.end153_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

do.end75:                                         ; preds = %if.end66
  %43 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  %conv79 = zext i8 %46 to i32
  %vifid80 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %47 = ptrtoint ptr %vifid80 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vifid80, align 4
  %conv81 = zext i8 %48 to i32
  %49 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hw_value, align 2
  %conv85 = zext i16 %52 to i32
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.37, i32 noundef %conv79, i32 noundef %conv81, ptr noundef %bssid68, i32 noundef %conv85) #10
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 14
  %53 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool88.not = icmp eq i8 %54, 0
  br i1 %tobool88.not, label %do.end92, label %if.end8.i.i

do.end92:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 4
  %conv96 = zext i8 %58 to i32
  %59 = ptrtoint ptr %vifid80 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vifid80, align 4
  %conv98 = zext i8 %60 to i32
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.37, i32 noundef %conv96, i32 noundef %conv98, ptr noundef %bssid68) #10
  br label %done

if.end8.i.i:                                      ; preds = %do.end75
  %conv105 = zext i8 %54 to i32
  %add = add nuw nsw i32 %conv105, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool107.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool107.not, label %do.end111, label %if.end121

do.end111:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 4
  %conv115 = zext i8 %64 to i32
  %65 = ptrtoint ptr %vifid80 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %vifid80, align 4
  %conv117 = zext i8 %66 to i32
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.37, i32 noundef %conv115, i32 noundef %conv117, ptr noundef %bssid68) #10
  br label %done

if.end121:                                        ; preds = %if.end8.i.i
  %67 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %call9.i.i, align 128
  %68 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ssid_len, align 2
  %arrayidx124 = getelementptr i8, ptr %call9.i.i, i32 1
  %70 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx124, align 1
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 2
  %ssid = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 13
  %conv129 = zext i8 %69 to i32
  %71 = call ptr @memcpy(ptr %add.ptr, ptr %ssid, i32 %conv129)
  %72 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chandef, align 4
  %add136 = add nuw nsw i32 %conv129, 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #7
  %74 = getelementptr inbounds i8, ptr %data.i, i32 8
  %75 = call ptr @memset(ptr %74, i32 0, i32 40)
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %77 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %scan_width.i, align 4
  %call.i = call ptr @cfg80211_inform_bss_data(ptr noundef %add.ptr.i, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef %bssid68, i64 noundef 0, i16 noundef zeroext 1, i16 noundef zeroext 100, ptr noundef nonnull %call9.i.i, i32 noundef %add136, i32 noundef 3264) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #7
  %tobool138.not = icmp eq ptr %call.i, null
  br i1 %tobool138.not, label %do.end142, label %if.end121.if.end153_crit_edge

if.end121.if.end153_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

do.end142:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mac, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 4
  %conv146 = zext i8 %81 to i32
  %82 = ptrtoint ptr %vifid80 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vifid80, align 4
  %conv148 = zext i8 %83 to i32
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, i32 noundef %conv146, i32 noundef %conv148, ptr noundef %bssid68) #10
  br label %done

if.end153:                                        ; preds = %if.end121.if.end153_crit_edge, %if.end66.if.end153_crit_edge
  %ie.0 = phi ptr [ null, %if.end66.if.end153_crit_edge ], [ %call9.i.i, %if.end121.if.end153_crit_edge ]
  %bss.0 = phi ptr [ %call70, %if.end66.if.end153_crit_edge ], [ %call.i, %if.end121.if.end153_crit_edge ]
  %sub = add nsw i32 %conv2, -44
  %ies = getelementptr inbounds %struct.qlink_event_bss_join, ptr %join_info, i32 0, i32 4
  %add.ptr158 = getelementptr i8, ptr %ies, i32 %sub
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr158 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %len)
  %cmp159350 = icmp ugt i16 %len, 47
  br i1 %cmp159350, label %if.end153.land.rhs_crit_edge, label %if.end153.for.end_crit_edge

if.end153.for.end_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end153.land.rhs_crit_edge:                     ; preds = %if.end153
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end153.land.rhs_crit_edge
  %sub.ptr.sub355 = phi i32 [ %sub.ptr.sub, %for.inc.land.rhs_crit_edge ], [ %sub, %if.end153.land.rhs_crit_edge ]
  %tlv.0353 = phi ptr [ %add.ptr209, %for.inc.land.rhs_crit_edge ], [ %ies, %if.end153.land.rhs_crit_edge ]
  %rsp_ies.0352 = phi ptr [ %rsp_ies.3, %for.inc.land.rhs_crit_edge ], [ null, %if.end153.land.rhs_crit_edge ]
  %rsp_ies_len.0351 = phi i32 [ %rsp_ies_len.3, %for.inc.land.rhs_crit_edge ], [ 0, %if.end153.land.rhs_crit_edge ]
  %len167 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0353, i32 0, i32 1
  %84 = ptrtoint ptr %len167 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %len167, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85)
  %conv168 = zext i16 %86 to i32
  %add169 = add nuw nsw i32 %conv168, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub355, i32 %add169)
  %cmp170.not = icmp ult i32 %sub.ptr.sub355, %add169
  br i1 %cmp170.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %87 = ptrtoint ptr %tlv.0353 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %tlv.0353, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1283, i16 %88)
  %cmp174 = icmp eq i16 %88, 1283
  br i1 %cmp174, label %if.then176, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then176:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %86)
  %cmp178 = icmp ult i16 %86, 4
  br i1 %cmp178, label %cleanup, label %if.end186

if.end186:                                        ; preds = %if.then176
  %type189 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %tlv.0353, i32 0, i32 1
  %89 = ptrtoint ptr %type189 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %type189, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %90)
  %cond258 = icmp eq i8 %90, 2
  br i1 %cond258, label %sw.bb, label %do.end197

sw.bb:                                            ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  %sub188 = add nsw i32 %conv168, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub188)
  %tobool191.not = icmp eq i32 %sub188, 0
  %ie_data = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %tlv.0353, i32 0, i32 4
  %spec.select = select i1 %tobool191.not, i32 %rsp_ies_len.0351, i32 %sub188
  %spec.select333 = select i1 %tobool191.not, ptr %rsp_ies.0352, ptr %ie_data
  br label %for.inc

do.end197:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  %conv190 = zext i8 %90 to i32
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.37, i32 noundef %conv190) #10
  br label %for.inc

cleanup:                                          ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.37) #10
  br label %done

for.inc:                                          ; preds = %do.end197, %sw.bb, %for.body.for.inc_crit_edge
  %rsp_ies_len.3 = phi i32 [ %rsp_ies_len.0351, %for.body.for.inc_crit_edge ], [ %spec.select, %sw.bb ], [ %rsp_ies_len.0351, %do.end197 ]
  %rsp_ies.3 = phi ptr [ %rsp_ies.0352, %for.body.for.inc_crit_edge ], [ %spec.select333, %sw.bb ], [ %rsp_ies.0352, %do.end197 ]
  %val = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0353, i32 0, i32 2
  %91 = ptrtoint ptr %len167 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %len167, align 1
  %93 = call i16 @llvm.bswap.i16(i16 %92)
  %conv206 = zext i16 %93 to i32
  %sub207 = add nsw i32 %conv206, -1
  %or = or i32 %sub207, 3
  %add208 = add nsw i32 %or, 1
  %add.ptr209 = getelementptr i8, ptr %val, i32 %add208
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr209 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp159 = icmp sgt i32 %sub.ptr.sub, 3
  br i1 %cmp159, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end153.for.end_crit_edge
  %rsp_ies_len.0.lcssa = phi i32 [ 0, %if.end153.for.end_crit_edge ], [ %rsp_ies_len.3, %for.inc.for.end_crit_edge ], [ %rsp_ies_len.0351, %land.rhs.for.end_crit_edge ]
  %rsp_ies.0.lcssa = phi ptr [ null, %if.end153.for.end_crit_edge ], [ %rsp_ies.3, %for.inc.for.end_crit_edge ], [ %rsp_ies.0352, %land.rhs.for.end_crit_edge ]
  %tlv.0.lcssa = phi ptr [ %ies, %if.end153.for.end_crit_edge ], [ %add.ptr209, %for.inc.for.end_crit_edge ], [ %tlv.0353, %land.rhs.for.end_crit_edge ]
  %sub212 = add nsw i32 %conv2, -45
  %or213 = or i32 %sub212, 3
  %add214 = add nsw i32 %or213, 1
  %add.ptr215 = getelementptr i8, ptr %ies, i32 %add214
  %cmp216 = icmp eq ptr %tlv.0.lcssa, %add.ptr215
  br i1 %cmp216, label %for.end.done_crit_edge, label %do.end221

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

do.end221:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.37) #10
  br label %done

done:                                             ; preds = %do.end221, %for.end.done_crit_edge, %cleanup, %do.end142, %do.end111, %do.end92, %cond.end, %do.end44.done_crit_edge
  %rsp_ies_len.4 = phi i32 [ 0, %do.end44.done_crit_edge ], [ %rsp_ies_len.0351, %cleanup ], [ %rsp_ies_len.0.lcssa, %for.end.done_crit_edge ], [ %rsp_ies_len.0.lcssa, %do.end221 ], [ 0, %do.end142 ], [ 0, %do.end111 ], [ 0, %do.end92 ], [ 0, %cond.end ]
  %rsp_ies.4 = phi ptr [ null, %do.end44.done_crit_edge ], [ %rsp_ies.0352, %cleanup ], [ %rsp_ies.0.lcssa, %for.end.done_crit_edge ], [ %rsp_ies.0.lcssa, %do.end221 ], [ null, %do.end142 ], [ null, %do.end111 ], [ null, %do.end92 ], [ null, %cond.end ]
  %ie.1 = phi ptr [ null, %do.end44.done_crit_edge ], [ %ie.0, %cleanup ], [ %ie.0, %for.end.done_crit_edge ], [ %ie.0, %do.end221 ], [ %call9.i.i, %do.end142 ], [ null, %do.end111 ], [ null, %do.end92 ], [ null, %cond.end ]
  %bss.1 = phi ptr [ null, %do.end44.done_crit_edge ], [ %bss.0, %cleanup ], [ %bss.0, %for.end.done_crit_edge ], [ %bss.0, %do.end221 ], [ null, %do.end142 ], [ null, %do.end111 ], [ null, %do.end92 ], [ null, %cond.end ]
  %status.3 = phi i32 [ %conv, %do.end44.done_crit_edge ], [ 1, %cleanup ], [ 0, %for.end.done_crit_edge ], [ 0, %do.end221 ], [ 1, %do.end142 ], [ 1, %do.end111 ], [ 1, %do.end92 ], [ 1, %cond.end ]
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %94 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %netdev, align 4
  %bssid225 = getelementptr inbounds %struct.qlink_event_bss_join, ptr %join_info, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #7
  %96 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %97 = call ptr @memset(ptr %96, i32 0, i32 24)
  %98 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %status.3, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %bssid225, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %bss3.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %bss3.i.i, align 4
  %req_ie4.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %req_ie4.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %req_ie4.i.i, align 4
  %req_ie_len5.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 4
  %102 = ptrtoint ptr %req_ie_len5.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %req_ie_len5.i.i, align 4
  %resp_ie6.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 5
  %103 = ptrtoint ptr %resp_ie6.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %rsp_ies.4, ptr %resp_ie6.i.i, align 4
  %resp_ie_len7.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 6
  %104 = ptrtoint ptr %resp_ie_len7.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %rsp_ies_len.4, ptr %resp_ie_len7.i.i, align 4
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %105 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  call void @cfg80211_connect_done(ptr noundef %95, ptr noundef nonnull %params.i.i, i32 noundef 3264) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #7
  %tobool228.not = icmp eq ptr %bss.1, null
  br i1 %tobool228.not, label %done.if.end241_crit_edge, label %if.then229

done.if.end241_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end241

if.then229:                                       ; preds = %done
  %bssid230 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 1
  %106 = ptrtoint ptr %bssid230 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bssid230, align 4
  %108 = ptrtoint ptr %bssid225 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bssid225, align 4
  %xor.i = xor i32 %109, %107
  %add.ptr.i335 = getelementptr %struct.qtnf_vif, ptr %vif, i32 0, i32 1, i32 4
  %110 = ptrtoint ptr %add.ptr.i335 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %add.ptr.i335, align 2
  %add.ptr1.i = getelementptr %struct.qlink_event_bss_join, ptr %join_info, i32 0, i32 2, i32 4
  %112 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %113, %111
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then229.if.end240_crit_edge, label %if.then235

if.then229.if.end240_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end240

if.then235:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %bssid230 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %109, ptr %bssid230, align 4
  %115 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %add.ptr1.i, align 2
  %117 = ptrtoint ptr %add.ptr.i335 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %add.ptr.i335, align 2
  br label %if.end240

if.end240:                                        ; preds = %if.then235, %if.then229.if.end240_crit_edge
  call void @cfg80211_put_bss(ptr noundef %add.ptr.i, ptr noundef nonnull %bss.1) #7
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %done.if.end241_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.3)
  %cmp242 = icmp eq i32 %status.3, 0
  br i1 %cmp242, label %if.then244, label %if.end241.if.end246_crit_edge

if.end241.if.end246_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.then244:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev, align 4
  call void @netif_carrier_on(ptr noundef %119) #7
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %if.end241.if.end246_crit_edge
  call void @kfree(ptr noundef %ie.1) #7
  br label %cleanup247

cleanup247:                                       ; preds = %if.end246, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -71, %do.end15 ], [ 0, %if.end246 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_event_handle_bss_leave(ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %leave_info, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %len)
  %cmp = icmp ult i16 %len, 12
  br i1 %cmp, label %do.end, label %if.end, !prof !200

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %len to i32
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %conv3 = zext i8 %3 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %conv4 = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.67, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv, i32 noundef 12) #10
  br label %return

if.end:                                           ; preds = %entry
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp6.not = icmp eq i32 %7, 2
  br i1 %cmp6.not, label %do.body19, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mac12 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %8 = ptrtoint ptr %mac12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac12, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv14 = zext i8 %11 to i32
  %vifid15 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %12 = ptrtoint ptr %vifid15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vifid15, align 4
  %conv16 = zext i8 %13 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %conv14, i32 noundef %conv16) #10
  br label %return

do.body19:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_event_handle_bss_leave.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_event_handle_bss_leave, %if.then29)) #7
          to label %do.end36 [label %if.then29], !srcloc !201

if.then29:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %mac30 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %14 = ptrtoint ptr %mac30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac30, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %conv32 = zext i8 %17 to i32
  %vifid33 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %18 = ptrtoint ptr %vifid33 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vifid33, align 4
  %conv34 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_event_handle_bss_leave.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef %conv32, i32 noundef %conv34) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then29, %do.body19
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %reason = getelementptr inbounds %struct.qlink_event_bss_leave, ptr %leave_info, i32 0, i32 1
  %22 = ptrtoint ptr %reason to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %reason, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  tail call void @cfg80211_disconnected(ptr noundef %21, i16 noundef zeroext %24, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i32 noundef 3264) #7
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_off(ptr noundef %26) #7
  br label %return

return:                                           ; preds = %do.end36, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -71, %do.end10 ], [ 0, %do.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_event_handle_freq_change(ptr noundef %mac, ptr noundef %data, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %mac, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !200

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #7, !srcloc !203
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %mac, i32 -1408
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #7
  %0 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %len)
  %cmp = icmp ult i16 %len, 36
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mac, align 4
  %conv2 = zext i8 %2 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.73, i32 noundef %conv2) #10
  br label %cleanup

if.end:                                           ; preds = %priv_to_wiphy.exit
  %registered = getelementptr i8, ptr %mac, i32 -144
  %3 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %registered, align 16, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %chan = getelementptr inbounds %struct.qlink_event_freq_change, ptr %data, i32 0, i32 1
  call void @qlink_chandef_q2cfg(ptr noundef %add.ptr.i, ptr noundef %chan, ptr noundef nonnull %chandef) #7
  %call6 = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %chandef) #7
  br i1 %call6, label %do.body17, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mac, align 4
  %conv13 = zext i8 %6 to i32
  %7 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %11 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq1, align 4
  %center_freq2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 3
  %13 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %center_freq2, align 4
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef %conv13, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #10
  br label %cleanup

do.body17:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_event_handle_freq_change.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_event_handle_freq_change, %if.then23)) #7
          to label %for.body [label %if.then23], !srcloc !201

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mac, align 4
  %conv25 = zext i8 %18 to i32
  %19 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value, align 2
  %conv27 = zext i16 %22 to i32
  %center_freq128 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %23 = ptrtoint ptr %center_freq128 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %center_freq128, align 4
  %center_freq229 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 3
  %25 = ptrtoint ptr %center_freq229 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %center_freq229, align 4
  %width30 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %27 = ptrtoint ptr %width30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width30, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_event_handle_freq_change.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.73, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %24, i32 noundef %26, i32 noundef %28) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then23, %do.body17
  %i.072 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body17 ], [ 0, %if.then23 ]
  %arrayidx = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 %i.072
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx, i32 0, i32 1
  %29 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iftype, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %30, label %for.body.if.end47_crit_edge [
    i32 0, label %for.body.for.inc_crit_edge
    i32 2, label %land.lhs.true
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true:                                    ; preds = %for.body
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx, i32 0, i32 25
  %32 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %current_bss, align 4
  %tobool45.not = icmp eq ptr %33, null
  br i1 %tobool45.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %for.body.if.end47_crit_edge
  %netdev = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 %i.072, i32 7
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  %tobool48.not = icmp eq ptr %35, null
  br i1 %tobool48.not, label %if.end47.for.inc_crit_edge, label %if.end50

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end50:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %mtx = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #7
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 4
  call void @cfg80211_ch_switch_notify(ptr noundef %37, ptr noundef nonnull %chandef) #7
  call void @mutex_unlock(ptr noundef %mtx) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end50, %if.end47.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_event_handle_external_auth(ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %ev, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %auth = alloca %struct.cfg80211_external_auth_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %auth) #7
  %0 = getelementptr inbounds i8, ptr %auth, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !200

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #7, !srcloc !203
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %len)
  %cmp = icmp ult i16 %len, 52
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv3 = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.89, i32 noundef %conv3) #10
  br label %cleanup

if.end:                                           ; preds = %priv_to_wiphy.exit
  %registered = getelementptr i8, ptr %3, i32 -144
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %registered, align 16, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %ssid_len = getelementptr inbounds %struct.qlink_event_external_auth, ptr %ev, i32 0, i32 4
  %10 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.end7.if.end37_crit_edge, label %cond.end

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

cond.end:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i8 @llvm.umin.i8(i8 %11, i8 32)
  %cond30 = zext i8 %12 to i32
  %ssid = getelementptr inbounds %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 2
  %ssid32 = getelementptr inbounds %struct.qlink_event_external_auth, ptr %ev, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %ssid, ptr %ssid32, i32 %cond30)
  %ssid_len36 = getelementptr inbounds %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %ssid_len36 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %ssid_len36, align 2
  br label %if.end37

if.end37:                                         ; preds = %cond.end, %if.end7.if.end37_crit_edge
  %akm_suite = getelementptr inbounds %struct.qlink_event_external_auth, ptr %ev, i32 0, i32 1
  %15 = ptrtoint ptr %akm_suite to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %akm_suite, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %key_mgmt_suite = getelementptr inbounds %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 3
  %18 = ptrtoint ptr %key_mgmt_suite to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %key_mgmt_suite, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 1
  %bssid39 = getelementptr inbounds %struct.qlink_event_external_auth, ptr %ev, i32 0, i32 3
  %19 = ptrtoint ptr %bssid39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bssid39, align 4
  %21 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bssid, align 4
  %add.ptr.i86 = getelementptr %struct.qlink_event_external_auth, ptr %ev, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i86, align 2
  %add.ptr1.i = getelementptr inbounds %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i, align 4
  %action = getelementptr inbounds %struct.qlink_event_external_auth, ptr %ev, i32 0, i32 5
  %25 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %action, align 1
  %conv41 = zext i8 %26 to i32
  %27 = ptrtoint ptr %auth to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv41, ptr %auth, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_event_handle_external_auth.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_event_handle_external_auth, %if.then49)) #7
          to label %do.end58 [label %if.then49], !srcloc !201

if.then49:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  %30 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %auth, align 4
  %32 = ptrtoint ptr %key_mgmt_suite to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key_mgmt_suite, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_event_handle_external_auth.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89, ptr noundef %29, ptr noundef %bssid, i32 noundef %31, i32 noundef %33) #7
  br label %do.end58

do.end58:                                         ; preds = %if.then49, %if.end37
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  %call60 = call i32 @cfg80211_external_auth_request(ptr noundef %35, ptr noundef nonnull %auth, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end58.cleanup_crit_edge, label %do.end65

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end65:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.89) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %do.end58.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call60, %do.end65 ], [ 0, %do.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %auth) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_sta_list_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_new_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qtnf_sta_list_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_scan_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlink_chandef_q2cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ch_switch_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_radar_event(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_external_auth_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_update_owe_info_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 762, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qtnf_event_process_skb._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qtnf_event_process_skb._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 770, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qtnf_event_process_skb.__UNIQUE_ID_ddebug476, !7, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 689, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qtnf_event_parse._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @qtnf_event_parse._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 747, i32 3}
!18 = !{ptr @qtnf_event_parse._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @qtnf_event_parse._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 33, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qtnf_event_handle_sta_assoc._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @qtnf_event_handle_sta_assoc._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 39, i32 3}
!27 = !{ptr @qtnf_event_handle_sta_assoc._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @qtnf_event_handle_sta_assoc._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 51, i32 2}
!31 = !{ptr @qtnf_event_handle_sta_assoc.__UNIQUE_ID_ddebug463, !30, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!32 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 88, i32 3}
!35 = !{ptr @qtnf_event_handle_sta_assoc._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qtnf_event_handle_sta_assoc._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 110, i32 3}
!39 = !{ptr @qtnf_event_handle_sta_deauth._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qtnf_event_handle_sta_deauth._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 117, i32 3}
!43 = !{ptr @qtnf_event_handle_sta_deauth._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qtnf_event_handle_sta_deauth._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 125, i32 2}
!47 = !{ptr @qtnf_event_handle_sta_deauth.__UNIQUE_ID_ddebug464, !46, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!48 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 321, i32 3}
!51 = !{ptr @qtnf_event_handle_mgmt_received._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @qtnf_event_handle_mgmt_received._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 329, i32 2}
!55 = !{ptr @qtnf_event_handle_mgmt_received.__UNIQUE_ID_ddebug467, !54, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!56 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 355, i32 3}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @qtnf_event_handle_scan_results._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @qtnf_event_handle_scan_results._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 362, i32 3}
!64 = !{ptr @qtnf_event_handle_scan_results._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qtnf_event_handle_scan_results._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 425, i32 3}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @qtnf_event_handle_scan_complete._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @qtnf_event_handle_scan_complete._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 153, i32 3}
!73 = !{ptr @qtnf_event_handle_bss_join._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @qtnf_event_handle_bss_join._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 160, i32 3}
!77 = !{ptr @qtnf_event_handle_bss_join._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 165, i32 2}
!81 = !{ptr @qtnf_event_handle_bss_join.__UNIQUE_ID_ddebug465, !80, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!82 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 174, i32 3}
!85 = !{ptr @qtnf_event_handle_bss_join._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 188, i32 3}
!89 = !{ptr @qtnf_event_handle_bss_join._entry.46, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.48, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 193, i32 4}
!93 = !{ptr @qtnf_event_handle_bss_join._entry.49, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.51, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 202, i32 4}
!97 = !{ptr @qtnf_event_handle_bss_join._entry.52, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.54, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 220, i32 4}
!101 = !{ptr @qtnf_event_handle_bss_join._entry.55, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.57, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 240, i32 5}
!105 = !{ptr @qtnf_event_handle_bss_join._entry.58, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.60, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 257, i32 5}
!109 = !{ptr @qtnf_event_handle_bss_join._entry.61, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 265, i32 3}
!113 = !{ptr @qtnf_event_handle_bss_join._entry.64, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @qtnf_event_handle_bss_join._entry_ptr.66, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 288, i32 3}
!117 = !{ptr @qtnf_event_handle_bss_leave._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @qtnf_event_handle_bss_leave._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 295, i32 3}
!121 = !{ptr @qtnf_event_handle_bss_leave._entry.68, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @qtnf_event_handle_bss_leave._entry_ptr.70, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 300, i32 2}
!125 = !{ptr @qtnf_event_handle_bss_leave.__UNIQUE_ID_ddebug466, !124, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!126 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 445, i32 3}
!129 = !{ptr @qtnf_event_handle_freq_change._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @qtnf_event_handle_freq_change._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 455, i32 3}
!133 = !{ptr @qtnf_event_handle_freq_change._entry.74, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @qtnf_event_handle_freq_change._entry_ptr.76, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 462, i32 2}
!137 = !{ptr @qtnf_event_handle_freq_change.__UNIQUE_ID_ddebug468, !136, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!138 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 495, i32 3}
!141 = !{ptr @qtnf_event_handle_radar._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @qtnf_event_handle_radar._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.81, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 505, i32 3}
!145 = !{ptr @qtnf_event_handle_radar._entry.80, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @qtnf_event_handle_radar._entry_ptr.82, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.84, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 512, i32 2}
!149 = !{ptr @qtnf_event_handle_radar._entry.83, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @qtnf_event_handle_radar._entry_ptr.85, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 547, i32 3}
!153 = !{ptr @qtnf_event_handle_radar._entry.86, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @qtnf_event_handle_radar._entry_ptr.88, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 565, i32 3}
!157 = !{ptr @qtnf_event_handle_external_auth._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @qtnf_event_handle_external_auth._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 583, i32 2}
!161 = !{ptr @qtnf_event_handle_external_auth.__UNIQUE_ID_ddebug473, !160, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!162 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.93, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 589, i32 3}
!165 = !{ptr @qtnf_event_handle_external_auth._entry.92, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @qtnf_event_handle_external_auth._entry_ptr.94, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.95, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 603, i32 3}
!169 = !{ptr @qtnf_event_handle_mic_failure._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @qtnf_event_handle_mic_failure._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.97, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 613, i32 3}
!173 = !{ptr @qtnf_event_handle_mic_failure._entry.96, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @qtnf_event_handle_mic_failure._entry_ptr.98, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.100, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 621, i32 2}
!177 = !{ptr @qtnf_event_handle_mic_failure._entry.99, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @qtnf_event_handle_mic_failure._entry_ptr.101, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.102, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 641, i32 3}
!181 = !{ptr @qtnf_event_handle_update_owe._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @qtnf_event_handle_update_owe._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.104, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 651, i32 3}
!185 = !{ptr @qtnf_event_handle_update_owe._entry.103, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @qtnf_event_handle_update_owe._entry_ptr.105, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.107, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/quantenna/qtnfmac/event.c", i32 665, i32 2}
!189 = !{ptr @qtnf_event_handle_update_owe._entry.106, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @qtnf_event_handle_update_owe._entry_ptr.108, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{i64 2148709922, i64 2148709927, i64 2148709940, i64 2148709984, i64 2148710018, i64 2148710039}
!202 = !{i64 676112, i64 676129}
!203 = !{i64 2156993656, i64 2156994144, i64 2156993693, i64 2156993749, i64 2156993783, i64 2156993807, i64 2156993848, i64 2156993869, i64 2156993897, i64 2156993931}
!204 = !{i8 0, i8 2}
