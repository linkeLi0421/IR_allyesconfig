; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/os_intfs.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/os_intfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION, i32, [16 x i8], i32, [768 x i8] }
%struct.NDIS_802_11_CONFIGURATION = type { i32, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION_FH }
%struct.NDIS_802_11_CONFIGURATION_FH = type { i32, i32, i32, i32 }
%struct.sitesurvey_ctrl = type { i64, i32, i32, %struct.timer_list }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, [16 x i8], i32, i32, i32, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.118, i32 }
%union.anon.118 = type { ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.smooth_rssi_data = type { [100 x i32], i32, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [2 x %union.Keytype], [2 x %union.Keytype], [2 x %union.Keytype], %union.pn48, %union.pn48, i8, i8, [512 x i8], i32, i8, i8, %struct.timer_list, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.NDIS_802_11_WEP, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.RT_PMKID_LIST], i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.NDIS_802_11_WEP = type { i32, i32, i32, [16 x i8] }
%struct.RT_PMKID_LIST = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type { i8, i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8 }
%struct.wlan_acl_pool = type { [64 x %struct.wlan_acl_node] }
%struct.wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.work_struct, %struct.work_struct, %struct.timer_list, i8, i32, %struct.spinlock, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, [6 x i8], i8, i16, [3 x i8], [15 x i8], [15 x i8], [201 x i8], [256 x i8], i32 }
%struct.hal_priv = type { [10 x ptr], ptr }
%struct.led_priv = type { %struct.LED_871x, %struct.LED_871x, i32, i8, ptr }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.timer_list, %struct.work_struct }
%struct.mp_priv = type { ptr, %struct.mp_wiparam, i8, i8, i32, i32, i32, i32, %struct.recv_stat, i32, i32, i8, i8, i8, i32, i16, i16, i8, i8, i32, %struct.wlan_network, [6 x i8], i32, i32, ptr, ptr, %struct.__queue, i32 }
%struct.mp_wiparam = type { i32, i32, i32, i32 }
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }

