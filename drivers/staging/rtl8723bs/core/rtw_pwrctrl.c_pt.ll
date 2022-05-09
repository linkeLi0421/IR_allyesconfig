; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.reportpwrstate_parm = type { i8, i8, i16 }

@traffic_check_for_leave_lps.start_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@traffic_check_for_leave_lps.xmit_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WIFI-%s\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/rtl8723bs/core/rtw_pwrctrl.c\00", [51 x i8] zeroinitializer }, align 32
@rtw_init_pwrctrl_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pwrctrlpriv->lock\00", [45 x i8] zeroinitializer }, align 32
@rtw_init_pwrctrl_priv.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(&pwrctrlpriv->pwr_rpwm_timer)\00", [33 x i8] zeroinitializer }, align 32
@rtw_init_pwrctrl_priv.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(&pwrctrlpriv->pwr_state_check_timer)\00", [58 x i8] zeroinitializer }, align 32
@rtw_pwr_unassociated_idle.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.1, ptr @.str.9, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_pwr_unassociated_idle\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"There are some pkts to transmit\0A\00", [63 x i8] zeroinitializer }, align 32
@rtw_pwr_unassociated_idle.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.1, ptr @.str.10, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"free_xmitbuf_cnt: %d, free_xmit_extbuf_cnt: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@_init_workitem.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(work_completion)(pwork)\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [11 x i8] c"start_time\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 192, i32 23 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"xmit_cnt\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 193, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 472, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 579, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 963, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1001, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1002, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 125, i32 3 }
@___asan_gen_.52 = private constant [48 x i8] c"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 127, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [59 x i8] c"../drivers/staging/rtl8723bs/include/osdep_service_linux.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 65, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @traffic_check_for_leave_lps.start_time, ptr @traffic_check_for_leave_lps.xmit_cnt, ptr @.str, ptr @.str.1, ptr @rtw_init_pwrctrl_priv.__key, ptr @.str.2, ptr @rtw_init_pwrctrl_priv.__key.3, ptr @.str.4, ptr @rtw_init_pwrctrl_priv.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @_init_workitem.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traffic_check_for_leave_lps.start_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traffic_check_for_leave_lps.xmit_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_pwrctrl_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_pwrctrl_priv.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_pwrctrl_priv.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_workitem.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_ips_enter(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %bips_processing = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 26
  %2 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %bips_processing, align 1
  %ips_mode_req = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 25
  %3 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ips_mode_req, align 2
  %ips_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 23
  %5 = ptrtoint ptr %ips_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ips_mode, align 4
  %ips_enter_cnts = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 21
  %6 = ptrtoint ptr %ips_enter_cnts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ips_enter_cnts, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %ips_enter_cnts, align 4
  %change_rfpwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 54
  %8 = ptrtoint ptr %change_rfpwrstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %change_rfpwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %bpower_saving = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 14
  %10 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bpower_saving, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp2 = icmp eq i8 %4, 2
  br i1 %cmp2, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %bkeepfwalive = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 57
  %11 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bkeepfwalive, align 2
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @rtw_ips_pwr_down(ptr noundef %padapter) #6
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %12 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %rf_pwrstate, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %13 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bips_processing, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ips_pwr_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ips_enter(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  %ips_mode_req = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 25
  %2 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ips_mode_req, align 2
  tail call void @hal_btcoex_IpsNotify(ptr noundef %padapter, i8 noundef zeroext %3) #6
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %4 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvobj, align 4
  %bips_processing.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 26
  %6 = ptrtoint ptr %bips_processing.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bips_processing.i, align 1
  %ips_mode_req.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 25
  %7 = ptrtoint ptr %ips_mode_req.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ips_mode_req.i, align 2
  %ips_mode.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 23
  %9 = ptrtoint ptr %ips_mode.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ips_mode.i, align 4
  %ips_enter_cnts.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 21
  %10 = ptrtoint ptr %ips_enter_cnts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ips_enter_cnts.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %ips_enter_cnts.i, align 4
  %change_rfpwrstate.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 54
  %12 = ptrtoint ptr %change_rfpwrstate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %change_rfpwrstate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %if.then.i, label %entry._ips_enter.exit_crit_edge

entry._ips_enter.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_ips_enter.exit

if.then.i:                                        ; preds = %entry
  %bpower_saving.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 14
  %14 = ptrtoint ptr %bpower_saving.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bpower_saving.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp2.i = icmp eq i8 %8, 2
  br i1 %cmp2.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %bkeepfwalive.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 57
  %15 = ptrtoint ptr %bkeepfwalive.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bkeepfwalive.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  tail call void @rtw_ips_pwr_down(ptr noundef %padapter) #6
  %rf_pwrstate.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 53
  %16 = ptrtoint ptr %rf_pwrstate.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %rf_pwrstate.i, align 4
  br label %_ips_enter.exit

_ips_enter.exit:                                  ; preds = %if.end.i, %entry._ips_enter.exit_crit_edge
  %17 = ptrtoint ptr %bips_processing.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bips_processing.i, align 1
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_IpsNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_ips_leave(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %2 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %bips_processing = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 26
  %4 = ptrtoint ptr %bips_processing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bips_processing, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bips_processing, align 1
  %change_rfpwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 54
  %7 = ptrtoint ptr %change_rfpwrstate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %change_rfpwrstate, align 4
  %ips_leave_cnts = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 22
  %8 = ptrtoint ptr %ips_leave_cnts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ips_leave_cnts, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %ips_leave_cnts, align 4
  %call = tail call i32 @rtw_ips_pwr_up(ptr noundef %padapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2 = icmp eq i32 %call, 1
  br i1 %cmp2, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rf_pwrstate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bips_processing, align 1
  %bkeepfwalive = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 57
  %12 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bkeepfwalive, align 2
  %bpower_saving = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 14
  %13 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bpower_saving, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %result.0 = phi i32 [ 1, %land.lhs.true.if.end6_crit_edge ], [ %call, %if.end ], [ 1, %entry.if.end6_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ips_pwr_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ips_leave(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %rf_pwrstate.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 53
  %4 = ptrtoint ptr %rf_pwrstate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf_pwrstate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %bips_processing.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 26
  %6 = ptrtoint ptr %bips_processing.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bips_processing.i, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %bips_processing.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bips_processing.i, align 1
  %change_rfpwrstate.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 54
  %9 = ptrtoint ptr %change_rfpwrstate.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %change_rfpwrstate.i, align 4
  %ips_leave_cnts.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 22
  %10 = ptrtoint ptr %ips_leave_cnts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ips_leave_cnts.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %ips_leave_cnts.i, align 4
  %call.i = tail call i32 @rtw_ips_pwr_up(ptr noundef %padapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.end.critedge

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %rf_pwrstate.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rf_pwrstate.i, align 4
  %13 = ptrtoint ptr %bips_processing.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bips_processing.i, align 1
  %bkeepfwalive.i.c10 = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 57
  %14 = ptrtoint ptr %bkeepfwalive.i.c10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bkeepfwalive.i.c10, align 2
  %bpower_saving.i.c11 = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 14
  %15 = ptrtoint ptr %bpower_saving.i.c11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bpower_saving.i.c11, align 4
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  tail call void @hal_btcoex_IpsNotify(ptr noundef %padapter, i8 noundef zeroext 0) #6
  br label %if.end

if.end.critedge:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %bips_processing.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bips_processing.i, align 1
  %bkeepfwalive.i.c = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 57
  %17 = ptrtoint ptr %bkeepfwalive.i.c to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bkeepfwalive.i.c, align 2
  %bpower_saving.i.c = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 14
  %18 = ptrtoint ptr %bpower_saving.i.c to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %bpower_saving.i.c, align 4
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %if.then
  %result.0.i8 = phi i32 [ 1, %if.then ], [ %call.i, %if.end.critedge ]
  ret i32 %result.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ps_processor(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %ps_deny.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 29
  %4 = ptrtoint ptr %ps_deny.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ps_deny.i, align 4
  %pwrctl_priv5 = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %bInSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 41
  %6 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInSuspend, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dbg_ps_insuspend_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 13
  %8 = ptrtoint ptr %dbg_ps_insuspend_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dbg_ps_insuspend_cnt, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %dbg_ps_insuspend_cnt, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ps_processing = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 30
  %10 = ptrtoint ptr %ps_processing to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ps_processing, align 4
  %ips_mode_req = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 25
  %11 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ips_mode_req, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp9 = icmp eq i8 %12, 0
  br i1 %cmp9, label %if.end8.exit_crit_edge, label %if.end12

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc zeroext i1 @rtw_pwr_unassociated_idle(ptr noundef %padapter)
  br i1 %call13, label %if.end15, label %if.end12.exit_crit_edge

if.end12.exit_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end15:                                         ; preds = %if.end12
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %13 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16 = icmp eq i32 %14, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end15.exit_crit_edge

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

land.lhs.true:                                    ; preds = %if.end15
  %pwr_state_check_cnts = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 51
  %15 = ptrtoint ptr %pwr_state_check_cnts to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pwr_state_check_cnts, align 4
  %17 = and i8 %16, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp19 = icmp eq i8 %17, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %change_rfpwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 54
  %18 = ptrtoint ptr %change_rfpwrstate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %change_rfpwrstate, align 4
  tail call void @ips_enter(ptr noundef %padapter)
  br label %exit

exit:                                             ; preds = %if.then21, %land.lhs.true.exit_crit_edge, %if.end15.exit_crit_edge, %if.end12.exit_crit_edge, %if.end8.exit_crit_edge, %entry.exit_crit_edge
  %ps_processing23 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 30
  %19 = ptrtoint ptr %ps_processing23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ps_processing23, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_ps_deny_get(ptr nocapture noundef readonly %padapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %ps_deny = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 29
  %2 = ptrtoint ptr %ps_deny to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_deny, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rtw_pwr_unassociated_idle(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pbuddy_adapter = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 56
  %0 = ptrtoint ptr %pbuddy_adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pbuddy_adapter, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %bpower_saving = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 14
  %4 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bpower_saving, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup70_crit_edge

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %ips_deny_time = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 27
  %7 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ips_deny_time, align 4
  %sub = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.cleanup70_crit_edge, label %if.end4

if.end.cleanup70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.end4:                                          ; preds = %if.end
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 4
  %11 = and i32 %10, 2545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end15, label %if.end4.cleanup70_crit_edge

if.end4.cleanup70_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.end15:                                         ; preds = %if.end4
  %tobool16.not = icmp eq ptr %1, null
  br i1 %tobool16.not, label %if.end15.if.end32_crit_edge, label %if.then17

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then17:                                        ; preds = %if.end15
  %fw_state.i106 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %fw_state.i106 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i106, align 4
  %15 = and i32 %14, 2545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.then17.if.end32_crit_edge, label %if.then17.cleanup70_crit_edge

if.then17.cleanup70_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.then17.if.end32_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %if.then17.if.end32_crit_edge, %if.end15.if.end32_crit_edge
  %free_xmitbuf_cnt = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9, i32 35
  %17 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_xmitbuf_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp33.not = icmp eq i32 %18, 16
  br i1 %cmp33.not, label %lor.lhs.false34, label %if.end32.do.body37_crit_edge

if.end32.do.body37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

lor.lhs.false34:                                  ; preds = %if.end32
  %free_xmit_extbuf_cnt = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9, i32 39
  %19 = ptrtoint ptr %free_xmit_extbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free_xmit_extbuf_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp35.not = icmp eq i32 %20, 32
  br i1 %cmp35.not, label %lor.lhs.false34.cleanup70_crit_edge, label %lor.lhs.false34.do.body37_crit_edge

lor.lhs.false34.do.body37_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

lor.lhs.false34.cleanup70_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

do.body37:                                        ; preds = %lor.lhs.false34.do.body37_crit_edge, %if.end32.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_pwr_unassociated_idle.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_pwr_unassociated_idle, %if.then42)) #6
          to label %do.body47 [label %if.then42], !srcloc !40

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %21 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_pwr_unassociated_idle.__UNIQUE_ID_ddebug345, ptr noundef %22, ptr noundef nonnull @.str.9) #6
  br label %do.body47

do.body47:                                        ; preds = %if.then42, %do.body37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_pwr_unassociated_idle.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_pwr_unassociated_idle, %if.then59)) #6
          to label %cleanup70 [label %if.then59], !srcloc !40

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %pnetdev60 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %23 = ptrtoint ptr %pnetdev60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pnetdev60, align 8
  %25 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %free_xmitbuf_cnt, align 8
  %free_xmit_extbuf_cnt62 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9, i32 39
  %27 = ptrtoint ptr %free_xmit_extbuf_cnt62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free_xmit_extbuf_cnt62, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_pwr_unassociated_idle.__UNIQUE_ID_ddebug346, ptr noundef %24, ptr noundef nonnull @.str.10, i32 noundef %26, i32 noundef %28) #6
  br label %cleanup70

cleanup70:                                        ; preds = %if.then59, %do.body47, %lor.lhs.false34.cleanup70_crit_edge, %if.then17.cleanup70_crit_edge, %if.end4.cleanup70_crit_edge, %if.end.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.cleanup70_crit_edge ], [ false, %if.end.cleanup70_crit_edge ], [ false, %if.end4.cleanup70_crit_edge ], [ false, %if.then59 ], [ true, %lor.lhs.false34.cleanup70_crit_edge ], [ false, %do.body47 ], [ false, %if.then17.cleanup70_crit_edge ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @traffic_check_for_leave_lps(ptr noundef %padapter, i8 noundef zeroext %tx, i32 noundef %tx_packets) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx)
  %tobool.not = icmp eq i8 %tx, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @traffic_check_for_leave_lps.xmit_cnt, align 4
  %add = add i32 %0, %tx_packets
  store i32 %add, ptr @traffic_check_for_leave_lps.xmit_cnt, align 4
  %1 = load i32, ptr @traffic_check_for_leave_lps.start_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  store i32 %2, ptr @traffic_check_for_leave_lps.start_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = load i32, ptr @traffic_check_for_leave_lps.start_time, align 4
  %sub = sub i32 %3, %4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %call)
  %cmp2 = icmp ugt i32 %call, 2000
  br i1 %cmp2, label %if.then3, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr @traffic_check_for_leave_lps.xmit_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp4 = icmp ugt i32 %5, 8
  br i1 %cmp4, label %if.then5, label %if.then3.if.end38.thread62_crit_edge

if.then3.if.end38.thread62_crit_edge:             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.thread62

if.then5:                                         ; preds = %if.then3
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %6 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvobj, align 4
  %bLeisurePs = getelementptr inbounds %struct.dvobj_priv, ptr %7, i32 0, i32 22, i32 32
  %8 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bLeisurePs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then5.if.end38.thread62_crit_edge, label %land.lhs.true

if.then5.if.end38.thread62_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.thread62

land.lhs.true:                                    ; preds = %if.then5
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %7, i32 0, i32 22, i32 5
  %10 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp10.not = icmp eq i8 %11, 1
  br i1 %cmp10.not, label %land.lhs.true.if.end38.thread62_crit_edge, label %land.lhs.true12

land.lhs.true.if.end38.thread62_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.thread62

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call13, label %land.lhs.true12.if.end38.thread62_crit_edge, label %if.end38

land.lhs.true12.if.end38.thread62_crit_edge:      ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.thread62

if.else:                                          ; preds = %entry
  %NumRxUnicastOkInPeriod = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 2
  %12 = ptrtoint ptr %NumRxUnicastOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %NumRxUnicastOkInPeriod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp18 = icmp ugt i32 %13, 4
  br i1 %cmp18, label %if.then20, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then20:                                        ; preds = %if.else
  %dvobj21 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %14 = ptrtoint ptr %dvobj21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dvobj21, align 4
  %bLeisurePs23 = getelementptr inbounds %struct.dvobj_priv, ptr %15, i32 0, i32 22, i32 32
  %16 = ptrtoint ptr %bLeisurePs23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bLeisurePs23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  br i1 %tobool25.not, label %if.then20.if.end45_crit_edge, label %land.lhs.true26

if.then20.if.end45_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true26:                                  ; preds = %if.then20
  %pwr_mode29 = getelementptr inbounds %struct.dvobj_priv, ptr %15, i32 0, i32 22, i32 5
  %18 = ptrtoint ptr %pwr_mode29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pwr_mode29, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp31.not = icmp eq i8 %19, 1
  br i1 %cmp31.not, label %land.lhs.true26.if.end45_crit_edge, label %land.lhs.true33

land.lhs.true26.if.end45_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true33:                                  ; preds = %land.lhs.true26
  %call34 = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call34, label %land.lhs.true33.if.end45_crit_edge, label %land.lhs.true33.if.then40_crit_edge

land.lhs.true33.if.then40_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

land.lhs.true33.if.end45_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end38.thread62:                                ; preds = %land.lhs.true12.if.end38.thread62_crit_edge, %land.lhs.true.if.end38.thread62_crit_edge, %if.then5.if.end38.thread62_crit_edge, %if.then3.if.end38.thread62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  store i32 %20, ptr @traffic_check_for_leave_lps.start_time, align 4
  store i32 0, ptr @traffic_check_for_leave_lps.xmit_cnt, align 4
  br label %if.end45

if.end38:                                         ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  store i32 %21, ptr @traffic_check_for_leave_lps.start_time, align 4
  store i32 0, ptr @traffic_check_for_leave_lps.xmit_cnt, align 4
  br label %if.then40

if.then40:                                        ; preds = %if.end38, %land.lhs.true33.if.then40_crit_edge
  %conv43 = zext i1 %tobool.not to i8
  %call44 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 5, i8 noundef zeroext %conv43) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end38.thread62, %land.lhs.true33.if.end45_crit_edge, %land.lhs.true26.if.end45_crit_edge, %if.then20.if.end45_crit_edge, %if.else.if.end45_crit_edge, %if.end.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext %pslv) local_unnamed_addr #0 align 64 {
