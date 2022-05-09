; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_ieee80211.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_ieee80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.rtw_ieee802_11_elems = type { ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }

@RTW_WPA_OUI_TYPE = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\01", [28 x i8] zeroinitializer }, align 32
@RTW_WPA_VERSION = dso_local global { i16, [30 x i8] } { i16 1, [30 x i8] zeroinitializer }, align 32
@WPA_AUTH_KEY_MGMT_NONE = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\00", [28 x i8] zeroinitializer }, align 32
@WPA_AUTH_KEY_MGMT_UNSPEC_802_1X = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\01", [28 x i8] zeroinitializer }, align 32
@WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\02", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_NONE = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\00", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_WEP40 = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\01", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_TKIP = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\02", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_WRAP = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\03", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_CCMP = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\04", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_WEP104 = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\05", [28 x i8] zeroinitializer }, align 32
@RSN_VERSION_BSD = dso_local global { i16, [30 x i8] } { i16 1, [30 x i8] zeroinitializer }, align 32
@RSN_AUTH_KEY_MGMT_UNSPEC_802_1X = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\01", [28 x i8] zeroinitializer }, align 32
@RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\02", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_NONE = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\00", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_WEP40 = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\01", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_TKIP = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\02", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_WRAP = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\03", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_CCMP = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\04", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_WEP104 = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\05", [28 x i8] zeroinitializer }, align 32
@__const.rtw_parse_wpa2_ie.SUITE_1X = private unnamed_addr constant [4 x i8] c"\00\0F\AC\01", align 1
@__const.rtw_get_wapi_ie.wapi_oui1 = private unnamed_addr constant [4 x i8] c"\00\14r\01", align 1
@__const.rtw_get_wapi_ie.wapi_oui2 = private unnamed_addr constant [4 x i8] c"\00\14r\02", align 1
@__const.rtw_get_sec_ie.wpa_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@__const.rtw_get_wps_attr.wps_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\04", align 1
@rtw_initmac = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"local-mac-address\00", [46 x i8] zeroinitializer }, align 32
@_action_public_str = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ACT_PUB_BSSCOEXIST\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ACT_PUB_DSE_ENABLE\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ACT_PUB_DSE_DEENABLE\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ACT_PUB_DSE_REG_LOCATION\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ACT_PUB_EXT_CHL_SWITCH\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ACT_PUB_DSE_MSR_REQ\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ACT_PUB_DSE_MSR_RPRT\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ACT_PUB_MP\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ACT_PUB_DSE_PWR_CONSTRAINT\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ACT_PUB_VENDOR\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ACT_PUB_GAS_INITIAL_REQ\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ACT_PUB_GAS_INITIAL_RSP\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ACT_PUB_GAS_COMEBACK_REQ\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ACT_PUB_GAS_COMEBACK_RSP\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ACT_PUB_TDLS_DISCOVERY_RSP\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ACT_PUB_LOCATION_TRACK\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACT_PUB_RSVD\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@__sancov_gen_cov_switch_values.24 = internal global [24 x i64] [i64 22, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 16, i64 33, i64 36, i64 42, i64 45, i64 48, i64 50, i64 54, i64 55, i64 56, i64 61, i64 191, i64 192, i64 199, i64 221]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 20722, i64 36940]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"RTW_WPA_OUI_TYPE\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 13, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"RTW_WPA_VERSION\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 14, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"WPA_AUTH_KEY_MGMT_NONE\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 15, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [32 x i8] c"WPA_AUTH_KEY_MGMT_UNSPEC_802_1X\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 16, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [34 x i8] c"WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 17, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_NONE\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 18, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"WPA_CIPHER_SUITE_WEP40\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 19, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_TKIP\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 20, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_WRAP\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 21, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_CCMP\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 22, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"WPA_CIPHER_SUITE_WEP104\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 23, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"RSN_VERSION_BSD\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 25, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant [32 x i8] c"RSN_AUTH_KEY_MGMT_UNSPEC_802_1X\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 26, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [34 x i8] c"RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 27, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_NONE\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 28, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"RSN_CIPHER_SUITE_WEP40\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 29, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_TKIP\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 30, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_WRAP\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 31, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_CCMP\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 32, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"RSN_CIPHER_SUITE_WEP104\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 33, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1015, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"_action_public_str\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1165, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1166, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1167, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1168, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1169, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1170, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1171, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1172, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1173, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1174, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1175, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1176, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1177, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1178, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1179, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1180, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1181, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [50 x i8] c"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1182, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @RTW_WPA_OUI_TYPE, ptr @RTW_WPA_VERSION, ptr @WPA_AUTH_KEY_MGMT_NONE, ptr @WPA_AUTH_KEY_MGMT_UNSPEC_802_1X, ptr @WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X, ptr @WPA_CIPHER_SUITE_NONE, ptr @WPA_CIPHER_SUITE_WEP40, ptr @WPA_CIPHER_SUITE_TKIP, ptr @WPA_CIPHER_SUITE_WRAP, ptr @WPA_CIPHER_SUITE_CCMP, ptr @WPA_CIPHER_SUITE_WEP104, ptr @RSN_VERSION_BSD, ptr @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, ptr @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, ptr @RSN_CIPHER_SUITE_NONE, ptr @RSN_CIPHER_SUITE_WEP40, ptr @RSN_CIPHER_SUITE_TKIP, ptr @RSN_CIPHER_SUITE_WRAP, ptr @RSN_CIPHER_SUITE_CCMP, ptr @RSN_CIPHER_SUITE_WEP104, ptr @.str, ptr @_action_public_str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RTW_WPA_OUI_TYPE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RTW_WPA_VERSION to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_AUTH_KEY_MGMT_NONE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_AUTH_KEY_MGMT_UNSPEC_802_1X to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_NONE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_WEP40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_TKIP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_WRAP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_CCMP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_WEP104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_VERSION_BSD to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_NONE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_WEP40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_TKIP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_WRAP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_CCMP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_WEP104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_action_public_str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_get_bit_value_from_ieee_value(i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %val, label %entry.cleanup_crit_edge [
    i8 2, label %entry.if.then_crit_edge
    i8 4, label %if.then.fold.split
    i8 11, label %if.then.fold.split14
    i8 22, label %if.then.fold.split15
    i8 12, label %if.then.fold.split16
    i8 18, label %if.then.fold.split17
    i8 24, label %if.then.fold.split18
    i8 36, label %if.then.fold.split19
    i8 48, label %if.then.fold.split20
    i8 72, label %if.then.fold.split21
    i8 96, label %if.then.fold.split22
    i8 108, label %if.then.fold.split23
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split, %entry.if.then_crit_edge
  %i.012.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split14 ], [ 3, %if.then.fold.split15 ], [ 4, %if.then.fold.split16 ], [ 5, %if.then.fold.split17 ], [ 6, %if.then.fold.split18 ], [ 7, %if.then.fold.split19 ], [ 8, %if.then.fold.split20 ], [ 9, %if.then.fold.split21 ], [ 10, %if.then.fold.split22 ], [ 11, %if.then.fold.split23 ]
  %shl = shl nuw nsw i32 1, %i.012.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shl, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtw_is_cckrates_included(ptr nocapture noundef readonly %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not23 = icmp eq i8 %1, 0
  br i1 %tobool.not23, label %entry.return_crit_edge, label %while.body.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

while.body.preheader:                             ; preds = %entry
  %extract.t33 = trunc i8 %1 to i7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %.off0 = phi i7 [ %extract.t, %cleanup.while.body_crit_edge ], [ %extract.t33, %while.body.preheader ]
  %rate.addr.024 = phi ptr [ %incdec.ptr, %cleanup.while.body_crit_edge ], [ %rate, %while.body.preheader ]
  %switch.tableidx = add i7 %.off0, -2
  %2 = sext i7 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %2)
  %3 = icmp ult i7 %switch.tableidx, 21
  br i1 %3, label %switch.hole_check, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %incdec.ptr = getelementptr i8, ptr %rate.addr.024, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %5, 0
  %extract.t = trunc i8 %5 to i7
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

switch.hole_check:                                ; preds = %while.body
  %switch.maskindex = zext i7 %switch.tableidx to i32
  %switch.shifted = lshr i32 1049093, %switch.maskindex
  %6 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %switch.lobit.not = icmp eq i32 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.hole_check.return_crit_edge

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

return:                                           ; preds = %switch.hole_check.return_crit_edge, %cleanup.return_crit_edge, %entry.return_crit_edge
  %tobool.not.lcssa = phi i1 [ false, %entry.return_crit_edge ], [ true, %switch.hole_check.return_crit_edge ], [ false, %cleanup.return_crit_edge ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtw_is_cckratesonly_included(ptr nocapture noundef readonly %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not23 = icmp eq i8 %1, 0
  br i1 %tobool.not23, label %entry.return_crit_edge, label %while.body.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

while.body.preheader:                             ; preds = %entry
  %extract.t27 = trunc i8 %1 to i7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %.off0 = phi i7 [ %extract.t, %cleanup.while.body_crit_edge ], [ %extract.t27, %while.body.preheader ]
  %rate.addr.024 = phi ptr [ %incdec.ptr, %cleanup.while.body_crit_edge ], [ %rate, %while.body.preheader ]
  %2 = zext i7 %.off0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i7 %.off0, label %while.body.return_crit_edge [
    i7 2, label %while.body.cleanup_crit_edge
    i7 4, label %while.body.cleanup_crit_edge28
    i7 11, label %while.body.cleanup_crit_edge29
    i7 22, label %while.body.cleanup_crit_edge30
  ]

while.body.cleanup_crit_edge30:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.cleanup_crit_edge29:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.cleanup_crit_edge28:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.body.cleanup_crit_edge28, %while.body.cleanup_crit_edge29, %while.body.cleanup_crit_edge30
  %incdec.ptr = getelementptr i8, ptr %rate.addr.024, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %4, 0
  %extract.t = trunc i8 %4 to i7
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %while.body.return_crit_edge, %entry.return_crit_edge
  %tobool.not.lcssa = phi i1 [ true, %entry.return_crit_edge ], [ false, %while.body.return_crit_edge ], [ true, %cleanup.return_crit_edge ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_check_network_type(ptr nocapture noundef readonly %rate, i32 noundef %ratelen, i32 noundef %channel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %channel)
  %cmp = icmp sgt i32 %channel, 14
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.else:                                          ; preds = %entry
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not23.i = icmp eq i8 %1, 0
  br i1 %tobool.not23.i, label %if.else.return_crit_edge, label %while.body.preheader.i

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

while.body.preheader.i:                           ; preds = %if.else
  %extract.t27.i = trunc i8 %1 to i7
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %.off0.i = phi i7 [ %extract.t.i, %cleanup.i.while.body.i_crit_edge ], [ %extract.t27.i, %while.body.preheader.i ]
  %rate.addr.024.i = phi ptr [ %incdec.ptr.i, %cleanup.i.while.body.i_crit_edge ], [ %rate, %while.body.preheader.i ]
  %2 = zext i7 %.off0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i7 %.off0.i, label %while.body.i.while.body.i11_crit_edge [
    i7 2, label %while.body.i.cleanup.i_crit_edge
    i7 4, label %while.body.i.cleanup.i_crit_edge24
    i7 11, label %while.body.i.cleanup.i_crit_edge25
    i7 22, label %while.body.i.cleanup.i_crit_edge26
  ]

while.body.i.cleanup.i_crit_edge26:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

while.body.i.cleanup.i_crit_edge25:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

while.body.i.cleanup.i_crit_edge24:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

while.body.i.while.body.i11_crit_edge:            ; preds = %while.body.i
  br label %while.body.i11

cleanup.i:                                        ; preds = %while.body.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge24, %while.body.i.cleanup.i_crit_edge25, %while.body.i.cleanup.i_crit_edge26
  %incdec.ptr.i = getelementptr i8, ptr %rate.addr.024.i, i32 1
  %3 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %4, 0
  %extract.t.i = trunc i8 %4 to i7
  br i1 %tobool.not.i, label %cleanup.i.return_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

cleanup.i.return_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

while.body.i11:                                   ; preds = %cleanup.i15.while.body.i11_crit_edge, %while.body.i.while.body.i11_crit_edge
  %.off0.i9 = phi i7 [ %extract.t.i14, %cleanup.i15.while.body.i11_crit_edge ], [ %extract.t27.i, %while.body.i.while.body.i11_crit_edge ]
  %rate.addr.024.i10 = phi ptr [ %incdec.ptr.i12, %cleanup.i15.while.body.i11_crit_edge ], [ %rate, %while.body.i.while.body.i11_crit_edge ]
  %5 = zext i7 %.off0.i9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i7 %.off0.i9, label %cleanup.i15 [
    i7 2, label %while.body.i11.return_crit_edge
    i7 4, label %while.body.i11.return_crit_edge27
    i7 11, label %while.body.i11.return_crit_edge28
    i7 22, label %while.body.i11.return_crit_edge29
  ]

while.body.i11.return_crit_edge29:                ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

while.body.i11.return_crit_edge28:                ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

while.body.i11.return_crit_edge27:                ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

while.body.i11.return_crit_edge:                  ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

cleanup.i15:                                      ; preds = %while.body.i11
  %incdec.ptr.i12 = getelementptr i8, ptr %rate.addr.024.i10, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.i12, align 1
  %tobool.not.i13 = icmp eq i8 %7, 0
  %extract.t.i14 = trunc i8 %7 to i7
  br i1 %tobool.not.i13, label %cleanup.i15.return_crit_edge, label %cleanup.i15.while.body.i11_crit_edge

cleanup.i15.while.body.i11_crit_edge:             ; preds = %cleanup.i15
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i11

cleanup.i15.return_crit_edge:                     ; preds = %cleanup.i15
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

return:                                           ; preds = %cleanup.i15.return_crit_edge, %while.body.i11.return_crit_edge, %while.body.i11.return_crit_edge27, %while.body.i11.return_crit_edge28, %while.body.i11.return_crit_edge29, %cleanup.i.return_crit_edge, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.else.return_crit_edge ], [ 2, %cleanup.i15.return_crit_edge ], [ 3, %while.body.i11.return_crit_edge ], [ 3, %while.body.i11.return_crit_edge27 ], [ 3, %while.body.i11.return_crit_edge28 ], [ 3, %while.body.i11.return_crit_edge29 ], [ 1, %cleanup.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rtw_set_fixed_ie(ptr noundef writeonly %pbuf, i32 noundef %len, ptr nocapture noundef readonly %source, ptr nocapture noundef %frlen) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %pbuf, ptr %source, i32 %len)
  %1 = ptrtoint ptr %frlen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frlen, align 4
  %add = add i32 %2, %len
  store i32 %add, ptr %frlen, align 4
  %add.ptr = getelementptr i8, ptr %pbuf, i32 %len
  ret ptr %add.ptr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rtw_set_ie(ptr noundef writeonly %pbuf, i32 noundef %index, i32 noundef %len, ptr nocapture noundef readonly %source, ptr nocapture noundef %frlen) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %index to i8
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %pbuf, align 1
  %conv1 = trunc i32 %len to i8
  %add.ptr = getelementptr i8, ptr %pbuf, i32 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not = icmp eq i32 %len, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr3 = getelementptr i8, ptr %pbuf, i32 2
  %2 = call ptr @memcpy(ptr %add.ptr3, ptr %source, i32 %len)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %frlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frlen, align 4
  %add = add i32 %len, 2
  %add4 = add i32 %add, %4
  store i32 %add4, ptr %frlen, align 4
  %add.ptr5 = getelementptr i8, ptr %pbuf, i32 %len
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 2
  ret ptr %add.ptr6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_ie(ptr noundef readonly %pbuf, i32 noundef %index, ptr nocapture noundef writeonly %len, i32 noundef %limit) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp = icmp slt i32 %limit, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %add9, %if.else.while.cond_crit_edge ]
  %p.0 = phi ptr [ %pbuf, %if.end ], [ %add.ptr7, %if.else.while.cond_crit_edge ]
  %1 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p.0, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp1 = icmp eq i32 %conv, %index
  %add.ptr = getelementptr i8, ptr %p.0, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  %conv4 = zext i8 %4 to i32
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  %conv4.le = zext i8 %4 to i32
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4.le, ptr %len, align 4
  br label %cleanup

if.else:                                          ; preds = %while.cond
  %add = add nuw nsw i32 %conv4, 2
  %add.ptr7 = getelementptr i8, ptr %p.0, i32 %add
  %add9 = add i32 %add, %i.0
  %cmp11.not = icmp slt i32 %add9, %limit
  br i1 %cmp11.not, label %if.else.while.cond_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %p.0, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_ie_ex(ptr noundef readonly %in_ie, i32 noundef %in_len, i8 noundef zeroext %eid, ptr noundef readonly %oui, i8 noundef zeroext %oui_len, ptr noundef writeonly %ie, ptr noundef writeonly %ielen) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ielen, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = ptrtoint ptr %ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ielen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp ne ptr %in_ie, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_len)
  %cmp = icmp ne i32 %in_len, 0
  %or.cond.not = and i1 %tobool1.not, %cmp
  br i1 %or.cond.not, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %tobool8.not = icmp eq ptr %oui, null
  %conv11 = zext i8 %oui_len to i32
  br label %while.body

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.lr.ph
  %cnt.062 = phi i32 [ 0, %while.body.lr.ph ], [ %add34, %if.else.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %cnt.062
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %eid)
  %cmp6 = icmp eq i8 %2, %eid
  br i1 %cmp6, label %land.lhs.true, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %.pre = add i32 %cnt.062, 2
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  br i1 %tobool8.not, label %land.lhs.true.if.then13_crit_edge, label %lor.lhs.false9

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then13

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %add = add i32 %cnt.062, 2
  %arrayidx10 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr %arrayidx10, ptr nonnull %oui, i32 %conv11) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %lor.lhs.false9.if.then13_crit_edge, label %lor.lhs.false9.if.else_crit_edge

