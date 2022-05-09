; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_ieee80211.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_ieee80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [16 x i8], i8, [2 x i8] }>
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_config, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_config = type { i32, i32, i32, i32, %struct.ndis_802_11_config_fh }
%struct.ndis_802_11_config_fh = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.rtw_ieee802_11_elems = type { ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.list_head = type { ptr, ptr }
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
@__const.rtw_get_sec_ie.wpa_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@__const.rtw_get_wps_attr.wps_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\04", align 1
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_ieee802_11_parse_elems._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016R8188EU: IEEE 802.11 element parse failed (id=%d elen=%d left=%lu)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw_ieee802_11_parse_elems\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/r8188eu/core/rtw_ieee80211.c\00", [51 x i8] zeroinitializer }, align 32
@rtw_ieee802_11_parse_elems._entry_ptr = internal global ptr @rtw_ieee802_11_parse_elems._entry, section ".printk_index", align 4
@rtw_ieee802_11_parse_elems._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016R8188EU: IEEE 802.11 element parse ignored unknown element (id=%d elen=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@rtw_ieee802_11_parse_elems._entry_ptr.5 = internal global ptr @rtw_ieee802_11_parse_elems._entry.3, section ".printk_index", align 4
@rtw_initmac = external dso_local local_unnamed_addr global ptr, align 4
@rtw_macaddr_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016R8188EU: MAC Address from efuse error, assign random one !!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_macaddr_cfg\00", [16 x i8] zeroinitializer }, align 32
@rtw_macaddr_cfg._entry_ptr = internal global ptr @rtw_macaddr_cfg._entry, section ".printk_index", align 4
@rtw_macaddr_cfg._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: rtw_macaddr_cfg MAC Address  = %pM\0A\00", [49 x i8] zeroinitializer }, align 32
@rtw_macaddr_cfg._entry_ptr.10 = internal global ptr @rtw_macaddr_cfg._entry.8, section ".printk_index", align 4
@__const.rtw_get_p2p_attr.p2p_oui = private unnamed_addr constant [4 x i8] c"Po\9A\09", align 1
@rtw_ieee802_11_parse_vendor_specific._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016R8188EU: short vendor specific information element ignored (len=%lu)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rtw_ieee802_11_parse_vendor_specific\00", [59 x i8] zeroinitializer }, align 32
@rtw_ieee802_11_parse_vendor_specific._entry_ptr = internal global ptr @rtw_ieee802_11_parse_vendor_specific._entry, section ".printk_index", align 4
@rtw_ieee802_11_parse_vendor_specific._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016R8188EU: short WME information element ignored (len=%lu)\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw_ieee802_11_parse_vendor_specific._entry_ptr.15 = internal global ptr @rtw_ieee802_11_parse_vendor_specific._entry.13, section ".printk_index", align 4
@rtw_ieee802_11_parse_vendor_specific._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016R8188EU: unknown WME information element ignored (subtype=%d len=%lu)\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw_ieee802_11_parse_vendor_specific._entry_ptr.18 = internal global ptr @rtw_ieee802_11_parse_vendor_specific._entry.16, section ".printk_index", align 4
@rtw_ieee802_11_parse_vendor_specific._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016R8188EU: Unknown Microsoft information element ignored (type=%d len=%lu)\0A\00", [52 x i8] zeroinitializer }, align 32
@rtw_ieee802_11_parse_vendor_specific._entry_ptr.21 = internal global ptr @rtw_ieee802_11_parse_vendor_specific._entry.19, section ".printk_index", align 4
@rtw_ieee802_11_parse_vendor_specific._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016R8188EU: Unknown Broadcom information element ignored (type=%d len=%lu)\0A\00", [53 x i8] zeroinitializer }, align 32
@rtw_ieee802_11_parse_vendor_specific._entry_ptr.24 = internal global ptr @rtw_ieee802_11_parse_vendor_specific._entry.22, section ".printk_index", align 4
@rtw_ieee802_11_parse_vendor_specific._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\016R8188EU: unknown vendor specific information element ignored (vendor OUI %02x:%02x:%02x len=%lu)\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw_ieee802_11_parse_vendor_specific._entry_ptr.27 = internal global ptr @rtw_ieee802_11_parse_vendor_specific._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@__sancov_gen_cov_switch_values.35 = internal global [21 x i64] [i64 19, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 16, i64 33, i64 36, i64 42, i64 45, i64 48, i64 50, i64 54, i64 55, i64 56, i64 61, i64 221]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 20722, i64 36940]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"RTW_WPA_OUI_TYPE\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 13, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"RTW_WPA_VERSION\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 14, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"WPA_AUTH_KEY_MGMT_NONE\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 15, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [32 x i8] c"WPA_AUTH_KEY_MGMT_UNSPEC_802_1X\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 16, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [34 x i8] c"WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 17, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_NONE\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 18, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"WPA_CIPHER_SUITE_WEP40\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 19, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_TKIP\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 20, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_WRAP\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 21, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_CCMP\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 22, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"WPA_CIPHER_SUITE_WEP104\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 23, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"RSN_VERSION_BSD\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 25, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant [32 x i8] c"RSN_AUTH_KEY_MGMT_UNSPEC_802_1X\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 26, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [34 x i8] c"RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 27, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_NONE\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 28, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"RSN_CIPHER_SUITE_WEP40\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 29, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_TKIP\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 30, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_WRAP\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 31, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_CCMP\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 32, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"RSN_CIPHER_SUITE_WEP104\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 33, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 757, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 844, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 895, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 898, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 658, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 678, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 693, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 704, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 717, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [48 x i8] c"../drivers/staging/r8188eu/core/rtw_ieee80211.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 723, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @rtw_ieee802_11_parse_elems._entry, ptr @rtw_ieee802_11_parse_elems._entry.3, ptr @rtw_ieee802_11_parse_elems._entry_ptr, ptr @rtw_ieee802_11_parse_elems._entry_ptr.5, ptr @rtw_ieee802_11_parse_vendor_specific._entry, ptr @rtw_ieee802_11_parse_vendor_specific._entry.13, ptr @rtw_ieee802_11_parse_vendor_specific._entry.16, ptr @rtw_ieee802_11_parse_vendor_specific._entry.19, ptr @rtw_ieee802_11_parse_vendor_specific._entry.22, ptr @rtw_ieee802_11_parse_vendor_specific._entry.25, ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr, ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.15, ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.18, ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.21, ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.24, ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.27, ptr @rtw_macaddr_cfg._entry, ptr @rtw_macaddr_cfg._entry.8, ptr @rtw_macaddr_cfg._entry_ptr, ptr @rtw_macaddr_cfg._entry_ptr.10, ptr @RTW_WPA_OUI_TYPE, ptr @RTW_WPA_VERSION, ptr @WPA_AUTH_KEY_MGMT_NONE, ptr @WPA_AUTH_KEY_MGMT_UNSPEC_802_1X, ptr @WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X, ptr @WPA_CIPHER_SUITE_NONE, ptr @WPA_CIPHER_SUITE_WEP40, ptr @WPA_CIPHER_SUITE_TKIP, ptr @WPA_CIPHER_SUITE_WRAP, ptr @WPA_CIPHER_SUITE_CCMP, ptr @WPA_CIPHER_SUITE_WEP104, ptr @RSN_VERSION_BSD, ptr @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, ptr @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, ptr @RSN_CIPHER_SUITE_NONE, ptr @RSN_CIPHER_SUITE_WEP40, ptr @RSN_CIPHER_SUITE_TKIP, ptr @RSN_CIPHER_SUITE_WRAP, ptr @RSN_CIPHER_SUITE_CCMP, ptr @RSN_CIPHER_SUITE_WEP104, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RTW_WPA_OUI_TYPE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RTW_WPA_VERSION to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_AUTH_KEY_MGMT_NONE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_AUTH_KEY_MGMT_UNSPEC_802_1X to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_NONE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_WEP40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_TKIP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_WRAP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_CCMP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_WEP104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_VERSION_BSD to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_NONE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_WEP40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_TKIP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_WRAP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_CCMP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_WEP104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ieee802_11_parse_elems._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ieee802_11_parse_elems._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_macaddr_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_macaddr_cfg._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ieee802_11_parse_vendor_specific._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ieee802_11_parse_vendor_specific._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ieee802_11_parse_vendor_specific._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ieee802_11_parse_vendor_specific._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ieee802_11_parse_vendor_specific._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ieee802_11_parse_vendor_specific._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_get_bit_value_from_ieee_value(i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_is_cckrates_included(ptr nocapture noundef readonly %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not32 = icmp eq i8 %1, 0
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %extract.t41 = trunc i8 %1 to i7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %.off0 = phi i7 [ %extract.t, %if.end.while.body_crit_edge ], [ %extract.t41, %while.body.preheader ]
  %i.033 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %2 = zext i7 %.off0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i7 %.off0, label %if.end [
    i7 2, label %while.body.cleanup_crit_edge
    i7 4, label %while.body.cleanup_crit_edge42
    i7 11, label %while.body.cleanup_crit_edge43
    i7 22, label %while.body.cleanup_crit_edge44
  ]

while.body.cleanup_crit_edge44:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.cleanup_crit_edge43:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.cleanup_crit_edge42:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %while.body
  %inc = add i32 %i.033, 1
  %arrayidx = getelementptr i8, ptr %rate, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %cmp.not = icmp eq i8 %4, 0
  %extract.t = trunc i8 %4 to i7
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.body.cleanup_crit_edge42, %while.body.cleanup_crit_edge43, %while.body.cleanup_crit_edge44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge42 ], [ 1, %while.body.cleanup_crit_edge43 ], [ 1, %while.body.cleanup_crit_edge44 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_is_cckratesonly_included(ptr nocapture noundef readonly %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not32 = icmp eq i8 %1, 0
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %extract.t35 = trunc i8 %1 to i7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %.off0 = phi i7 [ %extract.t, %if.end.while.body_crit_edge ], [ %extract.t35, %while.body.preheader ]
  %i.033 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %2 = zext i7 %.off0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i7 %.off0, label %while.body.cleanup_crit_edge [
    i7 2, label %while.body.if.end_crit_edge
    i7 4, label %while.body.if.end_crit_edge36
    i7 11, label %while.body.if.end_crit_edge37
    i7 22, label %while.body.if.end_crit_edge38
  ]

while.body.if.end_crit_edge38:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

while.body.if.end_crit_edge37:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

while.body.if.end_crit_edge36:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %while.body.if.end_crit_edge, %while.body.if.end_crit_edge36, %while.body.if.end_crit_edge37, %while.body.if.end_crit_edge38
  %inc = add i32 %i.033, 1
  %arrayidx = getelementptr i8, ptr %rate, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %cmp.not = icmp eq i8 %4, 0
  %extract.t = trunc i8 %4 to i7
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_check_network_type(ptr nocapture noundef readonly %rate, i32 noundef %ratelen, i32 noundef %channel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %channel)
  %cmp = icmp sgt i32 %channel, 14
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.else:                                          ; preds = %entry
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not32.i = icmp eq i8 %1, 0
  br i1 %cmp.not32.i, label %if.else.return_crit_edge, label %while.body.preheader.i

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

while.body.preheader.i:                           ; preds = %if.else
  %extract.t35.i = trunc i8 %1 to i7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.preheader.i
  %.off0.i = phi i7 [ %extract.t.i, %if.end.i.while.body.i_crit_edge ], [ %extract.t35.i, %while.body.preheader.i ]
  %i.033.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %2 = zext i7 %.off0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i7 %.off0.i, label %while.body.i.while.body.i12_crit_edge [
    i7 2, label %while.body.i.if.end.i_crit_edge
    i7 4, label %while.body.i.if.end.i_crit_edge28
    i7 11, label %while.body.i.if.end.i_crit_edge29
    i7 22, label %while.body.i.if.end.i_crit_edge30
  ]

while.body.i.if.end.i_crit_edge30:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

while.body.i.if.end.i_crit_edge29:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

while.body.i.if.end.i_crit_edge28:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

while.body.i.while.body.i12_crit_edge:            ; preds = %while.body.i
  br label %while.body.i12

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge28, %while.body.i.if.end.i_crit_edge29, %while.body.i.if.end.i_crit_edge30
  %inc.i = add i32 %i.033.i, 1
  %arrayidx.i = getelementptr i8, ptr %rate, i32 %inc.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %cmp.not.i = icmp eq i8 %4, 0
  %extract.t.i = trunc i8 %4 to i7
  br i1 %cmp.not.i, label %if.end.i.return_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

while.body.i12:                                   ; preds = %if.end.i17.while.body.i12_crit_edge, %while.body.i.while.body.i12_crit_edge
  %.off0.i10 = phi i7 [ %extract.t.i16, %if.end.i17.while.body.i12_crit_edge ], [ %extract.t35.i, %while.body.i.while.body.i12_crit_edge ]
  %i.033.i11 = phi i32 [ %inc.i13, %if.end.i17.while.body.i12_crit_edge ], [ 0, %while.body.i.while.body.i12_crit_edge ]
  %5 = zext i7 %.off0.i10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i7 %.off0.i10, label %if.end.i17 [
    i7 2, label %while.body.i12.return_crit_edge
    i7 4, label %while.body.i12.return_crit_edge31
    i7 11, label %while.body.i12.return_crit_edge32
    i7 22, label %while.body.i12.return_crit_edge33
  ]

while.body.i12.return_crit_edge33:                ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

while.body.i12.return_crit_edge32:                ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

while.body.i12.return_crit_edge31:                ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

while.body.i12.return_crit_edge:                  ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i17:                                       ; preds = %while.body.i12
  %inc.i13 = add i32 %i.033.i11, 1
  %arrayidx.i14 = getelementptr i8, ptr %rate, i32 %inc.i13
  %6 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i14, align 1
  %cmp.not.i15 = icmp eq i8 %7, 0
  %extract.t.i16 = trunc i8 %7 to i7
  br i1 %cmp.not.i15, label %if.end.i17.return_crit_edge, label %if.end.i17.while.body.i12_crit_edge

if.end.i17.while.body.i12_crit_edge:              ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i12

if.end.i17.return_crit_edge:                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

return:                                           ; preds = %if.end.i17.return_crit_edge, %while.body.i12.return_crit_edge, %while.body.i12.return_crit_edge31, %while.body.i12.return_crit_edge32, %while.body.i12.return_crit_edge33, %if.end.i.return_crit_edge, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.else.return_crit_edge ], [ 2, %if.end.i17.return_crit_edge ], [ 3, %while.body.i12.return_crit_edge ], [ 3, %while.body.i12.return_crit_edge31 ], [ 3, %while.body.i12.return_crit_edge32 ], [ 3, %while.body.i12.return_crit_edge33 ], [ 1, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rtw_set_fixed_ie(ptr noundef writeonly %pbuf, i32 noundef %len, ptr nocapture noundef readonly %source, ptr nocapture noundef %frlen) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp = icmp slt i32 %limit, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %p.0, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_set_supported_rate(ptr nocapture noundef writeonly %SupportedRates, i32 noundef %mode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %SupportedRates, i32 0, i32 16)
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %entry.sw.bb2_crit_edge
    i32 10, label %entry.sw.bb2_crit_edge7
    i32 8, label %entry.sw.bb2_crit_edge8
    i32 11, label %entry.sw.bb2_crit_edge9
  ]

entry.sw.bb2_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2

entry.sw.bb2_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2

entry.sw.bb2_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %SupportedRates to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -2105242730, ptr %SupportedRates, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %SupportedRates to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 869784221743865964, ptr %SupportedRates, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge7, %entry.sw.bb2_crit_edge8, %entry.sw.bb2_crit_edge9
  %4 = ptrtoint ptr %SupportedRates to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -2105242730, ptr %SupportedRates, align 1
  %add.ptr = getelementptr i8, ptr %SupportedRates, i32 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 869784221743865964, ptr %add.ptr, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_get_rateset_len(ptr nocapture noundef readonly %rateset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %arrayidx = getelementptr i8, ptr %rateset, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.0)
  %cmp2 = icmp ugt i32 %i.0, 12
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  ret i32 %i.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_generate_ie(ptr nocapture noundef %pregistrypriv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 12, i32 8
  %BeaconPeriod = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 7, i32 1
  %0 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %BeaconPeriod, align 1
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
  %Privacy = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 4
  %7 = ptrtoint ptr %Privacy to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %Privacy, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then10

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %9 = or i16 %spec.store.select, 4096
  %10 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr2, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %entry.if.end14_crit_edge
  %add.ptr16 = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 12, i32 12
  %Ssid = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 3
  %11 = ptrtoint ptr %Ssid to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %Ssid, align 1
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_set_ie.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %Ssid18 = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 3, i32 1
  %add.ptr3.i = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 12, i32 14
  %15 = call ptr @memcpy(ptr %add.ptr3.i, ptr %Ssid18, i32 %12)
  br label %rtw_set_ie.exit

rtw_set_ie.exit:                                  ; preds = %if.then.i, %if.end14.rtw_set_ie.exit_crit_edge
  %add.ptr5.i = getelementptr i8, ptr %add.ptr16, i32 %12
  %add.ptr6.i = getelementptr i8, ptr %add.ptr5.i, i32 2
  %wireless_mode20 = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 7
  %16 = ptrtoint ptr %wireless_mode20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wireless_mode20, align 2
  %SupportedRates = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9
  %18 = call ptr @memset(ptr %SupportedRates, i32 0, i32 16)
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %17, label %rtw_set_ie.exit.while.cond.i.preheader_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb1.i
    i8 3, label %rtw_set_ie.exit.sw.bb2.i_crit_edge
    i8 10, label %rtw_set_ie.exit.sw.bb2.i_crit_edge124
    i8 8, label %rtw_set_ie.exit.sw.bb2.i_crit_edge125
    i8 11, label %rtw_set_ie.exit.sw.bb2.i_crit_edge126
  ]

rtw_set_ie.exit.sw.bb2.i_crit_edge126:            ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i

rtw_set_ie.exit.sw.bb2.i_crit_edge125:            ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i

rtw_set_ie.exit.sw.bb2.i_crit_edge124:            ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i

rtw_set_ie.exit.sw.bb2.i_crit_edge:               ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb2.i

rtw_set_ie.exit.while.cond.i.preheader_crit_edge: ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.preheader

sw.bb.i:                                          ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %SupportedRates to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 -2105242730, ptr %SupportedRates, align 1
  br label %while.cond.i.preheader

sw.bb1.i:                                         ; preds = %rtw_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %SupportedRates to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 869784221743865964, ptr %SupportedRates, align 1
  br label %while.cond.i.preheader

sw.bb2.i:                                         ; preds = %rtw_set_ie.exit.sw.bb2.i_crit_edge, %rtw_set_ie.exit.sw.bb2.i_crit_edge124, %rtw_set_ie.exit.sw.bb2.i_crit_edge125, %rtw_set_ie.exit.sw.bb2.i_crit_edge126
  %22 = ptrtoint ptr %SupportedRates to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 -2105242730, ptr %SupportedRates, align 1
  %add.ptr.i77 = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 4
  %23 = ptrtoint ptr %add.ptr.i77 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 869784221743865964, ptr %add.ptr.i77, align 1
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %rtw_set_ie.exit.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %i.0.i = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %arrayidx.i = getelementptr i8, ptr %SupportedRates, i32 %i.0.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.0.i)
  %cmp2.i = icmp ugt i32 %i.0.i, 12
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp2.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %rtw_get_rateset_len.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