entry:
  %rpwm = alloca i8, align 1
  %cpwm_orig = alloca i8, align 1
  %cpwm_now = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm) #6
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cpwm_orig) #6
  %2 = and i8 %pslv, 15
  %brpwmtimeout = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 11
  %3 = ptrtoint ptr %brpwmtimeout to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %brpwmtimeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then:                                          ; preds = %entry
  %rpwm2 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %rpwm2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %rpwm2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %2)
  %cmp = icmp eq i8 %6, %2
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %7 = ptrtoint ptr %rpwm2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %rpwm2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp8 = icmp ugt i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp11 = icmp ugt i8 %2, 1
  %or.cond = and i1 %cmp11, %cmp8
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false.if.end14_crit_edge, %entry.if.end14_crit_edge
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %9 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.end14.if.then18_crit_edge

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

lor.lhs.false16:                                  ; preds = %if.end14
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 27
  %11 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %lor.lhs.false16.if.then18_crit_edge, label %if.end19

lor.lhs.false16.if.then18_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false16.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %13 = ptrtoint ptr %cpwm to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 12, ptr %cpwm, align 1
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false16
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %14 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp23 = icmp ult i8 %2, 2
  %or.cond108 = and i1 %cmp23, %tobool20.not
  br i1 %or.cond108, label %if.end19.cleanup_crit_edge, label %if.end27

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %tog = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 3
  %16 = ptrtoint ptr %tog to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %tog, align 2
  %or106 = or i8 %17, %2
  %18 = ptrtoint ptr %rpwm to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or106, ptr %rpwm, align 1
  %cpwm31 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %19 = ptrtoint ptr %cpwm31 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %cpwm31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp33 = icmp ult i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp37 = icmp ugt i8 %2, 1
  %or.cond109 = and i1 %cmp37, %cmp33
  br i1 %or.cond109, label %if.then39, label %if.end27.if.end43_crit_edge

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %21 = or i8 %or106, 64
  %22 = ptrtoint ptr %rpwm to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %rpwm, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end27.if.end43_crit_edge
  %rpwm44 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 1
  %23 = ptrtoint ptr %rpwm44 to i32
  call void @__asan_store1_noabort(i32 %23)
  store volatile i8 %2, ptr %rpwm44, align 4
  %24 = ptrtoint ptr %cpwm_orig to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %cpwm_orig, align 1
  %25 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rpwm, align 1
  %27 = and i8 %26, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool47.not = icmp eq i8 %27, 0
  br i1 %tobool47.not, label %if.end43.if.end49_crit_edge, label %if.then48

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 41, ptr noundef nonnull %cpwm_orig) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end43.if.end49_crit_edge
  %28 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rpwm, align 1
  %30 = and i8 %29, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool52.not = icmp eq i8 %30, 0
  br i1 %tobool52.not, label %if.end49.if.end54_crit_edge, label %if.then53

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %pwr_rpwm_timer = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %31, 30
  %call.i = call i32 @mod_timer(ptr noundef %pwr_rpwm_timer, i32 noundef %add.i) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49.if.end54_crit_edge
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 40, ptr noundef nonnull %rpwm) #6
  %32 = ptrtoint ptr %tog to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %tog, align 2
  %add = xor i8 %33, -128
  store volatile i8 %add, ptr %tog, align 2
  %34 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rpwm, align 1
  %36 = and i8 %35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool60.not = icmp eq i8 %36, 0
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cpwm_now) #6
  %37 = ptrtoint ptr %cpwm_now to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %cpwm_now, align 1, !annotation !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  br label %do.body