lor.lhs.false9.if.else_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

lor.lhs.false9.if.then13_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  %arrayidx.le = getelementptr i8, ptr %in_ie, i32 %cnt.062
  %tobool15.not = icmp eq ptr %ie, null
  br i1 %tobool15.not, label %if.then13.if.end22_crit_edge, label %if.then16

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  %add18 = add nuw i32 %cnt.062, 1
  %arrayidx19 = getelementptr i8, ptr %in_ie, i32 %add18
  %3 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %4 to i32
  %add21 = add nuw nsw i32 %conv20, 2
  %5 = call ptr @memcpy(ptr %ie, ptr %arrayidx.le, i32 %add21)
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.then13.if.end22_crit_edge
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  %add25 = add nuw i32 %cnt.062, 1
  %arrayidx26 = getelementptr i8, ptr %in_ie, i32 %add25
  %6 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %7 to i32
  %add28 = add nuw nsw i32 %conv27, 2
  %8 = ptrtoint ptr %ielen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add28, ptr %ielen, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false9.if.else_crit_edge, %while.body.if.else_crit_edge
  %add33.pre-phi = phi i32 [ %.pre, %while.body.if.else_crit_edge ], [ %add, %lor.lhs.false9.if.else_crit_edge ]
  %add30 = add nuw i32 %cnt.062, 1
  %arrayidx31 = getelementptr i8, ptr %in_ie, i32 %add30
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %10 to i32
  %add34 = add i32 %add33.pre-phi, %conv32
  %cmp4 = icmp ult i32 %add34, %in_len
  br i1 %cmp4, label %if.else.while.body_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then24, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %arrayidx.le, %if.then24 ], [ %arrayidx.le, %if.end22.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ies_remove_ie(ptr noundef %ies, ptr noundef %ies_len, i32 noundef %offset, i8 noundef zeroext %eid, ptr noundef readonly %oui, i8 noundef zeroext %oui_len) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ies, null
  %tobool1.not = icmp eq ptr %ies_len, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.exit_crit_edge, label %lor.lhs.false2

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %ies_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ies_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp.not = icmp ugt i32 %1, %offset
  br i1 %cmp.not, label %if.end, label %lor.lhs.false2.exit_crit_edge

lor.lhs.false2.exit_crit_edge:                    ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.end:                                           ; preds = %lor.lhs.false2
  %add.ptr = getelementptr i8, ptr %ies, i32 %offset
  %sub = sub i32 %1, %offset
  %tobool1.not.i34 = icmp ne ptr %add.ptr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i35 = icmp ne i32 %sub, 0
  %or.cond.not.i36 = and i1 %tobool1.not.i34, %cmp.i35
  br i1 %or.cond.not.i36, label %while.body.lr.ph.i.lr.ph, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

while.body.lr.ph.i.lr.ph:                         ; preds = %if.end
  %tobool8.not.i = icmp eq ptr %oui, null
  %conv11.i = zext i8 %oui_len to i32
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.then5.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.i.lr.ph
  %ret.040 = phi i32 [ 0, %while.body.lr.ph.i.lr.ph ], [ 1, %if.then5.while.body.lr.ph.i_crit_edge ]
  %search_len.038 = phi i32 [ %sub, %while.body.lr.ph.i.lr.ph ], [ %sub7, %if.then5.while.body.lr.ph.i_crit_edge ]
  %start.037 = phi ptr [ %add.ptr, %while.body.lr.ph.i.lr.ph ], [ %arrayidx.i.le, %if.then5.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cnt.062.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add34.i, %if.else.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %start.037, i32 %cnt.062.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %eid)
  %cmp6.i = icmp eq i8 %3, %eid
  br i1 %cmp6.i, label %land.lhs.true.i, label %while.body.if.else_crit_edge.i

while.body.if.else_crit_edge.i:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i = add i32 %cnt.062.i, 2
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %while.body.i
  br i1 %tobool8.not.i, label %land.lhs.true.i.rtw_get_ie_ex.exit_crit_edge, label %lor.lhs.false9.i

land.lhs.true.i.rtw_get_ie_ex.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_ie_ex.exit

lor.lhs.false9.i:                                 ; preds = %land.lhs.true.i
  %add.i = add i32 %cnt.062.i, 2
  %arrayidx10.i = getelementptr i8, ptr %start.037, i32 %add.i
  %bcmp.i = tail call i32 @bcmp(ptr %arrayidx10.i, ptr nonnull %oui, i32 %conv11.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool12.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false9.i.rtw_get_ie_ex.exit_crit_edge, label %lor.lhs.false9.i.if.else.i_crit_edge

lor.lhs.false9.i.if.else.i_crit_edge:             ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i

lor.lhs.false9.i.rtw_get_ie_ex.exit_crit_edge:    ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_ie_ex.exit

if.else.i:                                        ; preds = %lor.lhs.false9.i.if.else.i_crit_edge, %while.body.if.else_crit_edge.i
  %add33.pre-phi.i = phi i32 [ %.pre.i, %while.body.if.else_crit_edge.i ], [ %add.i, %lor.lhs.false9.i.if.else.i_crit_edge ]
  %add30.i = add nuw i32 %cnt.062.i, 1
  %arrayidx31.i = getelementptr i8, ptr %start.037, i32 %add30.i
  %4 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %5 to i32
  %add34.i = add i32 %add33.pre-phi.i, %conv32.i
  %cmp4.i = icmp ult i32 %add34.i, %search_len.038
  br i1 %cmp4.i, label %if.else.i.while.body.i_crit_edge, label %if.else.i.exit_crit_edge

if.else.i.exit_crit_edge:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

rtw_get_ie_ex.exit:                               ; preds = %lor.lhs.false9.i.rtw_get_ie_ex.exit_crit_edge, %land.lhs.true.i.rtw_get_ie_ex.exit_crit_edge
  %arrayidx.i.le = getelementptr i8, ptr %start.037, i32 %cnt.062.i
  %tobool3.not = icmp eq ptr %arrayidx.i.le, null
  br i1 %tobool3.not, label %rtw_get_ie_ex.exit.exit_crit_edge, label %if.then5

rtw_get_ie_ex.exit.exit_crit_edge:                ; preds = %rtw_get_ie_ex.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.then5:                                         ; preds = %rtw_get_ie_ex.exit
  %add25.i = add nuw i32 %cnt.062.i, 1
  %arrayidx26.i = getelementptr i8, ptr %start.037, i32 %add25.i
  %6 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %7 to i32
  %add28.i = add nuw nsw i32 %conv27.i, 2
  %add.ptr6 = getelementptr i8, ptr %arrayidx.i.le, i32 %add28.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %start.037 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub7 = add i32 %sub.ptr.sub.neg, %search_len.038
  %8 = call ptr @memcpy(ptr %arrayidx.i.le, ptr %add.ptr6, i32 %sub7)
  %9 = ptrtoint ptr %ies_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ies_len, align 4
  %sub8 = sub i32 %10, %add28.i
  store i32 %sub8, ptr %ies_len, align 4
  %cmp.i.not = icmp eq i32 %sub7, 0
  br i1 %cmp.i.not, label %if.then5.exit_crit_edge, label %if.then5.while.body.lr.ph.i_crit_edge

if.then5.while.body.lr.ph.i_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.lr.ph.i

if.then5.exit_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

exit:                                             ; preds = %if.then5.exit_crit_edge, %rtw_get_ie_ex.exit.exit_crit_edge, %if.else.i.exit_crit_edge, %if.end.exit_crit_edge, %lor.lhs.false2.exit_crit_edge, %entry.exit_crit_edge
  %ret.1 = phi i32 [ 0, %lor.lhs.false2.exit_crit_edge ], [ 0, %entry.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ %ret.040, %if.else.i.exit_crit_edge ], [ %ret.040, %rtw_get_ie_ex.exit.exit_crit_edge ], [ 1, %if.then5.exit_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_set_supported_rate(ptr nocapture noundef writeonly %supported_rates, i32 noundef %mode) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %supported_rates, i32 0, i32 16)
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %entry.sw.bb2_crit_edge
    i32 10, label %entry.sw.bb2_crit_edge7
    i32 8, label %entry.sw.bb2_crit_edge8
    i32 11, label %entry.sw.bb2_crit_edge9
  ]

entry.sw.bb2_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2

entry.sw.bb2_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2

entry.sw.bb2_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %2 = ptrtoint ptr %supported_rates to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -2105242730, ptr %supported_rates, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %3 = ptrtoint ptr %supported_rates to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 869784221743865964, ptr %supported_rates, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge7, %entry.sw.bb2_crit_edge8, %entry.sw.bb2_crit_edge9
  %4 = ptrtoint ptr %supported_rates to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -2105242730, ptr %supported_rates, align 1
  %add.ptr = getelementptr i8, ptr %supported_rates, i32 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 869784221743865964, ptr %add.ptr, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_get_rateset_len(ptr nocapture noundef readonly %rateset) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rateset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rateset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr i8, ptr %rateset, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.1 = icmp eq i8 %3, 0
  br i1 %cmp1.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i8, ptr %rateset, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.2 = icmp eq i8 %5, 0
  br i1 %cmp1.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr i8, ptr %rateset, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1.3 = icmp eq i8 %7, 0
  br i1 %cmp1.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr i8, ptr %rateset, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.4 = icmp eq i8 %9, 0
  br i1 %cmp1.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr i8, ptr %rateset, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.5 = icmp eq i8 %11, 0
  br i1 %cmp1.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr i8, ptr %rateset, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1.6 = icmp eq i8 %13, 0
  br i1 %cmp1.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr i8, ptr %rateset, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1.7 = icmp eq i8 %15, 0
  br i1 %cmp1.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr i8, ptr %rateset, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp1.8 = icmp eq i8 %17, 0
  br i1 %cmp1.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr i8, ptr %rateset, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1.9 = icmp eq i8 %19, 0
  br i1 %cmp1.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr i8, ptr %rateset, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp1.10 = icmp eq i8 %21, 0
  br i1 %cmp1.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr i8, ptr %rateset, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp1.11 = icmp eq i8 %23, 0
  br i1 %cmp1.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.12 = getelementptr i8, ptr %rateset, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp1.12 = icmp eq i8 %25, 0
  %spec.select = select i1 %cmp1.12, i32 12, i32 13
  br label %for.end

for.end:                                          ; preds = %for.inc.11, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ %spec.select, %for.inc.11 ]
  ret i32 %i.0.lcssa
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_generate_ie(ptr nocapture noundef %pregistrypriv) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 12, i32 8
  %beacon_period = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 7, i32 1
  %0 = ptrtoint ptr %beacon_period to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %beacon_period, align 1
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %add.ptr, align 2
  %add.ptr2 = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 12, i32 10
  %preamble = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 10
  %4 = ptrtoint ptr %preamble to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %preamble, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  %spec.store.select = select i1 %cmp, i16 8704, i16 512
  %6 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.store.select, ptr %add.ptr2, align 2
  %privacy = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 4
  %7 = ptrtoint ptr %privacy to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %privacy, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then10

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %9 = or i16 %spec.store.select, 4096
  %10 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr2, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %entry.if.end14_crit_edge
  %add.ptr16 = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 12, i32 12
  %ssid = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 3
  %11 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ssid, align 1
  %13 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %add.ptr16, align 1
  %conv1.i = trunc i32 %12 to i8
  %add.ptr.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 12, i32 13
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv1.i, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end14.rtw_set_ie.exit_crit_edge, label %if.then.i

if.end14.rtw_set_ie.exit_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_set_ie.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  %ssid18 = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 3, i32 1
  %add.ptr3.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 12, i32 14
  %15 = call ptr @memcpy(ptr %add.ptr3.i, ptr %ssid18, i32 %12)
  br label %rtw_set_ie.exit

rtw_set_ie.exit:                                  ; preds = %if.then.i, %if.end14.rtw_set_ie.exit_crit_edge
  %add.ptr5.i = getelementptr i8, ptr %add.ptr16, i32 %12
  %add.ptr6.i = getelementptr i8, ptr %add.ptr5.i, i32 2
  %wireless_mode20 = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 7
  %16 = ptrtoint ptr %wireless_mode20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wireless_mode20, align 2
  %supported_rates = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9
  %18 = call ptr @memset(ptr %supported_rates, i32 0, i32 16)
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %17, label %rtw_set_supported_rate.exit [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb1.i
    i8 3, label %rtw_set_ie.exit.sw.bb2.i_crit_edge
    i8 10, label %rtw_set_ie.exit.sw.bb2.i_crit_edge146
    i8 8, label %rtw_set_ie.exit.sw.bb2.i_crit_edge147
    i8 11, label %rtw_set_ie.exit.sw.bb2.i_crit_edge148
  ]

rtw_set_ie.exit.sw.bb2.i_crit_edge148:            ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2.i