rtw_get_rateset_len.exit:                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i)
  %cmp26 = icmp ugt i32 %i.0.i, 8
  %26 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %add.ptr6.i, align 1
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %rtw_get_rateset_len.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i78 = getelementptr i8, ptr %add.ptr6.i, i32 1
  %27 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %add.ptr.i78, align 1
  %add.ptr3.i79 = getelementptr i8, ptr %add.ptr6.i, i32 2
  %28 = ptrtoint ptr %SupportedRates to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %SupportedRates, align 1
  %30 = ptrtoint ptr %add.ptr3.i79 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %add.ptr3.i79, align 1
  br label %if.end35

if.else:                                          ; preds = %rtw_get_rateset_len.exit
  %conv1.i84 = trunc i32 %i.0.i to i8
  %add.ptr.i85 = getelementptr i8, ptr %add.ptr6.i, i32 1
  %31 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i84, ptr %add.ptr.i85, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.not.i86 = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i86, label %if.else.rtw_set_ie.exit93_crit_edge, label %if.then.i88

if.else.rtw_set_ie.exit93_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_set_ie.exit93

if.then.i88:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr3.i87 = getelementptr i8, ptr %add.ptr6.i, i32 2
  %32 = call ptr @memcpy(ptr %add.ptr3.i87, ptr %SupportedRates, i32 %i.0.i)
  br label %rtw_set_ie.exit93

rtw_set_ie.exit93:                                ; preds = %if.then.i88, %if.else.rtw_set_ie.exit93_crit_edge
  %add.i89 = add nuw nsw i32 %i.0.i, 2
  br label %if.end35

if.end35:                                         ; preds = %rtw_set_ie.exit93, %if.then28
  %.pn = phi i32 [ 10, %if.then28 ], [ %add.i89, %rtw_set_ie.exit93 ]
  %33 = phi i32 [ 8, %if.then28 ], [ %i.0.i, %rtw_set_ie.exit93 ]
  %34 = getelementptr i8, ptr %add.ptr6.i, i32 %33
  %ie.0 = getelementptr i8, ptr %34, i32 2
  %DSConfig = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 7, i32 3
  %35 = ptrtoint ptr %ie.0 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %ie.0, align 1
  %add.ptr.i94 = getelementptr i8, ptr %ie.0, i32 1
  %36 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %add.ptr.i94, align 1
  %add.ptr3.i95 = getelementptr i8, ptr %ie.0, i32 2
  %37 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %DSConfig, align 1
  %39 = ptrtoint ptr %add.ptr3.i95 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %add.ptr3.i95, align 1
  %add.ptr6.i99 = getelementptr i8, ptr %add.ptr.i94, i32 2
  %ATIMWindow = getelementptr inbounds %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 7, i32 2
  %40 = ptrtoint ptr %add.ptr6.i99 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 6, ptr %add.ptr6.i99, align 1
  %add.ptr.i100 = getelementptr i8, ptr %add.ptr6.i99, i32 1
  %41 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %add.ptr.i100, align 1
  %add.ptr3.i101 = getelementptr i8, ptr %add.ptr6.i99, i32 2
  %42 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %ATIMWindow, align 1
  %44 = ptrtoint ptr %add.ptr3.i101 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %add.ptr3.i101, align 1
  %sz.0 = add i32 %12, 21
  %add4.i103 = add i32 %sz.0, %.pn
  br i1 %cmp26, label %rtw_set_ie.exit115, label %if.end35.if.end47_crit_edge

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

rtw_set_ie.exit115:                               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr6.i105 = getelementptr i8, ptr %add.ptr3.i101, i32 2
  %sub = add nsw i32 %i.0.i, -8
  %add.ptr45 = getelementptr %struct.registry_priv, ptr %pregistrypriv, i32 0, i32 36, i32 9, i32 8
  %45 = ptrtoint ptr %add.ptr6.i105 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 50, ptr %add.ptr6.i105, align 1
  %conv1.i106 = trunc i32 %sub to i8
  %add.ptr.i107 = getelementptr i8, ptr %add.ptr6.i105, i32 1
  %46 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv1.i106, ptr %add.ptr.i107, align 1
  %add.ptr3.i109 = getelementptr i8, ptr %add.ptr6.i105, i32 2
  %47 = call ptr @memcpy(ptr %add.ptr3.i109, ptr %add.ptr45, i32 %sub)
  %add.i111 = add nsw i32 %i.0.i, -6
  %add4.i112 = add i32 %add.i111, %add4.i103
  br label %if.end47

if.end47:                                         ; preds = %rtw_set_ie.exit115, %if.end35.if.end47_crit_edge
  %sz.1 = phi i32 [ %add4.i112, %rtw_set_ie.exit115 ], [ %add4.i103, %if.end35.if.end47_crit_edge ]
  ret i32 %sz.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_wpa_ie(ptr noundef %pie, ptr nocapture noundef writeonly %wpa_ie_len, i32 noundef %limit) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp.i40 = icmp slt i32 %limit, 1
  br i1 %cmp.i40, label %entry.cleanup_crit_edge, label %while.cond.i.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

rtw_get_ie.exit:                                  ; preds = %while.cond.i
  %conv4.i.le = zext i8 %3 to i32
  %tobool.not = icmp eq ptr %p.0.i, null
  br i1 %tobool.not, label %rtw_get_ie.exit.cleanup_crit_edge, label %if.then

rtw_get_ie.exit.cleanup_crit_edge:                ; preds = %rtw_get_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then:                                          ; preds = %rtw_get_ie.exit
  %add.ptr = getelementptr i8, ptr %p.0.i, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end, label %if.then.check_next_ie_crit_edge

if.then.check_next_ie_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_next_ie

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end15:                                         ; preds = %check_next_ie
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp.i = icmp slt i32 %limit, 1
  br i1 %cmp.i, label %entry.rtw_get_ie.exit_crit_edge, label %if.end.i

entry.rtw_get_ie.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_get_ie.exit

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

rtw_get_ie.exit:                                  ; preds = %if.else.i.rtw_get_ie.exit_crit_edge, %if.then3.i, %entry.rtw_get_ie.exit_crit_edge
  %retval.0.i = phi ptr [ %p.0.i, %if.then3.i ], [ null, %entry.rtw_get_ie.exit_crit_edge ], [ null, %if.else.i.rtw_get_ie.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_wpa_cipher_suite(ptr nocapture noundef readonly %s) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_NONE, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %bcmp21 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_WEP40, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21)
  %tobool2.not = icmp eq i32 %bcmp21, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end4:                                          ; preds = %if.end
  %bcmp22 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_TKIP, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22)
  %tobool6.not = icmp eq i32 %bcmp22, 0
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end8:                                          ; preds = %if.end4
  %bcmp23 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_CCMP, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp23)
  %tobool10.not = icmp eq i32 %bcmp23, 0
  br i1 %tobool10.not, label %if.end8.return_crit_edge, label %if.end12

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %bcmp24 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_WEP104, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24)
  %tobool14.not = icmp eq i32 %bcmp24, 0
  %. = select i1 %tobool14.not, i32 4, i32 0
  br label %return

return:                                           ; preds = %if.end12, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ], [ 8, %if.end4.return_crit_edge ], [ 16, %if.end8.return_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_wpa2_cipher_suite(ptr nocapture noundef readonly %s) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_NONE, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %bcmp21 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_WEP40, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21)
  %tobool2.not = icmp eq i32 %bcmp21, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end4:                                          ; preds = %if.end
  %bcmp22 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_TKIP, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22)
  %tobool6.not = icmp eq i32 %bcmp22, 0
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end8:                                          ; preds = %if.end4
  %bcmp23 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_CCMP, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp23)
  %tobool10.not = icmp eq i32 %bcmp23, 0
  br i1 %tobool10.not, label %if.end8.return_crit_edge, label %if.end12

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %bcmp24 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_WEP104, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24)
  %tobool14.not = icmp eq i32 %bcmp24, 0
  %. = select i1 %tobool14.not, i32 4, i32 0
  br label %return

return:                                           ; preds = %if.end12, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ], [ 8, %if.end4.return_crit_edge ], [ 16, %if.end8.return_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_parse_wpa_ie(ptr nocapture noundef readonly %wpa_ie, i32 noundef %wpa_ie_len, ptr nocapture noundef writeonly %group_cipher, ptr nocapture noundef %pairwise_cipher, ptr noundef writeonly %is_8021x) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wpa_ie_len)
  %cmp = icmp slt i32 %wpa_ie_len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wpa_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp1.not = icmp eq i8 %1, -35
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %add.ptr9 = getelementptr i8, ptr %wpa_ie, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr9, ptr noundef nonnull dereferenceable(4) @RTW_WPA_OUI_TYPE, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end11, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
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
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #18
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
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.else44:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub19)
  %cmp45 = icmp eq i32 %sub19, 1
  br i1 %cmp45, label %if.else44.cleanup_crit_edge, label %if.else44.if.end49.thread_crit_edge

if.else44.if.end49.thread_crit_edge:              ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49.thread