do.body:                                          ; preds = %if.end71.do.body_crit_edge, %if.then61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #6
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 41, ptr noundef nonnull %cpwm_now) #6
  %40 = ptrtoint ptr %cpwm_orig to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cpwm_orig, align 1
  %42 = ptrtoint ptr %cpwm_now to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cpwm_now, align 1
  %xor107 = xor i8 %43, %41
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor107)
  %tobool65.not = icmp sgt i8 %xor107, -1
  br i1 %tobool65.not, label %if.end71, label %if.then66

if.then66:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %cpwm31 to i32
  call void @__asan_store1_noabort(i32 %44)
  store volatile i8 12, ptr %cpwm31, align 1
  %45 = and i8 %43, -128
  %cpwm_tog = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 4
  %46 = ptrtoint ptr %cpwm_tog to i32
  call void @__asan_store1_noabort(i32 %46)
  store volatile i8 %45, ptr %cpwm_tog, align 1
  br label %do.end

if.end71:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %47, %38
  %call = call i32 @jiffies_to_msecs(i32 noundef %sub) #6
  %cmp72 = icmp ugt i32 %call, 300
  br i1 %cmp72, label %if.then74, label %if.end71.do.body_crit_edge

if.end71.do.body_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %pwr_rpwm_timer75 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %call.i110 = call i32 @mod_timer(ptr noundef %pwr_rpwm_timer75, i32 noundef %48) #6
  br label %do.end

do.end:                                           ; preds = %if.then74, %if.then66
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cpwm_now) #6
  br label %cleanup

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %cpwm31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store volatile i8 %2, ptr %cpwm31, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.end19.cleanup_crit_edge, %if.then18, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cpwm_orig) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_set_ps_mode(ptr noundef %padapter, i8 noundef zeroext %ps_mode, i8 noundef zeroext %smart_ps, i8 noundef zeroext %bcn_ant_mode, ptr nocapture readnone %msg) local_unnamed_addr #0 align 64 {
entry:
  %ps_mode.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps_mode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ps_mode, ptr %ps_mode.addr, align 1
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %1 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %ps_mode)
  %cmp = icmp ugt i8 %ps_mode, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22, i32 5
  %3 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ps_mode)
  %cmp8 = icmp eq i8 %ps_mode, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %5 = icmp eq i8 %4, 1
  %6 = and i1 %cmp8, %5
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %7 = ptrtoint ptr %ps_mode.addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ps_mode.addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp14 = icmp eq i8 %8, 1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %call = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call, label %lor.lhs.false, label %if.then16.if.then20_crit_edge

if.then16.if.then20_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.then16
  %call17 = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call17, label %land.lhs.true, label %lor.lhs.false.if.end55_crit_edge

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call19 = tail call zeroext i1 @hal_btcoex_IsLpsOn(ptr noundef %padapter) #6
  br i1 %call19, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true.if.then20_crit_edge

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then20:                                        ; preds = %land.lhs.true.if.then20_crit_edge, %if.then16.if.then20_crit_edge
  %9 = ptrtoint ptr %ps_mode.addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ps_mode.addr, align 1
  %11 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %pwr_mode, align 4
  tail call void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext 12)
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 42, ptr noundef nonnull %ps_mode.addr) #6
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22, i32 36
  %12 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %fw_current_in_ps_mode, align 2
  %13 = ptrtoint ptr %ps_mode.addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ps_mode.addr, align 1
  call void @hal_btcoex_LpsNotify(ptr noundef %padapter, i8 noundef zeroext %14) #6
  br label %if.end55

if.else:                                          ; preds = %if.end12
  %15 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dvobj, align 4
  %bInSuspend.i = getelementptr inbounds %struct.dvobj_priv, ptr %16, i32 0, i32 22, i32 41
  %17 = ptrtoint ptr %bInSuspend.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bInSuspend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.lor.lhs.false28_crit_edge

if.else.lor.lhs.false28_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false28

if.end.i:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %DelayLPSLastTimeStamp.i = getelementptr inbounds %struct.dvobj_priv, ptr %16, i32 0, i32 22, i32 37
  %20 = ptrtoint ptr %DelayLPSLastTimeStamp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DelayLPSLastTimeStamp.i, align 4
  %sub.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 100
  br i1 %cmp.i, label %if.end.i.lor.lhs.false28_crit_edge, label %if.end2.i

if.end.i.lor.lhs.false28_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false28

if.end2.i:                                        ; preds = %if.end.i
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i.i, align 4
  %24 = and i32 %23, 2544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %lor.lhs.false12.i, label %if.end2.i.lor.lhs.false28_crit_edge

if.end2.i.lor.lhs.false28_crit_edge:              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false28

lor.lhs.false12.i:                                ; preds = %if.end2.i
  %call13.i = tail call zeroext i1 @rtw_is_scan_deny(ptr noundef %padapter) #6
  br i1 %call13.i, label %lor.lhs.false12.i.lor.lhs.false28_crit_edge, label %if.end15.i

lor.lhs.false12.i.lor.lhs.false28_crit_edge:      ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false28

if.end15.i:                                       ; preds = %lor.lhs.false12.i
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %26 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp16.i = icmp eq i32 %27, 2
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.end15.i.PS_RDY_CHECK.exit_crit_edge

if.end15.i.PS_RDY_CHECK.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %PS_RDY_CHECK.exit

land.lhs.true.i:                                  ; preds = %if.end15.i
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 27
  %28 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %binstallGrpkey.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool18.not.i = icmp eq i8 %29, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.lor.lhs.false28_crit_edge, label %land.lhs.true.i.PS_RDY_CHECK.exit_crit_edge

land.lhs.true.i.PS_RDY_CHECK.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %PS_RDY_CHECK.exit

land.lhs.true.i.lor.lhs.false28_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false28

PS_RDY_CHECK.exit:                                ; preds = %land.lhs.true.i.PS_RDY_CHECK.exit_crit_edge, %if.end15.i.PS_RDY_CHECK.exit_crit_edge
  %call21.i = tail call zeroext i1 @rtw_cfg80211_pwr_mgmt(ptr noundef %padapter) #6
  br i1 %call21.i, label %land.lhs.true25, label %PS_RDY_CHECK.exit.lor.lhs.false28_crit_edge

PS_RDY_CHECK.exit.lor.lhs.false28_crit_edge:      ; preds = %PS_RDY_CHECK.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false28

land.lhs.true25:                                  ; preds = %PS_RDY_CHECK.exit
  %30 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw_state.i.i, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not = icmp eq i32 %and.i, 0
  br i1 %tobool27.not, label %land.lhs.true25.lor.lhs.false28_crit_edge, label %land.lhs.true25.if.then34_crit_edge

land.lhs.true25.if.then34_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