rtw_set_ie.exit.sw.bb2.i_crit_edge147:            ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2.i

rtw_set_ie.exit.sw.bb2.i_crit_edge146:            ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2.i

rtw_set_ie.exit.sw.bb2.i_crit_edge:               ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %supported_rates to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 -2105242730, ptr %supported_rates, align 1
  br label %for.inc.i

sw.bb1.i:                                         ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  %21 = ptrtoint ptr %supported_rates to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 869784221743865964, ptr %supported_rates, align 1
  br label %for.inc.i

sw.bb2.i:                                         ; preds = %rtw_set_ie.exit.sw.bb2.i_crit_edge, %rtw_set_ie.exit.sw.bb2.i_crit_edge146, %rtw_set_ie.exit.sw.bb2.i_crit_edge147, %rtw_set_ie.exit.sw.bb2.i_crit_edge148
  %22 = ptrtoint ptr %supported_rates to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 -2105242730, ptr %supported_rates, align 1
  %add.ptr.i86 = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 4
  %23 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 869784221743865964, ptr %add.ptr.i86, align 1
  br label %for.inc.i

rtw_set_supported_rate.exit:                      ; preds = %rtw_set_ie.exit
  %24 = ptrtoint ptr %supported_rates to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr = load i8, ptr %supported_rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp1.i = icmp eq i8 %.pr, 0
  br i1 %cmp1.i, label %if.else, label %rtw_set_supported_rate.exit.for.inc.i_crit_edge

rtw_set_supported_rate.exit.for.inc.i_crit_edge:  ; preds = %rtw_set_supported_rate.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.inc.i:                                        ; preds = %rtw_set_supported_rate.exit.for.inc.i_crit_edge, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %arrayidx.1.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp1.1.i = icmp eq i8 %26, 0
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i97_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i97_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i97

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 2
  %27 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp1.2.i = icmp eq i8 %28, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i97_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i97_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i97

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 3
  %29 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp1.3.i = icmp eq i8 %30, 0
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i97_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i97_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i97

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 4
  %31 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp1.4.i = icmp eq i8 %32, 0
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i97_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i97_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i97

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 5
  %33 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp1.5.i = icmp eq i8 %34, 0
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i97_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i97_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i97

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 6
  %35 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp1.6.i = icmp eq i8 %36, 0
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i97_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i97_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i97

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 7
  %37 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp1.7.i = icmp eq i8 %38, 0
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i97_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i97_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i97

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %arrayidx.8.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 8
  %39 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp1.8.i = icmp eq i8 %40, 0
  br i1 %cmp1.8.i, label %for.inc.7.i.if.then.i97_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then.i97_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i97

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %arrayidx.9.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 9
  %41 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp1.9.i = icmp eq i8 %42, 0
  br i1 %cmp1.9.i, label %for.inc.8.i.if.then28_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then28_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then28

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %arrayidx.10.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 10
  %43 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp1.10.i = icmp eq i8 %44, 0
  br i1 %cmp1.10.i, label %for.inc.9.i.if.then28_crit_edge, label %for.inc.10.i

for.inc.9.i.if.then28_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then28

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %arrayidx.11.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 11
  %45 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp1.11.i = icmp eq i8 %46, 0
  br i1 %cmp1.11.i, label %for.inc.10.i.if.then28_crit_edge, label %for.inc.11.i

for.inc.10.i.if.then28_crit_edge:                 ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then28

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.12.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 12
  %47 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp1.12.i = icmp eq i8 %48, 0
  %spec.select.i = select i1 %cmp1.12.i, i32 12, i32 13
  br label %if.then28

if.then28:                                        ; preds = %for.inc.11.i, %for.inc.10.i.if.then28_crit_edge, %for.inc.9.i.if.then28_crit_edge, %for.inc.8.i.if.then28_crit_edge
  %i.0.lcssa.i = phi i32 [ 9, %for.inc.8.i.if.then28_crit_edge ], [ 10, %for.inc.9.i.if.then28_crit_edge ], [ 11, %for.inc.10.i.if.then28_crit_edge ], [ %spec.select.i, %for.inc.11.i ]
  %49 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %add.ptr6.i, align 1
  %add.ptr.i87 = getelementptr i8, ptr %add.ptr6.i, i32 1
  %50 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 8, ptr %add.ptr.i87, align 1
  %add.ptr3.i88 = getelementptr i8, ptr %add.ptr6.i, i32 2
  %51 = ptrtoint ptr %supported_rates to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %supported_rates, align 1
  %53 = ptrtoint ptr %add.ptr3.i88 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %add.ptr3.i88, align 1
  %add4.i90 = add i32 %12, 24
  br label %if.end35

if.else:                                          ; preds = %rtw_set_supported_rate.exit
  call void @__sanitizer_cov_trace_pc() #22
  %54 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %add.ptr6.i, align 1
  %add.ptr.i94 = getelementptr i8, ptr %add.ptr6.i, i32 1
  %55 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %add.ptr.i94, align 1
  br label %rtw_set_ie.exit102

if.then.i97:                                      ; preds = %for.inc.7.i.if.then.i97_crit_edge, %for.inc.6.i.if.then.i97_crit_edge, %for.inc.5.i.if.then.i97_crit_edge, %for.inc.4.i.if.then.i97_crit_edge, %for.inc.3.i.if.then.i97_crit_edge, %for.inc.2.i.if.then.i97_crit_edge, %for.inc.1.i.if.then.i97_crit_edge, %for.inc.i.if.then.i97_crit_edge
  %i.0.lcssa.i.ph.ph = phi i32 [ 1, %for.inc.i.if.then.i97_crit_edge ], [ 2, %for.inc.1.i.if.then.i97_crit_edge ], [ 3, %for.inc.2.i.if.then.i97_crit_edge ], [ 4, %for.inc.3.i.if.then.i97_crit_edge ], [ 5, %for.inc.4.i.if.then.i97_crit_edge ], [ 6, %for.inc.5.i.if.then.i97_crit_edge ], [ 7, %for.inc.6.i.if.then.i97_crit_edge ], [ 8, %for.inc.7.i.if.then.i97_crit_edge ]
  %56 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %add.ptr6.i, align 1
  %conv1.i93141 = trunc i32 %i.0.lcssa.i.ph.ph to i8
  %add.ptr.i94142 = getelementptr i8, ptr %add.ptr6.i, i32 1
  %57 = ptrtoint ptr %add.ptr.i94142 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv1.i93141, ptr %add.ptr.i94142, align 1
  %add.ptr3.i96 = getelementptr i8, ptr %add.ptr6.i, i32 2
  %58 = call ptr @memcpy(ptr %add.ptr3.i96, ptr %supported_rates, i32 %i.0.lcssa.i.ph.ph)
  br label %rtw_set_ie.exit102

rtw_set_ie.exit102:                               ; preds = %if.then.i97, %if.else
  %i.0.lcssa.i.ph145 = phi i32 [ 0, %if.else ], [ %i.0.lcssa.i.ph.ph, %if.then.i97 ]
  %add4.i = add i32 %12, 16
  %add4.i99 = add i32 %add4.i, %i.0.lcssa.i.ph145
  br label %if.end35

if.end35:                                         ; preds = %rtw_set_ie.exit102, %if.then28
  %cmp26138 = phi i1 [ true, %if.then28 ], [ false, %rtw_set_ie.exit102 ]
  %i.0.lcssa.i136 = phi i32 [ %i.0.lcssa.i, %if.then28 ], [ %i.0.lcssa.i.ph145, %rtw_set_ie.exit102 ]
  %sz.0 = phi i32 [ %add4.i90, %if.then28 ], [ %add4.i99, %rtw_set_ie.exit102 ]
  %59 = phi i32 [ 8, %if.then28 ], [ %i.0.lcssa.i.ph145, %rtw_set_ie.exit102 ]
  %60 = getelementptr i8, ptr %add.ptr6.i, i32 %59
  %ie.0 = getelementptr i8, ptr %60, i32 2
  %ds_config = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 7, i32 3
  %61 = ptrtoint ptr %ie.0 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 3, ptr %ie.0, align 1
  %add.ptr.i103 = getelementptr i8, ptr %ie.0, i32 1
  %62 = ptrtoint ptr %add.ptr.i103 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %add.ptr.i103, align 1
  %add.ptr3.i104 = getelementptr i8, ptr %ie.0, i32 2
  %63 = ptrtoint ptr %ds_config to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ds_config, align 1
  %65 = ptrtoint ptr %add.ptr3.i104 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %add.ptr3.i104, align 1
  %add.ptr6.i108 = getelementptr i8, ptr %add.ptr.i103, i32 2
  %atim_window = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 7, i32 2
  %66 = ptrtoint ptr %add.ptr6.i108 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 6, ptr %add.ptr6.i108, align 1
  %add.ptr.i109 = getelementptr i8, ptr %add.ptr6.i108, i32 1
  %67 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %add.ptr.i109, align 1
  %add.ptr3.i110 = getelementptr i8, ptr %add.ptr6.i108, i32 2
  %68 = ptrtoint ptr %atim_window to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %atim_window, align 1
  %70 = ptrtoint ptr %add.ptr3.i110 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %add.ptr3.i110, align 1
  %add4.i112 = add i32 %sz.0, 7
  %add.ptr6.i114 = getelementptr i8, ptr %add.ptr3.i110, i32 2
  br i1 %cmp26138, label %if.then42, label %if.end35.if.end47_crit_edge

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

if.then42:                                        ; preds = %if.end35
  %sub = add nsw i32 %i.0.lcssa.i136, -8
  %71 = ptrtoint ptr %add.ptr6.i114 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 50, ptr %add.ptr6.i114, align 1
  %conv1.i115 = trunc i32 %sub to i8
  %add.ptr.i116 = getelementptr i8, ptr %add.ptr6.i114, i32 1
  %72 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv1.i115, ptr %add.ptr.i116, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not.i117 = icmp eq i32 %sub, 0
  br i1 %cmp.not.i117, label %if.then42.rtw_set_ie.exit124_crit_edge, label %if.then.i119

if.then42.rtw_set_ie.exit124_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_set_ie.exit124

if.then.i119:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr45 = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 8
  %add.ptr3.i118 = getelementptr i8, ptr %add.ptr6.i114, i32 2
  %73 = call ptr @memcpy(ptr %add.ptr3.i118, ptr %add.ptr45, i32 %sub)
  br label %rtw_set_ie.exit124

rtw_set_ie.exit124:                               ; preds = %if.then.i119, %if.then42.rtw_set_ie.exit124_crit_edge
  %add.i120 = add nsw i32 %i.0.lcssa.i136, -6
  %add4.i121 = add i32 %add.i120, %add4.i112
  br label %if.end47

if.end47:                                         ; preds = %rtw_set_ie.exit124, %if.end35.if.end47_crit_edge
  %sz.1 = phi i32 [ %add4.i121, %rtw_set_ie.exit124 ], [ %add4.i112, %if.end35.if.end47_crit_edge ]
  ret i32 %sz.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_wpa_ie(ptr noundef %pie, ptr nocapture noundef writeonly %wpa_ie_len, i32 noundef %limit) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp.i40 = icmp slt i32 %limit, 1
  br i1 %cmp.i40, label %entry.cleanup_crit_edge, label %while.cond.i.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.cond.i.preheader.lr.ph:                     ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint ptr %pie to i32
  %sub.ptr.sub.neg = add i32 %sub.ptr.rhs.cast, -2
  %sub = add i32 %sub.ptr.sub.neg, %limit
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end15, %while.cond.i.preheader.lr.ph
  %limit_new.042 = phi i32 [ %limit, %while.cond.i.preheader.lr.ph ], [ %sub11, %if.end15 ]
  %pbuf.041 = phi ptr [ %pie, %while.cond.i.preheader.lr.ph ], [ %add.ptr16, %if.end15 ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %i.0.i = phi i32 [ %add9.i, %if.else.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %p.0.i = phi ptr [ %add.ptr7.i, %if.else.i.while.cond.i_crit_edge ], [ %pbuf.041, %while.cond.i.preheader ]
  %0 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp1.i = icmp eq i8 %1, -35
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %3 to i32
  br i1 %cmp1.i, label %rtw_get_ie.exit, label %if.else.i

if.else.i:                                        ; preds = %while.cond.i
  %add.i = add nuw nsw i32 %conv4.i, 2
  %add.ptr7.i = getelementptr i8, ptr %p.0.i, i32 %add.i
  %add9.i = add i32 %add.i, %i.0.i
  %cmp11.not.i = icmp slt i32 %add9.i, %limit_new.042
  br i1 %cmp11.not.i, label %if.else.i.while.cond.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i

rtw_get_ie.exit:                                  ; preds = %while.cond.i
  %conv4.i.le = zext i8 %3 to i32
  %tobool.not = icmp eq ptr %p.0.i, null
  br i1 %tobool.not, label %rtw_get_ie.exit.cleanup_crit_edge, label %if.then

rtw_get_ie.exit.cleanup_crit_edge:                ; preds = %rtw_get_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then:                                          ; preds = %rtw_get_ie.exit
  %add.ptr = getelementptr i8, ptr %p.0.i, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end, label %if.then.check_next_ie_crit_edge

if.then.check_next_ie_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %check_next_ie

if.end:                                           ; preds = %if.then
  %add.ptr4 = getelementptr i8, ptr %p.0.i, i32 6
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %le_tmp.0.copyload = load i16, ptr %add.ptr4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %le_tmp.0.copyload)
  %cmp.not = icmp eq i16 %le_tmp.0.copyload, 256
  br i1 %cmp.not, label %if.end7, label %if.end.check_next_ie_crit_edge

if.end.check_next_ie_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %check_next_ie

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.le = getelementptr i8, ptr %p.0.i, i32 1
  %5 = ptrtoint ptr %add.ptr.i.le to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i.le, align 1
  %conv9 = zext i8 %6 to i32
  br label %cleanup

check_next_ie:                                    ; preds = %if.end.check_next_ie_crit_edge, %if.then.check_next_ie_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0.i to i32
  %7 = add i32 %sub.ptr.lhs.cast, %conv4.i.le
  %sub11 = sub i32 %sub, %7
  %cmp12 = icmp slt i32 %sub11, 1
  br i1 %cmp12, label %check_next_ie.cleanup_crit_edge, label %if.end15

check_next_ie.cleanup_crit_edge:                  ; preds = %check_next_ie
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end15:                                         ; preds = %check_next_ie
  call void @__sanitizer_cov_trace_pc() #22
  %add = add nuw nsw i32 %conv4.i.le, 2
  %add.ptr16 = getelementptr i8, ptr %p.0.i, i32 %add
  br label %while.cond.i.preheader

cleanup:                                          ; preds = %check_next_ie.cleanup_crit_edge, %if.end7, %rtw_get_ie.exit.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %conv9, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %rtw_get_ie.exit.cleanup_crit_edge ], [ 0, %check_next_ie.cleanup_crit_edge ]
  %retval.0 = phi ptr [ %p.0.i, %if.end7 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.else.i.cleanup_crit_edge ], [ null, %rtw_get_ie.exit.cleanup_crit_edge ], [ null, %check_next_ie.cleanup_crit_edge ]
  %8 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %wpa_ie_len, align 4
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_wpa2_ie(ptr noundef readonly %pie, ptr nocapture noundef writeonly %rsn_ie_len, i32 noundef %limit) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp.i = icmp slt i32 %limit, 1
  br i1 %cmp.i, label %entry.rtw_get_ie.exit_crit_edge, label %if.end.i