if.else44.cleanup_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then54:                                        ; preds = %if.end49
  %add.ptr55 = getelementptr i8, ptr %pos.1110, i32 6
  %bcmp92 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr55, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp92)
  %tobool57.not = icmp eq i32 %bcmp92, 0
  br i1 %tobool57.not, label %if.then58, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then58:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %is_8021x to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %is_8021x, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.then54.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end49.thread, %if.else44.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false8.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then27.cleanup_crit_edge ], [ 0, %if.else44.cleanup_crit_edge ], [ 1, %if.then58 ], [ 1, %if.then54.cleanup_crit_edge ], [ 1, %if.end49.cleanup_crit_edge ], [ 1, %if.end49.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_parse_wpa2_ie(ptr nocapture noundef readonly %rsn_ie, i32 noundef %rsn_ie_len, ptr nocapture noundef writeonly %group_cipher, ptr nocapture noundef %pairwise_cipher, ptr noundef writeonly %is_8021x) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rsn_ie_len)
  %cmp = icmp slt i32 %rsn_ie_len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %rsn_ie to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsn_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp1.not = icmp eq i8 %1, 48
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
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
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #18
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
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.else41:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub16)
  %cmp42 = icmp eq i32 %sub16, 1
  br i1 %cmp42, label %if.else41.cleanup_crit_edge, label %if.else41.if.end46.thread_crit_edge

if.else41.if.end46.thread_crit_edge:              ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46.thread

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then50:                                        ; preds = %if.end46
  %add.ptr51 = getelementptr i8, ptr %pos.1104, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr51, ptr noundef nonnull dereferenceable(4) @__const.rtw_parse_wpa2_ie.SUITE_1X, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool53.not = icmp eq i32 %bcmp, 0
  br i1 %tobool53.not, label %if.then54, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %is_8021x to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %is_8021x, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.then50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end46.thread, %if.else41.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.else41.cleanup_crit_edge ], [ 1, %if.then54 ], [ 1, %if.then50.cleanup_crit_edge ], [ 1, %if.end46.cleanup_crit_edge ], [ 1, %if.end46.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_get_sec_ie(ptr nocapture noundef readonly %in_ie, i32 noundef %in_len, ptr noundef writeonly %rsn_ie, ptr nocapture noundef %rsn_len, ptr noundef writeonly %wpa_ie, ptr nocapture noundef %wpa_len) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp84 = icmp ugt i32 %in_len, 12
  br i1 %cmp84, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool26.not = icmp eq ptr %rsn_ie, null
  %tobool5.not = icmp eq ptr %wpa_ie, null
  br label %while.body

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %while.body.lr.ph
  %cnt.085 = phi i32 [ 12, %while.body.lr.ph ], [ %cnt.1, %if.end51.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %cnt.085
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %1, label %while.body.if.else44_crit_edge [
    i8 -35, label %land.lhs.true
    i8 48, label %if.then25
  ]

while.body.if.else44_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else44

land.lhs.true:                                    ; preds = %while.body
  %add = add i32 %cnt.085, 2
  %arrayidx3 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx3, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else44_crit_edge

land.lhs.true.if.else44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else44

if.then:                                          ; preds = %land.lhs.true
  %.pre = add nuw i32 %cnt.085, 1
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
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
  %.pre86 = add nuw i32 %cnt.085, 1
  br i1 %tobool26.not, label %if.then25.if.end33_crit_edge, label %if.then27

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx30 = getelementptr i8, ptr %in_ie, i32 %.pre86
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %10 to i32
  %add32 = add nuw nsw i32 %conv31, 2
  %11 = call ptr @memcpy(ptr %rsn_ie, ptr %arrayidx, i32 %add32)
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then25.if.end33_crit_edge
  %arrayidx35 = getelementptr i8, ptr %in_ie, i32 %.pre86
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
  %add45 = add nuw i32 %cnt.085, 1
  %arrayidx46 = getelementptr i8, ptr %in_ie, i32 %add45
  br label %if.end51

if.end51:                                         ; preds = %if.else44, %if.end33, %if.end
  %add42.pn.in.in.in = phi ptr [ %arrayidx35, %if.end33 ], [ %arrayidx46, %if.else44 ], [ %arrayidx13, %if.end ]
  %15 = ptrtoint ptr %add42.pn.in.in.in to i32
  call void @__asan_load1_noabort(i32 %15)
  %add42.pn.in.in = load i8, ptr %add42.pn.in.in.in, align 1
  %add42.pn.in = zext i8 %add42.pn.in.in to i32
  %add42.pn = add i32 %cnt.085, 2
  %cnt.1 = add i32 %add42.pn, %add42.pn.in
  %cmp = icmp ult i32 %cnt.1, %in_len
  br i1 %cmp, label %if.end51.while.body_crit_edge, label %if.end51.while.end_crit_edge

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %if.end51.while.end_crit_edge, %entry.while.end_crit_edge
  %16 = ptrtoint ptr %rsn_len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rsn_len, align 2
  %conv52 = zext i16 %17 to i32
  %18 = ptrtoint ptr %wpa_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %wpa_len, align 2
  %conv53 = zext i16 %19 to i32
  %add54 = add nuw nsw i32 %conv53, %conv52
  ret i32 %add54
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_is_wps_ie(ptr noundef readonly %ie_ptr, ptr nocapture noundef writeonly %wps_ielen) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ie_ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ie_ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ie_ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp = icmp eq i8 %1, -35
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %arrayidx2 = getelementptr i8, ptr %ie_ptr, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx2, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wps_attr.wps_oui, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
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
define dso_local ptr @rtw_get_wps_ie(ptr noundef readonly %in_ie, i32 noundef %in_len, ptr noundef writeonly %wps_ie, ptr noundef writeonly %wps_ielen) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wps_ielen, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %arrayidx7 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx7, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wps_attr.wps_oui, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %arrayidx.le = getelementptr i8, ptr %in_ie, i32 %cnt.067
  %tobool11.not = icmp eq ptr %wps_ie, null
  br i1 %tobool11.not, label %if.then9.if.end18_crit_edge, label %if.then12

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then20, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %arrayidx.le, %if.then20 ], [ %arrayidx.le, %if.end18.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_wps_attr(ptr noundef %wps_ie, i32 noundef %wps_ielen, i16 noundef zeroext %target_attr_id, ptr noundef writeonly %buf_attr, ptr noundef writeonly %len_attr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %len_attr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup42_crit_edge

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %wps_ie, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wps_attr.wps_oui, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup42_crit_edge

lor.lhs.false.cleanup42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.end4:                                          ; preds = %lor.lhs.false
  %sub.ptr.rhs.cast = ptrtoint ptr %wps_ie to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %wps_ielen)
  %cmp669 = icmp ugt i32 %wps_ielen, 6
  br i1 %cmp669, label %while.body.lr.ph, label %if.end4.cleanup42_crit_edge

if.end4.cleanup42_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

while.body.lr.ph:                                 ; preds = %if.end4
  %add.ptr5 = getelementptr i8, ptr %wps_ie, i32 6
  %conv25 = zext i16 %target_attr_id to i32
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %attr_ptr.070 = phi ptr [ %add.ptr5, %while.body.lr.ph ], [ %add.ptr38, %cleanup.while.body_crit_edge ]
  %3 = ptrtoint ptr %attr_ptr.070 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %attr_ptr.070, align 1
  %conv9 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %arrayidx10 = getelementptr i8, ptr %attr_ptr.070, i32 1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %6 to i32
  %or = or i32 %shl, %conv11
  %add.ptr13 = getelementptr i8, ptr %attr_ptr.070, i32 2
  %7 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr13, align 1
  %conv15 = zext i8 %8 to i16
  %shl16 = shl nuw i16 %conv15, 8
  %arrayidx18 = getelementptr i8, ptr %attr_ptr.070, i32 3
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %10 to i16
  %or20 = or i16 %shl16, %conv19
  %add = add i16 %or20, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv25)
  %cmp26 = icmp eq i32 %or, %conv25
  br i1 %cmp26, label %if.then28, label %cleanup

if.then28:                                        ; preds = %while.body
  %tobool29.not = icmp eq ptr %buf_attr, null
  br i1 %tobool29.not, label %if.then28.if.end32_crit_edge, label %if.then30

if.then28.if.end32_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  %conv31 = zext i16 %add to i32
  %11 = call ptr @memcpy(ptr %buf_attr, ptr %attr_ptr.070, i32 %conv31)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then28.if.end32_crit_edge
  br i1 %tobool.not, label %if.end32.cleanup42_crit_edge, label %if.then34

if.end32.cleanup42_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %conv35 = zext i16 %add to i32
  %12 = ptrtoint ptr %len_attr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv35, ptr %len_attr, align 4
  br label %cleanup42

cleanup:                                          ; preds = %while.body
  %conv37 = zext i16 %add to i32
  %add.ptr38 = getelementptr i8, ptr %attr_ptr.070, i32 %conv37
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr38 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp6 = icmp ult i32 %sub.ptr.sub, %wps_ielen
  br i1 %cmp6, label %cleanup.while.body_crit_edge, label %cleanup.cleanup42_crit_edge

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

cleanup42:                                        ; preds = %cleanup.cleanup42_crit_edge, %if.then34, %if.end32.cleanup42_crit_edge, %if.end4.cleanup42_crit_edge, %lor.lhs.false.cleanup42_crit_edge, %if.end.cleanup42_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup42_crit_edge ], [ null, %if.end.cleanup42_crit_edge ], [ %attr_ptr.070, %if.then34 ], [ %attr_ptr.070, %if.end32.cleanup42_crit_edge ], [ null, %if.end4.cleanup42_crit_edge ], [ null, %cleanup.cleanup42_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_wps_attr_content(ptr noundef %wps_ie, i32 noundef %wps_ielen, i16 noundef zeroext %target_attr_id, ptr noundef writeonly %buf_content, ptr noundef writeonly %len_content) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %len_content, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %wps_ie, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_wps_attr.wps_oui, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %wps_ie to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %wps_ielen)
  %cmp669.i = icmp ugt i32 %wps_ielen, 6
  br i1 %cmp669.i, label %while.body.lr.ph.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end4.i
  %add.ptr5.i = getelementptr i8, ptr %wps_ie, i32 6
  %conv25.i = zext i16 %target_attr_id to i32
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %attr_ptr.070.i = phi ptr [ %add.ptr5.i, %while.body.lr.ph.i ], [ %add.ptr38.i, %cleanup.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %attr_ptr.070.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %attr_ptr.070.i, align 1
  %conv9.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv9.i, 8
  %arrayidx10.i = getelementptr i8, ptr %attr_ptr.070.i, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %6 to i32
  %or.i = or i32 %shl.i, %conv11.i
  %add.ptr13.i = getelementptr i8, ptr %attr_ptr.070.i, i32 2
  %7 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr13.i, align 1
  %conv15.i = zext i8 %8 to i16
  %shl16.i = shl nuw i16 %conv15.i, 8
  %arrayidx18.i = getelementptr i8, ptr %attr_ptr.070.i, i32 3
  %9 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %10 to i16
  %or20.i = or i16 %shl16.i, %conv19.i
  %add.i = add i16 %or20.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv25.i)
  %cmp26.i = icmp eq i32 %or.i, %conv25.i
  %conv35.i = zext i16 %add.i to i32
  br i1 %cmp26.i, label %rtw_get_wps_attr.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %add.ptr38.i = getelementptr i8, ptr %attr_ptr.070.i, i32 %conv35.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr38.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp6.i = icmp ult i32 %sub.ptr.sub.i, %wps_ielen
  br i1 %cmp6.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

rtw_get_wps_attr.exit:                            ; preds = %while.body.i
  %tobool1.not = icmp eq ptr %attr_ptr.070.i, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i)
  %tobool2.not = icmp eq i16 %add.i, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %rtw_get_wps_attr.exit.cleanup_crit_edge, label %if.then3

rtw_get_wps_attr.exit.cleanup_crit_edge:          ; preds = %rtw_get_wps_attr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %rtw_get_wps_attr.exit
  %tobool4.not = icmp eq ptr %buf_content, null
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %attr_ptr.070.i, i32 4
  %sub = add nsw i32 %conv35.i, -4
  %11 = call ptr @memcpy(ptr %buf_content, ptr %add.ptr, i32 %sub)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %sub9 = add nsw i32 %conv35.i, -4
  %12 = ptrtoint ptr %len_content to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub9, ptr %len_content, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %add.ptr11 = getelementptr i8, ptr %attr_ptr.070.i, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %rtw_get_wps_attr.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr11, %if.end10 ], [ null, %rtw_get_wps_attr.exit.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.i.cleanup_crit_edge ], [ null, %cleanup.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ieee802_11_parse_elems(ptr noundef %start, i32 noundef %len, ptr noundef writeonly %elems, i32 noundef %show_errors) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %elems, i32 0, i32 184)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp170 = icmp ugt i32 %len, 1
  br i1 %cmp170, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %show_errors)
  %tobool.not.i = icmp eq i32 %show_errors, 0
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
  %left.0174 = phi i32 [ %len, %while.body.lr.ph ], [ %sub58, %cleanup.while.body_crit_edge ]
  %unknown.0172 = phi i32 [ 0, %while.body.lr.ph ], [ %unknown.1, %cleanup.while.body_crit_edge ]
  %pos.0171 = phi ptr [ %start, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %pos.0171, i32 1
  %1 = ptrtoint ptr %pos.0171 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pos.0171, align 1
  %incdec.ptr1 = getelementptr i8, ptr %pos.0171, i32 2
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr, align 1
  %sub = add i32 %left.0174, -2
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp2 = icmp ult i32 %sub, %conv
  br i1 %cmp2, label %if.then, label %if.end14

if.then:                                          ; preds = %while.body
  %conv.le = zext i8 %4 to i32
  br i1 %tobool.not.i, label %if.then.cleanup65_crit_edge, label %do.body

if.then.cleanup65_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup65

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp5 = icmp ugt i32 %5, 4
  br i1 %cmp5, label %do.end, label %do.body.cleanup65_crit_edge

do.body.cleanup65_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup65

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %conv9 = zext i8 %2 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv9, i32 noundef %conv.le, i32 noundef %sub) #23
  br label %cleanup65