land.lhs.true25.lor.lhs.false28_crit_edge:        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %land.lhs.true25.lor.lhs.false28_crit_edge, %PS_RDY_CHECK.exit.lor.lhs.false28_crit_edge, %land.lhs.true.i.lor.lhs.false28_crit_edge, %lor.lhs.false12.i.lor.lhs.false28_crit_edge, %if.end2.i.lor.lhs.false28_crit_edge, %if.end.i.lor.lhs.false28_crit_edge, %if.else.lor.lhs.false28_crit_edge
  %call29 = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call29, label %land.lhs.true31, label %lor.lhs.false28.if.end55_crit_edge

lor.lhs.false28.if.end55_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true31:                                  ; preds = %lor.lhs.false28
  %call32 = tail call zeroext i1 @hal_btcoex_IsLpsOn(ptr noundef %padapter) #6
  br i1 %call32, label %land.lhs.true31.if.then34_crit_edge, label %land.lhs.true31.if.end55_crit_edge

land.lhs.true31.if.end55_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true31.if.then34_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then34:                                        ; preds = %land.lhs.true31.if.then34_crit_edge, %land.lhs.true25.if.then34_crit_edge
  %32 = ptrtoint ptr %ps_mode.addr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ps_mode.addr, align 1
  tail call void @hal_btcoex_LpsNotify(ptr noundef %padapter, i8 noundef zeroext %33) #6
  %fw_current_in_ps_mode35 = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22, i32 36
  %34 = ptrtoint ptr %fw_current_in_ps_mode35 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %fw_current_in_ps_mode35, align 2
  %35 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %pwr_mode, align 4
  %smart_ps37 = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22, i32 6
  %36 = ptrtoint ptr %smart_ps37 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %smart_ps, ptr %smart_ps37, align 1
  %bcn_ant_mode38 = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22, i32 7
  %37 = ptrtoint ptr %bcn_ant_mode38 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bcn_ant_mode, ptr %bcn_ant_mode38, align 2
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 42, ptr noundef nonnull %ps_mode.addr) #6
  %alives = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22, i32 9
  %38 = ptrtoint ptr %alives to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %alives, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp39 = icmp eq i32 %39, 0
  %spec.store.select = select i1 %cmp39, i8 1, i8 2
  %call43 = call zeroext i1 @hal_btcoex_IsBtDisabled(ptr noundef %padapter) #6
  br i1 %call43, label %if.then34.if.end53_crit_edge, label %land.lhs.true44

if.then34.if.end53_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

land.lhs.true44:                                  ; preds = %if.then34
  %call45 = call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call45, label %if.then47, label %land.lhs.true44.if.end53_crit_edge

land.lhs.true44.if.end53_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = call zeroext i8 @hal_btcoex_LpsVal(ptr noundef %padapter) #6
  %40 = and i8 %call48, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool50.not = icmp eq i8 %40, 0
  %spec.select = select i1 %tobool50.not, i8 %spec.store.select, i8 2
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %land.lhs.true44.if.end53_crit_edge, %if.then34.if.end53_crit_edge
  %pslv.1 = phi i8 [ %spec.store.select, %if.then34.if.end53_crit_edge ], [ %spec.select, %if.then47 ], [ %spec.store.select, %land.lhs.true44.if.end53_crit_edge ]
  call void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext %pslv.1)
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %land.lhs.true31.if.end55_crit_edge, %lor.lhs.false28.if.end55_crit_edge, %if.then20, %land.lhs.true.if.end55_crit_edge, %lor.lhs.false.if.end55_crit_edge
  call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hal_btcoex_IsLpsOn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_LpsNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hal_btcoex_IsBtDisabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hal_btcoex_LpsVal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LPS_RF_ON_check(ptr noundef %padapter, i32 noundef %delay_ms) local_unnamed_addr #0 align 64 {
entry:
  %bAwake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bAwake) #6
  %0 = ptrtoint ptr %bAwake to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bAwake, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 45, ptr noundef nonnull %bAwake) #6
  %2 = ptrtoint ptr %bAwake to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bAwake, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not7 = icmp eq i8 %3, 0
  br i1 %tobool.not7, label %entry.if.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end5.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %6, %1
  %call = call i32 @jiffies_to_msecs(i32 noundef %sub) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %delay_ms)
  %cmp = icmp ugt i32 %call, %delay_ms
  br i1 %cmp, label %if.end3.while.end_crit_edge, label %if.end5

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end5:                                          ; preds = %if.end3
  call void @msleep(i32 noundef 1) #6
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 45, ptr noundef nonnull %bAwake) #6
  %7 = ptrtoint ptr %bAwake to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bAwake, align 1
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end5.if.end_crit_edge, label %if.end5.while.end_crit_edge

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end5.if.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %if.end3.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.while.end_crit_edge ], [ -1, %if.end3.while.end_crit_edge ], [ -2, %if.end.while.end_crit_edge ], [ 0, %if.end5.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bAwake) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LPS_Enter(ptr noundef %padapter, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %call = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %padapters, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dvobj.i, align 4
  %bInSuspend.i = getelementptr inbounds %struct.dvobj_priv, ptr %8, i32 0, i32 22, i32 41
  %9 = ptrtoint ptr %bInSuspend.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInSuspend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i42 = icmp eq i8 %10, 0
  br i1 %tobool.not.i42, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %DelayLPSLastTimeStamp.i = getelementptr inbounds %struct.dvobj_priv, ptr %8, i32 0, i32 22, i32 37
  %12 = ptrtoint ptr %DelayLPSLastTimeStamp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DelayLPSLastTimeStamp.i, align 4
  %sub.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 100
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_state.i, align 4
  %16 = and i32 %15, 2544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %lor.lhs.false12.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false12.i:                                ; preds = %if.end2.i
  %call13.i = tail call zeroext i1 @rtw_is_scan_deny(ptr noundef %4) #6
  br i1 %call13.i, label %lor.lhs.false12.i.cleanup_crit_edge, label %if.end15.i

lor.lhs.false12.i.cleanup_crit_edge:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.i:                                       ; preds = %lor.lhs.false12.i
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 12
  %18 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp16.i = icmp eq i32 %19, 2
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.end15.i.PS_RDY_CHECK.exit_crit_edge

if.end15.i.PS_RDY_CHECK.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %PS_RDY_CHECK.exit

land.lhs.true.i:                                  ; preds = %if.end15.i
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 12, i32 27
  %20 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %binstallGrpkey.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not.i = icmp eq i8 %21, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.PS_RDY_CHECK.exit_crit_edge

land.lhs.true.i.PS_RDY_CHECK.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %PS_RDY_CHECK.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

PS_RDY_CHECK.exit:                                ; preds = %land.lhs.true.i.PS_RDY_CHECK.exit_crit_edge, %if.end15.i.PS_RDY_CHECK.exit_crit_edge
  %call21.i = tail call zeroext i1 @rtw_cfg80211_pwr_mgmt(ptr noundef %4) #6
  br i1 %call21.i, label %if.end11, label %PS_RDY_CHECK.exit.cleanup_crit_edge

PS_RDY_CHECK.exit.cleanup_crit_edge:              ; preds = %PS_RDY_CHECK.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %PS_RDY_CHECK.exit
  %bLeisurePs = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 32
  %22 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bLeisurePs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not = icmp eq i8 %23, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %LpsIdleCount = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 33
  %24 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %LpsIdleCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp14 = icmp ugt i8 %25, 1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then13
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 5
  %26 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp18 = icmp eq i8 %27, 1
  br i1 %cmp18, label %if.then20, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %msg) #6
  %bpower_saving = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 14
  %28 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %bpower_saving, align 4
  %power_mgnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 34
  %29 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %power_mgnt, align 4
  %smart_ps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 19
  %31 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %smart_ps, align 4
  call void @rtw_set_ps_mode(ptr noundef %padapter, i8 noundef zeroext %30, i8 noundef zeroext %32, i8 noundef zeroext 0, ptr undef)
  br label %cleanup

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %inc25 = add nuw nsw i8 %25, 1
  %33 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %inc25, ptr %LpsIdleCount, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %if.then16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %PS_RDY_CHECK.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false12.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LPS_Leave(ptr noundef %padapter, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %bAwake.i = alloca i8, align 1
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %call = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bLeisurePs = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 32
  %3 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bLeisurePs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then2

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then2:                                         ; preds = %if.end
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 5
  %5 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.then2.if.end15_crit_edge, label %if.then4

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then4:                                         ; preds = %if.then2
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %msg) #6
  call void @rtw_set_ps_mode(ptr noundef %padapter, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr undef)
  %7 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp9 = icmp eq i8 %8, 1
  br i1 %cmp9, label %if.then11, label %if.then4.if.end15_crit_edge

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bAwake.i) #6
  %9 = ptrtoint ptr %bAwake.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bAwake.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 45, ptr noundef nonnull %bAwake.i) #6
  %11 = ptrtoint ptr %bAwake.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bAwake.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not7.i = icmp eq i8 %12, 0
  br i1 %tobool.not7.i, label %if.then11.if.end.i_crit_edge, label %if.then11.LPS_RF_ON_check.exit_crit_edge

if.then11.LPS_RF_ON_check.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %LPS_RF_ON_check.exit

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %if.then11.if.end.i_crit_edge
  %13 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.LPS_RF_ON_check.exit_crit_edge