entry.rtw_get_ie.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_ie.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rsn_ie_len, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i.while.cond.i_crit_edge, %if.end.i
  %i.0.i = phi i32 [ 0, %if.end.i ], [ %add9.i, %if.else.i.while.cond.i_crit_edge ]
  %p.0.i = phi ptr [ %pie, %if.end.i ], [ %add.ptr7.i, %if.else.i.while.cond.i_crit_edge ]
  %1 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %2)
  %cmp1.i = icmp eq i8 %2, 48
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %4 to i32
  br i1 %cmp1.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  %conv4.i.le = zext i8 %4 to i32
  %5 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4.i.le, ptr %rsn_ie_len, align 4
  br label %rtw_get_ie.exit

if.else.i:                                        ; preds = %while.cond.i
  %add.i = add nuw nsw i32 %conv4.i, 2
  %add.ptr7.i = getelementptr i8, ptr %p.0.i, i32 %add.i
  %add9.i = add i32 %add.i, %i.0.i
  %cmp11.not.i = icmp slt i32 %add9.i, %limit
  br i1 %cmp11.not.i, label %if.else.i.while.cond.i_crit_edge, label %if.else.i.rtw_get_ie.exit_crit_edge

if.else.i.rtw_get_ie.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_ie.exit

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i

rtw_get_ie.exit:                                  ; preds = %if.else.i.rtw_get_ie.exit_crit_edge, %if.then3.i, %entry.rtw_get_ie.exit_crit_edge
  %retval.0.i = phi ptr [ %p.0.i, %if.then3.i ], [ null, %entry.rtw_get_ie.exit_crit_edge ], [ null, %if.else.i.rtw_get_ie.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_wpa_cipher_suite(ptr nocapture noundef readonly %s) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_NONE, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end:                                           ; preds = %entry
  %bcmp21 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_WEP40, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21)
  %tobool2.not = icmp eq i32 %bcmp21, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end4:                                          ; preds = %if.end
  %bcmp22 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_TKIP, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22)
  %tobool6.not = icmp eq i32 %bcmp22, 0
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end8:                                          ; preds = %if.end4
  %bcmp23 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_CCMP, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp23)
  %tobool10.not = icmp eq i32 %bcmp23, 0
  br i1 %tobool10.not, label %if.end8.return_crit_edge, label %if.end12

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %bcmp24 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_WEP104, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24)
  %tobool14.not = icmp eq i32 %bcmp24, 0
  %. = select i1 %tobool14.not, i32 4, i32 0
  br label %return

return:                                           ; preds = %if.end12, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ], [ 8, %if.end4.return_crit_edge ], [ 16, %if.end8.return_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_wpa2_cipher_suite(ptr nocapture noundef readonly %s) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_NONE, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end:                                           ; preds = %entry
  %bcmp21 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_WEP40, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21)
  %tobool2.not = icmp eq i32 %bcmp21, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end4:                                          ; preds = %if.end
  %bcmp22 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_TKIP, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22)
  %tobool6.not = icmp eq i32 %bcmp22, 0
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end8:                                          ; preds = %if.end4
  %bcmp23 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_CCMP, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp23)
  %tobool10.not = icmp eq i32 %bcmp23, 0
  br i1 %tobool10.not, label %if.end8.return_crit_edge, label %if.end12

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %bcmp24 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_WEP104, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24)
  %tobool14.not = icmp eq i32 %bcmp24, 0
  %. = select i1 %tobool14.not, i32 4, i32 0
  br label %return

return:                                           ; preds = %if.end12, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ], [ 8, %if.end4.return_crit_edge ], [ 16, %if.end8.return_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_parse_wpa_ie(ptr nocapture noundef readonly %wpa_ie, i32 noundef %wpa_ie_len, ptr nocapture noundef writeonly %group_cipher, ptr nocapture noundef %pairwise_cipher, ptr noundef writeonly %is_8021x) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wpa_ie_len)
  %cmp = icmp slt i32 %wpa_ie_len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wpa_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp1.not = icmp eq i8 %1, -35
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %wpa_ie, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = trunc i32 %wpa_ie_len to i8
  %5 = add i8 %4, -2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6.not = icmp eq i8 %3, %5
  br i1 %cmp6.not, label %lor.lhs.false8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %add.ptr9 = getelementptr i8, ptr %wpa_ie, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr9, ptr noundef nonnull dereferenceable(4) @RTW_WPA_OUI_TYPE, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end11, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %wpa_ie_len)
  %cmp14 = icmp ugt i32 %wpa_ie_len, 11
  br i1 %cmp14, label %if.end24, label %if.else

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %wpa_ie_len)
  %cmp20 = icmp ugt i32 %wpa_ie_len, 8
  br i1 %cmp20, label %if.else.cleanup_crit_edge, label %if.else.if.end49.thread_crit_edge

if.else.if.end49.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  %add.ptr12 = getelementptr i8, ptr %wpa_ie, i32 8
  %call17 = tail call i32 @rtw_get_wpa_cipher_suite(ptr noundef %add.ptr12)
  %6 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call17, ptr %group_cipher, align 4
  %sub19 = add nsw i32 %wpa_ie_len, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub19)
  %cmp25 = icmp ugt i32 %sub19, 1
  br i1 %cmp25, label %if.then27, label %if.else44

if.then27:                                        ; preds = %if.end24
  %add.ptr18 = getelementptr i8, ptr %wpa_ie, i32 12
  %7 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr18, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #20
  %conv29 = zext i16 %9 to i32
  %sub31 = add nsw i32 %wpa_ie_len, -14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp32 = icmp eq i16 %8, 0
  %mul = shl nuw nsw i32 %conv29, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub31, i32 %mul)
  %cmp35 = icmp ult i32 %sub31, %mul
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp35
  br i1 %or.cond, label %if.then27.cleanup_crit_edge, label %for.body.preheader

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.preheader:                               ; preds = %if.then27
  %add.ptr30 = getelementptr i8, ptr %wpa_ie, i32 14
  %umax = call i32 @llvm.umax.i32(i32 %conv29, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pos.1110 = phi ptr [ %add.ptr42, %for.body.for.body_crit_edge ], [ %add.ptr30, %for.body.preheader ]
  %left.1109 = phi i32 [ %sub43, %for.body.for.body_crit_edge ], [ %sub31, %for.body.preheader ]
  %i.0108 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call41 = tail call i32 @rtw_get_wpa_cipher_suite(ptr noundef %pos.1110)
  %10 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pairwise_cipher, align 4
  %or = or i32 %11, %call41
  store i32 %or, ptr %pairwise_cipher, align 4
  %add.ptr42 = getelementptr i8, ptr %pos.1110, i32 4
  %sub43 = add i32 %left.1109, -4
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end49, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.else44:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub19)
  %cmp45 = icmp eq i32 %sub19, 1
  br i1 %cmp45, label %if.else44.cleanup_crit_edge, label %if.else44.if.end49.thread_crit_edge

if.else44.if.end49.thread_crit_edge:              ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49.thread

if.else44.cleanup_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end49.thread:                                  ; preds = %if.else44.if.end49.thread_crit_edge, %if.else.if.end49.thread_crit_edge
  br label %cleanup

if.end49:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub43)
  %phi.cmp = icmp sgt i32 %sub43, 5
  %tobool50.not = icmp ne ptr %is_8021x, null
  %or.cond93 = select i1 %tobool50.not, i1 %phi.cmp, i1 false
  br i1 %or.cond93, label %if.then54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then54:                                        ; preds = %if.end49
  %add.ptr55 = getelementptr i8, ptr %pos.1110, i32 6
  %bcmp92 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr55, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp92)
  %tobool57.not = icmp eq i32 %bcmp92, 0
  br i1 %tobool57.not, label %if.then58, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then58:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %is_8021x to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %is_8021x, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.then54.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end49.thread, %if.else44.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false8.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then27.cleanup_crit_edge ], [ 0, %if.else44.cleanup_crit_edge ], [ 1, %if.then58 ], [ 1, %if.then54.cleanup_crit_edge ], [ 1, %if.end49.cleanup_crit_edge ], [ 1, %if.end49.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_parse_wpa2_ie(ptr nocapture noundef readonly %rsn_ie, i32 noundef %rsn_ie_len, ptr nocapture noundef writeonly %group_cipher, ptr nocapture noundef %pairwise_cipher, ptr noundef writeonly %is_8021x) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rsn_ie_len)
  %cmp = icmp slt i32 %rsn_ie_len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %rsn_ie to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsn_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp1.not = icmp eq i8 %1, 48
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %rsn_ie, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = trunc i32 %rsn_ie_len to i8
  %5 = add i8 %4, -2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6.not = icmp eq i8 %3, %5
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rsn_ie_len)
  %cmp12 = icmp ugt i32 %rsn_ie_len, 7
  br i1 %cmp12, label %if.end21, label %if.else

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rsn_ie_len)
  %cmp17 = icmp ugt i32 %rsn_ie_len, 4
  br i1 %cmp17, label %if.else.cleanup_crit_edge, label %if.else.if.end46.thread_crit_edge

if.else.if.end46.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %add.ptr10 = getelementptr i8, ptr %rsn_ie, i32 4
  %call = tail call i32 @rtw_get_wpa2_cipher_suite(ptr noundef %add.ptr10)
  %6 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %group_cipher, align 4
  %sub16 = add nsw i32 %rsn_ie_len, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub16)
  %cmp22 = icmp ugt i32 %sub16, 1
  br i1 %cmp22, label %if.then24, label %if.else41

if.then24:                                        ; preds = %if.end21
  %add.ptr15 = getelementptr i8, ptr %rsn_ie, i32 8
  %7 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr15, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #20
  %conv26 = zext i16 %9 to i32
  %sub28 = add nsw i32 %rsn_ie_len, -10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp29 = icmp eq i16 %8, 0
  %mul = shl nuw nsw i32 %conv26, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28, i32 %mul)
  %cmp32 = icmp ult i32 %sub28, %mul
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp32
  br i1 %or.cond, label %if.then24.cleanup_crit_edge, label %for.body.preheader

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.preheader:                               ; preds = %if.then24
  %add.ptr27 = getelementptr i8, ptr %rsn_ie, i32 10
  %umax = call i32 @llvm.umax.i32(i32 %conv26, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pos.1104 = phi ptr [ %add.ptr39, %for.body.for.body_crit_edge ], [ %add.ptr27, %for.body.preheader ]
  %left.1103 = phi i32 [ %sub40, %for.body.for.body_crit_edge ], [ %sub28, %for.body.preheader ]
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call38 = tail call i32 @rtw_get_wpa2_cipher_suite(ptr noundef %pos.1104)
  %10 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pairwise_cipher, align 4
  %or = or i32 %11, %call38
  store i32 %or, ptr %pairwise_cipher, align 4
  %add.ptr39 = getelementptr i8, ptr %pos.1104, i32 4
  %sub40 = add i32 %left.1103, -4
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end46, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.else41:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub16)
  %cmp42 = icmp eq i32 %sub16, 1
  br i1 %cmp42, label %if.else41.cleanup_crit_edge, label %if.else41.if.end46.thread_crit_edge

if.else41.if.end46.thread_crit_edge:              ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46.thread

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end46.thread:                                  ; preds = %if.else41.if.end46.thread_crit_edge, %if.else.if.end46.thread_crit_edge
  br label %cleanup

if.end46:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub40)
  %phi.cmp = icmp sgt i32 %sub40, 5
  %tobool.not = icmp ne ptr %is_8021x, null
  %or.cond87 = select i1 %tobool.not, i1 %phi.cmp, i1 false
  br i1 %or.cond87, label %if.then50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then50:                                        ; preds = %if.end46
  %add.ptr51 = getelementptr i8, ptr %pos.1104, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr51, ptr noundef nonnull dereferenceable(4) @__const.rtw_parse_wpa2_ie.SUITE_1X, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool53.not = icmp eq i32 %bcmp, 0
  br i1 %tobool53.not, label %if.then54, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %is_8021x to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %is_8021x, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.then50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end46.thread, %if.else41.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.else41.cleanup_crit_edge ], [ 1, %if.then54 ], [ 1, %if.then50.cleanup_crit_edge ], [ 1, %if.end46.cleanup_crit_edge ], [ 1, %if.end46.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_get_wapi_ie(ptr noundef readonly %in_ie, i32 noundef %in_len, ptr noundef writeonly %wapi_ie, ptr noundef %wapi_len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wapi_len, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = ptrtoint ptr %wapi_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %wapi_len, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %in_ie, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_len)
  %cmp = icmp eq i32 %in_len, 0
  %or.cond = or i1 %tobool1.not, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp478 = icmp ugt i32 %in_len, 12
  br i1 %cmp478, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool16.not = icmp eq ptr %wapi_ie, null
  br label %while.body

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %while.body.lr.ph
  %cnt.079 = phi i32 [ 12, %while.body.lr.ph ], [ %cnt.1, %if.end42.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %cnt.079
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %2)
  %cmp5 = icmp eq i8 %2, 68
  br i1 %cmp5, label %land.lhs.true, label %while.body.if.end42_crit_edge

while.body.if.end42_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

land.lhs.true:                                    ; preds = %while.body
  %add = add i32 %cnt.079, 6
  %arrayidx7 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx7, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wapi_ie.wapi_oui1, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %land.lhs.true.if.then15_crit_edge, label %lor.lhs.false9

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then15

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %bcmp77 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx7, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wapi_ie.wapi_oui2, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp77)
  %tobool14.not = icmp eq i32 %bcmp77, 0
  br i1 %tobool14.not, label %lor.lhs.false9.if.then15_crit_edge, label %lor.lhs.false9.if.end42_crit_edge

lor.lhs.false9.if.end42_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