if.end14:                                         ; preds = %while.body
  %conv15 = zext i8 %2 to i32
  %6 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %2, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb16
    i8 2, label %sw.bb17
    i8 3, label %sw.bb18
    i8 4, label %sw.bb19
    i8 5, label %sw.bb20
    i8 6, label %sw.bb21
    i8 16, label %sw.bb22
    i8 42, label %sw.bb23
    i8 50, label %sw.bb24
    i8 -35, label %sw.bb25
    i8 48, label %sw.bb31
    i8 33, label %sw.bb32
    i8 36, label %sw.bb33
    i8 54, label %sw.bb34
    i8 55, label %sw.bb35
    i8 56, label %sw.bb36
    i8 45, label %sw.bb37
    i8 61, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %elems to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %incdec.ptr1, ptr %elems, align 4
  %8 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %4, ptr %ssid_len, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %supp_rates to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr1, ptr %supp_rates, align 4
  %10 = ptrtoint ptr %supp_rates_len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %4, ptr %supp_rates_len, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %fh_params to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %incdec.ptr1, ptr %fh_params, align 4
  %12 = ptrtoint ptr %fh_params_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %4, ptr %fh_params_len, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %ds_params to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %incdec.ptr1, ptr %ds_params, align 4
  %14 = ptrtoint ptr %ds_params_len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %4, ptr %ds_params_len, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %cf_params to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %incdec.ptr1, ptr %cf_params, align 4
  %16 = ptrtoint ptr %cf_params_len to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %4, ptr %cf_params_len, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %tim to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %incdec.ptr1, ptr %tim, align 4
  %18 = ptrtoint ptr %tim_len to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %4, ptr %tim_len, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %ibss_params to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %incdec.ptr1, ptr %ibss_params, align 4
  %20 = ptrtoint ptr %ibss_params_len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %4, ptr %ibss_params_len, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %challenge to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr1, ptr %challenge, align 4
  %22 = ptrtoint ptr %challenge_len to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %4, ptr %challenge_len, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %erp_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %incdec.ptr1, ptr %erp_info, align 4
  %24 = ptrtoint ptr %erp_info_len to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %4, ptr %erp_info_len, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %ext_supp_rates to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %incdec.ptr1, ptr %ext_supp_rates, align 4
  %26 = ptrtoint ptr %ext_supp_rates_len to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %4, ptr %ext_supp_rates_len, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp.i = icmp ult i8 %4, 4
  br i1 %cmp.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %sw.bb25
  br i1 %tobool.not.i, label %if.then.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, label %do.body.i

if.then.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

do.body.i:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %27 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp2.i = icmp ugt i32 %27, 4
  br i1 %cmp2.i, label %do.end.i, label %do.body.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge

do.body.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv) #23
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

if.end8.i:                                        ; preds = %sw.bb25
  %28 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr1, align 1
  %conv.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx9.i = getelementptr i8, ptr %pos.0171, i32 3
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %31 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 8
  %or.i = or i32 %shl11.i, %shl.i
  %arrayidx12.i = getelementptr i8, ptr %pos.0171, i32 4
  %32 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %33 to i32
  %or14.i = or i32 %or.i, %conv13.i
  %34 = zext i32 %or14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %or14.i, label %do.body96.i [
    i32 20722, label %sw.bb.i
    i32 36940, label %sw.bb74.i
  ]

sw.bb.i:                                          ; preds = %if.end8.i
  %arrayidx15.i = getelementptr i8, ptr %pos.0171, i32 5
  %35 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %36 to i32
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %36, label %do.body59.i [
    i8 1, label %sw.bb17.i
    i8 2, label %sw.bb19.i
    i8 4, label %sw.bb56.i
  ]

sw.bb17.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  %38 = ptrtoint ptr %wpa_ie.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %incdec.ptr1, ptr %wpa_ie.i, align 4
  %39 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %4, ptr %wpa_ie_len.i, align 4
  br label %cleanup

sw.bb19.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp20.i = icmp ult i8 %4, 5
  br i1 %cmp20.i, label %do.body23.i, label %if.end35.i

do.body23.i:                                      ; preds = %sw.bb19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %40 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp24.i = icmp ugt i32 %40, 4
  br i1 %cmp24.i, label %do.end29.i, label %do.body23.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge

do.body23.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

do.end29.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #20
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 4) #23
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

if.end35.i:                                       ; preds = %sw.bb19.i
  %arrayidx36.i = getelementptr i8, ptr %pos.0171, i32 6
  %41 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %42 to i32
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %42, label %do.body42.i [
    i8 0, label %if.end35.i.sw.bb38.i_crit_edge
    i8 1, label %if.end35.i.sw.bb38.i_crit_edge196
    i8 2, label %sw.bb40.i
  ]

if.end35.i.sw.bb38.i_crit_edge196:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb38.i

if.end35.i.sw.bb38.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %if.end35.i.sw.bb38.i_crit_edge, %if.end35.i.sw.bb38.i_crit_edge196
  %44 = ptrtoint ptr %wme.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %incdec.ptr1, ptr %wme.i, align 4
  %45 = ptrtoint ptr %wme_len.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %4, ptr %wme_len.i, align 4
  br label %cleanup

sw.bb40.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #20
  %46 = ptrtoint ptr %wme_tspec.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %incdec.ptr1, ptr %wme_tspec.i, align 4
  %47 = ptrtoint ptr %wme_tspec_len.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %4, ptr %wme_tspec_len.i, align 4
  br label %cleanup

do.body42.i:                                      ; preds = %if.end35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %48 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp43.i = icmp ugt i32 %48, 4
  br i1 %cmp43.i, label %do.end48.i, label %do.body42.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge

do.body42.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

do.end48.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #20
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv37.i, i32 noundef %conv) #23
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

sw.bb56.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  %49 = ptrtoint ptr %wps_ie.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %incdec.ptr1, ptr %wps_ie.i, align 4
  %50 = ptrtoint ptr %wps_ie_len.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %4, ptr %wps_ie_len.i, align 4
  br label %cleanup

do.body59.i:                                      ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %51 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp60.i = icmp ugt i32 %51, 4
  br i1 %cmp60.i, label %do.end65.i, label %do.body59.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge

do.body59.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

do.end65.i:                                       ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #20
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv16.i, i32 noundef %conv) #23
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

sw.bb74.i:                                        ; preds = %if.end8.i
  %arrayidx75.i = getelementptr i8, ptr %pos.0171, i32 5
  %52 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx75.i, align 1
  %conv76.i = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %53)
  %cond.i = icmp eq i8 %53, 51
  br i1 %cond.i, label %sw.bb77.i, label %do.body80.i

sw.bb77.i:                                        ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %vendor_ht_cap.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %incdec.ptr1, ptr %vendor_ht_cap.i, align 4
  %55 = ptrtoint ptr %vendor_ht_cap_len.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %4, ptr %vendor_ht_cap_len.i, align 4
  br label %cleanup

do.body80.i:                                      ; preds = %sw.bb74.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %56 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp81.i = icmp ugt i32 %56, 4
  br i1 %cmp81.i, label %do.end86.i, label %do.body80.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge

do.body80.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

do.end86.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #20
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv76.i, i32 noundef %conv) #23
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

do.body96.i:                                      ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %57 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp97.i = icmp ugt i32 %57, 4
  br i1 %cmp97.i, label %do.end102.i, label %do.body96.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge

do.body96.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge: ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

do.end102.i:                                      ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #20
  %call110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv.i, i32 noundef %conv10.i, i32 noundef %conv13.i, i32 noundef %conv) #23
  br label %rtw_ieee802_11_parse_vendor_specific.exit.thread

rtw_ieee802_11_parse_vendor_specific.exit.thread: ; preds = %do.end102.i, %do.body96.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %do.end86.i, %do.body80.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %do.end65.i, %do.body59.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %do.end48.i, %do.body42.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %do.end29.i, %do.body23.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %do.end.i, %do.body.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge, %if.then.i.rtw_ieee802_11_parse_vendor_specific.exit.thread_crit_edge
  %inc163 = add i32 %unknown.0172, 1
  br label %cleanup

sw.bb31:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %58 = ptrtoint ptr %rsn_ie to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %incdec.ptr1, ptr %rsn_ie, align 4
  %59 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %4, ptr %rsn_ie_len, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %60 = ptrtoint ptr %power_cap to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %incdec.ptr1, ptr %power_cap, align 4
  %61 = ptrtoint ptr %power_cap_len to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %4, ptr %power_cap_len, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %62 = ptrtoint ptr %supp_channels to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %incdec.ptr1, ptr %supp_channels, align 4
  %63 = ptrtoint ptr %supp_channels_len to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %4, ptr %supp_channels_len, align 4
  br label %cleanup

sw.bb34:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %64 = ptrtoint ptr %mdie to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %incdec.ptr1, ptr %mdie, align 4
  %65 = ptrtoint ptr %mdie_len to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %4, ptr %mdie_len, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %66 = ptrtoint ptr %ftie to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %incdec.ptr1, ptr %ftie, align 4
  %67 = ptrtoint ptr %ftie_len to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %4, ptr %ftie_len, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %68 = ptrtoint ptr %timeout_int to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %incdec.ptr1, ptr %timeout_int, align 4
  %69 = ptrtoint ptr %timeout_int_len to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %4, ptr %timeout_int_len, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %70 = ptrtoint ptr %ht_capabilities to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %incdec.ptr1, ptr %ht_capabilities, align 4
  %71 = ptrtoint ptr %ht_capabilities_len to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %4, ptr %ht_capabilities_len, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %72 = ptrtoint ptr %ht_operation to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %incdec.ptr1, ptr %ht_operation, align 4
  %73 = ptrtoint ptr %ht_operation_len to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %4, ptr %ht_operation_len, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end14
  %inc39 = add i32 %unknown.0172, 1
  br i1 %tobool.not.i, label %sw.default.cleanup_crit_edge, label %do.body43

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body43:                                        ; preds = %sw.default
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %74 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp44 = icmp ugt i32 %74, 4
  br i1 %cmp44, label %do.end49, label %do.body43.cleanup_crit_edge

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #20
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv15, i32 noundef %conv) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.body43.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %rtw_ieee802_11_parse_vendor_specific.exit.thread, %sw.bb77.i, %sw.bb56.i, %sw.bb40.i, %sw.bb38.i, %sw.bb17.i, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb
  %unknown.1 = phi i32 [ %inc39, %do.end49 ], [ %inc39, %do.body43.cleanup_crit_edge ], [ %inc39, %sw.default.cleanup_crit_edge ], [ %unknown.0172, %sw.bb38 ], [ %unknown.0172, %sw.bb37 ], [ %unknown.0172, %sw.bb36 ], [ %unknown.0172, %sw.bb35 ], [ %unknown.0172, %sw.bb34 ], [ %unknown.0172, %sw.bb33 ], [ %unknown.0172, %sw.bb32 ], [ %unknown.0172, %sw.bb31 ], [ %unknown.0172, %sw.bb24 ], [ %unknown.0172, %sw.bb23 ], [ %unknown.0172, %sw.bb22 ], [ %unknown.0172, %sw.bb21 ], [ %unknown.0172, %sw.bb20 ], [ %unknown.0172, %sw.bb19 ], [ %unknown.0172, %sw.bb18 ], [ %unknown.0172, %sw.bb17 ], [ %unknown.0172, %sw.bb16 ], [ %unknown.0172, %sw.bb ], [ %inc163, %rtw_ieee802_11_parse_vendor_specific.exit.thread ], [ %unknown.0172, %sw.bb77.i ], [ %unknown.0172, %sw.bb56.i ], [ %unknown.0172, %sw.bb40.i ], [ %unknown.0172, %sw.bb38.i ], [ %unknown.0172, %sw.bb17.i ]
  %sub58 = sub i32 %sub, %conv
  %add.ptr = getelementptr i8, ptr %incdec.ptr1, i32 %conv
  %cmp = icmp ugt i32 %sub58, 1
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %unknown.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %unknown.1, %cleanup.while.end_crit_edge ]
  %left.0.lcssa = phi i32 [ %len, %entry.while.end_crit_edge ], [ %sub58, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0.lcssa)
  %tobool61.not = icmp eq i32 %left.0.lcssa, 0
  br i1 %tobool61.not, label %if.end63, label %while.end.cleanup65_crit_edge

while.end.cleanup65_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup65

if.end63:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unknown.0.lcssa)
  %tobool64.not = icmp ne i32 %unknown.0.lcssa, 0
  %cond = zext i1 %tobool64.not to i32
  br label %cleanup65

cleanup65:                                        ; preds = %if.end63, %while.end.cleanup65_crit_edge, %do.end, %do.body.cleanup65_crit_edge, %if.then.cleanup65_crit_edge
  %retval.2 = phi i32 [ %cond, %if.end63 ], [ -1, %while.end.cleanup65_crit_edge ], [ -1, %if.then.cleanup65_crit_edge ], [ -1, %do.end ], [ -1, %do.body.cleanup65_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @key_char2num(i8 noundef zeroext %ch) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %ch, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %0)
  %1 = icmp ult i8 %0, 10
  br i1 %1, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.else:                                          ; preds = %entry
  %2 = add i8 %ch, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %3 = icmp ult i8 %2, 6
  br i1 %3, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %add = add nsw i8 %ch, -87
  br label %return

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %4 = add i8 %ch, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %5 = icmp ult i8 %4, 6
  %add29 = add i8 %ch, -55
  %spec.select = select i1 %5, i8 %add29, i8 -1
  br label %return

return:                                           ; preds = %if.else18, %if.then14, %entry.return_crit_edge
  %retval.0 = phi i8 [ %add, %if.then14 ], [ %spec.select, %if.else18 ], [ %0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @str_2char2num(i8 noundef zeroext %hch, i8 noundef zeroext %lch) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %hch, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %0)
  %1 = icmp ult i8 %0, 10
  br i1 %1, label %entry.key_char2num.exit_crit_edge, label %if.else.i

entry.key_char2num.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %key_char2num.exit

if.else.i:                                        ; preds = %entry
  %2 = add i8 %hch, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %3 = icmp ult i8 %2, 6
  br i1 %3, label %if.then14.i, label %if.else18.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.i = add nsw i8 %hch, -87
  br label %key_char2num.exit

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %4 = add i8 %hch, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %5 = icmp ult i8 %4, 6
  %add29.i = add i8 %hch, -55
  %spec.select.i = select i1 %5, i8 %add29.i, i8 -1
  br label %key_char2num.exit

key_char2num.exit:                                ; preds = %if.else18.i, %if.then14.i, %entry.key_char2num.exit_crit_edge
  %retval.0.i = phi i8 [ %add.i, %if.then14.i ], [ %spec.select.i, %if.else18.i ], [ %0, %entry.key_char2num.exit_crit_edge ]
  %6 = add i8 %lch, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %7 = icmp ult i8 %6, 10
  br i1 %7, label %key_char2num.exit.key_char2num.exit11_crit_edge, label %if.else.i4