if.end.i.LPS_RF_ON_check.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %LPS_RF_ON_check.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %15, %10
  %call.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call.i)
  %cmp.i = icmp ugt i32 %call.i, 100
  br i1 %cmp.i, label %if.end3.i.LPS_RF_ON_check.exit_crit_edge, label %if.end5.i

if.end3.i.LPS_RF_ON_check.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %LPS_RF_ON_check.exit

if.end5.i:                                        ; preds = %if.end3.i
  call void @msleep(i32 noundef 1) #6
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 45, ptr noundef nonnull %bAwake.i) #6
  %16 = ptrtoint ptr %bAwake.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bAwake.i, align 1
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.LPS_RF_ON_check.exit_crit_edge

if.end5.i.LPS_RF_ON_check.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %LPS_RF_ON_check.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

LPS_RF_ON_check.exit:                             ; preds = %if.end5.i.LPS_RF_ON_check.exit_crit_edge, %if.end3.i.LPS_RF_ON_check.exit_crit_edge, %if.end.i.LPS_RF_ON_check.exit_crit_edge, %if.then11.LPS_RF_ON_check.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bAwake.i) #6
  br label %if.end15

if.end15:                                         ; preds = %LPS_RF_ON_check.exit, %if.then4.if.end15_crit_edge, %if.then2.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %bpower_saving = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 14
  %18 = ptrtoint ptr %bpower_saving to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %bpower_saving, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LeaveAllPowerSaveModeDirect(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 22
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 5
  %8 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  tail call void @rtw_set_rpwm(ptr noundef %Adapter, i8 noundef zeroext 12)
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  %call8 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %3, i8 noundef zeroext 5, i8 noundef zeroext 0) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %10 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp9 = icmp eq i32 %11, 2
  br i1 %cmp9, label %if.then11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @ips_leave(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.else.cleanup_crit_edge, %if.end6, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LeaveAllPowerSaveMode(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %bup = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 44
  %2 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 22
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %padapters, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %Adapter, i8 noundef zeroext 5, i8 noundef zeroext 1) #6
  tail call void @LPS_Leave_check(ptr noundef %Adapter)
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %10 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then12, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @ips_leave(ptr noundef %Adapter)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.else.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @LPS_Leave_check(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 579, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %3 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not17 = icmp eq i32 %4, 0
  br i1 %tobool.not17, label %lor.lhs.false.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.lr.ph:                              ; preds = %entry
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 27
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %5 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %lor.lhs.false2.if.then_crit_edge, label %if.end

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.end12.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %9, %2
  %call8 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call8)
  %cmp9 = icmp ugt i32 %call8, 100
  br i1 %cmp9, label %if.end.while.end_crit_edge, label %if.end12

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end12:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #6
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %10 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bSurpriseRemoved, align 8
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end12.lor.lhs.false_crit_edge, label %if.end12.if.then_crit_edge

if.end12.if.then_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpwm_int_hdl(ptr noundef %padapter, ptr nocapture noundef readonly %preportpwrstate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %rpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %rpwm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.reportpwrstate_parm, ptr %preportpwrstate, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 1
  %6 = and i8 %5, 15
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %7 = ptrtoint ptr %cpwm to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 %6, ptr %cpwm, align 1
  %8 = load i8, ptr %state, align 1
  %9 = and i8 %8, -128
  %cpwm_tog = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 4
  %10 = ptrtoint ptr %cpwm_tog to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 %9, ptr %cpwm_tog, align 1
  %11 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp10 = icmp ugt i8 %11, 1
  br i1 %cmp10, label %if.then12, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then12:                                        ; preds = %if.end
  %alives = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 9
  %12 = ptrtoint ptr %alives to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alives, align 4
  %and13 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.then12.if.end15_crit_edge, label %if.then14

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  tail call void @complete(ptr noundef %cmdpriv) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12.if.end15_crit_edge
  %14 = ptrtoint ptr %alives to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alives, align 4
  %and17 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.exit_crit_edge, label %if.then19

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %xmit_comp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 1
  tail call void @complete(ptr noundef %xmit_comp) #6
  br label %exit

exit:                                             ; preds = %if.then19, %if.end15.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_register_task_alive(ptr noundef %padapter, i32 noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %alives.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 9
  %2 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alives.i, align 4
  %or.i = or i32 %3, %task
  store i32 %or.i, ptr %alives.i, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 36
  %4 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end16.thread_crit_edge, label %if.then

entry.if.end16.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread

if.then:                                          ; preds = %entry
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ult i8 %7, 2
  br i1 %cmp, label %if.then3, label %if.then.if.end16.thread_crit_edge

if.then.if.end16.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread

if.then3:                                         ; preds = %if.then
  %8 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp6 = icmp ult i8 %9, 2
  %rpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %rpwm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp11 = icmp ult i8 %11, 2
  br i1 %cmp11, label %if.then13, label %if.then3.if.end16_crit_edge

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext 2)
  br label %if.end16

if.end16.thread:                                  ; preds = %if.then.if.end16.thread_crit_edge, %entry.if.end16.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br label %if.end27

if.end16:                                         ; preds = %if.then13, %if.then3.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br i1 %cmp6, label %if.then20, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp23 = icmp ugt i8 %13, 1
  %spec.select39 = zext i1 %cmp23 to i32
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end16.if.end27_crit_edge, %if.end16.thread
  %res.2 = phi i32 [ 1, %if.end16.if.end27_crit_edge ], [ %spec.select39, %if.then20 ], [ 1, %if.end16.thread ]
  ret i32 %res.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_unregister_task_alive(ptr noundef %padapter, i32 noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  %call = tail call zeroext i1 @hal_btcoex_IsBtDisabled(ptr noundef %padapter) #6
  br i1 %call, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call1, label %if.then, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call zeroext i8 @hal_btcoex_LpsVal(ptr noundef %padapter) #6
  %2 = and i8 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 2
  br label %if.end4

if.end4:                                          ; preds = %if.then, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pslv.1 = phi i8 [ 1, %entry.if.end4_crit_edge ], [ %spec.select, %if.then ], [ 1, %land.lhs.true.if.end4_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %neg.i = xor i32 %task, -1
  %alives.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 9
  %3 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alives.i, align 4
  %and.i = and i32 %4, %neg.i
  store i32 %and.i, ptr %alives.i, align 4
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 5
  %5 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end4.if.end24_crit_edge, label %land.lhs.true7

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true7:                                   ; preds = %if.end4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 36
  %7 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end24_crit_edge, label %if.then10

land.lhs.true7.if.end24_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10:                                        ; preds = %land.lhs.true7
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %9 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %pslv.1)
  %cmp13 = icmp ugt i8 %10, %pslv.1
  br i1 %cmp13, label %if.then15, label %if.then10.if.end24_crit_edge

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pslv.1)
  %cmp17 = icmp ugt i8 %pslv.1, 1
  br i1 %cmp17, label %if.then15.if.then21_crit_edge, label %lor.lhs.false

if.then15.if.then21_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then15
  %11 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alives.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.then15.if.then21_crit_edge
  tail call void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext %pslv.1)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %lor.lhs.false.if.end24_crit_edge, %if.then10.if.end24_crit_edge, %land.lhs.true7.if.end24_crit_edge, %if.end4.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_register_tx_alive(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %alives.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 9
  %2 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alives.i, align 4
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %alives.i, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 36
  %4 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end16.thread_crit_edge, label %if.then

entry.if.end16.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread

if.then:                                          ; preds = %entry
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ult i8 %7, 2
  br i1 %cmp, label %if.then3, label %if.then.if.end16.thread_crit_edge

if.then.if.end16.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread

if.then3:                                         ; preds = %if.then
  %8 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp6 = icmp ult i8 %9, 2
  %rpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %rpwm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp11 = icmp ult i8 %11, 2
  br i1 %cmp11, label %if.then13, label %if.then3.if.end16_crit_edge

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext 2)
  br label %if.end16

if.end16.thread:                                  ; preds = %if.then.if.end16.thread_crit_edge, %entry.if.end16.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br label %if.end27

if.end16:                                         ; preds = %if.then13, %if.then3.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br i1 %cmp6, label %if.then20, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp23 = icmp ugt i8 %13, 1
  %spec.select39 = zext i1 %cmp23 to i32
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end16.if.end27_crit_edge, %if.end16.thread
  %res.2 = phi i32 [ 1, %if.end16.if.end27_crit_edge ], [ %spec.select39, %if.then20 ], [ 1, %if.end16.thread ]
  ret i32 %res.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_register_cmd_alive(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %alives.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 9
  %2 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alives.i, align 4
  %or.i = or i32 %3, 4
  store i32 %or.i, ptr %alives.i, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 36
  %4 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end16.thread_crit_edge, label %if.then

entry.if.end16.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread

if.then:                                          ; preds = %entry
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ult i8 %7, 2
  br i1 %cmp, label %if.then3, label %if.then.if.end16.thread_crit_edge

if.then.if.end16.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.thread

if.then3:                                         ; preds = %if.then
  %8 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp6 = icmp ult i8 %9, 2
  %rpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %rpwm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp11 = icmp ult i8 %11, 2
  br i1 %cmp11, label %if.then13, label %if.then3.if.end16_crit_edge

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext 2)
  br label %if.end16

if.end16.thread:                                  ; preds = %if.then.if.end16.thread_crit_edge, %entry.if.end16.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br label %if.end27

if.end16:                                         ; preds = %if.then13, %if.then3.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  br i1 %cmp6, label %if.then20, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp23 = icmp ugt i8 %13, 1
  %spec.select39 = zext i1 %cmp23 to i32
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end16.if.end27_crit_edge, %if.end16.thread
  %res.2 = phi i32 [ 1, %if.end16.if.end27_crit_edge ], [ %spec.select39, %if.then20 ], [ 1, %if.end16.thread ]
  ret i32 %res.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_unregister_tx_alive(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  %call = tail call zeroext i1 @hal_btcoex_IsBtDisabled(ptr noundef %padapter) #6
  br i1 %call, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call1, label %if.then, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call zeroext i8 @hal_btcoex_LpsVal(ptr noundef %padapter) #6
  %2 = and i8 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 2
  br label %if.end4

if.end4:                                          ; preds = %if.then, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pslv.1 = phi i8 [ 1, %entry.if.end4_crit_edge ], [ %spec.select, %if.then ], [ 1, %land.lhs.true.if.end4_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %alives.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 9
  %3 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alives.i, align 4
  %and.i = and i32 %4, -2
  store i32 %and.i, ptr %alives.i, align 4
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 5
  %5 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end4.if.end24_crit_edge, label %land.lhs.true7

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true7:                                   ; preds = %if.end4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 36
  %7 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end24_crit_edge, label %if.then10

land.lhs.true7.if.end24_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10:                                        ; preds = %land.lhs.true7
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %9 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %pslv.1)
  %cmp13 = icmp ugt i8 %10, %pslv.1
  br i1 %cmp13, label %if.then15, label %if.then10.if.end24_crit_edge

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pslv.1)
  %cmp17 = icmp ugt i8 %pslv.1, 1
  br i1 %cmp17, label %if.then15.if.then21_crit_edge, label %lor.lhs.false

if.then15.if.then21_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then15
  %11 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alives.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.then15.if.then21_crit_edge
  tail call void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext %pslv.1)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %lor.lhs.false.if.end24_crit_edge, %if.then10.if.end24_crit_edge, %land.lhs.true7.if.end24_crit_edge, %if.end4.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_unregister_cmd_alive(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  %call = tail call zeroext i1 @hal_btcoex_IsBtDisabled(ptr noundef %padapter) #6
  br i1 %call, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #6
  br i1 %call1, label %if.then, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call zeroext i8 @hal_btcoex_LpsVal(ptr noundef %padapter) #6
  %2 = and i8 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 2
  br label %if.end4

if.end4:                                          ; preds = %if.then, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pslv.1 = phi i8 [ 1, %entry.if.end4_crit_edge ], [ %spec.select, %if.then ], [ 1, %land.lhs.true.if.end4_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %alives.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 9
  %3 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alives.i, align 4
  %and.i = and i32 %4, -5
  store i32 %and.i, ptr %alives.i, align 4
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 5
  %5 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end4.if.end24_crit_edge, label %land.lhs.true7

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true7:                                   ; preds = %if.end4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 36
  %7 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end24_crit_edge, label %if.then10

land.lhs.true7.if.end24_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10:                                        ; preds = %land.lhs.true7
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %9 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %pslv.1)
  %cmp13 = icmp ugt i8 %10, %pslv.1
  br i1 %cmp13, label %if.then15, label %if.then10.if.end24_crit_edge

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pslv.1)
  %cmp17 = icmp ugt i8 %pslv.1, 1
  br i1 %cmp17, label %if.then15.if.then21_crit_edge, label %lor.lhs.false