lor.lhs.false9.if.then15_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false9.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  br i1 %tobool16.not, label %if.then15.if.end23_crit_edge, label %if.then17

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #22
  %add19 = add nuw i32 %cnt.079, 1
  %arrayidx20 = getelementptr i8, ptr %in_ie, i32 %add19
  %3 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %4 to i32
  %add22 = add nuw nsw i32 %conv21, 2
  %5 = call ptr @memcpy(ptr %wapi_ie, ptr %arrayidx, i32 %add22)
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.then15.if.end23_crit_edge
  br i1 %tobool.not, label %if.end23.if.end42_crit_edge, label %if.then25

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  %add26 = add nuw i32 %cnt.079, 1
  %arrayidx27 = getelementptr i8, ptr %in_ie, i32 %add26
  %6 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %7 to i16
  %add29 = add nuw nsw i16 %conv28, 2
  %8 = ptrtoint ptr %wapi_len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add29, ptr %wapi_len, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then25, %if.end23.if.end42_crit_edge, %lor.lhs.false9.if.end42_crit_edge, %while.body.if.end42_crit_edge
  %add37.pn = add nuw i32 %cnt.079, 1
  %add40.pn.in.in.in = getelementptr i8, ptr %in_ie, i32 %add37.pn
  %9 = ptrtoint ptr %add40.pn.in.in.in to i32
  call void @__asan_load1_noabort(i32 %9)
  %add40.pn.in.in = load i8, ptr %add40.pn.in.in.in, align 1
  %add40.pn.in = zext i8 %add40.pn.in.in to i32
  %add40.pn = add i32 %cnt.079, 2
  %cnt.1 = add i32 %add40.pn, %add40.pn.in
  %cmp4 = icmp ult i32 %cnt.1, %in_len
  br i1 %cmp4, label %if.end42.while.body_crit_edge, label %if.end42.while.end_crit_edge

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %if.then44

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then44:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %wapi_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wapi_len, align 2
  %conv45 = zext i16 %11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %conv45, %if.then44 ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_get_sec_ie(ptr nocapture noundef readonly %in_ie, i32 noundef %in_len, ptr noundef writeonly %rsn_ie, ptr nocapture noundef writeonly %rsn_len, ptr noundef writeonly %wpa_ie, ptr nocapture noundef writeonly %wpa_len) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp79 = icmp ugt i32 %in_len, 12
  br i1 %cmp79, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool26.not = icmp eq ptr %rsn_ie, null
  %tobool5.not = icmp eq ptr %wpa_ie, null
  br label %while.body

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %while.body.lr.ph
  %cnt.080 = phi i32 [ 12, %while.body.lr.ph ], [ %cnt.1, %if.end51.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %cnt.080
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %1, label %while.body.if.else44_crit_edge [
    i8 -35, label %land.lhs.true
    i8 48, label %if.then25
  ]

while.body.if.else44_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else44

land.lhs.true:                                    ; preds = %while.body
  %add = add i32 %cnt.080, 2
  %arrayidx3 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx3, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else44_crit_edge

land.lhs.true.if.else44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else44

if.then:                                          ; preds = %land.lhs.true
  %.pre = add nuw i32 %cnt.080, 1
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx9 = getelementptr i8, ptr %in_ie, i32 %.pre
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %4 to i32
  %add11 = add nuw nsw i32 %conv10, 2
  %5 = call ptr @memcpy(ptr %wpa_ie, ptr %arrayidx, i32 %add11)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %arrayidx13 = getelementptr i8, ptr %in_ie, i32 %.pre
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i16
  %add15 = add nuw nsw i16 %conv14, 2
  %8 = ptrtoint ptr %wpa_len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add15, ptr %wpa_len, align 2
  br label %if.end51

if.then25:                                        ; preds = %while.body
  %.pre81 = add nuw i32 %cnt.080, 1
  br i1 %tobool26.not, label %if.then25.if.end33_crit_edge, label %if.then27

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx30 = getelementptr i8, ptr %in_ie, i32 %.pre81
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %10 to i32
  %add32 = add nuw nsw i32 %conv31, 2
  %11 = call ptr @memcpy(ptr %rsn_ie, ptr %arrayidx, i32 %add32)
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then25.if.end33_crit_edge
  %arrayidx35 = getelementptr i8, ptr %in_ie, i32 %.pre81
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %13 to i16
  %add37 = add nuw nsw i16 %conv36, 2
  %14 = ptrtoint ptr %rsn_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add37, ptr %rsn_len, align 2
  br label %if.end51

if.else44:                                        ; preds = %land.lhs.true.if.else44_crit_edge, %while.body.if.else44_crit_edge
  %add45 = add nuw i32 %cnt.080, 1
  %arrayidx46 = getelementptr i8, ptr %in_ie, i32 %add45
  br label %if.end51

if.end51:                                         ; preds = %if.else44, %if.end33, %if.end
  %add42.pn.in.in.in = phi ptr [ %arrayidx35, %if.end33 ], [ %arrayidx46, %if.else44 ], [ %arrayidx13, %if.end ]
  %15 = ptrtoint ptr %add42.pn.in.in.in to i32
  call void @__asan_load1_noabort(i32 %15)
  %add42.pn.in.in = load i8, ptr %add42.pn.in.in.in, align 1
  %add42.pn.in = zext i8 %add42.pn.in.in to i32
  %add42.pn = add i32 %cnt.080, 2
  %cnt.1 = add i32 %add42.pn, %add42.pn.in
  %cmp = icmp ult i32 %cnt.1, %in_len
  br i1 %cmp, label %if.end51.while.body_crit_edge, label %if.end51.while.end_crit_edge

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.end:                                        ; preds = %if.end51.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_is_wps_ie(ptr noundef readonly %ie_ptr, ptr nocapture noundef writeonly %wps_ielen) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ie_ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ie_ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ie_ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp = icmp eq i8 %1, -35
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %arrayidx2 = getelementptr i8, ptr %ie_ptr, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx2, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wps_attr.wps_oui, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx5 = getelementptr i8, ptr %ie_ptr, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv6, 2
  %4 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %wps_ielen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_wps_ie(ptr noundef readonly %in_ie, i32 noundef %in_len, ptr noundef writeonly %wps_ie, ptr noundef writeonly %wps_ielen) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wps_ielen, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wps_ielen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp ne ptr %in_ie, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_len)
  %cmp = icmp ne i32 %in_len, 0
  %or.cond.not = and i1 %tobool1.not, %cmp
  br i1 %or.cond.not, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.else.while.body_crit_edge, %if.end.while.body_crit_edge
  %cnt.067 = phi i32 [ %add35, %if.else.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %cnt.067
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %2)
  %cmp5 = icmp eq i8 %2, -35
  %add = add i32 %cnt.067, 2
  br i1 %cmp5, label %land.lhs.true, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %arrayidx7 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx7, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wps_attr.wps_oui, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %arrayidx.le = getelementptr i8, ptr %in_ie, i32 %cnt.067
  %tobool11.not = icmp eq ptr %wps_ie, null
  br i1 %tobool11.not, label %if.then9.if.end18_crit_edge, label %if.then12

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  %add14 = add nuw i32 %cnt.067, 1
  %arrayidx15 = getelementptr i8, ptr %in_ie, i32 %add14
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %4 to i32
  %add17 = add nuw nsw i32 %conv16, 2
  %5 = call ptr @memcpy(ptr %wps_ie, ptr %arrayidx.le, i32 %add17)
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.then9.if.end18_crit_edge
  br i1 %tobool.not, label %if.end18.cleanup_crit_edge, label %if.then20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  %add21 = add nuw i32 %cnt.067, 1
  %arrayidx22 = getelementptr i8, ptr %in_ie, i32 %add21
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %7 to i32
  %add24 = add nuw nsw i32 %conv23, 2
  %8 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add24, ptr %wps_ielen, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %add31 = add nuw i32 %cnt.067, 1
  %arrayidx32 = getelementptr i8, ptr %in_ie, i32 %add31
  %9 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %10 to i32
  %add35 = add i32 %add, %conv33
  %cmp4 = icmp ult i32 %add35, %in_len
  br i1 %cmp4, label %if.else.while.body_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then20, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %arrayidx.le, %if.then20 ], [ %arrayidx.le, %if.end18.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_wps_attr(ptr noundef %wps_ie, i32 noundef %wps_ielen, i16 noundef zeroext %target_attr_id, ptr noundef writeonly %buf_attr, ptr noundef writeonly %len_attr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %len_attr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = ptrtoint ptr %len_attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len_attr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %wps_ie to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wps_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %2)
  %cmp.not = icmp eq i8 %2, -35
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup31_crit_edge

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup31

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %wps_ie, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wps_attr.wps_oui, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup31_crit_edge

lor.lhs.false.cleanup31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup31

if.end4:                                          ; preds = %lor.lhs.false
  %sub.ptr.rhs.cast = ptrtoint ptr %wps_ie to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %wps_ielen)
  %cmp656 = icmp ugt i32 %wps_ielen, 6
  br i1 %cmp656, label %while.body.preheader, label %if.end4.cleanup31_crit_edge

if.end4.cleanup31_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup31

while.body.preheader:                             ; preds = %if.end4
  %add.ptr5 = getelementptr i8, ptr %wps_ie, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %attr_ptr.057 = phi ptr [ %add.ptr27, %cleanup.while.body_crit_edge ], [ %add.ptr5, %while.body.preheader ]
  %3 = ptrtoint ptr %attr_ptr.057 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %attr_ptr.057, align 1
  %add.ptr9 = getelementptr i8, ptr %attr_ptr.057, i32 2
  %5 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr9, align 1
  %add = add i16 %6, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %target_attr_id)
  %cmp15 = icmp eq i16 %4, %target_attr_id
  br i1 %cmp15, label %if.then17, label %cleanup

if.then17:                                        ; preds = %while.body
  %tobool18.not = icmp eq ptr %buf_attr, null
  br i1 %tobool18.not, label %if.then17.if.end21_crit_edge, label %if.then19

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  %conv20 = zext i16 %add to i32
  %7 = call ptr @memcpy(ptr %buf_attr, ptr %attr_ptr.057, i32 %conv20)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17.if.end21_crit_edge
  br i1 %tobool.not, label %if.end21.cleanup31_crit_edge, label %if.then23

if.end21.cleanup31_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup31

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  %conv24 = zext i16 %add to i32
  %8 = ptrtoint ptr %len_attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv24, ptr %len_attr, align 4
  br label %cleanup31

cleanup:                                          ; preds = %while.body
  %conv26 = zext i16 %add to i32
  %add.ptr27 = getelementptr i8, ptr %attr_ptr.057, i32 %conv26
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr27 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp6 = icmp ult i32 %sub.ptr.sub, %wps_ielen
  br i1 %cmp6, label %cleanup.while.body_crit_edge, label %cleanup.cleanup31_crit_edge

cleanup.cleanup31_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup31

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

cleanup31:                                        ; preds = %cleanup.cleanup31_crit_edge, %if.then23, %if.end21.cleanup31_crit_edge, %if.end4.cleanup31_crit_edge, %lor.lhs.false.cleanup31_crit_edge, %if.end.cleanup31_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup31_crit_edge ], [ null, %if.end.cleanup31_crit_edge ], [ %attr_ptr.057, %if.then23 ], [ %attr_ptr.057, %if.end21.cleanup31_crit_edge ], [ null, %if.end4.cleanup31_crit_edge ], [ null, %cleanup.cleanup31_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_wps_attr_content(ptr noundef %wps_ie, i32 noundef %wps_ielen, i16 noundef zeroext %target_attr_id, ptr noundef writeonly %buf_content, ptr noundef writeonly %len_content) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %len_content, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = ptrtoint ptr %len_content to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len_content, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %wps_ie to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wps_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %2)
  %cmp.not.i = icmp eq i8 %2, -35
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %wps_ie, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wps_attr.wps_oui, i32 4) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %wps_ie to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %wps_ielen)
  %cmp656.i = icmp ugt i32 %wps_ielen, 6
  br i1 %cmp656.i, label %while.body.preheader.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.preheader.i:                           ; preds = %if.end4.i
  %add.ptr5.i = getelementptr i8, ptr %wps_ie, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %attr_ptr.057.i = phi ptr [ %add.ptr27.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr5.i, %while.body.preheader.i ]
  %3 = ptrtoint ptr %attr_ptr.057.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %attr_ptr.057.i, align 1
  %add.ptr9.i = getelementptr i8, ptr %attr_ptr.057.i, i32 2
  %5 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr9.i, align 1
  %add.i = add i16 %6, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %target_attr_id)
  %cmp15.i = icmp eq i16 %4, %target_attr_id
  %conv24.i = zext i16 %add.i to i32
  br i1 %cmp15.i, label %rtw_get_wps_attr.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %add.ptr27.i = getelementptr i8, ptr %attr_ptr.057.i, i32 %conv24.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr27.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp6.i = icmp ult i32 %sub.ptr.sub.i, %wps_ielen
  br i1 %cmp6.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

rtw_get_wps_attr.exit:                            ; preds = %while.body.i
  %tobool1.not = icmp eq ptr %attr_ptr.057.i, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i)
  %tobool2.not = icmp eq i16 %add.i, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %rtw_get_wps_attr.exit.cleanup_crit_edge, label %if.then3