@__UNIQUE_ID_file339 = internal constant [43 x i8] c"r8712u.file=drivers/staging/rtl8712/r8712u\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [19 x i8] c"r8712u.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description341 = internal constant [47 x i8] c"r8712u.description=rtl871x wireless lan driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author342 = internal constant [27 x i8] c"r8712u.author=Larry Finger\00", section ".modinfo", align 1
@__param_str_ifname = internal constant [14 x i8] c"r8712u.ifname\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_ifname = internal constant %struct.kparam_string { i32 16, ptr @ifname }, align 4
@__param_ifname = internal constant %struct.kernel_param { ptr @__param_str_ifname, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @__param_string_ifname } }, section "__param", align 4
@__UNIQUE_ID_ifnametype343 = internal constant [30 x i8] c"r8712u.parmtype=ifname:string\00", section ".modinfo", align 1
@__param_str_wifi_test = internal constant [17 x i8] c"r8712u.wifi_test\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wifi_test = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_wifi_test = internal constant %struct.kernel_param { ptr @__param_str_wifi_test, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @wifi_test } }, section "__param", align 4
@__UNIQUE_ID_wifi_testtype344 = internal constant [30 x i8] c"r8712u.parmtype=wifi_test:int\00", section ".modinfo", align 1
@__param_str_initmac = internal constant [15 x i8] c"r8712u.initmac\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@initmac = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_initmac = internal constant %struct.kernel_param { ptr @__param_str_initmac, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @initmac } }, section "__param", align 4
@__UNIQUE_ID_initmactype345 = internal constant [30 x i8] c"r8712u.parmtype=initmac:charp\00", section ".modinfo", align 1
@__param_str_video_mode = internal constant [18 x i8] c"r8712u.video_mode\00", align 1
@video_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_video_mode = internal constant %struct.kernel_param { ptr @__param_str_video_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @video_mode } }, section "__param", align 4
@__UNIQUE_ID_video_modetype346 = internal constant [31 x i8] c"r8712u.parmtype=video_mode:int\00", section ".modinfo", align 1
@__param_str_chip_version = internal constant [20 x i8] c"r8712u.chip_version\00", align 1
@chip_version = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_chip_version = internal constant %struct.kernel_param { ptr @__param_str_chip_version, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @chip_version } }, section "__param", align 4
@__UNIQUE_ID_chip_versiontype347 = internal constant [33 x i8] c"r8712u.parmtype=chip_version:int\00", section ".modinfo", align 1
@__param_str_rfintfs = internal constant [15 x i8] c"r8712u.rfintfs\00", align 1
@rfintfs = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rfintfs = internal constant %struct.kernel_param { ptr @__param_str_rfintfs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rfintfs } }, section "__param", align 4
@__UNIQUE_ID_rfintfstype348 = internal constant [28 x i8] c"r8712u.parmtype=rfintfs:int\00", section ".modinfo", align 1
@__param_str_lbkmode = internal constant [15 x i8] c"r8712u.lbkmode\00", align 1
@lbkmode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lbkmode = internal constant %struct.kernel_param { ptr @__param_str_lbkmode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @lbkmode } }, section "__param", align 4
@__UNIQUE_ID_lbkmodetype349 = internal constant [28 x i8] c"r8712u.parmtype=lbkmode:int\00", section ".modinfo", align 1
@__param_str_hci = internal constant [11 x i8] c"r8712u.hci\00", align 1
@hci = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_hci = internal constant %struct.kernel_param { ptr @__param_str_hci, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @hci } }, section "__param", align 4
@__UNIQUE_ID_hcitype350 = internal constant [24 x i8] c"r8712u.parmtype=hci:int\00", section ".modinfo", align 1
@__param_str_network_mode = internal constant [20 x i8] c"r8712u.network_mode\00", align 1
@network_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_network_mode = internal constant %struct.kernel_param { ptr @__param_str_network_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @network_mode } }, section "__param", align 4
@__UNIQUE_ID_network_modetype351 = internal constant [33 x i8] c"r8712u.parmtype=network_mode:int\00", section ".modinfo", align 1
@__param_str_channel = internal constant [15 x i8] c"r8712u.channel\00", align 1
@channel = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_channel = internal constant %struct.kernel_param { ptr @__param_str_channel, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @channel } }, section "__param", align 4
@__UNIQUE_ID_channeltype352 = internal constant [28 x i8] c"r8712u.parmtype=channel:int\00", section ".modinfo", align 1
@__param_str_mp_mode = internal constant [15 x i8] c"r8712u.mp_mode\00", align 1
@mp_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mp_mode = internal constant %struct.kernel_param { ptr @__param_str_mp_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @mp_mode } }, section "__param", align 4
@__UNIQUE_ID_mp_modetype353 = internal constant [28 x i8] c"r8712u.parmtype=mp_mode:int\00", section ".modinfo", align 1
@__param_str_wmm_enable = internal constant [18 x i8] c"r8712u.wmm_enable\00", align 1
@wmm_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_wmm_enable = internal constant %struct.kernel_param { ptr @__param_str_wmm_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @wmm_enable } }, section "__param", align 4
@__UNIQUE_ID_wmm_enabletype354 = internal constant [31 x i8] c"r8712u.parmtype=wmm_enable:int\00", section ".modinfo", align 1
@__param_str_vrtl_carrier_sense = internal constant [26 x i8] c"r8712u.vrtl_carrier_sense\00", align 1
@vrtl_carrier_sense = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_vrtl_carrier_sense = internal constant %struct.kernel_param { ptr @__param_str_vrtl_carrier_sense, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @vrtl_carrier_sense } }, section "__param", align 4
@__UNIQUE_ID_vrtl_carrier_sensetype355 = internal constant [39 x i8] c"r8712u.parmtype=vrtl_carrier_sense:int\00", section ".modinfo", align 1
@__param_str_vcs_type = internal constant [16 x i8] c"r8712u.vcs_type\00", align 1
@vcs_type = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_vcs_type = internal constant %struct.kernel_param { ptr @__param_str_vcs_type, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @vcs_type } }, section "__param", align 4
@__UNIQUE_ID_vcs_typetype356 = internal constant [29 x i8] c"r8712u.parmtype=vcs_type:int\00", section ".modinfo", align 1
@__param_str_busy_thresh = internal constant [19 x i8] c"r8712u.busy_thresh\00", align 1
@busy_thresh = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_busy_thresh = internal constant %struct.kernel_param { ptr @__param_str_busy_thresh, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @busy_thresh } }, section "__param", align 4
@__UNIQUE_ID_busy_threshtype357 = internal constant [32 x i8] c"r8712u.parmtype=busy_thresh:int\00", section ".modinfo", align 1
@__param_str_ht_enable = internal constant [17 x i8] c"r8712u.ht_enable\00", align 1
@ht_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ht_enable = internal constant %struct.kernel_param { ptr @__param_str_ht_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ht_enable } }, section "__param", align 4
@__UNIQUE_ID_ht_enabletype358 = internal constant [30 x i8] c"r8712u.parmtype=ht_enable:int\00", section ".modinfo", align 1
@__param_str_cbw40_enable = internal constant [20 x i8] c"r8712u.cbw40_enable\00", align 1
@cbw40_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_cbw40_enable = internal constant %struct.kernel_param { ptr @__param_str_cbw40_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @cbw40_enable } }, section "__param", align 4
@__UNIQUE_ID_cbw40_enabletype359 = internal constant [33 x i8] c"r8712u.parmtype=cbw40_enable:int\00", section ".modinfo", align 1
@__param_str_ampdu_enable = internal constant [20 x i8] c"r8712u.ampdu_enable\00", align 1
@ampdu_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ampdu_enable = internal constant %struct.kernel_param { ptr @__param_str_ampdu_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ampdu_enable } }, section "__param", align 4
@__UNIQUE_ID_ampdu_enabletype360 = internal constant [33 x i8] c"r8712u.parmtype=ampdu_enable:int\00", section ".modinfo", align 1
@__param_str_rf_config = internal constant [17 x i8] c"r8712u.rf_config\00", align 1
@rf_config = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rf_config = internal constant %struct.kernel_param { ptr @__param_str_rf_config, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rf_config } }, section "__param", align 4
@__UNIQUE_ID_rf_configtype361 = internal constant [30 x i8] c"r8712u.parmtype=rf_config:int\00", section ".modinfo", align 1
@__param_str_power_mgnt = internal constant [18 x i8] c"r8712u.power_mgnt\00", align 1
@power_mgnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_power_mgnt = internal constant %struct.kernel_param { ptr @__param_str_power_mgnt, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @power_mgnt } }, section "__param", align 4
@__UNIQUE_ID_power_mgnttype362 = internal constant [31 x i8] c"r8712u.parmtype=power_mgnt:int\00", section ".modinfo", align 1
@__param_str_low_power = internal constant [17 x i8] c"r8712u.low_power\00", align 1
@low_power = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_low_power = internal constant %struct.kernel_param { ptr @__param_str_low_power, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @low_power } }, section "__param", align 4
@__UNIQUE_ID_low_powertype363 = internal constant [30 x i8] c"r8712u.parmtype=low_power:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ifname364 = internal constant [55 x i8] c"r8712u.parm=ifname: Net interface name, wlan%d=default\00", section ".modinfo", align 1
@__UNIQUE_ID_initmac365 = internal constant [51 x i8] c"r8712u.parm=initmac:MAC-Address, default: use FUSE\00", section ".modinfo", align 1
@ifname = internal global { [16 x i8], [16 x i8] } { [16 x i8] c"wlan%d\00\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@r8712_init_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016r8712u: register rtl8712_netdev_ops to netdev_ops\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"r8712_init_netdev\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/rtl8712/os_intfs.c\00", [61 x i8] zeroinitializer }, align 32
@r8712_init_netdev._entry_ptr = internal global ptr @r8712_init_netdev._entry, section ".printk_index", align 4
@rtl8712_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @netdev_open, ptr @netdev_close, ptr @r8712_xmit_entry, ptr null, ptr null, ptr null, ptr null, ptr @r871x_net_set_mac_address, ptr null, ptr @r871x_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r871x_net_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@r871x_handlers_def = external dso_local global %struct.iw_handler_def, align 4
@r8712_init_drv_sw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(&padapter->securitypriv.tkip_timer)\00", [59 x i8] zeroinitializer }, align 32
@r8712_initmac = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ANY\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"wifi_test\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 86, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [8 x i8] c"initmac\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 82, i32 14 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"video_mode\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 44, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"chip_version\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 36, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"rfintfs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 37, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"lbkmode\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 38, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [4 x i8] c"hci\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 39, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"network_mode\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 47, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 48, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"mp_mode\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 64, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"wmm_enable\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 68, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"vrtl_carrier_sense\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 50, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"vcs_type\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 51, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"busy_thresh\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 62, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"ht_enable\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 76, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"cbw40_enable\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 77, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"ampdu_enable\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 40, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"rf_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 78, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"power_mgnt\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 58, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"low_power\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 79, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 33, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 206, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 211, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"rtl8712_netdev_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 188, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 315, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"r8712_initmac\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 81, i32 7 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 224, i32 25 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [38 x i8] c"../drivers/staging/rtl8712/os_intfs.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 125, i32 34 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_ampdu_enabletype360, ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_busy_threshtype357, ptr @__UNIQUE_ID_cbw40_enabletype359, ptr @__UNIQUE_ID_channeltype352, ptr @__UNIQUE_ID_chip_versiontype347, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_hcitype350, ptr @__UNIQUE_ID_ht_enabletype358, ptr @__UNIQUE_ID_ifname364, ptr @__UNIQUE_ID_ifnametype343, ptr @__UNIQUE_ID_initmac365, ptr @__UNIQUE_ID_initmactype345, ptr @__UNIQUE_ID_lbkmodetype349, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_low_powertype363, ptr @__UNIQUE_ID_mp_modetype353, ptr @__UNIQUE_ID_network_modetype351, ptr @__UNIQUE_ID_power_mgnttype362, ptr @__UNIQUE_ID_rf_configtype361, ptr @__UNIQUE_ID_rfintfstype348, ptr @__UNIQUE_ID_vcs_typetype356, ptr @__UNIQUE_ID_video_modetype346, ptr @__UNIQUE_ID_vrtl_carrier_sensetype355, ptr @__UNIQUE_ID_wifi_testtype344, ptr @__UNIQUE_ID_wmm_enabletype354, ptr @__param_ampdu_enable, ptr @__param_busy_thresh, ptr @__param_cbw40_enable, ptr @__param_channel, ptr @__param_chip_version, ptr @__param_hci, ptr @__param_ht_enable, ptr @__param_ifname, ptr @__param_initmac, ptr @__param_lbkmode, ptr @__param_low_power, ptr @__param_mp_mode, ptr @__param_network_mode, ptr @__param_power_mgnt, ptr @__param_rf_config, ptr @__param_rfintfs, ptr @__param_vcs_type, ptr @__param_video_mode, ptr @__param_vrtl_carrier_sense, ptr @__param_wifi_test, ptr @__param_wmm_enable, ptr @r8712_init_netdev._entry, ptr @r8712_init_netdev._entry_ptr, ptr @wifi_test, ptr @initmac, ptr @video_mode, ptr @chip_version, ptr @rfintfs, ptr @lbkmode, ptr @hci, ptr @network_mode, ptr @channel, ptr @mp_mode, ptr @wmm_enable, ptr @vrtl_carrier_sense, ptr @vcs_type, ptr @busy_thresh, ptr @ht_enable, ptr @cbw40_enable, ptr @ampdu_enable, ptr @rf_config, ptr @power_mgnt, ptr @low_power, ptr @ifname, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtl8712_netdev_ops, ptr @r8712_init_drv_sw.__key, ptr @.str.4, ptr @r8712_initmac, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wifi_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initmac to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfintfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbkmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @network_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmm_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrtl_carrier_sense to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcs_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @busy_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbw40_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ampdu_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_mgnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_power to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifname to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8712_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_init_drv_sw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_initmac to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_init_netdev() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 14048, i32 noundef 1, i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dev_alloc_name(ptr noundef nonnull %call, ptr noundef nonnull @ifname) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @strscpy(ptr noundef nonnull @ifname, ptr noundef nonnull @.str, i32 noundef 16) #4
  %call4 = tail call i32 @dev_alloc_name(ptr noundef nonnull %call, ptr noundef nonnull @ifname) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %pnetdev7 = getelementptr i8, ptr %call, i32 15968
  %0 = ptrtoint ptr %pnetdev7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pnetdev7, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rtl8712_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %2 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %watchdog_timeo, align 4
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 42
  %3 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @r871x_handlers_def, ptr %wireless_handlers, align 8
  %registrypriv.i = getelementptr i8, ptr %call, i32 11752
  %4 = load i32, ptr @chip_version, align 4
  %conv.i = trunc i32 %4 to i8
  %5 = ptrtoint ptr %registrypriv.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %registrypriv.i, align 4
  %6 = load i32, ptr @rfintfs, align 4
  %conv1.i = trunc i32 %6 to i8
  %rfintfs.i = getelementptr i8, ptr %call, i32 11753
  %7 = ptrtoint ptr %rfintfs.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %rfintfs.i, align 1
  %8 = load i32, ptr @lbkmode, align 4
  %conv2.i = trunc i32 %8 to i8
  %lbkmode.i = getelementptr i8, ptr %call, i32 11754
  %9 = ptrtoint ptr %lbkmode.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2.i, ptr %lbkmode.i, align 2
  %10 = load i32, ptr @hci, align 4
  %conv3.i = trunc i32 %10 to i8
  %hci.i = getelementptr i8, ptr %call, i32 11755
  %11 = ptrtoint ptr %hci.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3.i, ptr %hci.i, align 1
  %12 = load i32, ptr @network_mode, align 4
  %conv4.i = trunc i32 %12 to i8
  %network_mode.i = getelementptr i8, ptr %call, i32 11756
  %13 = ptrtoint ptr %network_mode.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4.i, ptr %network_mode.i, align 4
  %ssid.i = getelementptr i8, ptr %call, i32 11760
  %Ssid.i = getelementptr i8, ptr %call, i32 11764
  %14 = call ptr @memcpy(ptr %Ssid.i, ptr @.str.6, i32 3)
  %15 = ptrtoint ptr %ssid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %ssid.i, align 4
  %16 = load i32, ptr @channel, align 4
  %conv6.i = trunc i32 %16 to i8
  %channel.i = getelementptr i8, ptr %call, i32 11796
  %17 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %channel.i, align 4
  %wireless_mode.i = getelementptr i8, ptr %call, i32 11797
  %18 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %wireless_mode.i, align 1
  %19 = load i32, ptr @vrtl_carrier_sense, align 4
  %conv8.i = trunc i32 %19 to i8
  %vrtl_carrier_sense.i = getelementptr i8, ptr %call, i32 11798
  %20 = ptrtoint ptr %vrtl_carrier_sense.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8.i, ptr %vrtl_carrier_sense.i, align 2
  %21 = load i32, ptr @vcs_type, align 4
  %conv9.i = trunc i32 %21 to i8
  %vcs_type.i = getelementptr i8, ptr %call, i32 11799
  %22 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9.i, ptr %vcs_type.i, align 1
  %frag_thresh.i = getelementptr i8, ptr %call, i32 11802
  %23 = ptrtoint ptr %frag_thresh.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2346, ptr %frag_thresh.i, align 2
  %preamble.i = getelementptr i8, ptr %call, i32 11804
  %24 = ptrtoint ptr %preamble.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %preamble.i, align 4
  %scan_mode.i = getelementptr i8, ptr %call, i32 11805
  %25 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %scan_mode.i, align 1
  %adhoc_tx_pwr.i = getelementptr i8, ptr %call, i32 11806
  %26 = ptrtoint ptr %adhoc_tx_pwr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %adhoc_tx_pwr.i, align 2
  %soft_ap.i = getelementptr i8, ptr %call, i32 11807
  %27 = ptrtoint ptr %soft_ap.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %soft_ap.i, align 1
  %smart_ps.i = getelementptr i8, ptr %call, i32 11808
  %28 = ptrtoint ptr %smart_ps.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %smart_ps.i, align 4
  %29 = load i32, ptr @power_mgnt, align 4
  %conv16.i = trunc i32 %29 to i8
  %power_mgnt.i = getelementptr i8, ptr %call, i32 11809
  %30 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16.i, ptr %power_mgnt.i, align 1
  %radio_enable.i = getelementptr i8, ptr %call, i32 11810
  %31 = ptrtoint ptr %radio_enable.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %radio_enable.i, align 2
  %long_retry_lmt.i = getelementptr i8, ptr %call, i32 11811
  %32 = ptrtoint ptr %long_retry_lmt.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 7, ptr %long_retry_lmt.i, align 1
  %short_retry_lmt.i = getelementptr i8, ptr %call, i32 11812
  %33 = ptrtoint ptr %short_retry_lmt.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 7, ptr %short_retry_lmt.i, align 4
  %34 = load i32, ptr @busy_thresh, align 4
  %conv20.i = trunc i32 %34 to i16
  %busy_thresh.i = getelementptr i8, ptr %call, i32 11814
  %35 = ptrtoint ptr %busy_thresh.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv20.i, ptr %busy_thresh.i, align 2
  %ack_policy.i = getelementptr i8, ptr %call, i32 11816
  %36 = ptrtoint ptr %ack_policy.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ack_policy.i, align 4
  %37 = load i32, ptr @mp_mode, align 4
  %conv22.i = trunc i32 %37 to i8
  %mp_mode.i = getelementptr i8, ptr %call, i32 11817
  %38 = ptrtoint ptr %mp_mode.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv22.i, ptr %mp_mode.i, align 1
  %software_encrypt.i = getelementptr i8, ptr %call, i32 11818
  %39 = ptrtoint ptr %software_encrypt.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %software_encrypt.i, align 2
  %software_decrypt.i = getelementptr i8, ptr %call, i32 11819
  %40 = ptrtoint ptr %software_decrypt.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %software_decrypt.i, align 1
  %41 = load i32, ptr @wmm_enable, align 4
  %conv25.i = trunc i32 %41 to i8
  %wmm_enable.i = getelementptr i8, ptr %call, i32 11820
  %42 = ptrtoint ptr %wmm_enable.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv25.i, ptr %wmm_enable.i, align 4
  %uapsd_enable.i = getelementptr i8, ptr %call, i32 11821
  %43 = call ptr @memset(ptr %uapsd_enable.i, i32 0, i32 6)
  %44 = load i32, ptr @ht_enable, align 4
  %conv32.i = trunc i32 %44 to i8
  %ht_enable.i = getelementptr i8, ptr %call, i32 12712
  %45 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv32.i, ptr %ht_enable.i, align 4
  %46 = load i32, ptr @cbw40_enable, align 4
  %conv33.i = trunc i32 %46 to i8
  %cbw40_enable.i = getelementptr i8, ptr %call, i32 12713
  %47 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv33.i, ptr %cbw40_enable.i, align 1
  %48 = load i32, ptr @ampdu_enable, align 4
  %conv34.i = trunc i32 %48 to i8
  %ampdu_enable.i = getelementptr i8, ptr %call, i32 12714
  %49 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv34.i, ptr %ampdu_enable.i, align 2
  %50 = load i32, ptr @rf_config, align 4
  %conv35.i = trunc i32 %50 to i8
  %rf_config.i = getelementptr i8, ptr %call, i32 12715
  %51 = ptrtoint ptr %rf_config.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv35.i, ptr %rf_config.i, align 1
  %52 = load i32, ptr @low_power, align 4
  %conv36.i = trunc i32 %52 to i8
  %low_power.i = getelementptr i8, ptr %call, i32 12716
  %53 = ptrtoint ptr %low_power.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv36.i, ptr %low_power.i, align 4
  %54 = load i32, ptr @wifi_test, align 4
  %conv37.i = trunc i32 %54 to i8
  %wifi_test.i = getelementptr i8, ptr %call, i32 12717
  %55 = ptrtoint ptr %wifi_test.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv37.i, ptr %wifi_test.i, align 1
  %56 = load ptr, ptr @initmac, align 4
  store ptr %56, ptr @r8712_initmac, align 4
  tail call void @netif_carrier_off(ptr noundef nonnull %call) #4
  %pid = getelementptr i8, ptr %call, i32 16100
  %57 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %pid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_stop_drv_threads(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  tail call void @complete(ptr noundef %cmdpriv) #4
  %cmd_thread = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 21
  %0 = ptrtoint ptr %cmd_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_thread, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %terminate_cmdthread_comp = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 1
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %terminate_cmdthread_comp) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd_seq = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmd_seq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_stop_drv_timers(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 15
  %call = tail call i32 @del_timer_sync(ptr noundef %assoc_timer) #4
  %tkip_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 18
  %call1 = tail call i32 @del_timer_sync(ptr noundef %tkip_timer) #4
  %scan_to_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 18
  %call3 = tail call i32 @del_timer_sync(ptr noundef %scan_to_timer) #4
  %dhcp_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 19
  %call5 = tail call i32 @del_timer_sync(ptr noundef %dhcp_timer) #4
  %wdg_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 22
  %call7 = tail call i32 @del_timer_sync(ptr noundef %wdg_timer) #4
  %sitesurvey_ctrl_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 14, i32 3
  %call9 = tail call i32 @del_timer_sync(ptr noundef %sitesurvey_ctrl_timer) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_init_drv_sw(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  %call = tail call i32 @r8712_init_cmd_priv(ptr noundef %cmdpriv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %padapter2 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %padapter2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %padapter, ptr %padapter2, align 4
  %evtpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 3
  %call3 = tail call i32 @r8712_init_evt_priv(ptr noundef %evtpriv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @r8712_init_mlme_priv(ptr noundef %padapter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %xmitpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5
  %call11 = tail call i32 @_r8712_init_xmit_priv(ptr noundef %xmitpriv, ptr noundef %padapter) #4
  %recvpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6
  tail call void @_r8712_init_recv_priv(ptr noundef %recvpriv, ptr noundef %padapter) #4
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8
  %1 = call ptr @memset(ptr %securitypriv, i32 0, i32 4648)
  %tkip_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 18
  tail call void @init_timer_key(ptr noundef %tkip_timer, ptr noundef nonnull @r8712_use_tkipkey_handler, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @r8712_init_drv_sw.__key) #4
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %call13 = tail call i32 @_r8712_init_sta_priv(ptr noundef %stapriv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %padapter18 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %padapter18 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %padapter, ptr %padapter18, align 4
  tail call void @r8712_init_bcmc_stainfo(ptr noundef %padapter) #4
  tail call void @r8712_init_pwrctrl_priv(ptr noundef %padapter) #4
  tail call void @mp871xinit(ptr noundef %padapter) #4
  %vrtl_carrier_sense.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 8
  %3 = ptrtoint ptr %vrtl_carrier_sense.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vrtl_carrier_sense.i, align 2
  %vcs_setting.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 21
  %5 = ptrtoint ptr %vcs_setting.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %vcs_setting.i, align 4
  %vcs_type.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 9
  %6 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vcs_type.i, align 1
  %vcs.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 22
  %8 = ptrtoint ptr %vcs.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %vcs.i, align 1
  %vcs_type2.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 23
  %9 = ptrtoint ptr %vcs_type2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %7, ptr %vcs_type2.i, align 2
  %rts_thresh.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 10
  %10 = ptrtoint ptr %rts_thresh.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rts_thresh.i, align 4
  %rts_thresh3.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 24
  %12 = ptrtoint ptr %rts_thresh3.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %rts_thresh3.i, align 8
  %frag_thresh.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 11
  %13 = ptrtoint ptr %frag_thresh.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %frag_thresh.i, align 2
  %conv.i = zext i16 %14 to i32
  %frag_len.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 19
  %15 = ptrtoint ptr %frag_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i, ptr %frag_len.i, align 4
  %passive_mode.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 10
  %16 = ptrtoint ptr %passive_mode.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %passive_mode.i, align 8
  %ampdu_enable.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 21, i32 1
  %software_encrypt.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 24
  %17 = call ptr @memset(ptr %ampdu_enable.i, i32 0, i32 20)
  %18 = ptrtoint ptr %software_encrypt.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %software_encrypt.i, align 2
  %conv5.i = zext i8 %19 to i32
  %sw_encrypt.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 21
  %20 = ptrtoint ptr %sw_encrypt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv5.i, ptr %sw_encrypt.i, align 8
  %software_decrypt.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 25
  %21 = ptrtoint ptr %software_decrypt.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %software_decrypt.i, align 1
  %conv6.i = zext i8 %22 to i32
  %sw_decrypt.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 22
  %23 = ptrtoint ptr %sw_decrypt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv6.i, ptr %sw_decrypt.i, align 4
  %binstallGrpkey.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 16
  %24 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %binstallGrpkey.i, align 8
  tail call void @r8712_init_registrypriv_dev_network(ptr noundef %padapter) #4
  tail call void @r8712_update_registrypriv_dev_network(ptr noundef %padapter) #4
  tail call void @r8712_InitSwLeds(ptr noundef %padapter) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_init_cmd_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_init_evt_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_init_mlme_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_r8712_init_xmit_priv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_init_recv_priv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_use_tkipkey_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_r8712_init_sta_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_init_bcmc_stainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_init_pwrctrl_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mp871xinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_InitSwLeds(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_drv_sw(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 2
  tail call void @r8712_free_cmd_priv(ptr noundef %cmdpriv) #4
  %evtpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 3
  tail call void @r8712_free_evt_priv(ptr noundef %evtpriv) #4
  tail call void @r8712_DeInitSwLeds(ptr noundef %padapter) #4
  %mlmepriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1
  tail call void @r8712_free_mlme_priv(ptr noundef %mlmepriv) #4
  tail call void @r8712_free_io_queue(ptr noundef %padapter) #4
  %xmitpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5
  tail call void @_free_xmit_priv(ptr noundef %xmitpriv) #4
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  tail call void @_r8712_free_sta_priv(ptr noundef %stapriv) #4
  %recvpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 6
  tail call void @_r8712_free_recv_priv(ptr noundef %recvpriv) #4
  tail call void @mp871xdeinit(ptr noundef %padapter) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_cmd_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_evt_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_DeInitSwLeds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_mlme_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_io_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xmit_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_free_sta_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_free_recv_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mp871xdeinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_open(ptr noundef %pnetdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pnetdev, i32 2304
  %mutex_start = getelementptr i8, ptr %pnetdev, i32 16204
  tail call void @mutex_lock_nested(ptr noundef %mutex_start, i32 noundef 0) #4
  %bup = getelementptr i8, ptr %pnetdev, i32 15972
  %0 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then:                                          ; preds = %entry
  %driver_stopped = getelementptr i8, ptr %pnetdev, i32 15948
  %2 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %driver_stopped, align 4
  %surprise_removed = getelementptr i8, ptr %pnetdev, i32 15949
  %3 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %surprise_removed, align 1
  %4 = ptrtoint ptr %bup to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %bup, align 4
  %call2 = tail call i32 @rtl871x_hal_init(ptr noundef %add.ptr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 1
  br i1 %cmp.not, label %if.end, label %if.then.netdev_open_error_crit_edge

if.then.netdev_open_error_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %netdev_open_error

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr @r8712_initmac, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mac_addr = getelementptr i8, ptr %pnetdev, i32 14063
  tail call void @dev_addr_mod(ptr noundef %pnetdev, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #4
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 200) #4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  tail call void @r8712_setMacAddr_cmd(ptr noundef %add.ptr.i, ptr noundef %7) #4
  %mac_addr7 = getelementptr i8, ptr %pnetdev, i32 14063
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = call ptr @memcpy(ptr %mac_addr7, ptr %9, i32 6)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %pnetdev.i = getelementptr i8, ptr %pnetdev, i32 15968
  %11 = ptrtoint ptr %pnetdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pnetdev.i, align 8
  %call.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @r8712_cmd_thread, ptr noundef %add.ptr.i, i32 noundef -1, ptr noundef nonnull @.str.5, ptr noundef %12) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %start_drv_threads.exit, label %if.end14

start_drv_threads.exit:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %cmd_thread.i = getelementptr i8, ptr %pnetdev, i32 15956
  %13 = ptrtoint ptr %cmd_thread.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %cmd_thread.i, align 4
  br label %netdev_open_error

if.end14:                                         ; preds = %if.end10
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #4
  %cmd_thread.i71 = getelementptr i8, ptr %pnetdev, i32 15956
  %14 = ptrtoint ptr %cmd_thread.i71 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %cmd_thread.i71, align 4
  %inirp_init = getelementptr i8, ptr %pnetdev, i32 2316
  %15 = ptrtoint ptr %inirp_init to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inirp_init, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.end14.netdev_open_error_crit_edge, label %if.else17

if.end14.netdev_open_error_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %netdev_open_error

if.else17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 %16(ptr noundef %add.ptr.i) #4
  %power_mgnt = getelementptr i8, ptr %pnetdev, i32 11809
  %17 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %power_mgnt, align 1
  %conv = zext i8 %18 to i32
  %smart_ps = getelementptr i8, ptr %pnetdev, i32 11808
  %19 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %smart_ps, align 8
  %conv23 = zext i8 %20 to i32
  tail call void @r8712_set_ps_mode(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef %conv23) #4
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %entry.if.end24_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  br label %if.end28

if.else27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @netif_tx_wake_queue(ptr noundef %22) #4
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %25 = load i32, ptr @video_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool29.not = icmp eq i32 %25, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %26 = load i32, ptr @cbw40_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %spec.select.i = select i1 %tobool.not.i, i32 -201325312, i32 -201324800
  %call.i68 = tail call zeroext i8 @r8712_fw_cmd(ptr noundef %add.ptr.i, i32 noundef %spec.select.i) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %sitesurvey_ctrl_timer.i = getelementptr i8, ptr %pnetdev, i32 3520
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %27, 500
  %call1.i = tail call i32 @mod_timer(ptr noundef %sitesurvey_ctrl_timer.i, i32 noundef %add.i) #4
  %wdg_timer.i = getelementptr i8, ptr %pnetdev, i32 3788
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add4.i = add i32 %28, 200
  %call5.i = tail call i32 @mod_timer(ptr noundef %wdg_timer.i, i32 noundef %add4.i) #4
  %LedControlHandler = getelementptr i8, ptr %pnetdev, i32 14860
  %29 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %LedControlHandler, align 4
  tail call void %30(ptr noundef %add.ptr.i, i32 noundef 3) #4
  br label %cleanup

netdev_open_error:                                ; preds = %if.end14.netdev_open_error_crit_edge, %start_drv_threads.exit, %if.then.netdev_open_error_crit_edge
  %31 = ptrtoint ptr %bup to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bup, align 4
  tail call void @netif_carrier_off(ptr noundef %pnetdev) #4
  %_tx.i.i69 = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i69, align 128
  %state.i.i70 = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i70) #4
  br label %cleanup

cleanup:                                          ; preds = %netdev_open_error, %if.end31
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -1, %netdev_open_error ]
  tail call void @mutex_unlock(ptr noundef %mutex_start) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_close(ptr noundef %pnetdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pnetdev, i32 2304
  %LedControlHandler = getelementptr i8, ptr %pnetdev, i32 14860
  %0 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %LedControlHandler, align 4
  tail call void %1(ptr noundef %add.ptr.i, i32 noundef 7) #4
  tail call void @msleep(i32 noundef 200) #4
  %tobool.not = icmp eq ptr %pnetdev, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  tail call void @r8712_disassoc_cmd(ptr noundef %add.ptr.i) #4
  tail call void @r8712_ind_disconnect(ptr noundef %add.ptr.i) #4
  tail call void @r8712_free_assoc_resources(ptr noundef %add.ptr.i) #4
  tail call void @r8712_free_network_queue(ptr noundef %add.ptr.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_xmit_entry(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_net_set_mac_address(ptr noundef %pnetdev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bup = getelementptr i8, ptr %pnetdev, i32 15972
  %0 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %pnetdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r871x_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @r871x_net_get_stats(ptr noundef %pnetdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pkts = getelementptr i8, ptr %pnetdev, i32 4936
  %0 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_pkts, align 8
  %conv = trunc i64 %1 to i32
  %stats = getelementptr i8, ptr %pnetdev, i32 15976
  %tx_packets = getelementptr i8, ptr %pnetdev, i32 15980
  %2 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %tx_packets, align 4
  %rx_pkts = getelementptr i8, ptr %pnetdev, i32 5544
  %3 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_pkts, align 4
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %stats, align 8
  %tx_drop = getelementptr i8, ptr %pnetdev, i32 4944
  %6 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_drop, align 8
  %tx_dropped = getelementptr i8, ptr %pnetdev, i32 16004
  %8 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_dropped, align 4
  %rx_drop = getelementptr i8, ptr %pnetdev, i32 5548
  %9 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_drop, align 4
  %rx_dropped = getelementptr i8, ptr %pnetdev, i32 16000
  %11 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rx_dropped, align 8
  %tx_bytes = getelementptr i8, ptr %pnetdev, i32 4932
  %12 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bytes, align 4
  %tx_bytes5 = getelementptr i8, ptr %pnetdev, i32 15988
  %14 = ptrtoint ptr %tx_bytes5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_bytes5, align 4
  %rx_bytes = getelementptr i8, ptr %pnetdev, i32 5540
  %15 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_bytes, align 4
  %rx_bytes7 = getelementptr i8, ptr %pnetdev, i32 15984
  %17 = ptrtoint ptr %rx_bytes7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rx_bytes7, align 8
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl871x_hal_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_setMacAddr_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_set_ps_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_cmd_thread(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_fw_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_disassoc_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_ind_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_assoc_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_network_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_init_registrypriv_dev_network(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_update_registrypriv_dev_network(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !74, !76, !78, !79, !80, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__UNIQUE_ID_file339, !1, !"__UNIQUE_ID_file339", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_license340, !1, !"__UNIQUE_ID_license340", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description341, !4, !"__UNIQUE_ID_description341", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 30, i32 1}
!5 = !{ptr @__UNIQUE_ID_author342, !6, !"__UNIQUE_ID_author342", i1 false, i1 false}
!6 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 31, i32 1}
!7 = !{ptr @__param_ifname, !8, !"__param_ifname", i1 false, i1 false}
!8 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 88, i32 1}
!9 = !{ptr @__UNIQUE_ID_ifnametype343, !8, !"__UNIQUE_ID_ifnametype343", i1 false, i1 false}
!10 = !{ptr @__param_wifi_test, !11, !"__param_wifi_test", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 89, i32 1}
!12 = !{ptr @__UNIQUE_ID_wifi_testtype344, !11, !"__UNIQUE_ID_wifi_testtype344", i1 false, i1 false}
!13 = !{ptr @__param_initmac, !14, !"__param_initmac", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 90, i32 1}
!15 = !{ptr @__UNIQUE_ID_initmactype345, !14, !"__UNIQUE_ID_initmactype345", i1 false, i1 false}
!16 = !{ptr @__param_video_mode, !17, !"__param_video_mode", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 91, i32 1}
!18 = !{ptr @__UNIQUE_ID_video_modetype346, !17, !"__UNIQUE_ID_video_modetype346", i1 false, i1 false}
!19 = !{ptr @__param_chip_version, !20, !"__param_chip_version", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 92, i32 1}
!21 = !{ptr @__UNIQUE_ID_chip_versiontype347, !20, !"__UNIQUE_ID_chip_versiontype347", i1 false, i1 false}
!22 = !{ptr @__param_rfintfs, !23, !"__param_rfintfs", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 93, i32 1}
!24 = !{ptr @__UNIQUE_ID_rfintfstype348, !23, !"__UNIQUE_ID_rfintfstype348", i1 false, i1 false}
!25 = !{ptr @__param_lbkmode, !26, !"__param_lbkmode", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 94, i32 1}
!27 = !{ptr @__UNIQUE_ID_lbkmodetype349, !26, !"__UNIQUE_ID_lbkmodetype349", i1 false, i1 false}
!28 = !{ptr @__param_hci, !29, !"__param_hci", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 95, i32 1}
!30 = !{ptr @__UNIQUE_ID_hcitype350, !29, !"__UNIQUE_ID_hcitype350", i1 false, i1 false}
!31 = !{ptr @__param_network_mode, !32, !"__param_network_mode", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 96, i32 1}
!33 = !{ptr @__UNIQUE_ID_network_modetype351, !32, !"__UNIQUE_ID_network_modetype351", i1 false, i1 false}
!34 = !{ptr @__param_channel, !35, !"__param_channel", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 97, i32 1}
!36 = !{ptr @__UNIQUE_ID_channeltype352, !35, !"__UNIQUE_ID_channeltype352", i1 false, i1 false}
!37 = !{ptr @__param_mp_mode, !38, !"__param_mp_mode", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 98, i32 1}
!39 = !{ptr @__UNIQUE_ID_mp_modetype353, !38, !"__UNIQUE_ID_mp_modetype353", i1 false, i1 false}
!40 = !{ptr @__param_wmm_enable, !41, !"__param_wmm_enable", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 99, i32 1}
!42 = !{ptr @__UNIQUE_ID_wmm_enabletype354, !41, !"__UNIQUE_ID_wmm_enabletype354", i1 false, i1 false}
!43 = !{ptr @__param_vrtl_carrier_sense, !44, !"__param_vrtl_carrier_sense", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 100, i32 1}
!45 = !{ptr @__UNIQUE_ID_vrtl_carrier_sensetype355, !44, !"__UNIQUE_ID_vrtl_carrier_sensetype355", i1 false, i1 false}
!46 = !{ptr @__param_vcs_type, !47, !"__param_vcs_type", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 101, i32 1}
!48 = !{ptr @__UNIQUE_ID_vcs_typetype356, !47, !"__UNIQUE_ID_vcs_typetype356", i1 false, i1 false}
!49 = !{ptr @__param_busy_thresh, !50, !"__param_busy_thresh", i1 false, i1 false}
!50 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 102, i32 1}
!51 = !{ptr @__UNIQUE_ID_busy_threshtype357, !50, !"__UNIQUE_ID_busy_threshtype357", i1 false, i1 false}
!52 = !{ptr @__param_ht_enable, !53, !"__param_ht_enable", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 103, i32 1}
!54 = !{ptr @__UNIQUE_ID_ht_enabletype358, !53, !"__UNIQUE_ID_ht_enabletype358", i1 false, i1 false}
!55 = !{ptr @__param_cbw40_enable, !56, !"__param_cbw40_enable", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 104, i32 1}
!57 = !{ptr @__UNIQUE_ID_cbw40_enabletype359, !56, !"__UNIQUE_ID_cbw40_enabletype359", i1 false, i1 false}
!58 = !{ptr @__param_ampdu_enable, !59, !"__param_ampdu_enable", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 105, i32 1}
!60 = !{ptr @__UNIQUE_ID_ampdu_enabletype360, !59, !"__UNIQUE_ID_ampdu_enabletype360", i1 false, i1 false}
!61 = !{ptr @__param_rf_config, !62, !"__param_rf_config", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 106, i32 1}
!63 = !{ptr @__UNIQUE_ID_rf_configtype361, !62, !"__UNIQUE_ID_rf_configtype361", i1 false, i1 false}
!64 = !{ptr @__param_power_mgnt, !65, !"__param_power_mgnt", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 107, i32 1}
!66 = !{ptr @__UNIQUE_ID_power_mgnttype362, !65, !"__UNIQUE_ID_power_mgnttype362", i1 false, i1 false}
!67 = !{ptr @__param_low_power, !68, !"__param_low_power", i1 false, i1 false}
!68 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 108, i32 1}
!69 = !{ptr @__UNIQUE_ID_low_powertype363, !68, !"__UNIQUE_ID_low_powertype363", i1 false, i1 false}
!70 = !{ptr @__UNIQUE_ID_ifname364, !71, !"__UNIQUE_ID_ifname364", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 110, i32 1}
!72 = !{ptr @__UNIQUE_ID_initmac365, !73, !"__UNIQUE_ID_initmac365", i1 false, i1 false}
!73 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 111, i32 1}
!74 = !{ptr @.str, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 206, i32 19}
!76 = !{ptr @.str.1, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 211, i32 2}
!78 = !{ptr @.str.2, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.3, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @r8712_init_netdev._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @r8712_init_netdev._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @r8712_init_drv_sw.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 315, i32 2}
!84 = !{ptr @.str.4, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mp_mode, !86, !"mp_mode", i1 false, i1 false}
!86 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 64, i32 12}
!87 = !{ptr @wmm_enable, !88, !"wmm_enable", i1 false, i1 false}
!88 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 68, i32 12}
!89 = !{ptr @low_power, !90, !"low_power", i1 false, i1 false}
!90 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 79, i32 12}
!91 = !{ptr @r8712_initmac, !92, !"r8712_initmac", i1 false, i1 false}
!92 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 81, i32 7}
!93 = !{ptr @initmac, !94, !"initmac", i1 false, i1 false}
!94 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 82, i32 14}
!95 = !{ptr @wifi_test, !96, !"wifi_test", i1 false, i1 false}
!96 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 86, i32 12}
!97 = !{ptr @__param_str_ifname, !8, !"__param_str_ifname", i1 false, i1 false}
!98 = !{ptr @__param_string_ifname, !8, !"__param_string_ifname", i1 false, i1 false}
!99 = !{ptr @__param_str_wifi_test, !11, !"__param_str_wifi_test", i1 false, i1 false}
!100 = !{ptr @__param_str_initmac, !14, !"__param_str_initmac", i1 false, i1 false}
!101 = !{ptr @__param_str_video_mode, !17, !"__param_str_video_mode", i1 false, i1 false}
!102 = !{ptr @video_mode, !103, !"video_mode", i1 false, i1 false}
!103 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 44, i32 12}
!104 = !{ptr @__param_str_chip_version, !20, !"__param_str_chip_version", i1 false, i1 false}
!105 = !{ptr @chip_version, !106, !"chip_version", i1 false, i1 false}
!106 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 36, i32 12}
!107 = !{ptr @__param_str_rfintfs, !23, !"__param_str_rfintfs", i1 false, i1 false}
!108 = !{ptr @rfintfs, !109, !"rfintfs", i1 false, i1 false}
!109 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 37, i32 12}
!110 = !{ptr @__param_str_lbkmode, !26, !"__param_str_lbkmode", i1 false, i1 false}
!111 = !{ptr @lbkmode, !112, !"lbkmode", i1 false, i1 false}
!112 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 38, i32 12}
!113 = !{ptr @__param_str_hci, !29, !"__param_str_hci", i1 false, i1 false}
!114 = !{ptr @hci, !115, !"hci", i1 false, i1 false}
!115 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 39, i32 12}
!116 = !{ptr @__param_str_network_mode, !32, !"__param_str_network_mode", i1 false, i1 false}
!117 = !{ptr @network_mode, !118, !"network_mode", i1 false, i1 false}
!118 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 47, i32 12}
!119 = !{ptr @__param_str_channel, !35, !"__param_str_channel", i1 false, i1 false}
!120 = !{ptr @channel, !121, !"channel", i1 false, i1 false}
!121 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 48, i32 12}
!122 = !{ptr @__param_str_mp_mode, !38, !"__param_str_mp_mode", i1 false, i1 false}
!123 = !{ptr @__param_str_wmm_enable, !41, !"__param_str_wmm_enable", i1 false, i1 false}
!124 = !{ptr @__param_str_vrtl_carrier_sense, !44, !"__param_str_vrtl_carrier_sense", i1 false, i1 false}
!125 = !{ptr @vrtl_carrier_sense, !126, !"vrtl_carrier_sense", i1 false, i1 false}
!126 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 50, i32 12}
!127 = !{ptr @__param_str_vcs_type, !47, !"__param_str_vcs_type", i1 false, i1 false}
!128 = !{ptr @vcs_type, !129, !"vcs_type", i1 false, i1 false}
!129 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 51, i32 12}
!130 = !{ptr @__param_str_busy_thresh, !50, !"__param_str_busy_thresh", i1 false, i1 false}
!131 = !{ptr @busy_thresh, !132, !"busy_thresh", i1 false, i1 false}
!132 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 62, i32 12}
!133 = !{ptr @__param_str_ht_enable, !53, !"__param_str_ht_enable", i1 false, i1 false}
!134 = !{ptr @ht_enable, !135, !"ht_enable", i1 false, i1 false}
!135 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 76, i32 12}
!136 = !{ptr @__param_str_cbw40_enable, !56, !"__param_str_cbw40_enable", i1 false, i1 false}
!137 = !{ptr @cbw40_enable, !138, !"cbw40_enable", i1 false, i1 false}
!138 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 77, i32 12}
!139 = !{ptr @__param_str_ampdu_enable, !59, !"__param_str_ampdu_enable", i1 false, i1 false}
!140 = !{ptr @ampdu_enable, !141, !"ampdu_enable", i1 false, i1 false}
!141 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 40, i32 12}
!142 = !{ptr @__param_str_rf_config, !62, !"__param_str_rf_config", i1 false, i1 false}
!143 = !{ptr @rf_config, !144, !"rf_config", i1 false, i1 false}
!144 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 78, i32 12}
!145 = !{ptr @__param_str_power_mgnt, !65, !"__param_str_power_mgnt", i1 false, i1 false}
!146 = !{ptr @power_mgnt, !147, !"power_mgnt", i1 false, i1 false}
!147 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 58, i32 12}
!148 = !{ptr @__param_str_low_power, !68, !"__param_str_low_power", i1 false, i1 false}
!149 = !{ptr @ifname, !150, !"ifname", i1 false, i1 false}
!150 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 33, i32 13}
!151 = !{ptr @rtl8712_netdev_ops, !152, !"rtl8712_netdev_ops", i1 false, i1 false}
!152 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 188, i32 36}
!153 = !{ptr @.str.5, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 224, i32 25}
!155 = !{ptr @.str.6, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 125, i32 34}
!157 = distinct !{null, !158, !"wireless_mode", i1 false, i1 false}
!158 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 49, i32 12}
!159 = distinct !{null, !160, !"frag_thresh", i1 false, i1 false}
!160 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 52, i32 12}
!161 = distinct !{null, !162, !"preamble", i1 false, i1 false}
!162 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 53, i32 12}
!163 = distinct !{null, !164, !"scan_mode", i1 false, i1 false}
!164 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 54, i32 12}
!165 = distinct !{null, !166, !"adhoc_tx_pwr", i1 false, i1 false}
!166 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 55, i32 12}
!167 = distinct !{null, !168, !"soft_ap", i1 false, i1 false}
!168 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 56, i32 12}
!169 = distinct !{null, !170, !"smart_ps", i1 false, i1 false}
!170 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 57, i32 12}
!171 = distinct !{null, !172, !"radio_enable", i1 false, i1 false}
!172 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 59, i32 12}
!173 = distinct !{null, !174, !"long_retry_lmt", i1 false, i1 false}
!174 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 60, i32 12}
!175 = distinct !{null, !176, !"short_retry_lmt", i1 false, i1 false}
!176 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 61, i32 12}
!177 = distinct !{null, !178, !"ack_policy", i1 false, i1 false}
!178 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 63, i32 12}
!179 = distinct !{null, !180, !"software_encrypt", i1 false, i1 false}
!180 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 65, i32 12}
!181 = distinct !{null, !182, !"software_decrypt", i1 false, i1 false}
!182 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 66, i32 12}
!183 = distinct !{null, !184, !"uapsd_enable", i1 false, i1 false}
!184 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 69, i32 12}
!185 = distinct !{null, !186, !"uapsd_max_sp", i1 false, i1 false}
!186 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 70, i32 12}
!187 = distinct !{null, !188, !"uapsd_acbk_en", i1 false, i1 false}
!188 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 71, i32 12}
!189 = distinct !{null, !190, !"uapsd_acbe_en", i1 false, i1 false}
!190 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 72, i32 12}
!191 = distinct !{null, !192, !"uapsd_acvi_en", i1 false, i1 false}
!192 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 73, i32 12}
!193 = distinct !{null, !194, !"uapsd_acvo_en", i1 false, i1 false}
!194 = !{!"../drivers/staging/rtl8712/os_intfs.c", i32 74, i32 12}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