if.then15.if.then21_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then15
  %11 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alives.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.then15.if.then21_crit_edge
  tail call void @rtw_set_rpwm(ptr noundef %padapter, i8 noundef zeroext %pslv.1)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %lor.lhs.false.if.end24_crit_edge, %if.then10.if.end24_crit_edge, %land.lhs.true7.if.end24_crit_edge, %if.end4.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_init_pwrctrl_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %pwrctl_priv, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtw_init_pwrctrl_priv.__key) #6
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %2 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rf_pwrstate, align 4
  %ips_enter_cnts = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 21
  %3 = ptrtoint ptr %ips_enter_cnts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ips_enter_cnts, align 4
  %ips_leave_cnts = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 22
  %4 = ptrtoint ptr %ips_leave_cnts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ips_leave_cnts, align 4
  %bips_processing = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 26
  %5 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bips_processing, align 1
  %ips_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 18
  %6 = ptrtoint ptr %ips_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ips_mode, align 1
  %ips_mode1 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 23
  %8 = ptrtoint ptr %ips_mode1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ips_mode1, align 4
  %9 = load i8, ptr %ips_mode, align 1
  %ips_mode_req = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 25
  %10 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ips_mode_req, align 2
  %pwr_state_check_interval = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 50
  %11 = ptrtoint ptr %pwr_state_check_interval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2000, ptr %pwr_state_check_interval, align 4
  %pwr_state_check_cnts = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 51
  %12 = ptrtoint ptr %pwr_state_check_cnts to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pwr_state_check_cnts, align 4
  %bInternalAutoSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 40
  %13 = ptrtoint ptr %bInternalAutoSuspend to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bInternalAutoSuspend, align 1
  %bInSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 41
  %14 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bInSuspend, align 2
  %bkeepfwalive = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 57
  %15 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bkeepfwalive, align 2
  %LpsIdleCount = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 33
  %16 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %LpsIdleCount, align 1
  %power_mgnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 17
  %17 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %power_mgnt, align 2
  %power_mgnt5 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 34
  %19 = ptrtoint ptr %power_mgnt5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %power_mgnt5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp = icmp ne i8 %18, 1
  %conv8 = zext i1 %cmp to i8
  %bLeisurePs = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 32
  %20 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8, ptr %bLeisurePs, align 2
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 36
  %21 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %fw_current_in_ps_mode, align 2
  %rpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 1
  %22 = ptrtoint ptr %rpwm to i32
  call void @__asan_store1_noabort(i32 %22)
  store volatile i8 0, ptr %rpwm, align 4
  %cpwm = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 2
  %23 = ptrtoint ptr %cpwm to i32
  call void @__asan_store1_noabort(i32 %23)
  store volatile i8 12, ptr %cpwm, align 1
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 5
  %24 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %pwr_mode, align 4
  %smart_ps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 19
  %25 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %smart_ps, align 4
  %smart_ps10 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 6
  %27 = ptrtoint ptr %smart_ps10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %smart_ps10, align 1
  %bcn_ant_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 7
  %28 = ptrtoint ptr %bcn_ant_mode to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %bcn_ant_mode, align 2
  %dtim = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 8
  %29 = ptrtoint ptr %dtim to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dtim, align 1
  %tog = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 3
  %30 = ptrtoint ptr %tog to i32
  call void @__asan_store1_noabort(i32 %30)
  store volatile i8 -128, ptr %tog, align 2
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 40, ptr noundef %rpwm) #6
  %cpwm_event = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 10
  tail call void @__init_work(ptr noundef %cpwm_event, i32 noundef 0) #6
  %31 = ptrtoint ptr %cpwm_event to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %cpwm_event, align 4
  %lockdep_map.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @_init_workitem.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry1.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 10, i32 1
  %32 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry1.i, ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 10, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry1.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 10, i32 2
  %34 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @cpwm_event_callback, ptr %func.i, align 4
  %brpwmtimeout = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 11
  %35 = ptrtoint ptr %brpwmtimeout to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %brpwmtimeout, align 4
  %adapter = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 49
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %padapter, ptr %adapter, align 4
  %rpwmtimeoutwi = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 12
  tail call void @__init_work(ptr noundef %rpwmtimeoutwi, i32 noundef 0) #6
  %37 = ptrtoint ptr %rpwmtimeoutwi to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %rpwmtimeoutwi, align 4
  %lockdep_map.i56 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i56, ptr noundef nonnull @.str.11, ptr noundef nonnull @_init_workitem.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry1.i57 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 12, i32 1
  %38 = ptrtoint ptr %entry1.i57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry1.i57, ptr %entry1.i57, align 4
  %prev.i.i58 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 12, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry1.i57, ptr %prev.i.i58, align 4
  %func.i59 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 12, i32 2
  %40 = ptrtoint ptr %func.i59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rpwmtimeout_workitem_callback, ptr %func.i59, align 4
  %pwr_rpwm_timer = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 13
  tail call void @init_timer_key(ptr noundef %pwr_rpwm_timer, ptr noundef nonnull @pwr_rpwm_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtw_init_pwrctrl_priv.__key.3) #6
  %pwr_state_check_timer = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 48
  tail call void @init_timer_key(ptr noundef %pwr_state_check_timer, ptr noundef nonnull @pwr_state_check_handler, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtw_init_pwrctrl_priv.__key.5) #6
  %wowlan_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 47
  %41 = ptrtoint ptr %wowlan_mode to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %wowlan_mode, align 4
  %wowlan_ap_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 46
  %42 = ptrtoint ptr %wowlan_ap_mode to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %wowlan_ap_mode, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpwm_event_callback(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1708
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj.i, align 4
  %pwrctl_priv.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv.i, i32 noundef 0) #6
  %rpwm.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %rpwm.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %rpwm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp ult i8 %5, 2
  br i1 %cmp.i, label %entry.cpwm_int_hdl.exit_crit_edge, label %if.end.i

entry.cpwm_int_hdl.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpwm_int_hdl.exit