rtw_get_wps_attr.exit.cleanup_crit_edge:          ; preds = %rtw_get_wps_attr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then3:                                         ; preds = %rtw_get_wps_attr.exit
  %tobool4.not = icmp eq ptr %buf_content, null
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr i8, ptr %attr_ptr.057.i, i32 4
  %sub = add nsw i32 %conv24.i, -4
  %7 = call ptr @memcpy(ptr %buf_content, ptr %add.ptr, i32 %sub)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  %sub9 = add nsw i32 %conv24.i, -4
  %8 = ptrtoint ptr %len_content to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub9, ptr %len_content, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %add.ptr11 = getelementptr i8, ptr %attr_ptr.057.i, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %rtw_get_wps_attr.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr11, %if.end10 ], [ null, %rtw_get_wps_attr.exit.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.i.cleanup_crit_edge ], [ null, %cleanup.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ieee802_11_parse_elems(ptr noundef %start, i32 noundef %len, ptr noundef writeonly %elems, i32 noundef %show_errors) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %elems, i32 0, i32 208)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp147 = icmp ugt i32 %len, 1
  br i1 %cmp147, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %vht_op_mode_notify = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 50
  %vht_op_mode_notify_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 51
  %vht_operation = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 48
  %vht_operation_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 49
  %vht_capabilities = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 46
  %vht_capabilities_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 47
  %ht_operation = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 42
  %ht_operation_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 43
  %ht_capabilities = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 40
  %ht_capabilities_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 41
  %timeout_int = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 38
  %timeout_int_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 39
  %ftie = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 36
  %ftie_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 37
  %mdie = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 34
  %mdie_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 35
  %supp_channels = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 32
  %supp_channels_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 33
  %power_cap = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 30
  %power_cap_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 31
  %rsn_ie = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 22
  %rsn_ie_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 23
  %vendor_ht_cap.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 44
  %vendor_ht_cap_len.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 45
  %wps_ie.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 28
  %wps_ie_len.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 29
  %wme_tspec.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 26
  %wme_tspec_len.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 27
  %wme.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 24
  %wme_len.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 25
  %wpa_ie.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 20
  %wpa_ie_len.i = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 21
  %ext_supp_rates = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 18
  %ext_supp_rates_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 19
  %erp_info = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 16
  %erp_info_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 17
  %challenge = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 14
  %challenge_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 15
  %ibss_params = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 12
  %ibss_params_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 13
  %tim = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 10
  %tim_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 11
  %cf_params = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 8
  %cf_params_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 9
  %ds_params = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 6
  %ds_params_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 7
  %fh_params = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 4
  %fh_params_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 5
  %supp_rates = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 2
  %supp_rates_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 3
  %ssid_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %unknown.0150 = phi i32 [ 0, %while.body.lr.ph ], [ %unknown.1, %cleanup.while.body_crit_edge ]
  %pos.0149 = phi ptr [ %start, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %left.0148 = phi i32 [ %len, %while.body.lr.ph ], [ %sub31, %cleanup.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %pos.0149, i32 1
  %incdec.ptr1 = getelementptr i8, ptr %pos.0149, i32 2
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %incdec.ptr, align 1
  %sub = add i32 %left.0148, -2
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp2 = icmp ult i32 %sub, %conv
  br i1 %cmp2, label %while.body.cleanup38_crit_edge, label %if.end

while.body.cleanup38_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup38

if.end:                                           ; preds = %while.body
  %3 = ptrtoint ptr %pos.0149 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pos.0149, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %4, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb6
    i8 3, label %sw.bb7
    i8 4, label %sw.bb8
    i8 5, label %sw.bb9
    i8 6, label %sw.bb10
    i8 16, label %sw.bb11
    i8 42, label %sw.bb12
    i8 50, label %sw.bb13
    i8 -35, label %sw.bb14
    i8 48, label %sw.bb18
    i8 33, label %sw.bb19
    i8 36, label %sw.bb20
    i8 54, label %sw.bb21
    i8 55, label %sw.bb22
    i8 56, label %sw.bb23
    i8 45, label %sw.bb24
    i8 61, label %sw.bb25
    i8 -65, label %sw.bb26
    i8 -64, label %sw.bb27
    i8 -57, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %6 = ptrtoint ptr %elems to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %incdec.ptr1, ptr %elems, align 4
  %7 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %2, ptr %ssid_len, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %supp_rates to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %incdec.ptr1, ptr %supp_rates, align 4
  %9 = ptrtoint ptr %supp_rates_len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %2, ptr %supp_rates_len, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %fh_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %incdec.ptr1, ptr %fh_params, align 4
  %11 = ptrtoint ptr %fh_params_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %2, ptr %fh_params_len, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %ds_params to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr1, ptr %ds_params, align 4
  %13 = ptrtoint ptr %ds_params_len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %2, ptr %ds_params_len, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %cf_params to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr1, ptr %cf_params, align 4
  %15 = ptrtoint ptr %cf_params_len to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %2, ptr %cf_params_len, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %16 = ptrtoint ptr %tim to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr1, ptr %tim, align 4
  %17 = ptrtoint ptr %tim_len to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %2, ptr %tim_len, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %18 = ptrtoint ptr %ibss_params to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %incdec.ptr1, ptr %ibss_params, align 4
  %19 = ptrtoint ptr %ibss_params_len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %2, ptr %ibss_params_len, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %challenge to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr1, ptr %challenge, align 4
  %21 = ptrtoint ptr %challenge_len to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %2, ptr %challenge_len, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %22 = ptrtoint ptr %erp_info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %incdec.ptr1, ptr %erp_info, align 4
  %23 = ptrtoint ptr %erp_info_len to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %2, ptr %erp_info_len, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %24 = ptrtoint ptr %ext_supp_rates to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %incdec.ptr1, ptr %ext_supp_rates, align 4
  %25 = ptrtoint ptr %ext_supp_rates_len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %2, ptr %ext_supp_rates_len, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp.i = icmp ult i8 %2, 4
  br i1 %cmp.i, label %sw.bb14.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, label %if.end.i

sw.bb14.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

if.end.i:                                         ; preds = %sw.bb14
  %26 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr1, align 1
  %conv.i.i.i = zext i8 %27 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %arrayidx1.i.i.i = getelementptr i8, ptr %pos.0149, i32 3
  %28 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %29 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %pos.0149, i32 4
  %30 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %31 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %32 = zext i32 %or6.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %or6.i.i.i, label %if.end.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge [
    i32 20722, label %sw.bb.i
    i32 36940, label %sw.bb18.i
  ]

if.end.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

sw.bb.i:                                          ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %pos.0149, i32 5
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %34, label %sw.bb.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge [
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb3.i
    i8 4, label %sw.bb14.i
  ]

sw.bb.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

sw.bb1.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  %36 = ptrtoint ptr %wpa_ie.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %incdec.ptr1, ptr %wpa_ie.i, align 4
  %37 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %2, ptr %wpa_ie_len.i, align 4
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %2)
  %cmp4.i = icmp ult i8 %2, 5
  br i1 %cmp4.i, label %sw.bb3.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, label %if.end7.i

sw.bb3.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

if.end7.i:                                        ; preds = %sw.bb3.i
  %arrayidx8.i = getelementptr i8, ptr %pos.0149, i32 6
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %39, label %if.end7.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge [
    i8 0, label %if.end7.i.sw.bb10.i_crit_edge
    i8 1, label %if.end7.i.sw.bb10.i_crit_edge153
    i8 2, label %sw.bb12.i
  ]

if.end7.i.sw.bb10.i_crit_edge153:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb10.i

if.end7.i.sw.bb10.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb10.i

if.end7.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

sw.bb10.i:                                        ; preds = %if.end7.i.sw.bb10.i_crit_edge, %if.end7.i.sw.bb10.i_crit_edge153
  %41 = ptrtoint ptr %wme.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %incdec.ptr1, ptr %wme.i, align 4
  %42 = ptrtoint ptr %wme_len.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %2, ptr %wme_len.i, align 4
  br label %cleanup

sw.bb12.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  %43 = ptrtoint ptr %wme_tspec.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %incdec.ptr1, ptr %wme_tspec.i, align 4
  %44 = ptrtoint ptr %wme_tspec_len.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %2, ptr %wme_tspec_len.i, align 4
  br label %cleanup

sw.bb14.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  %45 = ptrtoint ptr %wps_ie.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %incdec.ptr1, ptr %wps_ie.i, align 4
  %46 = ptrtoint ptr %wps_ie_len.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %2, ptr %wps_ie_len.i, align 4
  br label %cleanup

sw.bb18.i:                                        ; preds = %if.end.i
  %arrayidx19.i = getelementptr i8, ptr %pos.0149, i32 5
  %47 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %48)
  %cond.i = icmp eq i8 %48, 51
  br i1 %cond.i, label %sw.bb21.i, label %sw.bb18.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge

sw.bb18.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

sw.bb21.i:                                        ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #22
  %49 = ptrtoint ptr %vendor_ht_cap.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %incdec.ptr1, ptr %vendor_ht_cap.i, align 4
  %50 = ptrtoint ptr %vendor_ht_cap_len.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %2, ptr %vendor_ht_cap_len.i, align 4
  br label %cleanup

rtw_ieee802_11_parse_vendor_specific.exit.thread: ; preds = %sw.bb18.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %if.end7.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %sw.bb3.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %sw.bb.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %if.end.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %sw.bb14.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge
  %inc141 = add i32 %unknown.0150, 1
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %51 = ptrtoint ptr %rsn_ie to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %incdec.ptr1, ptr %rsn_ie, align 4
  %52 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %2, ptr %rsn_ie_len, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %53 = ptrtoint ptr %power_cap to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %incdec.ptr1, ptr %power_cap, align 4
  %54 = ptrtoint ptr %power_cap_len to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %2, ptr %power_cap_len, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %55 = ptrtoint ptr %supp_channels to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %incdec.ptr1, ptr %supp_channels, align 4
  %56 = ptrtoint ptr %supp_channels_len to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %2, ptr %supp_channels_len, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %57 = ptrtoint ptr %mdie to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %incdec.ptr1, ptr %mdie, align 4
  %58 = ptrtoint ptr %mdie_len to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %2, ptr %mdie_len, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %59 = ptrtoint ptr %ftie to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %incdec.ptr1, ptr %ftie, align 4
  %60 = ptrtoint ptr %ftie_len to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %2, ptr %ftie_len, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %61 = ptrtoint ptr %timeout_int to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr1, ptr %timeout_int, align 4
  %62 = ptrtoint ptr %timeout_int_len to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %2, ptr %timeout_int_len, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %63 = ptrtoint ptr %ht_capabilities to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %incdec.ptr1, ptr %ht_capabilities, align 4
  %64 = ptrtoint ptr %ht_capabilities_len to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %2, ptr %ht_capabilities_len, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %65 = ptrtoint ptr %ht_operation to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %incdec.ptr1, ptr %ht_operation, align 4
  %66 = ptrtoint ptr %ht_operation_len to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %2, ptr %ht_operation_len, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %67 = ptrtoint ptr %vht_capabilities to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %incdec.ptr1, ptr %vht_capabilities, align 4
  %68 = ptrtoint ptr %vht_capabilities_len to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %2, ptr %vht_capabilities_len, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %69 = ptrtoint ptr %vht_operation to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %incdec.ptr1, ptr %vht_operation, align 4
  %70 = ptrtoint ptr %vht_operation_len to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %2, ptr %vht_operation_len, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %71 = ptrtoint ptr %vht_op_mode_notify to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %incdec.ptr1, ptr %vht_op_mode_notify, align 4
  %72 = ptrtoint ptr %vht_op_mode_notify_len to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %2, ptr %vht_op_mode_notify_len, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %inc29 = add i32 %unknown.0150, 1
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %rtw_ieee802_11_parse_vendor_specific.exit.thread, %sw.bb21.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %sw.bb1.i, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb
  %unknown.1 = phi i32 [ %inc29, %sw.default ], [ %unknown.0150, %sw.bb28 ], [ %unknown.0150, %sw.bb27 ], [ %unknown.0150, %sw.bb26 ], [ %unknown.0150, %sw.bb25 ], [ %unknown.0150, %sw.bb24 ], [ %unknown.0150, %sw.bb23 ], [ %unknown.0150, %sw.bb22 ], [ %unknown.0150, %sw.bb21 ], [ %unknown.0150, %sw.bb20 ], [ %unknown.0150, %sw.bb19 ], [ %unknown.0150, %sw.bb18 ], [ %unknown.0150, %sw.bb13 ], [ %unknown.0150, %sw.bb12 ], [ %unknown.0150, %sw.bb11 ], [ %unknown.0150, %sw.bb10 ], [ %unknown.0150, %sw.bb9 ], [ %unknown.0150, %sw.bb8 ], [ %unknown.0150, %sw.bb7 ], [ %unknown.0150, %sw.bb6 ], [ %unknown.0150, %sw.bb5 ], [ %unknown.0150, %sw.bb ], [ %inc141, %rtw_ieee802_11_parse_vendor_specific.exit.thread ], [ %unknown.0150, %sw.bb21.i ], [ %unknown.0150, %sw.bb14.i ], [ %unknown.0150, %sw.bb12.i ], [ %unknown.0150, %sw.bb10.i ], [ %unknown.0150, %sw.bb1.i ]
  %sub31 = sub i32 %sub, %conv
  %add.ptr = getelementptr i8, ptr %incdec.ptr1, i32 %conv
  %cmp = icmp ugt i32 %sub31, 1
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %left.0.lcssa = phi i32 [ %len, %entry.while.end_crit_edge ], [ %sub31, %cleanup.while.end_crit_edge ]
  %unknown.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %unknown.1, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0.lcssa)
  %tobool34.not = icmp eq i32 %left.0.lcssa, 0
  br i1 %tobool34.not, label %if.end36, label %while.end.cleanup38_crit_edge

while.end.cleanup38_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup38

if.end36:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unknown.0.lcssa)
  %tobool37.not = icmp ne i32 %unknown.0.lcssa, 0
  %cond = zext i1 %tobool37.not to i32
  br label %cleanup38

cleanup38:                                        ; preds = %if.end36, %while.end.cleanup38_crit_edge, %while.body.cleanup38_crit_edge
  %retval.2 = phi i32 [ %cond, %if.end36 ], [ -1, %while.end.cleanup38_crit_edge ], [ -1, %while.body.cleanup38_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_macaddr_cfg(ptr nocapture noundef readonly %dev, ptr noundef %mac_addr) local_unnamed_addr #14 align 64 {
entry:
  %mac = alloca [6 x i8], align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #20
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = call ptr @memset(ptr %mac, i32 255, i32 6)
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #20
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len, align 4, !annotation !91
  %tobool.not = icmp eq ptr %mac_addr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtw_initmac to i32))
  %6 = load ptr, ptr @rtw_initmac, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call = call zeroext i1 @mac_pton(ptr noundef nonnull %6, ptr noundef nonnull %mac) #20
  br i1 %call, label %if.then2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac, align 4
  %9 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mac_addr, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 2
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %13 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_addr, align 4
  %15 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mac, align 4
  %add.ptr.i26 = getelementptr i8, ptr %mac_addr, i32 4
  %16 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i26, align 2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %0, align 2
  %and9.i = and i16 %22, %20
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 4
  %and510.i = and i16 %and9.i, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end5.if.then10_crit_edge, label %lor.lhs.false

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end5
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac, align 4
  %conv.i = zext i16 %24 to i32
  %or.i = or i32 %26, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i30 = icmp eq i32 %or.i, 0
  br i1 %cmp.i30, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end5.if.then10_crit_edge
  %call11 = call ptr @of_get_property(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull %len) #20
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then10.if.else15_crit_edge, label %land.lhs.true13

if.then10.if.else15_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else15

land.lhs.true13:                                  ; preds = %if.then10
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp = icmp eq i32 %28, 6
  br i1 %cmp, label %if.then14, label %land.lhs.true13.if.else15_crit_edge

land.lhs.true13.if.else15_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else15

if.then14:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call11, align 4
  %31 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mac_addr, align 4
  %add.ptr.i31 = getelementptr i8, ptr %call11, i32 4
  %32 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i31, align 2
  %add.ptr1.i32 = getelementptr i8, ptr %mac_addr, i32 4
  %34 = ptrtoint ptr %add.ptr1.i32 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i32, align 2
  br label %cleanup

