; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_efuse.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_efuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i16, i64, i64, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], [16 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, %struct.timer_list, i16, i32, i8, i8, i32, i64, i8, [9 x i32], [9 x i32], i32, i8, i8, i8, i8, i8, i16, i8 }
%struct.rt_channel_info = type { i8, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type <{ i8, i16, i16, i16 }>
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i16, [512 x i8], i8, i8, i8, i8, i32, [17 x i8], [50 x i8] }
%struct.hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtw_wdev_priv = type { ptr, ptr, ptr, %struct.spinlock, ptr, [17 x i8], i8, i8, %struct.rtw_wdev_invit_info, %struct.rtw_wdev_nego_info, i8, i8, i8 }
%struct.rtw_wdev_invit_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.rtw_wdev_nego_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@fakeEfuseContent = dso_local global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@fakeEfuseInitMap = dso_local global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@fakeEfuseModifiedMap = dso_local global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@BTEfuseInitMap = dso_local global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@BTEfuseModifiedMap = dso_local global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@fakeBTEfuseInitMap = dso_local global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@fakeBTEfuseModifiedMap = dso_local global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fakeEfuseBank = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@fakeEfuseUsedBytes = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@BTEfuseUsedBytes = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@BTEfuseContent = dso_local global { [3 x [512 x i8]], [384 x i8] } zeroinitializer, align 32
@fakeBTEfuseUsedBytes = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@fakeBTEfuseContent = dso_local global { [3 x [512 x i8]], [384 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"fakeEfuseContent\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 16, i32 4 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"fakeEfuseInitMap\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 17, i32 4 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"fakeEfuseModifiedMap\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 18, i32 4 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"BTEfuseInitMap\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 22, i32 4 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"BTEfuseModifiedMap\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 23, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"fakeBTEfuseInitMap\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 27, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"fakeBTEfuseModifiedMap\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 28, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"fakeEfuseBank\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 14, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"fakeEfuseUsedBytes\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 15, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"BTEfuseUsedBytes\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 20, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"BTEfuseContent\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 21, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"fakeBTEfuseUsedBytes\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 25, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"fakeBTEfuseContent\00", align 1
@___asan_gen_.38 = private constant [46 x i8] c"../drivers/staging/rtl8723bs/core/rtw_efuse.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 26, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @fakeEfuseContent, ptr @fakeEfuseInitMap, ptr @fakeEfuseModifiedMap, ptr @BTEfuseInitMap, ptr @BTEfuseModifiedMap, ptr @fakeBTEfuseInitMap, ptr @fakeBTEfuseModifiedMap, ptr @fakeEfuseBank, ptr @fakeEfuseUsedBytes, ptr @BTEfuseUsedBytes, ptr @BTEfuseContent, ptr @fakeBTEfuseUsedBytes, ptr @fakeBTEfuseContent], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeEfuseContent to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeEfuseInitMap to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeEfuseModifiedMap to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BTEfuseInitMap to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BTEfuseModifiedMap to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeBTEfuseInitMap to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeBTEfuseModifiedMap to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeEfuseBank to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeEfuseUsedBytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BTEfuseUsedBytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BTEfuseContent to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeBTEfuseUsedBytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakeBTEfuseContent to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Efuse_PowerSwitch(ptr noundef %padapter, i8 noundef zeroext %bWrite, i8 noundef zeroext %PwrState) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %EfusePowerSwitch = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 50
  %0 = ptrtoint ptr %EfusePowerSwitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %EfusePowerSwitch, align 8
  tail call void %1(ptr noundef %padapter, i8 noundef zeroext %bWrite, i8 noundef zeroext %PwrState) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @Efuse_GetCurrentSize(ptr noundef %padapter, i8 noundef zeroext %efuseType, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %EfuseGetCurrentSize = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 54
  %0 = ptrtoint ptr %EfuseGetCurrentSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %EfuseGetCurrentSize, align 8
  %call = tail call zeroext i16 %1(ptr noundef %padapter, i8 noundef zeroext %efuseType, i1 noundef zeroext %bPseudoTest) #5
  ret i16 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @Efuse_CalculateWordCnts(i8 noundef zeroext %word_en) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i8 %word_en, 1
  %0 = xor i8 %and, 1
  %1 = and i8 %word_en, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  %inc5 = sub nuw nsw i8 2, %and
  %word_cnts.1 = select i1 %tobool3.not, i8 %inc5, i8 %0
  %and8 = lshr i8 %word_en, 2
  %and8.lobit = and i8 %and8, 1
  %2 = xor i8 %and8.lobit, 1
  %word_cnts.2 = add nuw nsw i8 %word_cnts.1, %2
  %and14 = lshr i8 %word_en, 3
  %and14.lobit = and i8 %and14, 1
  %3 = xor i8 %and14.lobit, 1
  %word_cnts.3 = add nuw nsw i8 %word_cnts.2, %3
  ret i8 %word_cnts.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efuse_ReadEFuse(ptr noundef %Adapter, i8 noundef zeroext %efuseType, i16 noundef zeroext %_offset, i16 noundef zeroext %_size_byte, ptr noundef %pbuf, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ReadEFuse = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 20, i32 52
  %0 = ptrtoint ptr %ReadEFuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ReadEFuse, align 8
  tail call void %1(ptr noundef %Adapter, i8 noundef zeroext %efuseType, i16 noundef zeroext %_offset, i16 noundef zeroext %_size_byte, ptr noundef %pbuf, i1 noundef zeroext %bPseudoTest) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EFUSE_GetEfuseDefinition(ptr noundef %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext %type, ptr noundef %pOut, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %EFUSEGetEfuseDefinition = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 53
  %0 = ptrtoint ptr %EFUSEGetEfuseDefinition to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %EFUSEGetEfuseDefinition, align 4
  tail call void %1(ptr noundef %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext %type, ptr noundef %pOut, i1 noundef zeroext %bPseudoTest) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @EFUSE_Read1Byte(ptr noundef %Adapter, i16 noundef zeroext %Address) local_unnamed_addr #0 align 64 {
entry:
  %contentLen = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %contentLen) #5
  %0 = ptrtoint ptr %contentLen to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %contentLen, align 2
  %EFUSEGetEfuseDefinition.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 20, i32 53
  %1 = ptrtoint ptr %EFUSEGetEfuseDefinition.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %EFUSEGetEfuseDefinition.i, align 4
  call void %2(ptr noundef %Adapter, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %contentLen, i1 noundef zeroext false) #5
  %3 = ptrtoint ptr %contentLen to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %contentLen, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %Address)
  %cmp = icmp ugt i16 %4, %Address
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %conv4 = trunc i16 %Address to i8
  %call = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 49, i8 noundef zeroext %conv4) #5
  %call5 = call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 50) #5
  %5 = lshr i16 %Address, 8
  %6 = trunc i16 %5 to i8
  %and7 = and i8 %6, 3
  %7 = and i8 %call5, -4
  %or = or i8 %7, %and7
  %call11 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 50, i8 noundef zeroext %or) #5
  %call12 = call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 51) #5
  %8 = and i8 %call12, 127
  %call16 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 51, i8 noundef zeroext %8) #5
  %call17 = call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 51) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then
  %Bytetemp.0 = phi i8 [ %call17, %if.then ], [ %call20, %while.body.while.cond_crit_edge ]
  %k.0 = phi i32 [ 0, %if.then ], [ %inc, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %Bytetemp.0)
  %tobool.not = icmp sgt i8 %Bytetemp.0, -1
  br i1 %tobool.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call20 = call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 51) #5
  %inc = add nuw nsw i32 %k.0, 1
  %cmp21 = icmp eq i32 %inc, 1000
  br i1 %cmp21, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %call24 = call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 48) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %call24, %while.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %contentLen) #5
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @efuse_OneByteRead(ptr noundef %padapter, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %data, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bPseudoTest, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %addr)
  %cmp.i = icmp ugt i16 %addr, 511
  br i1 %cmp.i, label %if.then.Efuse_Read1ByteFromFakeContent.exit_crit_edge, label %if.end.i