if.end.i:                                         ; preds = %entry
  %cpwm.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %cpwm.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 2, ptr %cpwm.i, align 1
  %cpwm_tog.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 4
  %7 = ptrtoint ptr %cpwm_tog.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 0, ptr %cpwm_tog.i, align 1
  %8 = load volatile i8, ptr %cpwm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp10.i = icmp ugt i8 %8, 1
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i.cpwm_int_hdl.exit_crit_edge

if.end.i.cpwm_int_hdl.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpwm_int_hdl.exit

if.then12.i:                                      ; preds = %if.end.i
  %alives.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 9
  %9 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alives.i, align 4
  %and13.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.then12.i.if.end15.i_crit_edge, label %if.then14.i

if.then12.i.if.end15.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %cmdpriv.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %cmdpriv.i) #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.then12.i.if.end15.i_crit_edge
  %11 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alives.i, align 4
  %and17.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.cpwm_int_hdl.exit_crit_edge, label %if.then19.i

if.end15.i.cpwm_int_hdl.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpwm_int_hdl.exit

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %xmit_comp.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 1
  tail call void @complete(ptr noundef %xmit_comp.i) #6
  br label %cpwm_int_hdl.exit

cpwm_int_hdl.exit:                                ; preds = %if.then19.i, %if.end15.i.cpwm_int_hdl.exit_crit_edge, %if.end.i.cpwm_int_hdl.exit_crit_edge, %entry.cpwm_int_hdl.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpwmtimeout_workitem_callback(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -152
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1756
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #6
  %rpwm = getelementptr i8, ptr %work, i32 -60
  %2 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %rpwm, align 4
  %cpwm = getelementptr i8, ptr %work, i32 -59
  %4 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp = icmp eq i8 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp8 = icmp ugt i8 %7, 1
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_unlock(ptr noundef %add.ptr) #6
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %1, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call)
  %cmp12.not = icmp eq i8 %call, -22
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvobj.i, align 4
  %pwrctl_priv.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv.i, i32 noundef 0) #6
  %rpwm.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %rpwm.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %rpwm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.i = icmp ult i8 %11, 2
  br i1 %cmp.i, label %if.then14.cleanup_crit_edge, label %if.end.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then14
  %cpwm.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 22, i32 2
  %12 = ptrtoint ptr %cpwm.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 2, ptr %cpwm.i, align 1
  %cpwm_tog.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 22, i32 4
  %13 = ptrtoint ptr %cpwm_tog.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 0, ptr %cpwm_tog.i, align 1
  %14 = load volatile i8, ptr %cpwm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp10.i = icmp ugt i8 %14, 1
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.i:                                      ; preds = %if.end.i
  %alives.i = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 22, i32 9
  %15 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %alives.i, align 4
  %and13.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.then12.i.if.end15.i_crit_edge, label %if.then14.i

if.then12.i.if.end15.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %cmdpriv.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %cmdpriv.i) #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.then12.i.if.end15.i_crit_edge
  %17 = ptrtoint ptr %alives.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alives.i, align 4
  %and17.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.cleanup_crit_edge, label %if.then19.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %xmit_comp.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 1
  tail call void @complete(ptr noundef %xmit_comp.i) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #6
  %19 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %rpwm, align 4
  %21 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp21 = icmp eq i8 %20, %22
  br i1 %cmp21, label %if.end15.cleanup_crit_edge, label %lor.lhs.false23

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false23:                                  ; preds = %if.end15
  %23 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp26 = icmp ugt i8 %24, 1
  br i1 %cmp26, label %lor.lhs.false23.cleanup_crit_edge, label %if.end29

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #8
  %brpwmtimeout = getelementptr i8, ptr %work, i32 -4
  %25 = ptrtoint ptr %brpwmtimeout to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %brpwmtimeout, align 4
  %26 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %rpwm, align 4
  tail call void @rtw_set_rpwm(ptr noundef %1, i8 noundef zeroext %27)
  %28 = ptrtoint ptr %brpwmtimeout to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %brpwmtimeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %lor.lhs.false23.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then19.i, %if.end15.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %add.ptr.sink = phi ptr [ %pwrctl_priv.i, %if.then14.cleanup_crit_edge ], [ %pwrctl_priv.i, %if.end.i.cleanup_crit_edge ], [ %pwrctl_priv.i, %if.end15.i.cleanup_crit_edge ], [ %pwrctl_priv.i, %if.then19.i ], [ %add.ptr, %if.end15.cleanup_crit_edge ], [ %add.ptr, %lor.lhs.false23.cleanup_crit_edge ], [ %add.ptr, %entry.cleanup_crit_edge ], [ %add.ptr, %lor.lhs.false.cleanup_crit_edge ], [ %add.ptr, %if.end29 ]
  tail call void @mutex_unlock(ptr noundef %add.ptr.sink) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwr_rpwm_timeout_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rpwm = getelementptr i8, ptr %t, i32 -104
  %0 = ptrtoint ptr %rpwm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %rpwm, align 4
  %cpwm = getelementptr i8, ptr %t, i32 -103
  %2 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %cpwm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %cpwm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp5 = icmp ugt i8 %5, 1
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %rpwmtimeoutwi = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %rpwmtimeoutwi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwr_state_check_handler(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %call = tail call zeroext i8 @rtw_ps_cmd(ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_free_pwrctrl_priv(ptr nocapture noundef %adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_set_ips_deny(ptr nocapture noundef readonly %padapter, i32 noundef %ms) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %ms) #6
  %add = add i32 %call2.i, %2
  %ips_deny_time = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 27
  %3 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %ips_deny_time, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_pwr_wakeup(ptr noundef %padapter, i32 noundef %ips_deffer_ms, ptr nocapture readnone %caller) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %ips_deffer_ms) #6
  %add = add i32 %call2.i, %3
  %4 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvobj1, align 4
  %bup.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 44
  %6 = ptrtoint ptr %bup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.LeaveAllPowerSaveMode.exit_crit_edge, label %if.end.i116

entry.LeaveAllPowerSaveMode.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %LeaveAllPowerSaveMode.exit

if.end.i116:                                      ; preds = %entry
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %8 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i116.LeaveAllPowerSaveMode.exit_crit_edge

if.end.i116.LeaveAllPowerSaveMode.exit_crit_edge: ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %LeaveAllPowerSaveMode.exit

if.end4.i:                                        ; preds = %if.end.i116
  %padapters.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %padapters.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %padapters.i, align 4
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i, label %if.else.i118, label %if.then9.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 5, i8 noundef zeroext 1) #6
  tail call void @LPS_Leave_check(ptr noundef %padapter) #6
  br label %LeaveAllPowerSaveMode.exit

if.else.i118:                                     ; preds = %if.end4.i
  %rf_pwrstate.i = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 22, i32 53
  %14 = ptrtoint ptr %rf_pwrstate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rf_pwrstate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i117 = icmp eq i32 %15, 2
  br i1 %cmp.i117, label %if.then12.i, label %if.else.i118.LeaveAllPowerSaveMode.exit_crit_edge

if.else.i118.LeaveAllPowerSaveMode.exit_crit_edge: ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %LeaveAllPowerSaveMode.exit

if.then12.i:                                      ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 @ips_leave(ptr noundef %padapter) #6
  br label %LeaveAllPowerSaveMode.exit

LeaveAllPowerSaveMode.exit:                       ; preds = %if.then12.i, %if.else.i118.LeaveAllPowerSaveMode.exit_crit_edge, %if.then9.i, %if.end.i116.LeaveAllPowerSaveMode.exit_crit_edge, %entry.LeaveAllPowerSaveMode.exit_crit_edge
  %16 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dvobj1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ips_deny_time = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 27
  %20 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ips_deny_time, align 4
  %sub = sub i32 %21, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %LeaveAllPowerSaveMode.exit.if.end_crit_edge

LeaveAllPowerSaveMode.exit.if.end_crit_edge:      ; preds = %LeaveAllPowerSaveMode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %LeaveAllPowerSaveMode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %ips_deny_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %LeaveAllPowerSaveMode.exit.if.end_crit_edge
  %ps_processing = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 30
  %23 = ptrtoint ptr %ps_processing to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ps_processing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.rhs:                                         ; preds = %while.body13.preheader.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub7 = sub i32 %25, %2
  %call8 = tail call i32 @jiffies_to_msecs(i32 noundef %sub7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3001, i32 %call8)
  %cmp9 = icmp ult i32 %call8, 3001
  br i1 %cmp9, label %while.body13.preheader, label %land.rhs.if.end15_crit_edge

land.rhs.if.end15_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

while.body13.preheader:                           ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  %36 = ptrtoint ptr %ps_processing to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr = load i8, ptr %ps_processing, align 4
  %tobool6.not = icmp eq i8 %.pr, 0
  br i1 %tobool6.not, label %while.body13.preheader.if.end15_crit_edge, label %while.body13.preheader.land.rhs_crit_edge

while.body13.preheader.land.rhs_crit_edge:        ; preds = %while.body13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body13.preheader.if.end15_crit_edge:        ; preds = %while.body13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %while.body13.preheader.if.end15_crit_edge, %land.rhs.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %bInternalAutoSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 40
  %37 = ptrtoint ptr %bInternalAutoSuspend to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bInternalAutoSuspend, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool16.not = icmp eq i8 %38, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end15.land.lhs.true50_crit_edge

if.end15.land.lhs.true50_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true50

land.lhs.true:                                    ; preds = %if.end15
  %bInSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 41
  %39 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bInSuspend, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool18.not = icmp eq i8 %40, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.land.rhs24_crit_edge