key_char2num.exit.key_char2num.exit11_crit_edge:  ; preds = %key_char2num.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %key_char2num.exit11

if.else.i4:                                       ; preds = %key_char2num.exit
  %8 = add i8 %lch, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %9 = icmp ult i8 %8, 6
  br i1 %9, label %if.then14.i6, label %if.else18.i9

if.then14.i6:                                     ; preds = %if.else.i4
  call void @__sanitizer_cov_trace_pc() #20
  %add.i5 = add nsw i8 %lch, -87
  br label %key_char2num.exit11

if.else18.i9:                                     ; preds = %if.else.i4
  call void @__sanitizer_cov_trace_pc() #20
  %10 = add i8 %lch, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %11 = icmp ult i8 %10, 6
  %add29.i7 = add i8 %lch, -55
  %spec.select.i8 = select i1 %11, i8 %add29.i7, i8 -1
  br label %key_char2num.exit11

key_char2num.exit11:                              ; preds = %if.else18.i9, %if.then14.i6, %key_char2num.exit.key_char2num.exit11_crit_edge
  %retval.0.i10 = phi i8 [ %add.i5, %if.then14.i6 ], [ %spec.select.i8, %if.else18.i9 ], [ %6, %key_char2num.exit.key_char2num.exit11_crit_edge ]
  %mul = mul i8 %retval.0.i, 10
  %add = add i8 %retval.0.i10, %mul
  ret i8 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @key_2char2num(i8 noundef zeroext %hch, i8 noundef zeroext %lch) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %hch, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %0)
  %1 = icmp ult i8 %0, 10
  br i1 %1, label %entry.key_char2num.exit_crit_edge, label %if.else.i

entry.key_char2num.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %key_char2num.exit

if.else.i:                                        ; preds = %entry
  %2 = add i8 %hch, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %3 = icmp ult i8 %2, 6
  br i1 %3, label %if.then14.i, label %if.else18.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.i = add nsw i8 %hch, -87
  br label %key_char2num.exit

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %4 = add i8 %hch, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %5 = icmp ult i8 %4, 6
  %add29.i = add i8 %hch, -55
  %spec.select.i = select i1 %5, i8 %add29.i, i8 -1
  br label %key_char2num.exit

key_char2num.exit:                                ; preds = %if.else18.i, %if.then14.i, %entry.key_char2num.exit_crit_edge
  %retval.0.i = phi i8 [ %add.i, %if.then14.i ], [ %spec.select.i, %if.else18.i ], [ %0, %entry.key_char2num.exit_crit_edge ]
  %6 = add i8 %lch, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %7 = icmp ult i8 %6, 10
  br i1 %7, label %key_char2num.exit.key_char2num.exit11_crit_edge, label %if.else.i4

key_char2num.exit.key_char2num.exit11_crit_edge:  ; preds = %key_char2num.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %key_char2num.exit11

if.else.i4:                                       ; preds = %key_char2num.exit
  %8 = add i8 %lch, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %9 = icmp ult i8 %8, 6
  br i1 %9, label %if.then14.i6, label %if.else18.i9

if.then14.i6:                                     ; preds = %if.else.i4
  call void @__sanitizer_cov_trace_pc() #20
  %add.i5 = add nsw i8 %lch, -87
  br label %key_char2num.exit11

if.else18.i9:                                     ; preds = %if.else.i4
  call void @__sanitizer_cov_trace_pc() #20
  %10 = add i8 %lch, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %11 = icmp ult i8 %10, 6
  %add29.i7 = add i8 %lch, -55
  %spec.select.i8 = select i1 %11, i8 %add29.i7, i8 -1
  br label %key_char2num.exit11

key_char2num.exit11:                              ; preds = %if.else18.i9, %if.then14.i6, %key_char2num.exit.key_char2num.exit11_crit_edge
  %retval.0.i10 = phi i8 [ %add.i5, %if.then14.i6 ], [ %spec.select.i8, %if.else18.i9 ], [ %6, %key_char2num.exit.key_char2num.exit11_crit_edge ]
  %shl = shl i8 %retval.0.i, 4
  %or = or i8 %retval.0.i10, %shl
  ret i8 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_macaddr_cfg(ptr noundef %mac_addr) local_unnamed_addr #12 align 64 {
entry:
  %mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #18
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %tobool.not = icmp eq ptr %mac_addr, null
  %2 = call ptr @memset(ptr %mac, i32 255, i32 6)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtw_initmac to i32))
  %3 = load ptr, ptr @rtw_initmac, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call = call zeroext i1 @mac_pton(ptr noundef nonnull %3, ptr noundef nonnull %mac) #18
  br i1 %call, label %if.then2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 4
  %6 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mac_addr, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 2
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %10 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac_addr, align 4
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mac, align 4
  %add.ptr.i33 = getelementptr i8, ptr %mac_addr, i32 4
  %13 = ptrtoint ptr %add.ptr.i33 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i33, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mac, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %0, align 2
  %and9.i = and i16 %19, %17
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %and510.i = and i16 %and9.i, %21
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end5.if.then10_crit_edge, label %lor.lhs.false

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end5
  %22 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac, align 4
  %conv.i = zext i16 %21 to i32
  %or.i = or i32 %23, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i37 = icmp eq i32 %or.i, 0
  br i1 %cmp.i37, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.do.body18_crit_edge

lor.lhs.false.do.body18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body18

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end5.if.then10_crit_edge
  call void @get_random_bytes(ptr noundef nonnull %mac_addr, i32 noundef 6) #18
  %24 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mac_addr, align 1
  %26 = and i8 %25, -4
  %27 = or i8 %26, 2
  store i8 %27, ptr %mac_addr, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %28 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp = icmp ugt i32 %28, 4
  br i1 %cmp, label %do.end, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #23
  br label %do.body18

do.body18:                                        ; preds = %do.end, %lor.lhs.false.do.body18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp19 = icmp ugt i32 %.pr, 4
  br i1 %cmp19, label %do.end23, label %do.body18.cleanup_crit_edge

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #20
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %mac_addr) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.body18.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_p2p_ie(ptr noundef readonly %in_ie, i32 noundef %in_len, ptr noundef writeonly %p2p_ie, ptr noundef writeonly %p2p_ielen) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p2p_ielen, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %p2p_ielen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_len)
  %cmp58.not = icmp eq i32 %in_len, 0
  br i1 %cmp58.not, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_len)
  %cmp1 = icmp slt i32 %in_len, 0
  br i1 %cmp1, label %while.body.lr.ph.if.then3.split_crit_edge, label %while.body.lr.ph.while.body_crit_edge

while.body.lr.ph.while.body_crit_edge:            ; preds = %while.body.lr.ph
  br label %while.body

while.body.lr.ph.if.then3.split_crit_edge:        ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3.split

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.lr.ph.while.body_crit_edge
  %cnt.059 = phi i32 [ %add29, %if.else.while.body_crit_edge ], [ 0, %while.body.lr.ph.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %cnt.059
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %cnt.059)
  %cmp2 = icmp ugt i32 %cnt.059, 768
  br i1 %cmp2, label %while.body.if.then3.split_crit_edge, label %if.end4

while.body.if.then3.split_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3.split

if.then3.split:                                   ; preds = %while.body.if.then3.split_crit_edge, %while.body.lr.ph.if.then3.split_crit_edge
  tail call void @dump_stack() #23
  br label %cleanup

if.end4:                                          ; preds = %while.body
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %2)
  %cmp5 = icmp eq i8 %2, -35
  %add = add nuw nsw i32 %cnt.059, 2
  br i1 %cmp5, label %land.lhs.true, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %arrayidx7 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx7, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_p2p_attr.p2p_oui, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %tobool10.not = icmp eq ptr %p2p_ie, null
  br i1 %tobool10.not, label %if.then9.if.end17_crit_edge, label %if.then11

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  %add13 = add nuw nsw i32 %cnt.059, 1
  %arrayidx14 = getelementptr i8, ptr %in_ie, i32 %add13
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %4 to i32
  %add16 = add nuw nsw i32 %conv15, 2
  %5 = call ptr @memcpy(ptr %p2p_ie, ptr %arrayidx, i32 %add16)
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.then9.if.end17_crit_edge
  br i1 %tobool.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %add20 = add nuw nsw i32 %cnt.059, 1
  %arrayidx21 = getelementptr i8, ptr %in_ie, i32 %add20
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %7 to i32
  %add23 = add nuw nsw i32 %conv22, 2
  %8 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add23, ptr %p2p_ielen, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end4.if.else_crit_edge
  %add25 = add nuw nsw i32 %cnt.059, 1
  %arrayidx26 = getelementptr i8, ptr %in_ie, i32 %add25
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %10 to i32
  %add29 = add nuw nsw i32 %add, %conv27
  %cmp = icmp ult i32 %add29, %in_len
  br i1 %cmp, label %if.else.while.body_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then19, %if.end17.cleanup_crit_edge, %if.then3.split, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3.split ], [ %arrayidx, %if.then19 ], [ %arrayidx, %if.end17.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_p2p_attr(ptr noundef %p2p_ie, i32 noundef %p2p_ielen, i8 noundef zeroext %target_attr_id, ptr noundef writeonly %buf_attr, ptr noundef writeonly %len_attr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %len_attr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %len_attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len_attr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %p2p_ie, null
  br i1 %tobool1.not, label %if.end.cleanup32_crit_edge, label %lor.lhs.false

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup32

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %p2p_ie to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p2p_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %2)
  %cmp.not = icmp eq i8 %2, -35
  br i1 %cmp.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup32_crit_edge

lor.lhs.false.cleanup32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup32

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %p2p_ie, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_p2p_attr.p2p_oui, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false3.cleanup32_crit_edge

lor.lhs.false3.cleanup32_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup32

if.end6:                                          ; preds = %lor.lhs.false3
  %sub.ptr.rhs.cast = ptrtoint ptr %p2p_ie to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %p2p_ielen)
  %cmp858 = icmp ugt i32 %p2p_ielen, 6
  br i1 %cmp858, label %while.body.preheader, label %if.end6.cleanup32_crit_edge

if.end6.cleanup32_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup32

while.body.preheader:                             ; preds = %if.end6
  %add.ptr7 = getelementptr i8, ptr %p2p_ie, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %attr_ptr.059 = phi ptr [ %add.ptr28, %cleanup.while.body_crit_edge ], [ %add.ptr7, %while.body.preheader ]
  %3 = ptrtoint ptr %attr_ptr.059 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %attr_ptr.059, align 1
  %add.ptr10 = getelementptr i8, ptr %attr_ptr.059, i32 1
  %5 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr10, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #18
  %add = add i16 %7, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %target_attr_id)
  %cmp16 = icmp eq i8 %4, %target_attr_id
  br i1 %cmp16, label %if.then18, label %cleanup

if.then18:                                        ; preds = %while.body
  %tobool19.not = icmp eq ptr %buf_attr, null
  br i1 %tobool19.not, label %if.then18.if.end22_crit_edge, label %if.then20

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  %conv21 = zext i16 %add to i32
  %8 = call ptr @memcpy(ptr %buf_attr, ptr %attr_ptr.059, i32 %conv21)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then18.if.end22_crit_edge
  br i1 %tobool.not, label %if.end22.cleanup32_crit_edge, label %if.then24

if.end22.cleanup32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup32

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %conv25 = zext i16 %add to i32
  %9 = ptrtoint ptr %len_attr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv25, ptr %len_attr, align 4
  br label %cleanup32

cleanup:                                          ; preds = %while.body
  %conv27 = zext i16 %add to i32
  %add.ptr28 = getelementptr i8, ptr %attr_ptr.059, i32 %conv27
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr28 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp8 = icmp ult i32 %sub.ptr.sub, %p2p_ielen
  br i1 %cmp8, label %cleanup.while.body_crit_edge, label %cleanup.cleanup32_crit_edge

cleanup.cleanup32_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup32

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

cleanup32:                                        ; preds = %cleanup.cleanup32_crit_edge, %if.then24, %if.end22.cleanup32_crit_edge, %if.end6.cleanup32_crit_edge, %lor.lhs.false3.cleanup32_crit_edge, %lor.lhs.false.cleanup32_crit_edge, %if.end.cleanup32_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false3.cleanup32_crit_edge ], [ null, %lor.lhs.false.cleanup32_crit_edge ], [ null, %if.end.cleanup32_crit_edge ], [ %attr_ptr.059, %if.then24 ], [ %attr_ptr.059, %if.end22.cleanup32_crit_edge ], [ null, %if.end6.cleanup32_crit_edge ], [ null, %cleanup.cleanup32_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_p2p_attr_content(ptr noundef %p2p_ie, i32 noundef %p2p_ielen, i8 noundef zeroext %target_attr_id, ptr noundef writeonly %buf_content, ptr noundef writeonly %len_content) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %len_content, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %len_content to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len_content, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not.i = icmp eq ptr %p2p_ie, null
  br i1 %tobool1.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %1 = ptrtoint ptr %p2p_ie to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p2p_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %2)
  %cmp.not.i = icmp eq i8 %2, -35
  br i1 %cmp.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %p2p_ie, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_p2p_attr.p2p_oui, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool4.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %lor.lhs.false3.i.cleanup_crit_edge

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6.i:                                        ; preds = %lor.lhs.false3.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p2p_ie to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %p2p_ielen)
  %cmp858.i = icmp ugt i32 %p2p_ielen, 6
  br i1 %cmp858.i, label %while.body.preheader.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.preheader.i:                           ; preds = %if.end6.i
  %add.ptr7.i = getelementptr i8, ptr %p2p_ie, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %attr_ptr.059.i = phi ptr [ %add.ptr28.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr7.i, %while.body.preheader.i ]
  %3 = ptrtoint ptr %attr_ptr.059.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %attr_ptr.059.i, align 1
  %add.ptr10.i = getelementptr i8, ptr %attr_ptr.059.i, i32 1
  %5 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr10.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #18
  %add.i = add i16 %7, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %target_attr_id)
  %cmp16.i = icmp eq i8 %4, %target_attr_id
  %conv25.i = zext i16 %add.i to i32
  br i1 %cmp16.i, label %rtw_get_p2p_attr.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %add.ptr28.i = getelementptr i8, ptr %attr_ptr.059.i, i32 %conv25.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr28.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp8.i = icmp ult i32 %sub.ptr.sub.i, %p2p_ielen
  br i1 %cmp8.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