if.then.Efuse_Read1ByteFromFakeContent.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %Efuse_Read1ByteFromFakeContent.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %addr to i32
  %0 = load i8, ptr @fakeEfuseBank, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp3.i = icmp eq i8 %0, 0
  %conv2.i = zext i8 %0 to i32
  %sub.i = add nsw i32 %conv2.i, -1
  %arrayidx9.i = getelementptr [3 x [512 x i8]], ptr @fakeBTEfuseContent, i32 0, i32 %sub.i, i32 %conv.i
  %arrayidx.i = getelementptr [512 x i8], ptr @fakeEfuseContent, i32 0, i32 %conv.i
  %storemerge.in.i = select i1 %cmp3.i, ptr %arrayidx.i, ptr %arrayidx9.i
  %1 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %storemerge.i, ptr %data, align 1
  br label %Efuse_Read1ByteFromFakeContent.exit

Efuse_Read1ByteFromFakeContent.exit:              ; preds = %if.end.i, %if.then.Efuse_Read1ByteFromFakeContent.exit_crit_edge
  %3 = xor i1 %cmp.i, true
  %conv = zext i1 %3 to i8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 52) #5
  %4 = and i16 %call1, -2049
  %call4 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 52, i16 noundef zeroext %4) #5
  %conv7 = trunc i16 %addr to i8
  %call8 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 49, i8 noundef zeroext %conv7) #5
  %5 = lshr i16 %addr, 8
  %6 = trunc i16 %5 to i8
  %conv11 = and i8 %6, 3
  %call13 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 50) #5
  %7 = and i8 %call13, -4
  %or = or i8 %7, %conv11
  %call17 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 50, i8 noundef zeroext %or) #5
  %call18 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 51) #5
  %8 = and i8 %call18, 127
  %call22 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 51, i8 noundef zeroext %8) #5
  %call2349 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 51) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2349)
  %tobool26.not50 = icmp sgt i8 %call2349, -1
  br i1 %tobool26.not50, label %if.end.while.body_crit_edge, label %if.end.if.then30_crit_edge