land.lhs.true.land.rhs24_crit_edge:               ; preds = %land.lhs.true
  br label %land.rhs24

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.rhs24:                                       ; preds = %while.body35.preheader.land.rhs24_crit_edge, %land.lhs.true.land.rhs24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub25 = sub i32 %41, %2
  %call26 = tail call i32 @jiffies_to_msecs(i32 noundef %sub25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3001, i32 %call26)
  %cmp27 = icmp ult i32 %call26, 3001
  br i1 %cmp27, label %while.body35.preheader, label %land.rhs24.if.end38_crit_edge

land.rhs24.if.end38_crit_edge:                    ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

while.body35.preheader:                           ; preds = %land.rhs24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #6
  %52 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr120 = load i8, ptr %bInSuspend, align 2
  %tobool23.not = icmp eq i8 %.pr120, 0
  br i1 %tobool23.not, label %while.body35.preheader.if.end38_crit_edge, label %while.body35.preheader.land.rhs24_crit_edge

while.body35.preheader.land.rhs24_crit_edge:      ; preds = %while.body35.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs24

while.body35.preheader.if.end38_crit_edge:        ; preds = %while.body35.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %while.body35.preheader.if.end38_crit_edge, %land.rhs24.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge
  %53 = ptrtoint ptr %bInternalAutoSuspend to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr121 = load i8, ptr %bInternalAutoSuspend, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr121)
  %tobool40.not = icmp eq i8 %.pr121, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %if.end38.land.lhs.true50_crit_edge

if.end38.land.lhs.true50_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true50

land.lhs.true41:                                  ; preds = %if.end38
  %54 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bInSuspend, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool44.not = icmp eq i8 %55, 0
  br i1 %tobool44.not, label %land.lhs.true41.if.end53_crit_edge, label %land.lhs.true41.exit_crit_edge

land.lhs.true41.exit_crit_edge:                   ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

land.lhs.true41.if.end53_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

land.lhs.true50:                                  ; preds = %if.end38.land.lhs.true50_crit_edge, %if.end15.land.lhs.true50_crit_edge
  %net_closed = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 49
  %56 = ptrtoint ptr %net_closed to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %net_closed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool51.not = icmp eq i32 %57, 0
  br i1 %tobool51.not, label %land.lhs.true50.if.end53_crit_edge, label %land.lhs.true50.exit_crit_edge

land.lhs.true50.exit_crit_edge:                   ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

land.lhs.true50.if.end53_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true50.if.end53_crit_edge, %land.lhs.true41.if.end53_crit_edge
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool55.not = icmp eq i32 %and.i, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.exit_crit_edge

if.end53.exit_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end57:                                         ; preds = %if.end53
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %60 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp58 = icmp eq i32 %61, 2
  br i1 %cmp58, label %if.then60, label %if.end57.if.end66_crit_edge

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then60:                                        ; preds = %if.end57
  %call61 = tail call i32 @ips_leave(ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then60.exit_crit_edge, label %if.then60.if.end66_crit_edge

if.then60.if.end66_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then60.exit_crit_edge:                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end66:                                         ; preds = %if.then60.if.end66_crit_edge, %if.end57.if.end66_crit_edge
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 21
  %62 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool67.not = icmp eq i32 %63, 0
  br i1 %tobool67.not, label %lor.lhs.false, label %if.end66.if.then71_crit_edge

if.end66.if.then71_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71

lor.lhs.false:                                    ; preds = %if.end66
  %bup = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 44
  %64 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool68.not = icmp eq i32 %65, 0
  br i1 %tobool68.not, label %lor.lhs.false.if.then71_crit_edge, label %lor.lhs.false69

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71

lor.lhs.false69:                                  ; preds = %lor.lhs.false
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 27
  %66 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool70.not = icmp eq i8 %67, 0
  br i1 %tobool70.not, label %lor.lhs.false69.if.then71_crit_edge, label %lor.lhs.false69.exit_crit_edge

lor.lhs.false69.exit_crit_edge:                   ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

lor.lhs.false69.if.then71_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71

if.then71:                                        ; preds = %lor.lhs.false69.if.then71_crit_edge, %lor.lhs.false.if.then71_crit_edge, %if.end66.if.then71_crit_edge
  br label %exit

exit:                                             ; preds = %if.then71, %lor.lhs.false69.exit_crit_edge, %if.then60.exit_crit_edge, %if.end53.exit_crit_edge, %land.lhs.true50.exit_crit_edge, %land.lhs.true41.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.then71 ], [ 1, %lor.lhs.false69.exit_crit_edge ], [ 0, %land.lhs.true41.exit_crit_edge ], [ 0, %land.lhs.true50.exit_crit_edge ], [ 1, %if.end53.exit_crit_edge ], [ 0, %if.then60.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %call2.i112 = tail call i32 @__msecs_to_jiffies(i32 noundef %ips_deffer_ms) #6
  %add74 = add i32 %call2.i112, %68
  %69 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ips_deny_time, align 4
  %sub76 = sub i32 %70, %add74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub76)
  %cmp77 = icmp slt i32 %sub76, 0
  br i1 %cmp77, label %if.then79, label %exit.if.end81_crit_edge

exit.if.end81_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then79:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %ips_deny_time to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add74, ptr %ips_deny_time, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %exit.if.end81_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_pm_set_lps(ptr noundef %padapter, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %mode)
  %cmp = icmp ult i8 %mode, 11
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then:                                          ; preds = %entry
  %power_mgnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 34
  %2 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mgnt, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %mode)
  %cmp4.not = icmp eq i8 %3, %mode
  br i1 %cmp4.not, label %if.then.if.end19_crit_edge, label %if.then6

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp8 = icmp eq i8 %mode, 1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then6
  %bup.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 44
  %4 = ptrtoint ptr %bup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then10.if.end_crit_edge, label %if.end.i

if.then10.if.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then10
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %6 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %padapters.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %padapters.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %padapters.i, align 4
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 5, i8 noundef zeroext 1) #6
  tail call void @LPS_Leave_check(ptr noundef %padapter) #6
  br label %if.end

if.else.i:                                        ; preds = %if.end4.i
  %rf_pwrstate.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %12 = ptrtoint ptr %rf_pwrstate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rf_pwrstate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %if.then12.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 @ips_leave(ptr noundef %padapter) #6
  br label %if.end

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %LpsIdleCount = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 33
  %14 = ptrtoint ptr %LpsIdleCount to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %LpsIdleCount, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12.i, %if.else.i.if.end_crit_edge, %if.then9.i, %if.end.i.if.end_crit_edge, %if.then10.if.end_crit_edge
  %15 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %mode, ptr %power_mgnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp14 = icmp ne i8 %mode, 1
  %conv16 = zext i1 %cmp14 to i8
  %bLeisurePs = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 32
  %16 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv16, ptr %bLeisurePs, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.then.if.end19_crit_edge ], [ -22, %entry.if.end19_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_pm_set_ips(ptr noundef %padapter, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %2 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %mode, label %entry.cleanup_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 2, label %entry.if.then_crit_edge25
    i8 0, label %if.then8
  ]

entry.if.then_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge25
  %ips_mode_req = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 25
  %3 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %mode, ptr %ips_mode_req, align 2
  br label %cleanup

if.then8:                                         ; preds = %entry
  %ips_mode_req9 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 25
  %4 = ptrtoint ptr %ips_mode_req9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ips_mode_req9, align 2
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %5 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %land.lhs.true, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then8
  %call = tail call i32 @_rtw_pwr_wakeup(ptr noundef %padapter, i32 noundef 2000, ptr undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp eq i32 %call, 0
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.then8.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end17 ], [ -14, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ps_deny(ptr nocapture noundef readonly %padapter, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %shl = shl nuw i32 1, %reason
  %ps_deny = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 29
  %2 = ptrtoint ptr %ps_deny to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_deny, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %ps_deny, align 4
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ps_deny_cancel(ptr nocapture noundef readonly %padapter, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %pwrctl_priv, i32 noundef 0) #6
  %shl = shl nuw i32 1, %reason
  %neg = xor i32 %shl, -1
  %ps_deny = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 29
  %2 = ptrtoint ptr %ps_deny to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_deny, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %ps_deny, align 4
  tail call void @mutex_unlock(ptr noundef %pwrctl_priv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_is_scan_deny(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_cfg80211_pwr_mgmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_ps_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !19, !21, !22, !23, !24, !26, !27, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @traffic_check_for_leave_lps.start_time, !1, !"start_time", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 192, i32 23}
!2 = !{ptr @traffic_check_for_leave_lps.xmit_cnt, !3, !"xmit_cnt", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 193, i32 13}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 472, i32 33}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 579, i32 2}
!8 = !{ptr @rtw_init_pwrctrl_priv.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 963, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtw_init_pwrctrl_priv.__key.3, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 1001, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rtw_init_pwrctrl_priv.__key.5, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 1002, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 1128, i32 45}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 125, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rtw_pwr_unassociated_idle.__UNIQUE_ID_ddebug345, !20, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/core/rtw_pwrctrl.c", i32 127, i32 3}
!26 = !{ptr @rtw_pwr_unassociated_idle.__UNIQUE_ID_ddebug346, !25, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!27 = !{ptr @_init_workitem.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8723bs/include/osdep_service_linux.h", i32 65, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
!40 = !{i64 2148820377, i64 2148820382, i64 2148820395, i64 2148820439, i64 2148820473, i64 2148820494}
!41 = !{!"auto-init"}