rtw_get_p2p_attr.exit:                            ; preds = %while.body.i
  %tobool1.not = icmp eq ptr %attr_ptr.059.i, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i)
  %tobool2.not = icmp eq i16 %add.i, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %rtw_get_p2p_attr.exit.cleanup_crit_edge, label %if.then3

rtw_get_p2p_attr.exit.cleanup_crit_edge:          ; preds = %rtw_get_p2p_attr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %rtw_get_p2p_attr.exit
  %tobool4.not = icmp eq ptr %buf_content, null
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %attr_ptr.059.i, i32 3
  %sub = add nsw i32 %conv25.i, -3
  %8 = call ptr @memcpy(ptr %buf_content, ptr %add.ptr, i32 %sub)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %sub9 = add nsw i32 %conv25.i, -3
  %9 = ptrtoint ptr %len_content to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub9, ptr %len_content, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %add.ptr11 = getelementptr i8, ptr %attr_ptr.059.i, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %rtw_get_p2p_attr.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr11, %if.end10 ], [ null, %rtw_get_p2p_attr.exit.cleanup_crit_edge ], [ null, %lor.lhs.false3.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end6.i.cleanup_crit_edge ], [ null, %cleanup.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_set_p2p_attr_content(ptr nocapture noundef writeonly %pbuf, i8 noundef zeroext %attr_id, i16 noundef zeroext %attr_len, ptr noundef readonly %pdata_attr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %attr_id, ptr %pbuf, align 1
  %conv = zext i16 %attr_len to i32
  %1 = lshr i16 %attr_len, 8
  %conv1 = trunc i16 %1 to i8
  %add.ptr = getelementptr i8, ptr %pbuf, i32 1
  %arrayidx = getelementptr i8, ptr %pbuf, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %arrayidx, align 1
  %conv3 = trunc i16 %attr_len to i8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %add.ptr, align 1
  %tobool.not = icmp eq ptr %pdata_attr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr6 = getelementptr i8, ptr %pbuf, i32 3
  %4 = call ptr @memcpy(ptr %add.ptr6, ptr %pdata_attr, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add = add nuw nsw i32 %conv, 3
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_wlan_bssid_ex_remove_p2p_attr(ptr noundef %bss_ex, i8 noundef zeroext %attr_id) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %IEs = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bss_ex, i32 0, i32 12
  %add.ptr = getelementptr %struct.wlan_bssid_ex, ptr %bss_ex, i32 0, i32 12, i32 12
  %IELength = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bss_ex, i32 0, i32 11
  %0 = ptrtoint ptr %IELength to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %IELength, align 1
  %sub = add i32 %1, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp58.not.i = icmp eq i32 %sub, 0
  br i1 %cmp58.not.i, label %entry.if.end14_crit_edge, label %while.body.lr.ph.i

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

while.body.lr.ph.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1.i = icmp slt i32 %sub, 0
  br i1 %cmp1.i, label %while.body.lr.ph.i.if.then3.split.i_crit_edge, label %while.body.lr.ph.i.while.body.i_crit_edge

while.body.lr.ph.i.while.body.i_crit_edge:        ; preds = %while.body.lr.ph.i
  br label %while.body.i

while.body.lr.ph.i.if.then3.split.i_crit_edge:    ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3.split.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %while.body.lr.ph.i.while.body.i_crit_edge
  %cnt.059.i = phi i32 [ %add29.i, %if.else.i.while.body.i_crit_edge ], [ 0, %while.body.lr.ph.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %cnt.059.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %cnt.059.i)
  %cmp2.i = icmp ugt i32 %cnt.059.i, 768
  br i1 %cmp2.i, label %while.body.i.if.then3.split.i_crit_edge, label %if.end4.i

while.body.i.if.then3.split.i_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3.split.i

if.then3.split.i:                                 ; preds = %while.body.i.if.then3.split.i_crit_edge, %while.body.lr.ph.i.if.then3.split.i_crit_edge
  tail call void @dump_stack() #23
  br label %if.end14

if.end4.i:                                        ; preds = %while.body.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %3)
  %cmp5.i = icmp eq i8 %3, -35
  %add.i = add nuw nsw i32 %cnt.059.i, 2
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end4.i.if.else.i_crit_edge

if.end4.i.if.else.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %arrayidx7.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx7.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_p2p_attr.p2p_oui, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %rtw_get_p2p_ie.exit, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end4.i.if.else.i_crit_edge
  %add25.i = add nuw nsw i32 %cnt.059.i, 1
  %arrayidx26.i = getelementptr i8, ptr %add.ptr, i32 %add25.i
  %4 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %5 to i32
  %add29.i = add nuw nsw i32 %add.i, %conv27.i
  %cmp.i = icmp ult i32 %add29.i, %sub
  br i1 %cmp.i, label %if.else.i.while.body.i_crit_edge, label %if.else.i.if.end14_crit_edge

if.else.i.if.end14_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

rtw_get_p2p_ie.exit:                              ; preds = %land.lhs.true.i
  %add20.i = add nuw nsw i32 %cnt.059.i, 1
  %arrayidx21.i = getelementptr i8, ptr %add.ptr, i32 %add20.i
  %6 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %7 to i32
  %add23.i = add nuw nsw i32 %conv22.i, 2
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rtw_get_p2p_ie.exit.if.end14_crit_edge, label %lor.lhs.false.i.lr.ph.i

rtw_get_p2p_ie.exit.if.end14_crit_edge:           ; preds = %rtw_get_p2p_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

lor.lhs.false.i.lr.ph.i:                          ; preds = %rtw_get_p2p_ie.exit
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %arrayidx.i to i32
  %add.ptr7.i.i = getelementptr i8, ptr %arrayidx.i, i32 6
  %add.ptr3.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %9)
  %cmp.not.i.i44 = icmp eq i8 %9, -35
  br i1 %cmp.not.i.i44, label %lor.lhs.false.i.lr.ph.i.lor.lhs.false3.i.i_crit_edge, label %lor.lhs.false.i.lr.ph.i.if.end14_crit_edge

lor.lhs.false.i.lr.ph.i.if.end14_crit_edge:       ; preds = %lor.lhs.false.i.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

lor.lhs.false.i.lr.ph.i.lor.lhs.false3.i.i_crit_edge: ; preds = %lor.lhs.false.i.lr.ph.i
  br label %lor.lhs.false3.i.i

lor.lhs.false3.i.i:                               ; preds = %if.then.i.lor.lhs.false3.i.i_crit_edge, %lor.lhs.false.i.lr.ph.i.lor.lhs.false3.i.i_crit_edge
  %ielen.028.i45 = phi i32 [ %sub6.i, %if.then.i.lor.lhs.false3.i.i_crit_edge ], [ %add23.i, %lor.lhs.false.i.lr.ph.i.lor.lhs.false3.i.i_crit_edge ]
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr.i.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_p2p_attr.p2p_oui, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool4.not.i.i = icmp eq i32 %bcmp.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ielen.028.i45)
  %cmp858.i.i = icmp ugt i32 %ielen.028.i45, 6
  %or.cond33.i = select i1 %tobool4.not.i.i, i1 %cmp858.i.i, i1 false
  br i1 %or.cond33.i, label %lor.lhs.false3.i.i.while.body.i.i_crit_edge, label %lor.lhs.false3.i.i.rtw_p2p_attr_remove.exit_crit_edge

lor.lhs.false3.i.i.rtw_p2p_attr_remove.exit_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_p2p_attr_remove.exit

lor.lhs.false3.i.i.while.body.i.i_crit_edge:      ; preds = %lor.lhs.false3.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %lor.lhs.false3.i.i.while.body.i.i_crit_edge
  %attr_ptr.059.i.i = phi ptr [ %add.ptr28.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %add.ptr7.i.i, %lor.lhs.false3.i.i.while.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %attr_ptr.059.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %attr_ptr.059.i.i, align 1
  %add.ptr10.i.i = getelementptr i8, ptr %attr_ptr.059.i.i, i32 1
  %12 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr10.i.i, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #18
  %add.i.i = add i16 %14, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %attr_id)
  %cmp16.i.i = icmp eq i8 %11, %attr_id
  br i1 %cmp16.i.i, label %rtw_get_p2p_attr.exit.i, label %cleanup.i.i

cleanup.i.i:                                      ; preds = %while.body.i.i
  %conv27.i.i = zext i16 %add.i.i to i32
  %add.ptr28.i.i = getelementptr i8, ptr %attr_ptr.059.i.i, i32 %conv27.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr28.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cmp8.i.i = icmp ult i32 %sub.ptr.sub.i.i, %ielen.028.i45
  br i1 %cmp8.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.rtw_p2p_attr_remove.exit_crit_edge

cleanup.i.i.rtw_p2p_attr_remove.exit_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_p2p_attr_remove.exit

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.i

rtw_get_p2p_attr.exit.i:                          ; preds = %while.body.i.i
  %tobool.not.i = icmp eq ptr %attr_ptr.059.i.i, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i)
  %tobool1.not.i = icmp eq i16 %add.i.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %rtw_get_p2p_attr.exit.i.rtw_p2p_attr_remove.exit_crit_edge, label %if.then.i

rtw_get_p2p_attr.exit.i.rtw_p2p_attr_remove.exit_crit_edge: ; preds = %rtw_get_p2p_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_p2p_attr_remove.exit

if.then.i:                                        ; preds = %rtw_get_p2p_attr.exit.i
  %conv25.i.i = zext i16 %add.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %attr_ptr.059.i.i, i32 %conv25.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.neg.i, %ielen.028.i45
  %15 = call ptr @memset(ptr %attr_ptr.059.i.i, i32 0, i32 %conv25.i.i)
  %16 = call ptr @memcpy(ptr %attr_ptr.059.i.i, ptr %add.ptr.i, i32 %sub.i)
  %add.ptr2.i = getelementptr i8, ptr %attr_ptr.059.i.i, i32 %sub.i
  %17 = call ptr @memset(ptr %add.ptr2.i, i32 0, i32 %conv25.i.i)
  %18 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr3.i, align 1
  %20 = trunc i16 %add.i.i to i8
  %conv5.i = sub i8 %19, %20
  store i8 %conv5.i, ptr %add.ptr3.i, align 1
  %sub6.i = sub i32 %ielen.028.i45, %conv25.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %cmp.not.i.i = icmp eq i8 %22, -35
  br i1 %cmp.not.i.i, label %if.then.i.lor.lhs.false3.i.i_crit_edge, label %if.then.i.rtw_p2p_attr_remove.exit_crit_edge

if.then.i.rtw_p2p_attr_remove.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_p2p_attr_remove.exit

if.then.i.lor.lhs.false3.i.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false3.i.i

rtw_p2p_attr_remove.exit:                         ; preds = %if.then.i.rtw_p2p_attr_remove.exit_crit_edge, %rtw_get_p2p_attr.exit.i.rtw_p2p_attr_remove.exit_crit_edge, %cleanup.i.i.rtw_p2p_attr_remove.exit_crit_edge, %lor.lhs.false3.i.i.rtw_p2p_attr_remove.exit_crit_edge
  %ielen.028.i39 = phi i32 [ %ielen.028.i45, %cleanup.i.i.rtw_p2p_attr_remove.exit_crit_edge ], [ %ielen.028.i45, %rtw_get_p2p_attr.exit.i.rtw_p2p_attr_remove.exit_crit_edge ], [ %ielen.028.i45, %lor.lhs.false3.i.i.rtw_p2p_attr_remove.exit_crit_edge ], [ %sub6.i, %if.then.i.rtw_p2p_attr_remove.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %ielen.028.i39)
  %cmp.not = icmp eq i32 %add23.i, %ielen.028.i39
  br i1 %cmp.not, label %rtw_p2p_attr_remove.exit.if.end14_crit_edge, label %if.then2

rtw_p2p_attr_remove.exit.if.end14_crit_edge:      ; preds = %rtw_p2p_attr_remove.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then2:                                         ; preds = %rtw_p2p_attr_remove.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr3 = getelementptr i8, ptr %arrayidx.i, i32 %add23.i
  %add.ptr4 = getelementptr i8, ptr %arrayidx.i, i32 %ielen.028.i39
  %23 = ptrtoint ptr %IELength to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %IELength, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %IEs to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub8 = add i32 %24, %sub.ptr.sub.neg
  %25 = call ptr @memcpy(ptr %add.ptr4, ptr %add.ptr3, i32 %sub8)
  %add.ptr9 = getelementptr i8, ptr %add.ptr4, i32 %sub8
  %sub10 = sub i32 %add23.i, %ielen.028.i39
  %26 = call ptr @memset(ptr %add.ptr9, i32 0, i32 %sub10)
  %add23.i.neg = sub nuw nsw i32 -2, %conv22.i
  %sub11.neg = add i32 %ielen.028.i39, %add23.i.neg
  %27 = load i32, ptr %IELength, align 1
  %sub13 = add i32 %sub11.neg, %27
  store i32 %sub13, ptr %IELength, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then2, %rtw_p2p_attr_remove.exit.if.end14_crit_edge, %lor.lhs.false.i.lr.ph.i.if.end14_crit_edge, %rtw_get_p2p_ie.exit.if.end14_crit_edge, %if.else.i.if.end14_crit_edge, %if.then3.split.i, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_get_bcn_info(ptr noundef %pnetwork) local_unnamed_addr #12 align 64 {