if.else15:                                        ; preds = %land.lhs.true13.if.else15_crit_edge, %if.then10.if.else15_crit_edge
  call void @get_random_bytes(ptr noundef nonnull %mac_addr, i32 noundef 6) #20
  %35 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mac_addr, align 1
  %37 = and i8 %36, -4
  %38 = or i8 %37, 2
  store i8 %38, ptr %mac_addr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %if.then14, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #20
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_get_bcn_info(ptr noundef %pnetwork) local_unnamed_addr #14 align 64 {
entry:
  %group_cipher.i = alloca i32, align 4
  %pairwise_cipher.i = alloca i32, align 4
  %is8021x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ies = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12
  %call = tail call ptr @rtw_get_capability_from_ie(ptr noundef %ies) #20
  %0 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %le_cap.0.copyload = load i16, ptr %call, align 1
  %1 = and i16 %le_cap.0.copyload, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %privacy = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %privacy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %privacy, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %bcn_info = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7
  %3 = ptrtoint ptr %bcn_info to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bcn_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ie_length = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %4 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ie_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp79.i = icmp ugt i32 %5, 12
  br i1 %cmp79.i, label %if.end.while.body.i_crit_edge, label %if.else18

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end51.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %wpa_len.0 = phi i16 [ %wpa_len.1, %if.end51.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %rsn_len.0 = phi i16 [ %rsn_len.1, %if.end51.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %cnt.080.i = phi i32 [ %cnt.1.i, %if.end51.i.while.body.i_crit_edge ], [ 12, %if.end.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %ies, i32 %cnt.080.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %7, label %while.body.i.if.else44.i_crit_edge [
    i8 -35, label %land.lhs.true.i
    i8 48, label %if.then25.i
  ]

while.body.i.if.else44.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else44.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %add.i = add i32 %cnt.080.i, 2
  %arrayidx3.i = getelementptr i8, ptr %ies, i32 %add.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx3.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.else44.i_crit_edge

land.lhs.true.i.if.else44.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else44.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i = add nuw i32 %cnt.080.i, 1
  %arrayidx13.i = getelementptr i8, ptr %ies, i32 %.pre.i
  %9 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %10 to i16
  %add15.i = add nuw nsw i16 %conv14.i, 2
  br label %if.end51.i

if.then25.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %.pre81.i = add nuw i32 %cnt.080.i, 1
  %arrayidx35.i = getelementptr i8, ptr %ies, i32 %.pre81.i
  %11 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %12 to i16
  %add37.i = add nuw nsw i16 %conv36.i, 2
  br label %if.end51.i

if.else44.i:                                      ; preds = %land.lhs.true.i.if.else44.i_crit_edge, %while.body.i.if.else44.i_crit_edge
  %add45.i = add nuw i32 %cnt.080.i, 1
  %arrayidx46.i = getelementptr i8, ptr %ies, i32 %add45.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else44.i, %if.then25.i, %if.then.i
  %wpa_len.1 = phi i16 [ %wpa_len.0, %if.else44.i ], [ %wpa_len.0, %if.then25.i ], [ %add15.i, %if.then.i ]
  %rsn_len.1 = phi i16 [ %rsn_len.0, %if.else44.i ], [ %add37.i, %if.then25.i ], [ %rsn_len.0, %if.then.i ]
  %add42.pn.in.in.in.i = phi ptr [ %arrayidx46.i, %if.else44.i ], [ %arrayidx35.i, %if.then25.i ], [ %arrayidx13.i, %if.then.i ]
  %13 = ptrtoint ptr %add42.pn.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %add42.pn.in.in.i = load i8, ptr %add42.pn.in.in.in.i, align 1
  %add42.pn.in.i = zext i8 %add42.pn.in.in.i to i32
  %add42.pn.i = add i32 %cnt.080.i, 2
  %cnt.1.i = add i32 %add42.pn.i, %add42.pn.in.i
  %cmp.i = icmp ult i32 %cnt.1.i, %5
  br i1 %cmp.i, label %if.end51.i.while.body.i_crit_edge, label %rtw_get_sec_ie.exit

if.end51.i.while.body.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

rtw_get_sec_ie.exit:                              ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rsn_len.1)
  %cmp.not = icmp eq i16 %rsn_len.1, 0
  br i1 %cmp.not, label %if.else11, label %rtw_get_sec_ie.exit.if.end25.sink.split_crit_edge

rtw_get_sec_ie.exit.if.end25.sink.split_crit_edge: ; preds = %rtw_get_sec_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25.sink.split

if.else11:                                        ; preds = %rtw_get_sec_ie.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wpa_len.1)
  %cmp13.not = icmp ne i16 %wpa_len.1, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp13.not, i1 true, i1 %tobool.not.not
  %.mux = select i1 %cmp13.not, i8 2, i8 1
  br i1 %brmerge, label %if.else11.if.end25.sink.split_crit_edge, label %if.else11.if.end25_crit_edge

if.else11.if.end25_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.else11.if.end25.sink.split_crit_edge:          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25.sink.split

if.else18:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.else18.if.end25_crit_edge, label %if.else18.if.end25.sink.split_crit_edge

if.else18.if.end25.sink.split_crit_edge:          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25.sink.split

if.else18.if.end25_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.end25.sink.split:                              ; preds = %if.else18.if.end25.sink.split_crit_edge, %if.else11.if.end25.sink.split_crit_edge, %rtw_get_sec_ie.exit.if.end25.sink.split_crit_edge
  %.sink = phi i8 [ 3, %rtw_get_sec_ie.exit.if.end25.sink.split_crit_edge ], [ %.mux, %if.else11.if.end25.sink.split_crit_edge ], [ 1, %if.else18.if.end25.sink.split_crit_edge ]
  %bcn_info16 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7
  %14 = ptrtoint ptr %bcn_info16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %bcn_info16, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.else18.if.end25_crit_edge, %if.else11.if.end25_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher.i) #20
  %15 = ptrtoint ptr %group_cipher.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %group_cipher.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher.i) #20
  %16 = ptrtoint ptr %pairwise_cipher.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pairwise_cipher.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is8021x.i) #20
  %17 = ptrtoint ptr %is8021x.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %is8021x.i, align 4
  %arrayidx.i81 = getelementptr %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12, i32 12
  %sub.i = add i32 %5, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i40.i.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i40.i.i, label %if.end25.rtw_get_cipher_info.exit_crit_edge, label %while.cond.i.preheader.lr.ph.i.i

if.end25.rtw_get_cipher_info.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_cipher_info.exit

while.cond.i.preheader.lr.ph.i.i:                 ; preds = %if.end25
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %arrayidx.i81 to i32
  %.neg = add i32 %sub.ptr.rhs.cast.i.i, -2
  %.neg.i = add i32 %.neg, %sub.i
  br label %while.cond.i.preheader.i.i

while.cond.i.preheader.i.i:                       ; preds = %if.end15.i.i, %while.cond.i.preheader.lr.ph.i.i
  %limit_new.042.i.i = phi i32 [ %sub.i, %while.cond.i.preheader.lr.ph.i.i ], [ %sub11.i.i, %if.end15.i.i ]
  %pbuf.041.i.i = phi ptr [ %arrayidx.i81, %while.cond.i.preheader.lr.ph.i.i ], [ %add.ptr16.i.i, %if.end15.i.i ]
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.else.i.i.i.while.cond.i.i.i_crit_edge, %while.cond.i.preheader.i.i
  %i.0.i.i.i = phi i32 [ %add9.i.i.i, %if.else.i.i.i.while.cond.i.i.i_crit_edge ], [ 0, %while.cond.i.preheader.i.i ]
  %p.0.i.i.i = phi ptr [ %add.ptr7.i.i.i, %if.else.i.i.i.while.cond.i.i.i_crit_edge ], [ %pbuf.041.i.i, %while.cond.i.preheader.i.i ]
  %18 = ptrtoint ptr %p.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %p.0.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %19)
  %cmp1.i.i.i = icmp eq i8 %19, -35
  %add.ptr.i.i.i = getelementptr i8, ptr %p.0.i.i.i, i32 1
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv4.i.i.i = zext i8 %21 to i32
  br i1 %cmp1.i.i.i, label %rtw_get_ie.exit.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %while.cond.i.i.i
  %add.i.i.i = add nuw nsw i32 %conv4.i.i.i, 2
  %add.ptr7.i.i.i = getelementptr i8, ptr %p.0.i.i.i, i32 %add.i.i.i
  %add9.i.i.i = add i32 %add.i.i.i, %i.0.i.i.i
  %cmp11.not.i.i.i = icmp slt i32 %add9.i.i.i, %limit_new.042.i.i
  br i1 %cmp11.not.i.i.i, label %if.else.i.i.i.while.cond.i.i.i_crit_edge, label %if.else.i.i.i.while.cond.i.i4.i.preheader_crit_edge

if.else.i.i.i.while.cond.i.i4.i.preheader_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i4.i.preheader

if.else.i.i.i.while.cond.i.i.i_crit_edge:         ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i.i

rtw_get_ie.exit.i.i:                              ; preds = %while.cond.i.i.i
  %conv4.i.i.i.le191 = zext i8 %21 to i32
  %tobool.not.i.i = icmp eq ptr %p.0.i.i.i, null
  br i1 %tobool.not.i.i, label %rtw_get_ie.exit.i.i.while.cond.i.i4.i.preheader_crit_edge, label %if.then.i.i

rtw_get_ie.exit.i.i.while.cond.i.i4.i.preheader_crit_edge: ; preds = %rtw_get_ie.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i4.i.preheader

if.then.i.i:                                      ; preds = %rtw_get_ie.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %p.0.i.i.i, i32 2
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr.i.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool2.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %if.then.i.i.check_next_ie.i.i_crit_edge

if.then.i.i.check_next_ie.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %check_next_ie.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %p.0.i.i.i, i32 6
  %22 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %le_tmp.0.copyload.i.i = load i16, ptr %add.ptr4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %le_tmp.0.copyload.i.i)
  %cmp.not.i.i = icmp eq i16 %le_tmp.0.copyload.i.i, 256
  br i1 %cmp.not.i.i, label %land.lhs.true.i82, label %if.end.i.i.check_next_ie.i.i_crit_edge

if.end.i.i.check_next_ie.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %check_next_ie.i.i

check_next_ie.i.i:                                ; preds = %if.end.i.i.check_next_ie.i.i_crit_edge, %if.then.i.i.check_next_ie.i.i_crit_edge
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %p.0.i.i.i to i32
  %23 = add i32 %sub.ptr.lhs.cast.i.i, %conv4.i.i.i.le191
  %sub11.i.i = sub i32 %.neg.i, %23
  %cmp12.i.i = icmp slt i32 %sub11.i.i, 1
  br i1 %cmp12.i.i, label %check_next_ie.i.i.while.cond.i.i4.i.preheader_crit_edge, label %if.end15.i.i

check_next_ie.i.i.while.cond.i.i4.i.preheader_crit_edge: ; preds = %check_next_ie.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i4.i.preheader

if.end15.i.i:                                     ; preds = %check_next_ie.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.i.i = add nuw nsw i32 %conv4.i.i.i.le191, 2
  %add.ptr16.i.i = getelementptr i8, ptr %p.0.i.i.i, i32 %add.i.i
  br label %while.cond.i.preheader.i.i

land.lhs.true.i82:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 0
  br i1 %cmp.not.i, label %land.lhs.true.i82.while.cond.i.i4.i.preheader_crit_edge, label %if.then.i84

land.lhs.true.i82.while.cond.i.i4.i.preheader_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i4.i.preheader

while.cond.i.i4.i.preheader:                      ; preds = %land.lhs.true.i82.while.cond.i.i4.i.preheader_crit_edge, %check_next_ie.i.i.while.cond.i.i4.i.preheader_crit_edge, %rtw_get_ie.exit.i.i.while.cond.i.i4.i.preheader_crit_edge, %if.else.i.i.i.while.cond.i.i4.i.preheader_crit_edge
  br label %while.cond.i.i4.i

if.then.i84:                                      ; preds = %land.lhs.true.i82
  %conv4.i.i.i.le = zext i8 %21 to i32
  %add.i83 = add nuw nsw i32 %conv4.i.i.i.le, 2
  %call2.i = call i32 @rtw_parse_wpa_ie(ptr noundef nonnull %p.0.i.i.i, i32 noundef %add.i83, ptr noundef nonnull %group_cipher.i, ptr noundef nonnull %pairwise_cipher.i, ptr noundef nonnull %is8021x.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 1
  br i1 %cmp3.i, label %if.then.i84.if.end32.sink.split.i_crit_edge, label %if.then.i84.rtw_get_cipher_info.exit_crit_edge

if.then.i84.rtw_get_cipher_info.exit_crit_edge:   ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_cipher_info.exit

if.then.i84.if.end32.sink.split.i_crit_edge:      ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32.sink.split.i

while.cond.i.i4.i:                                ; preds = %if.else.i.i13.i.while.cond.i.i4.i_crit_edge, %while.cond.i.i4.i.preheader
  %i.0.i.i1.i = phi i32 [ %add9.i.i11.i, %if.else.i.i13.i.while.cond.i.i4.i_crit_edge ], [ 0, %while.cond.i.i4.i.preheader ]
  %p.0.i.i2.i = phi ptr [ %add.ptr7.i.i10.i, %if.else.i.i13.i.while.cond.i.i4.i_crit_edge ], [ %arrayidx.i81, %while.cond.i.i4.i.preheader ]
  %24 = ptrtoint ptr %p.0.i.i2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %p.0.i.i2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %25)
  %cmp1.i.i3.i = icmp eq i8 %25, 48
  %add.ptr.i.i5.i = getelementptr i8, ptr %p.0.i.i2.i, i32 1
  %26 = ptrtoint ptr %add.ptr.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i5.i, align 1
  br i1 %cmp1.i.i3.i, label %rtw_get_wpa2_ie.exit.i, label %if.else.i.i13.i

if.else.i.i13.i:                                  ; preds = %while.cond.i.i4.i
  %conv6.i.i8.i = zext i8 %27 to i32
  %add.i.i9.i = add nuw nsw i32 %conv6.i.i8.i, 2
  %add.ptr7.i.i10.i = getelementptr i8, ptr %p.0.i.i2.i, i32 %add.i.i9.i
  %add9.i.i11.i = add i32 %add.i.i9.i, %i.0.i.i1.i
  %cmp11.not.i.i12.i = icmp slt i32 %add9.i.i11.i, %sub.i
  br i1 %cmp11.not.i.i12.i, label %if.else.i.i13.i.while.cond.i.i4.i_crit_edge, label %if.else.i.i13.i.rtw_get_cipher_info.exit_crit_edge

if.else.i.i13.i.rtw_get_cipher_info.exit_crit_edge: ; preds = %if.else.i.i13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_cipher_info.exit

if.else.i.i13.i.while.cond.i.i4.i_crit_edge:      ; preds = %if.else.i.i13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i4.i

rtw_get_wpa2_ie.exit.i:                           ; preds = %while.cond.i.i4.i
  %tobool16.not.i = icmp eq ptr %p.0.i.i2.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp18.not.i = icmp eq i8 %27, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %cmp18.not.i
  br i1 %or.cond.i, label %rtw_get_wpa2_ie.exit.i.rtw_get_cipher_info.exit_crit_edge, label %if.then19.i

rtw_get_wpa2_ie.exit.i.rtw_get_cipher_info.exit_crit_edge: ; preds = %rtw_get_wpa2_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_cipher_info.exit

if.then19.i:                                      ; preds = %rtw_get_wpa2_ie.exit.i
  %conv4.i.i6.i = zext i8 %27 to i32
  %add20.i = add nuw nsw i32 %conv4.i.i6.i, 2
  %call21.i = call i32 @rtw_parse_wpa2_ie(ptr noundef nonnull %p.0.i.i2.i, i32 noundef %add20.i, ptr noundef nonnull %group_cipher.i, ptr noundef nonnull %pairwise_cipher.i, ptr noundef nonnull %is8021x.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 1
  br i1 %cmp22.i, label %if.then19.i.if.end32.sink.split.i_crit_edge, label %if.then19.i.rtw_get_cipher_info.exit_crit_edge

if.then19.i.rtw_get_cipher_info.exit_crit_edge:   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_get_cipher_info.exit

if.then19.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.then19.i.if.end32.sink.split.i_crit_edge, %if.then.i84.if.end32.sink.split.i_crit_edge
  %28 = ptrtoint ptr %pairwise_cipher.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.sink159 = load i32, ptr %pairwise_cipher.i, align 4
  %pairwise_cipher25.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %pairwise_cipher25.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink159, ptr %pairwise_cipher25.i, align 4
  %30 = ptrtoint ptr %group_cipher.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.sink148 = load i32, ptr %group_cipher.i, align 4
  %group_cipher27.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %group_cipher27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink148, ptr %group_cipher27.i, align 4
  %32 = ptrtoint ptr %is8021x.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink.i = load i32, ptr %is8021x.i, align 4
  %is_8021x29.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %is_8021x29.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i, ptr %is_8021x29.i, align 4
  br label %rtw_get_cipher_info.exit

rtw_get_cipher_info.exit:                         ; preds = %if.end32.sink.split.i, %if.then19.i.rtw_get_cipher_info.exit_crit_edge, %rtw_get_wpa2_ie.exit.i.rtw_get_cipher_info.exit_crit_edge, %if.else.i.i13.i.rtw_get_cipher_info.exit_crit_edge, %if.then.i84.rtw_get_cipher_info.exit_crit_edge, %if.end25.rtw_get_cipher_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is8021x.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher.i) #20
  %34 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ie_length, align 4
  %sub = add i32 %35, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp.i85 = icmp slt i32 %sub, 1
  br i1 %cmp.i85, label %if.else58.critedge, label %rtw_get_cipher_info.exit.while.cond.i_crit_edge