if.end.if.then30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %tmpidx.051 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #5
  %inc = add nuw nsw i32 %tmpidx.051, 1
  %call23 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 51) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call23)
  %tobool26.not = icmp sgt i8 %call23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %tmpidx.051)
  %cmp = icmp ult i32 %tmpidx.051, 999
  %or.cond = select i1 %tobool26.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %tmpidx.051)
  %phi.cmp = icmp ult i32 %tmpidx.051, 99
  br i1 %phi.cmp, label %while.end.if.then30_crit_edge, label %while.end.if.end32_crit_edge

while.end.if.end32_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

while.end.if.then30_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %while.end.if.then30_crit_edge, %if.end.if.then30_crit_edge
  %call31 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 48) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %while.end.if.end32_crit_edge
  %storemerge = phi i8 [ %call31, %if.then30 ], [ -1, %while.end.if.end32_crit_edge ]
  %bResult.0 = phi i8 [ 1, %if.then30 ], [ 0, %while.end.if.end32_crit_edge ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %Efuse_Read1ByteFromFakeContent.exit
  %retval.0 = phi i8 [ %conv, %Efuse_Read1ByteFromFakeContent.exit ], [ %bResult.0, %if.end32 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @efuse_OneByteWrite(ptr noundef %padapter, i16 noundef zeroext %addr, i8 noundef zeroext %data, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bPseudoTest, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %addr)
  %cmp.i = icmp ugt i16 %addr, 511
  br i1 %cmp.i, label %if.then.Efuse_Write1ByteToFakeContent.exit_crit_edge, label %if.end.i

if.then.Efuse_Write1ByteToFakeContent.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %Efuse_Write1ByteToFakeContent.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %addr to i32
  %0 = load i8, ptr @fakeEfuseBank, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp3.i = icmp eq i8 %0, 0
  %arrayidx.i = getelementptr [512 x i8], ptr @fakeEfuseContent, i32 0, i32 %conv.i
  %conv2.i = zext i8 %0 to i32
  %sub.i = add nsw i32 %conv2.i, -1
  %arrayidx9.i = getelementptr [3 x [512 x i8]], ptr @fakeBTEfuseContent, i32 0, i32 %sub.i, i32 %conv.i
  %arrayidx.sink.i = select i1 %cmp3.i, ptr %arrayidx.i, ptr %arrayidx9.i
  %1 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %data, ptr %arrayidx.sink.i, align 1
  br label %Efuse_Write1ByteToFakeContent.exit

Efuse_Write1ByteToFakeContent.exit:               ; preds = %if.end.i, %if.then.Efuse_Write1ByteToFakeContent.exit_crit_edge
  %2 = xor i1 %cmp.i, true
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 48) #5
  %conv2 = zext i16 %addr to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %conv3 = zext i8 %data to i32
  %or4 = or i32 %shl, %conv3
  %call7 = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 52) #5
  %3 = or i16 %call7, 2048
  %call11 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 52, i16 noundef zeroext %3) #5
  %or16 = or i32 %or4, -1872756736
  %call17 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 48, i32 noundef %or16) #5
  %call1844 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 51) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1844)
  %tobool21.not45 = icmp slt i8 %call1844, 0
  br i1 %tobool21.not45, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %tmpidx.046 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  %inc = add nuw nsw i8 %tmpidx.046, 1
  %call18 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 51) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call18)
  %tobool21.not = icmp slt i8 %call18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %tmpidx.046)
  %cmp = icmp ult i8 %tmpidx.046, 99
  %or.cond = select i1 %tobool21.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %cmp.lcssa = phi i1 [ true, %if.end.while.end_crit_edge ], [ %cmp, %while.body.while.end_crit_edge ]
  tail call void @rtw_hal_write_bbreg(ptr noundef %padapter, i32 noundef 52, i32 noundef 2048, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %Efuse_Write1ByteToFakeContent.exit
  %retval.0.in = phi i1 [ %2, %Efuse_Write1ByteToFakeContent.exit ], [ %cmp.lcssa, %while.end ]
  %retval.0 = zext i1 %retval.0.in to i8
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @Efuse_PgPacketRead(ptr noundef %padapter, i8 noundef zeroext %offset, ptr noundef %data, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Efuse_PgPacketRead = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 55
  %0 = ptrtoint ptr %Efuse_PgPacketRead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Efuse_PgPacketRead, align 4
  %call = tail call i32 %1(ptr noundef %padapter, i8 noundef zeroext %offset, ptr noundef %data, i1 noundef zeroext %bPseudoTest) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @Efuse_PgPacketWrite(ptr noundef %padapter, i8 noundef zeroext %offset, i8 noundef zeroext %word_en, ptr noundef %data, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Efuse_PgPacketWrite = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 56
  %0 = ptrtoint ptr %Efuse_PgPacketWrite to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Efuse_PgPacketWrite, align 8
  %call = tail call i32 %1(ptr noundef %padapter, i8 noundef zeroext %offset, i8 noundef zeroext %word_en, ptr noundef %data, i1 noundef zeroext %bPseudoTest) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efuse_WordEnableDataRead(i8 noundef zeroext %word_en, ptr nocapture noundef readonly %sourdata, ptr nocapture noundef writeonly %targetdata) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %word_en to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sourdata to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sourdata, align 1
  %2 = ptrtoint ptr %targetdata to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %targetdata, align 1
  %arrayidx2 = getelementptr i8, ptr %sourdata, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %targetdata, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr i8, ptr %sourdata, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %targetdata, i32 2
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %sourdata, i32 3
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %targetdata, i32 3
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %and14 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17 = getelementptr i8, ptr %sourdata, i32 4
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr i8, ptr %targetdata, i32 4
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %sourdata, i32 5
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr i8, ptr %targetdata, i32 5
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end12.if.end21_crit_edge
  %and23 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx26 = getelementptr i8, ptr %sourdata, i32 6
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx26, align 1
  %arrayidx27 = getelementptr i8, ptr %targetdata, i32 6
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr i8, ptr %sourdata, i32 7
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr i8, ptr %targetdata, i32 7
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx29, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end21.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @Efuse_WordEnableDataWrite(ptr noundef %padapter, i16 noundef zeroext %efuse_addr, i8 noundef zeroext %word_en, ptr noundef %data, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Efuse_WordEnableDataWrite = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 57
  %0 = ptrtoint ptr %Efuse_WordEnableDataWrite to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Efuse_WordEnableDataWrite, align 4
  %call = tail call zeroext i8 %1(ptr noundef %padapter, i16 noundef zeroext %efuse_addr, i8 noundef zeroext %word_en, ptr noundef %data, i1 noundef zeroext %bPseudoTest) #5
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Efuse_ReadAllMap(ptr noundef %padapter, i8 noundef zeroext %efuseType, ptr noundef %Efuse, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  %mapLen = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mapLen) #5
  %0 = ptrtoint ptr %mapLen to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mapLen, align 2
  %EfusePowerSwitch.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 50
  %1 = ptrtoint ptr %EfusePowerSwitch.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %EfusePowerSwitch.i, align 8
  tail call void %2(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %EFUSEGetEfuseDefinition.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 53
  %3 = ptrtoint ptr %EFUSEGetEfuseDefinition.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %EFUSEGetEfuseDefinition.i, align 4
  call void %4(ptr noundef %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext 4, ptr noundef nonnull %mapLen, i1 noundef zeroext %bPseudoTest) #5
  %5 = ptrtoint ptr %mapLen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mapLen, align 2
  %ReadEFuse.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 52
  %7 = ptrtoint ptr %ReadEFuse.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ReadEFuse.i, align 8
  call void %8(ptr noundef %padapter, i8 noundef zeroext %efuseType, i16 noundef zeroext 0, i16 noundef zeroext %6, ptr noundef %Efuse, i1 noundef zeroext %bPseudoTest) #5
  %9 = ptrtoint ptr %EfusePowerSwitch.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %EfusePowerSwitch.i, align 8
  call void %10(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mapLen) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EFUSE_ShadowMapUpdate(ptr noundef %padapter, i8 noundef zeroext %efuseType, i1 noundef zeroext %bPseudoTest) local_unnamed_addr #0 align 64 {
entry:
  %mapLen.i = alloca i16, align 2
  %mapLen = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprompriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mapLen) #5
  %0 = ptrtoint ptr %mapLen to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mapLen, align 2
  %EFUSEGetEfuseDefinition.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 53
  %1 = ptrtoint ptr %EFUSEGetEfuseDefinition.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %EFUSEGetEfuseDefinition.i, align 4
  call void %2(ptr noundef %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext 4, ptr noundef nonnull %mapLen, i1 noundef zeroext %bPseudoTest) #5
  %3 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  %efuse_eeprom_data2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %mapLen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mapLen, align 2
  %conv = zext i16 %6 to i32
  %7 = call ptr @memset(ptr %efuse_eeprom_data2, i32 255, i32 %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mapLen.i) #5
  %8 = ptrtoint ptr %mapLen.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %mapLen.i, align 2
  %EfusePowerSwitch.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 50
  %9 = ptrtoint ptr %EfusePowerSwitch.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %EfusePowerSwitch.i.i, align 8
  call void %10(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %11 = ptrtoint ptr %EFUSEGetEfuseDefinition.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %EFUSEGetEfuseDefinition.i, align 4
  call void %12(ptr noundef %padapter, i8 noundef zeroext %efuseType, i8 noundef zeroext 4, ptr noundef nonnull %mapLen.i, i1 noundef zeroext %bPseudoTest) #5
  %13 = ptrtoint ptr %mapLen.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mapLen.i, align 2
  %ReadEFuse.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 52
  %15 = ptrtoint ptr %ReadEFuse.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ReadEFuse.i.i, align 8
  call void %16(ptr noundef %padapter, i8 noundef zeroext %efuseType, i16 noundef zeroext 0, i16 noundef zeroext %14, ptr noundef %efuse_eeprom_data2, i1 noundef zeroext %bPseudoTest) #5
  %17 = ptrtoint ptr %EfusePowerSwitch.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %EfusePowerSwitch.i.i, align 8
  call void %18(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mapLen.i) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mapLen) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @EFUSE_ShadowRead(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %Type, i16 noundef zeroext %Offset, ptr nocapture noundef writeonly %Value) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %Type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %Type, label %entry.if.end12_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then5
    i8 4, label %if.then10
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom.i = zext i16 %Offset to i32
  %arrayidx.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 %idxprom.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %3 = ptrtoint ptr %Value to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %Value, align 1
  br label %if.end12

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom.i21 = zext i16 %Offset to i32
  %arrayidx.i22 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 %idxprom.i21
  %4 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i22, align 1
  %conv.i = zext i8 %5 to i16
  %6 = ptrtoint ptr %Value to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %Value, align 2
  %add.i = add nuw nsw i32 %idxprom.i21, 1
  %arrayidx3.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 %add.i
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %8 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %or.i = or i16 %shl.i, %conv.i
  store i16 %or.i, ptr %Value, align 2
  br label %if.end12

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom.i23 = zext i16 %Offset to i32
  %arrayidx.i24 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 %idxprom.i23
  %9 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i24, align 1
  %conv.i25 = zext i8 %10 to i32
  %11 = ptrtoint ptr %Value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i25, ptr %Value, align 4
  %add.i26 = add nuw nsw i32 %idxprom.i23, 1
  %arrayidx3.i27 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 %add.i26
  %12 = ptrtoint ptr %arrayidx3.i27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.i27, align 1
  %conv4.i28 = zext i8 %13 to i32
  %shl.i29 = shl nuw nsw i32 %conv4.i28, 8
  %or.i30 = or i32 %shl.i29, %conv.i25
  store i32 %or.i30, ptr %Value, align 4
  %add7.i = add nuw nsw i32 %idxprom.i23, 2
  %arrayidx8.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 %add7.i
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %15 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %or11.i = or i32 %shl10.i, %or.i30
  store i32 %or11.i, ptr %Value, align 4
  %add14.i = add nuw nsw i32 %idxprom.i23, 3
  %arrayidx15.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 %add14.i
  %16 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %17 to i32
  %shl17.i = shl nuw i32 %conv16.i, 24
  %or18.i = or i32 %shl17.i, %or11.i
  store i32 %or18.i, ptr %Value, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then5, %if.then, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @fakeEfuseContent, !1, !"fakeEfuseContent", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 16, i32 4}
!2 = !{ptr @fakeEfuseInitMap, !3, !"fakeEfuseInitMap", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 17, i32 4}
!4 = !{ptr @fakeEfuseModifiedMap, !5, !"fakeEfuseModifiedMap", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 18, i32 4}
!6 = !{ptr @BTEfuseInitMap, !7, !"BTEfuseInitMap", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 22, i32 4}
!8 = !{ptr @BTEfuseModifiedMap, !9, !"BTEfuseModifiedMap", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 23, i32 4}
!10 = !{ptr @fakeBTEfuseInitMap, !11, !"fakeBTEfuseInitMap", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 27, i32 4}
!12 = !{ptr @fakeBTEfuseModifiedMap, !13, !"fakeBTEfuseModifiedMap", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 28, i32 4}
!14 = !{ptr @fakeEfuseBank, !15, !"fakeEfuseBank", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 14, i32 4}
!16 = !{ptr @fakeEfuseUsedBytes, !17, !"fakeEfuseUsedBytes", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 15, i32 5}
!18 = !{ptr @BTEfuseUsedBytes, !19, !"BTEfuseUsedBytes", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 20, i32 5}
!20 = !{ptr @BTEfuseContent, !21, !"BTEfuseContent", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 21, i32 4}
!22 = !{ptr @fakeBTEfuseUsedBytes, !23, !"fakeBTEfuseUsedBytes", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 25, i32 5}
!24 = !{ptr @fakeBTEfuseContent, !25, !"fakeBTEfuseContent", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/core/rtw_efuse.c", i32 26, i32 4}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