entry:
  %group_cipher.i = alloca i32, align 4
  %pairwise_cipher.i = alloca i32, align 4
  %is8021x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %IEs = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12
  %call = tail call ptr @rtw_get_capability_from_ie(ptr noundef %IEs) #18
  %0 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %le_tmp.0.copyload = load i16, ptr %call, align 1
  %1 = and i16 %le_tmp.0.copyload, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %Privacy = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %Privacy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %Privacy, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %BcnInfo = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7
  %3 = ptrtoint ptr %BcnInfo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %BcnInfo, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %IELength = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %4 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %IELength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp84.i = icmp ugt i32 %5, 12
  br i1 %cmp84.i, label %if.end.while.body.i_crit_edge, label %if.else19

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end51.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %wpa_len.0 = phi i16 [ %wpa_len.1, %if.end51.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %rsn_len.0 = phi i16 [ %rsn_len.1, %if.end51.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %cnt.085.i = phi i32 [ %cnt.1.i, %if.end51.i.while.body.i_crit_edge ], [ 12, %if.end.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %IEs, i32 %cnt.085.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %7, label %while.body.i.if.else44.i_crit_edge [
    i8 -35, label %land.lhs.true.i
    i8 48, label %if.then25.i
  ]

while.body.i.if.else44.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else44.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %add.i = add i32 %cnt.085.i, 2
  %arrayidx3.i = getelementptr i8, ptr %IEs, i32 %add.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx3.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.else44.i_crit_edge

land.lhs.true.i.if.else44.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else44.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %.pre.i = add nuw i32 %cnt.085.i, 1
  %arrayidx13.i = getelementptr i8, ptr %IEs, i32 %.pre.i
  %9 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %10 to i16
  %add15.i = add nuw nsw i16 %conv14.i, 2
  br label %if.end51.i

if.then25.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %.pre86.i = add nuw i32 %cnt.085.i, 1
  %arrayidx35.i = getelementptr i8, ptr %IEs, i32 %.pre86.i
  %11 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %12 to i16
  %add37.i = add nuw nsw i16 %conv36.i, 2
  br label %if.end51.i

if.else44.i:                                      ; preds = %land.lhs.true.i.if.else44.i_crit_edge, %while.body.i.if.else44.i_crit_edge
  %add45.i = add nuw i32 %cnt.085.i, 1
  %arrayidx46.i = getelementptr i8, ptr %IEs, i32 %add45.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else44.i, %if.then25.i, %if.then.i
  %wpa_len.1 = phi i16 [ %wpa_len.0, %if.else44.i ], [ %wpa_len.0, %if.then25.i ], [ %add15.i, %if.then.i ]
  %rsn_len.1 = phi i16 [ %rsn_len.0, %if.else44.i ], [ %add37.i, %if.then25.i ], [ %rsn_len.0, %if.then.i ]
  %add42.pn.in.in.in.i = phi ptr [ %arrayidx46.i, %if.else44.i ], [ %arrayidx35.i, %if.then25.i ], [ %arrayidx13.i, %if.then.i ]
  %13 = ptrtoint ptr %add42.pn.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %add42.pn.in.in.i = load i8, ptr %add42.pn.in.in.in.i, align 1
  %add42.pn.in.i = zext i8 %add42.pn.in.in.i to i32
  %add42.pn.i = add i32 %cnt.085.i, 2
  %cnt.1.i = add i32 %add42.pn.i, %add42.pn.in.i
  %cmp.i = icmp ult i32 %cnt.1.i, %5
  br i1 %cmp.i, label %if.end51.i.while.body.i_crit_edge, label %rtw_get_sec_ie.exit

if.end51.i.while.body.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

rtw_get_sec_ie.exit:                              ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rsn_len.1)
  %cmp.not = icmp eq i16 %rsn_len.1, 0
  br i1 %cmp.not, label %if.else12, label %rtw_get_sec_ie.exit.if.end26.sink.split_crit_edge

rtw_get_sec_ie.exit.if.end26.sink.split_crit_edge: ; preds = %rtw_get_sec_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.sink.split

if.else12:                                        ; preds = %rtw_get_sec_ie.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wpa_len.1)
  %cmp14.not = icmp ne i16 %wpa_len.1, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp14.not, i1 true, i1 %tobool.not.not
  %.mux = select i1 %cmp14.not, i8 2, i8 1
  br i1 %brmerge, label %if.else12.if.end26.sink.split_crit_edge, label %if.else12.if.end26_crit_edge

if.else12.if.end26_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.else12.if.end26.sink.split_crit_edge:          ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.sink.split

if.else19:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.else19.if.end26_crit_edge, label %if.else19.if.end26.sink.split_crit_edge

if.else19.if.end26.sink.split_crit_edge:          ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.sink.split

if.else19.if.end26_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.end26.sink.split:                              ; preds = %if.else19.if.end26.sink.split_crit_edge, %if.else12.if.end26.sink.split_crit_edge, %rtw_get_sec_ie.exit.if.end26.sink.split_crit_edge
  %.sink = phi i8 [ 3, %rtw_get_sec_ie.exit.if.end26.sink.split_crit_edge ], [ %.mux, %if.else12.if.end26.sink.split_crit_edge ], [ 1, %if.else19.if.end26.sink.split_crit_edge ]
  %BcnInfo17 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7
  %14 = ptrtoint ptr %BcnInfo17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %BcnInfo17, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.else19.if.end26_crit_edge, %if.else12.if.end26_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher.i) #18
  %15 = ptrtoint ptr %group_cipher.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %group_cipher.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher.i) #18
  %16 = ptrtoint ptr %pairwise_cipher.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pairwise_cipher.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is8021x.i) #18
  %17 = ptrtoint ptr %is8021x.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %is8021x.i, align 4
  %arrayidx.i82 = getelementptr %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12, i32 12
  %sub.i = add i32 %5, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i40.i.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i40.i.i, label %if.end26.rtw_get_cipher_info.exit_crit_edge, label %while.cond.i.preheader.lr.ph.i.i

if.end26.rtw_get_cipher_info.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_get_cipher_info.exit

while.cond.i.preheader.lr.ph.i.i:                 ; preds = %if.end26
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %arrayidx.i82 to i32
  %.neg = add i32 %sub.ptr.rhs.cast.i.i, -2
  %.neg.i = add i32 %.neg, %sub.i
  br label %while.cond.i.preheader.i.i

while.cond.i.preheader.i.i:                       ; preds = %if.end15.i.i, %while.cond.i.preheader.lr.ph.i.i
  %limit_new.042.i.i = phi i32 [ %sub.i, %while.cond.i.preheader.lr.ph.i.i ], [ %sub11.i.i, %if.end15.i.i ]
  %pbuf.041.i.i = phi ptr [ %arrayidx.i82, %while.cond.i.preheader.lr.ph.i.i ], [ %add.ptr16.i.i, %if.end15.i.i ]
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i4.i.preheader

if.else.i.i.i.while.cond.i.i.i_crit_edge:         ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i.i

rtw_get_ie.exit.i.i:                              ; preds = %while.cond.i.i.i
  %conv4.i.i.i.le196 = zext i8 %21 to i32
  %tobool.not.i.i = icmp eq ptr %p.0.i.i.i, null
  br i1 %tobool.not.i.i, label %rtw_get_ie.exit.i.i.while.cond.i.i4.i.preheader_crit_edge, label %if.then.i.i

rtw_get_ie.exit.i.i.while.cond.i.i4.i.preheader_crit_edge: ; preds = %rtw_get_ie.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i4.i.preheader

if.then.i.i:                                      ; preds = %rtw_get_ie.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %p.0.i.i.i, i32 2
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr.i.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_get_sec_ie.wpa_oui, i32 4) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool2.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %if.then.i.i.check_next_ie.i.i_crit_edge

if.then.i.i.check_next_ie.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_next_ie.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %p.0.i.i.i, i32 6
  %22 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %le_tmp.0.copyload.i.i = load i16, ptr %add.ptr4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %le_tmp.0.copyload.i.i)
  %cmp.not.i.i = icmp eq i16 %le_tmp.0.copyload.i.i, 256
  br i1 %cmp.not.i.i, label %land.lhs.true.i83, label %if.end.i.i.check_next_ie.i.i_crit_edge

if.end.i.i.check_next_ie.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_next_ie.i.i

check_next_ie.i.i:                                ; preds = %if.end.i.i.check_next_ie.i.i_crit_edge, %if.then.i.i.check_next_ie.i.i_crit_edge
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %p.0.i.i.i to i32
  %23 = add i32 %sub.ptr.lhs.cast.i.i, %conv4.i.i.i.le196
  %sub11.i.i = sub i32 %.neg.i, %23
  %cmp12.i.i = icmp slt i32 %sub11.i.i, 1
  br i1 %cmp12.i.i, label %check_next_ie.i.i.while.cond.i.i4.i.preheader_crit_edge, label %if.end15.i.i

check_next_ie.i.i.while.cond.i.i4.i.preheader_crit_edge: ; preds = %check_next_ie.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i4.i.preheader

if.end15.i.i:                                     ; preds = %check_next_ie.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.i.i = add nuw nsw i32 %conv4.i.i.i.le196, 2
  %add.ptr16.i.i = getelementptr i8, ptr %p.0.i.i.i, i32 %add.i.i
  br label %while.cond.i.preheader.i.i

land.lhs.true.i83:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 0
  br i1 %cmp.not.i, label %land.lhs.true.i83.while.cond.i.i4.i.preheader_crit_edge, label %if.then.i85

land.lhs.true.i83.while.cond.i.i4.i.preheader_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i4.i.preheader

while.cond.i.i4.i.preheader:                      ; preds = %land.lhs.true.i83.while.cond.i.i4.i.preheader_crit_edge, %check_next_ie.i.i.while.cond.i.i4.i.preheader_crit_edge, %rtw_get_ie.exit.i.i.while.cond.i.i4.i.preheader_crit_edge, %if.else.i.i.i.while.cond.i.i4.i.preheader_crit_edge
  br label %while.cond.i.i4.i

if.then.i85:                                      ; preds = %land.lhs.true.i83
  %conv4.i.i.i.le = zext i8 %21 to i32
  %add.i84 = add nuw nsw i32 %conv4.i.i.i.le, 2
  %call2.i = call i32 @rtw_parse_wpa_ie(ptr noundef nonnull %p.0.i.i.i, i32 noundef %add.i84, ptr noundef nonnull %group_cipher.i, ptr noundef nonnull %pairwise_cipher.i, ptr noundef nonnull %is8021x.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 1
  br i1 %cmp3.i, label %if.then.i85.if.end32.sink.split.i_crit_edge, label %if.then.i85.rtw_get_cipher_info.exit_crit_edge

if.then.i85.rtw_get_cipher_info.exit_crit_edge:   ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_get_cipher_info.exit

if.then.i85.if.end32.sink.split.i_crit_edge:      ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32.sink.split.i

while.cond.i.i4.i:                                ; preds = %if.else.i.i13.i.while.cond.i.i4.i_crit_edge, %while.cond.i.i4.i.preheader
  %i.0.i.i1.i = phi i32 [ %add9.i.i11.i, %if.else.i.i13.i.while.cond.i.i4.i_crit_edge ], [ 0, %while.cond.i.i4.i.preheader ]
  %p.0.i.i2.i = phi ptr [ %add.ptr7.i.i10.i, %if.else.i.i13.i.while.cond.i.i4.i_crit_edge ], [ %arrayidx.i82, %while.cond.i.i4.i.preheader ]
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_get_cipher_info.exit

if.else.i.i13.i.while.cond.i.i4.i_crit_edge:      ; preds = %if.else.i.i13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i4.i

rtw_get_wpa2_ie.exit.i:                           ; preds = %while.cond.i.i4.i
  %tobool16.not.i = icmp eq ptr %p.0.i.i2.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp18.not.i = icmp eq i8 %27, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %cmp18.not.i
  br i1 %or.cond.i, label %rtw_get_wpa2_ie.exit.i.rtw_get_cipher_info.exit_crit_edge, label %if.then19.i

rtw_get_wpa2_ie.exit.i.rtw_get_cipher_info.exit_crit_edge: ; preds = %rtw_get_wpa2_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_get_cipher_info.exit

if.then19.i:                                      ; preds = %rtw_get_wpa2_ie.exit.i
  %conv4.i.i6.i = zext i8 %27 to i32
  %add20.i = add nuw nsw i32 %conv4.i.i6.i, 2
  %call21.i = call i32 @rtw_parse_wpa2_ie(ptr noundef nonnull %p.0.i.i2.i, i32 noundef %add20.i, ptr noundef nonnull %group_cipher.i, ptr noundef nonnull %pairwise_cipher.i, ptr noundef nonnull %is8021x.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 1
  br i1 %cmp22.i, label %if.then19.i.if.end32.sink.split.i_crit_edge, label %if.then19.i.rtw_get_cipher_info.exit_crit_edge

if.then19.i.rtw_get_cipher_info.exit_crit_edge:   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtw_get_cipher_info.exit

if.then19.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.then19.i.if.end32.sink.split.i_crit_edge, %if.then.i85.if.end32.sink.split.i_crit_edge
  %28 = ptrtoint ptr %pairwise_cipher.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.sink164 = load i32, ptr %pairwise_cipher.i, align 4
  %pairwise_cipher25.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %pairwise_cipher25.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink164, ptr %pairwise_cipher25.i, align 4
  %30 = ptrtoint ptr %group_cipher.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.sink153 = load i32, ptr %group_cipher.i, align 4
  %group_cipher27.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %group_cipher27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink153, ptr %group_cipher27.i, align 4
  %32 = ptrtoint ptr %is8021x.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink.i = load i32, ptr %is8021x.i, align 4
  %is_8021x29.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %is_8021x29.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i, ptr %is_8021x29.i, align 4
  br label %rtw_get_cipher_info.exit

rtw_get_cipher_info.exit:                         ; preds = %if.end32.sink.split.i, %if.then19.i.rtw_get_cipher_info.exit_crit_edge, %rtw_get_wpa2_ie.exit.i.rtw_get_cipher_info.exit_crit_edge, %if.else.i.i13.i.rtw_get_cipher_info.exit_crit_edge, %if.then.i85.rtw_get_cipher_info.exit_crit_edge, %if.end26.rtw_get_cipher_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is8021x.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher.i) #18
  %34 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %IELength, align 4
  %sub = add i32 %35, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp.i86 = icmp slt i32 %sub, 1
  br i1 %cmp.i86, label %if.else59.critedge, label %rtw_get_cipher_info.exit.while.cond.i_crit_edge

rtw_get_cipher_info.exit.while.cond.i_crit_edge:  ; preds = %rtw_get_cipher_info.exit
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i.while.cond.i_crit_edge, %rtw_get_cipher_info.exit.while.cond.i_crit_edge
  %i.0.i = phi i32 [ %add9.i, %if.else.i.while.cond.i_crit_edge ], [ 0, %rtw_get_cipher_info.exit.while.cond.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr7.i, %if.else.i.while.cond.i_crit_edge ], [ %arrayidx.i82, %rtw_get_cipher_info.exit.while.cond.i_crit_edge ]
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
  %add.i87 = add nuw nsw i32 %conv6.i, 2
  %add.ptr7.i = getelementptr i8, ptr %p.0.i, i32 %add.i87
  %add9.i = add i32 %add.i87, %i.0.i
  %cmp11.not.i = icmp slt i32 %add9.i, %sub
  br i1 %cmp11.not.i, label %if.else.i.while.cond.i_crit_edge, label %if.else.i.if.end43_crit_edge

if.else.i.if.end43_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i

rtw_get_ie.exit:                                  ; preds = %while.cond.i
  %tobool34.not = icmp eq ptr %p.0.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp35.not = icmp eq i8 %39, 0
  %or.cond = select i1 %tobool34.not, i1 true, i1 %cmp35.not
  br i1 %or.cond, label %rtw_get_ie.exit.if.end43_crit_edge, label %if.then37

rtw_get_ie.exit.if.end43_crit_edge:               ; preds = %rtw_get_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then37:                                        ; preds = %rtw_get_ie.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr38 = getelementptr i8, ptr %p.0.i, i32 2
  %40 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %add.ptr38, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %rtw_get_ie.exit.if.end43_crit_edge, %if.else.i.if.end43_crit_edge
  %.sink154 = phi i16 [ %42, %if.then37 ], [ 0, %rtw_get_ie.exit.if.end43_crit_edge ], [ 0, %if.else.i.if.end43_crit_edge ]
  %ht_cap_info42 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 4
  %43 = ptrtoint ptr %ht_cap_info42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %.sink154, ptr %ht_cap_info42, align 4
  br i1 %cmp.i86, label %if.end43.if.end62_crit_edge, label %if.end43.while.cond.i94_crit_edge

if.end43.while.cond.i94_crit_edge:                ; preds = %if.end43
  br label %while.cond.i94

if.end43.if.end62_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end62

while.cond.i94:                                   ; preds = %if.else.i104.while.cond.i94_crit_edge, %if.end43.while.cond.i94_crit_edge
  %i.0.i90 = phi i32 [ %add9.i102, %if.else.i104.while.cond.i94_crit_edge ], [ 0, %if.end43.while.cond.i94_crit_edge ]
  %p.0.i91 = phi ptr [ %add.ptr7.i101, %if.else.i104.while.cond.i94_crit_edge ], [ %arrayidx.i82, %if.end43.while.cond.i94_crit_edge ]
  %44 = ptrtoint ptr %p.0.i91 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %p.0.i91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %45)
  %cmp1.i93 = icmp eq i8 %45, 61
  %add.ptr.i95 = getelementptr i8, ptr %p.0.i91, i32 1
  %46 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i95, align 1
  br i1 %cmp1.i93, label %rtw_get_ie.exit106, label %if.else.i104