rtw_get_cipher_info.exit.while.cond.i_crit_edge:  ; preds = %rtw_get_cipher_info.exit
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i.while.cond.i_crit_edge, %rtw_get_cipher_info.exit.while.cond.i_crit_edge
  %i.0.i = phi i32 [ %add9.i, %if.else.i.while.cond.i_crit_edge ], [ 0, %rtw_get_cipher_info.exit.while.cond.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr7.i, %if.else.i.while.cond.i_crit_edge ], [ %arrayidx.i81, %rtw_get_cipher_info.exit.while.cond.i_crit_edge ]
  %36 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %p.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %37)
  %cmp1.i = icmp eq i8 %37, 45
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 1
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr.i, align 1
  br i1 %cmp1.i, label %rtw_get_ie.exit, label %if.else.i

if.else.i:                                        ; preds = %while.cond.i
  %conv6.i = zext i8 %39 to i32
  %add.i86 = add nuw nsw i32 %conv6.i, 2
  %add.ptr7.i = getelementptr i8, ptr %p.0.i, i32 %add.i86
  %add9.i = add i32 %add.i86, %i.0.i
  %cmp11.not.i = icmp slt i32 %add9.i, %sub
  br i1 %cmp11.not.i, label %if.else.i.while.cond.i_crit_edge, label %if.else.i.if.end42_crit_edge

if.else.i.if.end42_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i

rtw_get_ie.exit:                                  ; preds = %while.cond.i
  %tobool33.not = icmp eq ptr %p.0.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp34.not = icmp eq i8 %39, 0
  %or.cond = select i1 %tobool33.not, i1 true, i1 %cmp34.not
  br i1 %or.cond, label %rtw_get_ie.exit.if.end42_crit_edge, label %if.then36

rtw_get_ie.exit.if.end42_crit_edge:               ; preds = %rtw_get_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

if.then36:                                        ; preds = %rtw_get_ie.exit
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr37 = getelementptr i8, ptr %p.0.i, i32 2
  %40 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %add.ptr37, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %rtw_get_ie.exit.if.end42_crit_edge, %if.else.i.if.end42_crit_edge
  %.sink149 = phi i16 [ %42, %if.then36 ], [ 0, %rtw_get_ie.exit.if.end42_crit_edge ], [ 0, %if.else.i.if.end42_crit_edge ]
  %ht_cap_info41 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 4
  %43 = ptrtoint ptr %ht_cap_info41 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %.sink149, ptr %ht_cap_info41, align 4
  br i1 %cmp.i85, label %if.end42.if.end61_crit_edge, label %if.end42.while.cond.i93_crit_edge

if.end42.while.cond.i93_crit_edge:                ; preds = %if.end42
  br label %while.cond.i93

if.end42.if.end61_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

while.cond.i93:                                   ; preds = %if.else.i103.while.cond.i93_crit_edge, %if.end42.while.cond.i93_crit_edge
  %i.0.i89 = phi i32 [ %add9.i101, %if.else.i103.while.cond.i93_crit_edge ], [ 0, %if.end42.while.cond.i93_crit_edge ]
  %p.0.i90 = phi ptr [ %add.ptr7.i100, %if.else.i103.while.cond.i93_crit_edge ], [ %arrayidx.i81, %if.end42.while.cond.i93_crit_edge ]
  %44 = ptrtoint ptr %p.0.i90 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %p.0.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %45)
  %cmp1.i92 = icmp eq i8 %45, 61
  %add.ptr.i94 = getelementptr i8, ptr %p.0.i90, i32 1
  %46 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i94, align 1
  br i1 %cmp1.i92, label %rtw_get_ie.exit105, label %if.else.i103

if.else.i103:                                     ; preds = %while.cond.i93
  %conv6.i98 = zext i8 %47 to i32
  %add.i99 = add nuw nsw i32 %conv6.i98, 2
  %add.ptr7.i100 = getelementptr i8, ptr %p.0.i90, i32 %add.i99
  %add9.i101 = add i32 %add.i99, %i.0.i89
  %cmp11.not.i102 = icmp slt i32 %add9.i101, %sub
  br i1 %cmp11.not.i102, label %if.else.i103.while.cond.i93_crit_edge, label %if.else.i103.if.end61_crit_edge

if.else.i103.if.end61_crit_edge:                  ; preds = %if.else.i103
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

if.else.i103.while.cond.i93_crit_edge:            ; preds = %if.else.i103
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i93

rtw_get_ie.exit105:                               ; preds = %while.cond.i93
  %tobool51.not = icmp eq ptr %p.0.i90, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp53.not = icmp eq i8 %47, 0
  %or.cond121 = select i1 %tobool51.not, i1 true, i1 %cmp53.not
  br i1 %or.cond121, label %rtw_get_ie.exit105.if.end61_crit_edge, label %if.then55

rtw_get_ie.exit105.if.end61_crit_edge:            ; preds = %rtw_get_ie.exit105
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

if.then55:                                        ; preds = %rtw_get_ie.exit105
  call void @__sanitizer_cov_trace_pc() #22
  %infos = getelementptr i8, ptr %p.0.i90, i32 3
  %48 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %infos, align 1
  br label %if.end61

if.else58.critedge:                               ; preds = %rtw_get_cipher_info.exit
  call void @__sanitizer_cov_trace_pc() #22
  %ht_cap_info41.c = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 4
  %50 = ptrtoint ptr %ht_cap_info41.c to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %ht_cap_info41.c, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else58.critedge, %if.then55, %rtw_get_ie.exit105.if.end61_crit_edge, %if.else.i103.if.end61_crit_edge, %if.end42.if.end61_crit_edge
  %.sink150 = phi i8 [ %49, %if.then55 ], [ 0, %if.else58.critedge ], [ 0, %if.end42.if.end61_crit_edge ], [ 0, %rtw_get_ie.exit105.if.end61_crit_edge ], [ 0, %if.else.i103.if.end61_crit_edge ]
  %ht_info_infos_060 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 5
  %51 = ptrtoint ptr %ht_info_infos_060 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink150, ptr %ht_info_infos_060, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_capability_from_ie(ptr noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @rtw_mcs_rate(i8 noundef zeroext %bw_40MHz, i8 noundef zeroext %short_GI, ptr nocapture noundef readonly %MCS_rate) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %MCS_rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %MCS_rate, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool2.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI)
  %tobool4.not = icmp eq i8 %short_GI, 0
  %cond = select i1 %tobool4.not, i16 1350, i16 1500
  %cond7 = select i1 %tobool4.not, i16 650, i16 722
  %cond8 = select i1 %tobool2.not, i16 %cond7, i16 %cond
  br label %if.end148

if.else:                                          ; preds = %entry
  %and12 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else28, label %if.then14

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool16.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI)
  %tobool19.not = icmp eq i8 %short_GI, 0
  %cond20 = select i1 %tobool19.not, i16 1215, i16 1350
  %cond24 = select i1 %tobool19.not, i16 585, i16 650
  %cond26 = select i1 %tobool16.not, i16 %cond24, i16 %cond20
  br label %if.end148

if.else28:                                        ; preds = %if.else
  %and31 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else47, label %if.then33

if.then33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool35.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI)
  %tobool38.not = icmp eq i8 %short_GI, 0
  %cond39 = select i1 %tobool38.not, i16 1080, i16 1200
  %cond43 = select i1 %tobool38.not, i16 520, i16 578
  %cond45 = select i1 %tobool35.not, i16 %cond43, i16 %cond39
  br label %if.end148

if.else47:                                        ; preds = %if.else28
  %and50 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else66, label %if.then52

if.then52:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool54.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI)
  %tobool57.not = icmp eq i8 %short_GI, 0
  %cond58 = select i1 %tobool57.not, i16 810, i16 900
  %cond62 = select i1 %tobool57.not, i16 390, i16 433
  %cond64 = select i1 %tobool54.not, i16 %cond62, i16 %cond58
  br label %if.end148

if.else66:                                        ; preds = %if.else47
  %and69 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else85, label %if.then71

if.then71:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool73.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI)
  %tobool76.not = icmp eq i8 %short_GI, 0
  %cond77 = select i1 %tobool76.not, i16 540, i16 600
  %cond81 = select i1 %tobool76.not, i16 260, i16 289
  %cond83 = select i1 %tobool73.not, i16 %cond81, i16 %cond77
  br label %if.end148

if.else85:                                        ; preds = %if.else66
  %and88 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else104, label %if.then90

if.then90:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool92.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI)
  %tobool95.not = icmp eq i8 %short_GI, 0
  %cond96 = select i1 %tobool95.not, i16 405, i16 450
  %cond100 = select i1 %tobool95.not, i16 195, i16 217
  %cond102 = select i1 %tobool92.not, i16 %cond100, i16 %cond96
  br label %if.end148

if.else104:                                       ; preds = %if.else85
  %and107 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.else123, label %if.then109

if.then109:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool111.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI)
  %tobool114.not = icmp eq i8 %short_GI, 0
  %cond115 = select i1 %tobool114.not, i16 270, i16 300
  %cond119 = select i1 %tobool114.not, i16 130, i16 144
  %cond121 = select i1 %tobool111.not, i16 %cond119, i16 %cond115
  br label %if.end148

if.else123:                                       ; preds = %if.else104
  %and126 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.else123.if.end148_crit_edge, label %if.then128

if.else123.if.end148_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end148

if.then128:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool130.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI)
  %tobool133.not = icmp eq i8 %short_GI, 0
  %cond134 = select i1 %tobool133.not, i16 135, i16 150
  %cond138 = select i1 %tobool133.not, i16 65, i16 72
  %cond140 = select i1 %tobool130.not, i16 %cond138, i16 %cond134
  br label %if.end148

if.end148:                                        ; preds = %if.then128, %if.else123.if.end148_crit_edge, %if.then109, %if.then90, %if.then71, %if.then52, %if.then33, %if.then14, %if.then
  %max_rate.0 = phi i16 [ %cond8, %if.then ], [ %cond26, %if.then14 ], [ %cond45, %if.then33 ], [ %cond64, %if.then52 ], [ %cond83, %if.then71 ], [ %cond102, %if.then90 ], [ %cond121, %if.then109 ], [ %cond140, %if.then128 ], [ 0, %if.else123.if.end148_crit_edge ]
  ret i16 %max_rate.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_action_frame_parse(ptr nocapture noundef readonly %frame, i32 noundef %frame_len, ptr noundef writeonly %category, ptr noundef writeonly %action) local_unnamed_addr #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %frame, align 2
  %2 = and i16 %1, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %2)
  %cmp.not = icmp eq i16 %2, -12288
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %frame, i32 24
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %4)
  %cond = icmp eq i8 %4, 127
  br i1 %cond, label %if.end.sw.epilog_crit_edge, label %sw.default

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx3 = getelementptr i8, ptr %frame, i32 25
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge
  %a.0 = phi i8 [ 16, %if.end.sw.epilog_crit_edge ], [ %6, %sw.default ]
  %tobool.not = icmp eq ptr %category, null
  br i1 %tobool.not, label %sw.epilog.if.end5_crit_edge, label %if.then4

sw.epilog.if.end5_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.then4:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %category, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %sw.epilog.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %action, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %a.0, ptr %action, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then7 ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @action_public_str(i8 noundef zeroext %action) local_unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 @llvm.umin.i8(i8 %action, i8 16)
  %1 = zext i8 %0 to i32
  %arrayidx = getelementptr [17 x ptr], ptr @_action_public_str, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

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
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { nobuiltin }
attributes #24 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @RTW_WPA_OUI_TYPE, !1, !"RTW_WPA_OUI_TYPE", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 13, i32 4}
!2 = !{ptr @RTW_WPA_VERSION, !3, !"RTW_WPA_VERSION", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 14, i32 5}
!4 = !{ptr @WPA_AUTH_KEY_MGMT_NONE, !5, !"WPA_AUTH_KEY_MGMT_NONE", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 15, i32 4}
!6 = !{ptr @WPA_AUTH_KEY_MGMT_UNSPEC_802_1X, !7, !"WPA_AUTH_KEY_MGMT_UNSPEC_802_1X", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 16, i32 4}
!8 = !{ptr @WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X, !9, !"WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 17, i32 4}
!10 = !{ptr @WPA_CIPHER_SUITE_NONE, !11, !"WPA_CIPHER_SUITE_NONE", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 18, i32 4}
!12 = !{ptr @WPA_CIPHER_SUITE_WEP40, !13, !"WPA_CIPHER_SUITE_WEP40", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 19, i32 4}
!14 = !{ptr @WPA_CIPHER_SUITE_TKIP, !15, !"WPA_CIPHER_SUITE_TKIP", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 20, i32 4}
!16 = !{ptr @WPA_CIPHER_SUITE_WRAP, !17, !"WPA_CIPHER_SUITE_WRAP", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 21, i32 4}
!18 = !{ptr @WPA_CIPHER_SUITE_CCMP, !19, !"WPA_CIPHER_SUITE_CCMP", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 22, i32 4}
!20 = !{ptr @WPA_CIPHER_SUITE_WEP104, !21, !"WPA_CIPHER_SUITE_WEP104", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 23, i32 4}
!22 = !{ptr @RSN_VERSION_BSD, !23, !"RSN_VERSION_BSD", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 25, i32 5}
!24 = !{ptr @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, !25, !"RSN_AUTH_KEY_MGMT_UNSPEC_802_1X", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 26, i32 4}
!26 = !{ptr @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, !27, !"RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 27, i32 4}
!28 = !{ptr @RSN_CIPHER_SUITE_NONE, !29, !"RSN_CIPHER_SUITE_NONE", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 28, i32 4}
!30 = !{ptr @RSN_CIPHER_SUITE_WEP40, !31, !"RSN_CIPHER_SUITE_WEP40", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 29, i32 4}
!32 = !{ptr @RSN_CIPHER_SUITE_TKIP, !33, !"RSN_CIPHER_SUITE_TKIP", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 30, i32 4}
!34 = !{ptr @RSN_CIPHER_SUITE_WRAP, !35, !"RSN_CIPHER_SUITE_WRAP", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 31, i32 4}
!36 = !{ptr @RSN_CIPHER_SUITE_CCMP, !37, !"RSN_CIPHER_SUITE_CCMP", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 32, i32 4}
!38 = !{ptr @RSN_CIPHER_SUITE_WEP104, !39, !"RSN_CIPHER_SUITE_WEP104", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 33, i32 4}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1015, i32 30}
!42 = distinct !{null, !43, !"WIFI_CCKRATES", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 38, i32 11}
!44 = distinct !{null, !45, !"WIFI_OFDMRATES", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 45, i32 11}
!46 = !{ptr @.str.1, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1166, i32 2}
!48 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1167, i32 2}
!50 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1168, i32 2}
!52 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1169, i32 2}
!54 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1170, i32 2}
!56 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1171, i32 2}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1172, i32 2}
!60 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1173, i32 2}
!62 = !{ptr @.str.9, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1174, i32 2}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1175, i32 2}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1176, i32 2}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1177, i32 2}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1178, i32 2}
!72 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1179, i32 2}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1180, i32 2}
!76 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1181, i32 2}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1182, i32 2}
!80 = !{ptr @_action_public_str, !81, !"_action_public_str", i1 false, i1 false}
!81 = !{!"../drivers/staging/rtl8723bs/core/rtw_ieee80211.c", i32 1165, i32 20}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