if.else.i104:                                     ; preds = %while.cond.i94
  %conv6.i99 = zext i8 %47 to i32
  %add.i100 = add nuw nsw i32 %conv6.i99, 2
  %add.ptr7.i101 = getelementptr i8, ptr %p.0.i91, i32 %add.i100
  %add9.i102 = add i32 %add.i100, %i.0.i90
  %cmp11.not.i103 = icmp slt i32 %add9.i102, %sub
  br i1 %cmp11.not.i103, label %if.else.i104.while.cond.i94_crit_edge, label %if.else.i104.if.end62_crit_edge

if.else.i104.if.end62_crit_edge:                  ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end62

if.else.i104.while.cond.i94_crit_edge:            ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i94

rtw_get_ie.exit106:                               ; preds = %while.cond.i94
  %tobool52.not = icmp eq ptr %p.0.i91, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp54.not = icmp eq i8 %47, 0
  %or.cond126 = select i1 %tobool52.not, i1 true, i1 %cmp54.not
  br i1 %or.cond126, label %rtw_get_ie.exit106.if.end62_crit_edge, label %if.then56

rtw_get_ie.exit106.if.end62_crit_edge:            ; preds = %rtw_get_ie.exit106
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end62

if.then56:                                        ; preds = %rtw_get_ie.exit106
  call void @__sanitizer_cov_trace_pc() #20
  %infos = getelementptr i8, ptr %p.0.i91, i32 3
  %48 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %infos, align 1
  br label %if.end62

if.else59.critedge:                               ; preds = %rtw_get_cipher_info.exit
  call void @__sanitizer_cov_trace_pc() #20
  %ht_cap_info42.c = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 4
  %50 = ptrtoint ptr %ht_cap_info42.c to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %ht_cap_info42.c, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else59.critedge, %if.then56, %rtw_get_ie.exit106.if.end62_crit_edge, %if.else.i104.if.end62_crit_edge, %if.end43.if.end62_crit_edge
  %.sink155 = phi i8 [ %49, %if.then56 ], [ 0, %if.else59.critedge ], [ 0, %if.end43.if.end62_crit_edge ], [ 0, %rtw_get_ie.exit106.if.end62_crit_edge ], [ 0, %if.else.i104.if.end62_crit_edge ]
  %ht_info_infos_061 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 7, i32 5
  %51 = ptrtoint ptr %ht_info_infos_061 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink155, ptr %ht_info_infos_061, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_capability_from_ie(ptr noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @rtw_mcs_rate(i8 noundef zeroext %bw_40MHz, i8 noundef zeroext %short_GI_20, i8 noundef zeroext %short_GI_40, ptr nocapture noundef readonly %MCS_rate) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool2.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_40)
  %tobool4.not = icmp eq i8 %short_GI_40, 0
  %cond = select i1 %tobool4.not, i16 1350, i16 1500
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_20)
  %tobool6.not = icmp eq i8 %short_GI_20, 0
  %cond7 = select i1 %tobool6.not, i16 650, i16 722
  %cond8 = select i1 %tobool2.not, i16 %cond7, i16 %cond
  br label %if.end148

if.else:                                          ; preds = %entry
  %and12 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else28, label %if.then14

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool16.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_40)
  %tobool19.not = icmp eq i8 %short_GI_40, 0
  %cond20 = select i1 %tobool19.not, i16 1215, i16 1350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_20)
  %tobool23.not = icmp eq i8 %short_GI_20, 0
  %cond24 = select i1 %tobool23.not, i16 585, i16 650
  %cond26 = select i1 %tobool16.not, i16 %cond24, i16 %cond20
  br label %if.end148

if.else28:                                        ; preds = %if.else
  %and31 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else47, label %if.then33

if.then33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool35.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_40)
  %tobool38.not = icmp eq i8 %short_GI_40, 0
  %cond39 = select i1 %tobool38.not, i16 1080, i16 1200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_20)
  %tobool42.not = icmp eq i8 %short_GI_20, 0
  %cond43 = select i1 %tobool42.not, i16 520, i16 578
  %cond45 = select i1 %tobool35.not, i16 %cond43, i16 %cond39
  br label %if.end148

if.else47:                                        ; preds = %if.else28
  %and50 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else66, label %if.then52

if.then52:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool54.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_40)
  %tobool57.not = icmp eq i8 %short_GI_40, 0
  %cond58 = select i1 %tobool57.not, i16 810, i16 900
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_20)
  %tobool61.not = icmp eq i8 %short_GI_20, 0
  %cond62 = select i1 %tobool61.not, i16 390, i16 433
  %cond64 = select i1 %tobool54.not, i16 %cond62, i16 %cond58
  br label %if.end148

if.else66:                                        ; preds = %if.else47
  %and69 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else85, label %if.then71

if.then71:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool73.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_40)
  %tobool76.not = icmp eq i8 %short_GI_40, 0
  %cond77 = select i1 %tobool76.not, i16 540, i16 600
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_20)
  %tobool80.not = icmp eq i8 %short_GI_20, 0
  %cond81 = select i1 %tobool80.not, i16 260, i16 289
  %cond83 = select i1 %tobool73.not, i16 %cond81, i16 %cond77
  br label %if.end148

if.else85:                                        ; preds = %if.else66
  %and88 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else104, label %if.then90

if.then90:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool92.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_40)
  %tobool95.not = icmp eq i8 %short_GI_40, 0
  %cond96 = select i1 %tobool95.not, i16 405, i16 450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_20)
  %tobool99.not = icmp eq i8 %short_GI_20, 0
  %cond100 = select i1 %tobool99.not, i16 195, i16 217
  %cond102 = select i1 %tobool92.not, i16 %cond100, i16 %cond96
  br label %if.end148

if.else104:                                       ; preds = %if.else85
  %and107 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.else123, label %if.then109

if.then109:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool111.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_40)
  %tobool114.not = icmp eq i8 %short_GI_40, 0
  %cond115 = select i1 %tobool114.not, i16 270, i16 300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_20)
  %tobool118.not = icmp eq i8 %short_GI_20, 0
  %cond119 = select i1 %tobool118.not, i16 130, i16 144
  %cond121 = select i1 %tobool111.not, i16 %cond119, i16 %cond115
  br label %if.end148

if.else123:                                       ; preds = %if.else104
  %and126 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.else123.if.end148_crit_edge, label %if.then128

if.else123.if.end148_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end148

if.then128:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40MHz)
  %tobool130.not = icmp eq i8 %bw_40MHz, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_40)
  %tobool133.not = icmp eq i8 %short_GI_40, 0
  %cond134 = select i1 %tobool133.not, i16 135, i16 150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %short_GI_20)
  %tobool137.not = icmp eq i8 %short_GI_20, 0
  %cond138 = select i1 %tobool137.not, i16 65, i16 72
  %cond140 = select i1 %tobool130.not, i16 %cond138, i16 %cond134
  br label %if.end148

if.end148:                                        ; preds = %if.then128, %if.else123.if.end148_crit_edge, %if.then109, %if.then90, %if.then71, %if.then52, %if.then33, %if.then14, %if.then
  %max_rate.0 = phi i16 [ %cond8, %if.then ], [ %cond26, %if.then14 ], [ %cond45, %if.then33 ], [ %cond64, %if.then52 ], [ %cond83, %if.then71 ], [ %cond102, %if.then90 ], [ %cond121, %if.then109 ], [ %cond140, %if.then128 ], [ 0, %if.else123.if.end148_crit_edge ]
  ret i16 %max_rate.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nobuiltin }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @RTW_WPA_OUI_TYPE, !1, !"RTW_WPA_OUI_TYPE", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 13, i32 4}
!2 = !{ptr @RTW_WPA_VERSION, !3, !"RTW_WPA_VERSION", i1 false, i1 false}
!3 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 14, i32 5}
!4 = !{ptr @WPA_AUTH_KEY_MGMT_NONE, !5, !"WPA_AUTH_KEY_MGMT_NONE", i1 false, i1 false}
!5 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 15, i32 4}
!6 = !{ptr @WPA_AUTH_KEY_MGMT_UNSPEC_802_1X, !7, !"WPA_AUTH_KEY_MGMT_UNSPEC_802_1X", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 16, i32 4}
!8 = !{ptr @WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X, !9, !"WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X", i1 false, i1 false}
!9 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 17, i32 4}
!10 = !{ptr @WPA_CIPHER_SUITE_NONE, !11, !"WPA_CIPHER_SUITE_NONE", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 18, i32 4}
!12 = !{ptr @WPA_CIPHER_SUITE_WEP40, !13, !"WPA_CIPHER_SUITE_WEP40", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 19, i32 4}
!14 = !{ptr @WPA_CIPHER_SUITE_TKIP, !15, !"WPA_CIPHER_SUITE_TKIP", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 20, i32 4}
!16 = !{ptr @WPA_CIPHER_SUITE_WRAP, !17, !"WPA_CIPHER_SUITE_WRAP", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 21, i32 4}
!18 = !{ptr @WPA_CIPHER_SUITE_CCMP, !19, !"WPA_CIPHER_SUITE_CCMP", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 22, i32 4}
!20 = !{ptr @WPA_CIPHER_SUITE_WEP104, !21, !"WPA_CIPHER_SUITE_WEP104", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 23, i32 4}
!22 = !{ptr @RSN_VERSION_BSD, !23, !"RSN_VERSION_BSD", i1 false, i1 false}
!23 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 25, i32 5}
!24 = !{ptr @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, !25, !"RSN_AUTH_KEY_MGMT_UNSPEC_802_1X", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 26, i32 4}
!26 = !{ptr @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, !27, !"RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X", i1 false, i1 false}
!27 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 27, i32 4}
!28 = !{ptr @RSN_CIPHER_SUITE_NONE, !29, !"RSN_CIPHER_SUITE_NONE", i1 false, i1 false}
!29 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 28, i32 4}
!30 = !{ptr @RSN_CIPHER_SUITE_WEP40, !31, !"RSN_CIPHER_SUITE_WEP40", i1 false, i1 false}
!31 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 29, i32 4}
!32 = !{ptr @RSN_CIPHER_SUITE_TKIP, !33, !"RSN_CIPHER_SUITE_TKIP", i1 false, i1 false}
!33 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 30, i32 4}
!34 = !{ptr @RSN_CIPHER_SUITE_WRAP, !35, !"RSN_CIPHER_SUITE_WRAP", i1 false, i1 false}
!35 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 31, i32 4}
!36 = !{ptr @RSN_CIPHER_SUITE_CCMP, !37, !"RSN_CIPHER_SUITE_CCMP", i1 false, i1 false}
!37 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 32, i32 4}
!38 = !{ptr @RSN_CIPHER_SUITE_WEP104, !39, !"RSN_CIPHER_SUITE_WEP104", i1 false, i1 false}
!39 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 33, i32 4}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 757, i32 5}
!42 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rtw_ieee802_11_parse_elems._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @rtw_ieee802_11_parse_elems._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 844, i32 4}
!48 = !{ptr @rtw_ieee802_11_parse_elems._entry.3, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rtw_ieee802_11_parse_elems._entry_ptr.5, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 895, i32 3}
!52 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rtw_macaddr_cfg._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtw_macaddr_cfg._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 898, i32 2}
!57 = !{ptr @rtw_macaddr_cfg._entry.8, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtw_macaddr_cfg._entry_ptr.10, !56, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"WIFI_CCKRATES", i1 false, i1 false}
!60 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 38, i32 11}
!61 = distinct !{null, !62, !"WIFI_OFDMRATES", i1 false, i1 false}
!62 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 45, i32 11}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 658, i32 4}
!65 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 678, i32 5}
!70 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry.13, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.15, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 693, i32 5}
!74 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry.16, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.18, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 704, i32 4}
!78 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry.19, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.21, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 717, i32 4}
!82 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry.22, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.24, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/r8188eu/core/rtw_ieee80211.c", i32 723, i32 3}
!86 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry.25, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rtw_ieee802_11_parse_vendor_specific._entry_ptr.27, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
