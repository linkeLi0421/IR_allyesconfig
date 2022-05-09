; ModuleID = '/llk/IR_all_yes/drivers/staging/ks7010/ks_wlan_net.c_pt.bc'
source_filename = "../drivers/staging/ks7010/ks_wlan_net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.ks_wlan_private = type { ptr, ptr, %struct.delayed_work, %struct.tasklet_struct, ptr, %struct.net_device_stats, %struct.iw_statistics, %struct.completion, %struct.tx_device, %struct.rx_device, %struct.sme_info, ptr, i32, %struct.tasklet_struct, %struct.work_struct, i32, [6 x i8], %struct.local_aplist, %struct.local_ap, %struct.power_save_status, %struct.sleep_status, %struct.wpa_status, %struct.pmk_list, %struct.ks_wlan_parameter, i8, [33 x i8], %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, [20 x ptr], [20 x i32], [129 x i8], i32, i8, i32, ptr, i32, i32, i32, i8, [33 x i8], %struct.local_gain, %struct.wps_status, i8, i8, %struct.local_eeprom_sum, i8, %struct.hostt, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.tx_device = type { [1024 x %struct.tx_device_buffer], i32, i32, %struct.spinlock }
%struct.tx_device_buffer = type { ptr, i32, ptr, ptr }
%struct.rx_device = type { [32 x %struct.rx_device_buffer], i32, i32, %struct.spinlock }
%struct.rx_device_buffer = type { [2352 x i8], i32 }
%struct.sme_info = type { i32, [128 x i32], i32, i32, %struct.spinlock, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.0, i32 }
%union.anon.0 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.local_aplist = type { i32, [32 x %struct.local_ap] }
%struct.local_ap = type { [6 x i8], i8, i8, %struct.anon.115, %struct.anon.116, i16, i8, i8, %struct.rsn_ie, %struct.rsn_ie, %struct.wps_ie }
%struct.anon.115 = type { i8, [32 x i8], i8 }
%struct.anon.116 = type { i8, [16 x i8], i8 }
%struct.rsn_ie = type { i8, i8, [64 x i8] }
%struct.wps_ie = type { i8, i8, [255 x i8] }
%struct.power_save_status = type { %struct.atomic_t, %struct.completion, %struct.atomic_t, %struct.atomic_t }
%struct.sleep_status = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.wpa_status = type { i32, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.wpa_key], %struct.scan_ext, %struct.mic_failure }
%struct.wpa_key = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [64 x i8], [8 x i8], [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.scan_ext = type { i32, [33 x i8] }
%struct.mic_failure = type { i16, i16, i32, i32 }
%struct.pmk_list = type { i16, %struct.list_head, [8 x %struct.pmk] }
%struct.pmk = type { %struct.list_head, [6 x i8], [16 x i8] }
%struct.ks_wlan_parameter = type { i8, i8, i8, %struct.anon.117, [6 x i8], %struct.anon.118, i8, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.anon.119], i16, i16, i16, i16 }
%struct.anon.117 = type { i8, [16 x i8] }
%struct.anon.118 = type { i8, [33 x i8] }
%struct.anon.119 = type { i8, [27 x i8] }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.local_gain = type { i8, i8, i8, i8 }
%struct.wps_status = type { i32, i32, [255 x i8] }
%struct.local_eeprom_sum = type { i8, i8 }
%struct.hostt = type { [128 x i32], i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.5, [48 x i8], %union.anon.6, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.8, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { i64 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32, ptr }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.10, i32, i32, i32, i16, i16, %union.anon.12, i32, %union.anon.13, %union.anon.14, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.10 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwreq = type { %union.anon.125, %union.iwreq_data }
%union.anon.125 = type { [16 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.iw_mlme = type { i16, i16, %struct.sockaddr }
%struct.iw_scan_req = type { i8, i8, i8, i8, %struct.sockaddr, [32 x i8], i32, i32, [32 x %struct.iw_freq] }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.wep_key = type { i16, [16 x i8] }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }
%struct.iw_pmksa = type { i32, %struct.sockaddr, [16 x i8] }

@update_phyinfo = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ks_wlan_net_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@update_phyinfo_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&update_phyinfo_timer)\00", [40 x i8] zeroinitializer }, align 32
@ks_wlan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ks_wlan_open, ptr @ks_wlan_close, ptr @ks_wlan_start_xmit, ptr null, ptr null, ptr null, ptr @ks_wlan_set_rx_mode, ptr @ks_wlan_set_mac_address, ptr null, ptr @ks_wlan_netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ks_wlan_tx_timeout, ptr null, ptr null, ptr null, ptr @ks_wlan_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ks_wlan_handler_def = internal constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @ks_wlan_handler, i16 55, i16 32, i16 24, ptr @ks_wlan_private_handler, ptr @ks_wlan_private_args, ptr @ks_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@ks_wlan_update_phyinfo_timeout.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks7010\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ks_wlan_update_phyinfo_timeout\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/ks7010/ks_wlan_net.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"in_interrupt = %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ks_wlan : %s Not READY !!\0A\00", [37 x i8] zeroinitializer }, align 32
@ks_wlan_start_xmit.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 2, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ks_wlan_start_xmit\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"in_interrupt()=%ld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ks_wlan:  skb == NULL!!!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hostif_data_request error: =%d\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ks_wlan:  MAC ADDRESS = %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@ks_wlan_tx_timeout.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 2, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ks_wlan_tx_timeout\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"head(%d) tail(%d)!!\0A\00", [43 x i8] zeroinitializer }, align 32
@ks_wlan_handler = internal constant { [55 x ptr], [36 x i8] } { [55 x ptr] [ptr @ks_wlan_config_commit, ptr @ks_wlan_get_name, ptr null, ptr null, ptr @ks_wlan_set_freq, ptr @ks_wlan_get_freq, ptr @ks_wlan_set_mode, ptr @ks_wlan_get_mode, ptr null, ptr null, ptr null, ptr @ks_wlan_get_range, ptr null, ptr null, ptr null, ptr @ks_wlan_get_iwstats, ptr null, ptr null, ptr null, ptr null, ptr @ks_wlan_set_wap, ptr @ks_wlan_get_wap, ptr @ks_wlan_set_mlme, ptr @ks_wlan_get_aplist, ptr @ks_wlan_set_scan, ptr @ks_wlan_get_scan, ptr @ks_wlan_set_essid, ptr @ks_wlan_get_essid, ptr @ks_wlan_set_nick, ptr @ks_wlan_get_nick, ptr null, ptr null, ptr @ks_wlan_set_rate, ptr @ks_wlan_get_rate, ptr @ks_wlan_set_rts, ptr @ks_wlan_get_rts, ptr @ks_wlan_set_frag, ptr @ks_wlan_get_frag, ptr null, ptr null, ptr null, ptr null, ptr @ks_wlan_set_encode, ptr @ks_wlan_get_encode, ptr @ks_wlan_set_power, ptr @ks_wlan_get_power, ptr null, ptr null, ptr @ks_wlan_set_genie, ptr null, ptr @ks_wlan_set_auth_mode, ptr @ks_wlan_get_auth_mode, ptr @ks_wlan_set_encode_ext, ptr @ks_wlan_get_encode_ext, ptr @ks_wlan_set_pmksa], [36 x i8] zeroinitializer }, align 32
@ks_wlan_private_handler = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr null, ptr null, ptr null, ptr @ks_wlan_get_firmware_version, ptr @ks_wlan_set_wps_enable, ptr @ks_wlan_get_wps_enable, ptr @ks_wlan_set_wps_probe_req, ptr @ks_wlan_get_eeprom_cksum, ptr @ks_wlan_set_preamble, ptr @ks_wlan_get_preamble, ptr @ks_wlan_set_power_mgmt, ptr @ks_wlan_get_power_mgmt, ptr @ks_wlan_set_scan_type, ptr @ks_wlan_get_scan_type, ptr @ks_wlan_set_rx_gain, ptr @ks_wlan_get_rx_gain, ptr @ks_wlan_hostt, ptr null, ptr @ks_wlan_set_beacon_lost, ptr @ks_wlan_get_beacon_lost, ptr @ks_wlan_set_tx_gain, ptr @ks_wlan_get_tx_gain, ptr @ks_wlan_set_phy_type, ptr @ks_wlan_get_phy_type, ptr @ks_wlan_set_cts_mode, ptr @ks_wlan_get_cts_mode, ptr null, ptr null, ptr @ks_wlan_set_sleep_mode, ptr @ks_wlan_get_sleep_mode, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@ks_wlan_private_args = internal constant { [24 x %struct.iw_priv_args], [128 x i8] } { [24 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35811, i16 0, i16 8321, [16 x i8] c"GetFirmwareVer\00\00" }, %struct.iw_priv_args { i32 35812, i16 18433, i16 0, [16 x i8] c"SetWPSEnable\00\00\00\00" }, %struct.iw_priv_args { i32 35813, i16 0, i16 18433, [16 x i8] c"GetW\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35814, i16 6143, i16 0, [16 x i8] c"SetWPSProbeReq\00\00" }, %struct.iw_priv_args { i32 35816, i16 18433, i16 0, [16 x i8] c"SetPreamble\00\00\00\00\00" }, %struct.iw_priv_args { i32 35817, i16 0, i16 18433, [16 x i8] c"GetPreamble\00\00\00\00\00" }, %struct.iw_priv_args { i32 35818, i16 18433, i16 0, [16 x i8] c"SetPowerSave\00\00\00\00" }, %struct.iw_priv_args { i32 35819, i16 0, i16 18433, [16 x i8] c"GetPowerSave\00\00\00\00" }, %struct.iw_priv_args { i32 35820, i16 18433, i16 0, [16 x i8] c"SetScanType\00\00\00\00\00" }, %struct.iw_priv_args { i32 35821, i16 0, i16 18433, [16 x i8] c"GetScanType\00\00\00\00\00" }, %struct.iw_priv_args { i32 35822, i16 18433, i16 0, [16 x i8] c"SetRxGain\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35823, i16 0, i16 18433, [16 x i8] c"GetRxGain\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35824, i16 0, i16 8321, [16 x i8] c"hostt\00\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35826, i16 18433, i16 0, [16 x i8] c"SetBeaconLost\00\00\00" }, %struct.iw_priv_args { i32 35827, i16 0, i16 18433, [16 x i8] c"GetBeaconLost\00\00\00" }, %struct.iw_priv_args { i32 35836, i16 18433, i16 0, [16 x i8] c"SetSleepMode\00\00\00\00" }, %struct.iw_priv_args { i32 35837, i16 0, i16 18433, [16 x i8] c"GetSleepMode\00\00\00\00" }, %struct.iw_priv_args { i32 35828, i16 18433, i16 0, [16 x i8] c"SetTxGain\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35829, i16 0, i16 18433, [16 x i8] c"GetTxGain\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35830, i16 18433, i16 0, [16 x i8] c"SetPhyType\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35831, i16 0, i16 18433, [16 x i8] c"GetPhyType\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35832, i16 18433, i16 0, [16 x i8] c"SetCtsMode\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35833, i16 0, i16 18433, [16 x i8] c"GetCtsMode\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35815, i16 0, i16 18433, [16 x i8] c"GetChecksum\00\00\00\00\00" }], [128 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NOT READY!\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IEEE 802.11b\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IEEE 802.11g\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEEE 802.11b/g\00", [17 x i8] zeroinitializer }, align 32
@frequency_list = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2412, i32 2417, i32 2422, i32 2427, i32 2432, i32 2437, i32 2442, i32 2447, i32 2452, i32 2457, i32 2462, i32 2467, i32 2472, i32 2484], [40 x i8] zeroinitializer }, align 32
@ks_wlan_set_freq.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks_wlan_set_freq\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: New channel value of %d is invalid!\0A\00", [55 x i8] zeroinitializer }, align 32
@ks_wlan_set_wap.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ks_wlan_set_wap\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bssid = %pM\0A\00", [19 x i8] zeroinitializer }, align 32
@ks_wlan_translate_scan.rsn_leader = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rsn_ie=\00", [24 x i8] zeroinitializer }, align 32
@ks_wlan_translate_scan.wpa_leader = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wpa_ie=\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@ks_wlan_get_rate.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks_wlan_get_rate\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"in_interrupt = %ld update_phyinfo = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ks_wlan_update_phy_information.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.4, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ks_wlan_update_phy_information\00", [33 x i8] zeroinitializer }, align 32
@ks_wlan_update_phy_information.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wait time out!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"return=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@ks_wlan_set_wps_probe_req.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 2, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ks_wlan_set_wps_probe_req\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%d(%#x): %02X %02X %02X %02X ... %02X %02X %02X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HIF_DATA_REQ\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HIF_DATA_IND\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_MIB_GET_REQ\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HIF_MIB_GET_CONF\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_MIB_SET_REQ\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HIF_MIB_SET_CONF\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIF_POWER_MGMT_REQ\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_POWER_MGMT_CONF\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HIF_START_REQ\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HIF_START_CONF\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_CONNECT_IND\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HIF_STOP_REQ\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HIF_STOP_CONF\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIF_PS_ADH_SET_REQ\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_PS_ADH_SET_CONF\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HIF_INFRA_SET_REQ\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIF_INFRA_SET_CONF\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_ADH_SET_REQ\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HIF_ADH_SET_CONF\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HIF_AP_SET_REQ\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HIF_AP_SET_CONF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIF_ASSOC_INFO_IND\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_MIC_FAILURE_REQ\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HIF_MIC_FAILURE_CONF\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HIF_SCAN_REQ\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HIF_SCAN_CONF\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HIF_PHY_INFO_REQ\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HIF_PHY_INFO_CONF\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HIF_SLEEP_REQ\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HIF_SLEEP_CONF\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HIF_PHY_INFO_IND\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HIF_SCAN_IND\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIF_INFRA_SET2_REQ\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIF_INFRA_SET2_CONF\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HIF_ADH_SET2_REQ\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HIF_ADH_SET2_CONF\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SET_SLEEP_MODE %d error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_SLEEP_MODE %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 1000000, i64 2000000, i64 5500000, i64 11000000]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 1000000, i64 2000000, i64 5500000, i64 11000000]
@__sancov_gen_cov_switch_values.73 = internal global [14 x i64] [i64 12, i64 32, i64 1000000, i64 2000000, i64 5500000, i64 6000000, i64 9000000, i64 11000000, i64 12000000, i64 18000000, i64 24000000, i64 36000000, i64 48000000, i64 54000000]
@__sancov_gen_cov_switch_values.74 = internal global [14 x i64] [i64 12, i64 32, i64 1000000, i64 2000000, i64 5500000, i64 6000000, i64 9000000, i64 11000000, i64 12000000, i64 18000000, i64 24000000, i64 36000000, i64 48000000, i64 54000000]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 9000000, i64 11000000, i64 12000000, i64 18000000, i64 24000000]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7, i64 10]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.80 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [38 x i64] [i64 36, i64 32, i64 57345, i64 57346, i64 57347, i64 57348, i64 57349, i64 57350, i64 57351, i64 57352, i64 57353, i64 57354, i64 57355, i64 57356, i64 57357, i64 57358, i64 57359, i64 57360, i64 59393, i64 59394, i64 59395, i64 59396, i64 59397, i64 59398, i64 59399, i64 59400, i64 59401, i64 59402, i64 59403, i64 59404, i64 59405, i64 59406, i64 59407, i64 59408, i64 59409, i64 59410, i64 59411, i64 59412]
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"update_phyinfo\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 57, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"update_phyinfo_timer\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 58, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2624, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"ks_wlan_netdev_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2602, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c"ks_wlan_handler_def\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2446, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 94, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2579, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2521, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2524, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2539, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2498, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2507, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"ks_wlan_handler\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2373, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"ks_wlan_private_handler\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2411, i32 25 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"ks_wlan_private_args\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2321, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 161, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 163, i32 23 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 165, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 167, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"frequency_list\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 31, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 204, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 326, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"rsn_leader\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1185, i32 20 }
@___asan_gen_.180 = private unnamed_addr constant [11 x i8] c"wpa_leader\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1186, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1163, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 639, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 64, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 81, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 230, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 214, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 156, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2080, i32 19 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2106, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2194, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2197, i32 20 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2200, i32 20 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2203, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2206, i32 20 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2209, i32 20 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2212, i32 20 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2215, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2218, i32 20 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2221, i32 20 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2224, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2227, i32 20 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2230, i32 20 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2233, i32 20 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2236, i32 20 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2239, i32 20 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2242, i32 20 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2245, i32 20 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2248, i32 20 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2251, i32 20 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2254, i32 20 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2257, i32 20 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2260, i32 20 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2263, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2266, i32 20 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2269, i32 20 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2272, i32 20 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2275, i32 20 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2278, i32 20 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2281, i32 20 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2284, i32 20 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2287, i32 20 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2290, i32 20 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2293, i32 20 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2296, i32 20 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2299, i32 20 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2026, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private constant [40 x i8] c"../drivers/staging/ks7010/ks_wlan_net.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 2031, i32 19 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @update_phyinfo, ptr @ks_wlan_net_start.__key, ptr @update_phyinfo_timer, ptr @.str, ptr @ks_wlan_netdev_ops, ptr @ks_wlan_handler_def, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ks_wlan_handler, ptr @ks_wlan_private_handler, ptr @ks_wlan_private_args, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @frequency_list, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ks_wlan_translate_scan.rsn_leader, ptr @ks_wlan_translate_scan.wpa_leader, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_phyinfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_wlan_net_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_phyinfo_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_wlan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_wlan_handler_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_wlan_handler to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_wlan_private_handler to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_wlan_private_args to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frequency_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_wlan_translate_scan.rsn_leader to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_wlan_translate_scan.wpa_leader to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ks_wlan_setup_parameter(ptr noundef %priv, i32 noundef %commit_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 20) #18
  %and = and i32 %commit_flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 21) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %commit_flag, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 22) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %commit_flag, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 23) #18
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %and9 = and i32 %commit_flag, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 24) #18
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %and13 = and i32 %commit_flag, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 25) #18
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %and17 = and i32 %commit_flag, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 26) #18
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %and21 = and i32 %commit_flag, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 27) #18
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %and25 = and i32 %commit_flag, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 28) #18
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %and29 = and i32 %commit_flag, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end32_crit_edge, label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 32) #18
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 33) #18
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  %and33 = and i32 %commit_flag, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end36_crit_edge, label %if.then35

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 30) #18
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %and37 = and i32 %commit_flag, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 29) #18
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %and41 = and i32 %commit_flag, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 31) #18
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 40) #18
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 41) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostif_sme_enqueue(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @send_packet_complete(ptr nocapture noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_packets = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_packets, align 4
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_tx_wake_queue(ptr noundef %5) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @consume_skb(ptr noundef nonnull %skb) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ks_wlan_net_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_address_valid = getelementptr i8, ptr %dev, i32 111760
  %0 = ptrtoint ptr %mac_address_valid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mac_address_valid, align 4
  %is_device_open = getelementptr i8, ptr %dev, i32 111448
  %1 = ptrtoint ptr %is_device_open to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %is_device_open, align 4
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %2 = ptrtoint ptr %need_commit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %need_commit, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @update_phyinfo, i32 noundef 4) #18
  store volatile i32 0, ptr @update_phyinfo, align 4
  tail call void @init_timer_key(ptr noundef nonnull @update_phyinfo_timer, ptr noundef nonnull @ks_wlan_update_phyinfo_timeout, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @ks_wlan_net_start.__key) #18
  %eth_addr = getelementptr i8, ptr %dev, i32 95152
  %3 = ptrtoint ptr %eth_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 779008, ptr %eth_addr, align 4
  %add.ptr1.i = getelementptr i8, ptr %dev, i32 95156
  %4 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %add.ptr1.i, align 2
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %eth_addr, i32 noundef 6) #18
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ks_wlan_netdev_ops, ptr %netdev_ops, align 8
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 42
  %6 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ks_wlan_handler_def, ptr %wireless_handlers, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %7 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 300, ptr %watchdog_timeo, align 4
  tail call void @netif_carrier_off(ptr noundef %dev) #18
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_wlan_update_phyinfo_timeout(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_update_phyinfo_timeout.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_update_phyinfo_timeout, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i9 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i9 to ptr
  %preempt_count.i10 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i10, align 4
  %and5 = and i32 %7, 983040
  %or = or i32 %and5, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i11 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i11 to ptr
  %preempt_count.i12 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i12, align 4
  %and7 = and i32 %11, 65280
  %or8 = or i32 %or, %and7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ks_wlan_update_phyinfo_timeout.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.4, i32 noundef %or8) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @update_phyinfo, i32 noundef 4) #18
  store volatile i32 0, ptr @update_phyinfo, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ks_wlan_net_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %is_device_open = getelementptr i8, ptr %dev, i32 111448
  %0 = ptrtoint ptr %is_device_open to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_device_open, align 4
  %call1 = tail call i32 @del_timer_sync(ptr noundef nonnull @update_phyinfo_timer) #18
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_connect_status(i32 noundef %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_disconnect_status(i32 noundef %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_rx = getelementptr i8, ptr %dev, i32 111772
  %0 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_rx, align 4
  %mac_address_valid = getelementptr i8, ptr %dev, i32 111760
  %1 = ptrtoint ptr %mac_address_valid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mac_address_valid, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %dev) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_start_xmit.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_start_xmit, %if.then)) #18
          to label %do.end12 [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i36 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i36 to ptr
  %preempt_count.i37 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i37, align 4
  %and7 = and i32 %7, 983040
  %or = or i32 %and7, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i38 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i38 to ptr
  %preempt_count.i39 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i39, align 4
  %and9 = and i32 %11, 65280
  %or10 = or i32 %or, %and9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_start_xmit.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %or10) #18
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry
  %tobool13.not = icmp eq ptr %skb, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #21
  br label %cleanup

if.end15:                                         ; preds = %do.end12
  %dev_state = getelementptr i8, ptr %dev, i32 111764
  %12 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp = icmp slt i32 %13, 5
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @consume_skb(ptr noundef nonnull %skb) #18
  br label %cleanup

if.end17:                                         ; preds = %if.end15
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %call21 = tail call i32 @hostif_data_request(ptr noundef %add.ptr.i, ptr noundef nonnull %skb) #18
  %_tx.i.i40 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i40, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 12
  %21 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp.not.i.i = icmp eq i32 %22, %20
  br i1 %cmp.not.i.i, label %if.end20.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end20.netif_trans_update.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %20, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end20.netif_trans_update.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %netif_trans_update.exit.cleanup_crit_edge, label %if.then23

netif_trans_update.exit.cleanup_crit_edge:        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then23:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call21) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %netif_trans_update.exit.cleanup_crit_edge, %if.then16, %if.then14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_wlan_set_rx_mode(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr i8, ptr %dev, i32 111764
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_mac_address(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #18
  %eth_addr = getelementptr i8, ptr %dev, i32 95152
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = ptrtoint ptr %eth_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %eth_addr, align 4
  %add.ptr.i15 = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i15, align 2
  %add.ptr1.i = getelementptr i8, ptr %dev, i32 95156
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  %mac_address_valid = getelementptr i8, ptr %dev, i32 111760
  %8 = ptrtoint ptr %mac_address_valid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mac_address_valid, align 4
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 2) #18
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %eth_addr) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_netdev_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %rq, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 35828, i32 %cmd)
  %cond = icmp eq i32 %cmd, 35828
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode.i = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %u = getelementptr inbounds %struct.iwreq, ptr %rq, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end3.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i.i, i16 noundef zeroext 20) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end3.i, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %if.end3.i ], [ -1, %sw.bb.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_wlan_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_tx_timeout.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_tx_timeout, %if.then)) #18
          to label %do.end7 [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %qhead = getelementptr i8, ptr %dev, i32 19004
  %0 = ptrtoint ptr %qhead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qhead, align 4
  %qtail = getelementptr i8, ptr %dev, i32 19008
  %2 = ptrtoint ptr %qtail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qtail, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_tx_timeout.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %3) #18
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then9, label %do.end7.if.end10_crit_edge

do.end7.if.end10_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end7.if.end10_crit_edge
  %tx_errors = getelementptr i8, ptr %dev, i32 2460
  %8 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_errors, align 4
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %11) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ks_wlan_get_stats(ptr noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr i8, ptr %dev, i32 111764
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp slt i32 %1, 5
  %nstats = getelementptr i8, ptr %dev, i32 2440
  %retval.0 = select i1 %cmp, ptr null, ptr %nstats
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostif_data_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ks_get_wireless_stats(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %wstats1 = getelementptr i8, ptr %dev, i32 2532
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @update_phyinfo, i32 noundef 4) #18
  %0 = load volatile i32, ptr @update_phyinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev_state = getelementptr i8, ptr %dev, i32 111764
  %1 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp slt i32 %2, 5
  %spec.select = select i1 %cmp, ptr null, ptr %wstats1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %discard = getelementptr i8, ptr %dev, i32 2540
  %3 = call ptr @memset(ptr %discard, i32 0, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %wstats1, %if.end ], [ %spec.select, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_config_commit(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %zwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %0 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %need_commit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call2 = tail call i32 @ks_wlan_setup_parameter(ptr noundef %add.ptr.i, i32 noundef %1)
  %2 = ptrtoint ptr %need_commit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr noundef %cwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_state = getelementptr i8, ptr %dev, i32 111764
  %2 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp2 = icmp slt i32 %3, 5
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.else

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %phy_type = getelementptr i8, ptr %dev, i32 111262
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phy_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %switch.selectcmp = icmp eq i16 %5, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.15, ptr @.str.16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.selectcmp33 = icmp eq i16 %5, 0
  %switch.select34 = select i1 %switch.selectcmp33, ptr @.str.14, ptr %switch.select
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.end.cleanup.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.13, %if.end.cleanup.sink.split_crit_edge ], [ %switch.select34, %if.else ]
  %call5 = tail call i32 @strscpy(ptr noundef %cwrq, ptr noundef nonnull %.str.13.sink, i32 noundef 16) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_freq(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %fwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %e = getelementptr inbounds %struct.iw_freq, ptr %fwrq, i32 0, i32 1
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp3 = icmp eq i16 %3, 1
  %4 = ptrtoint ptr %fwrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwrq, align 4
  %6 = add i32 %5, -241200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 7500001, i32 %6)
  %7 = icmp ult i32 %6, 7500001
  %or.cond = select i1 %cmp3, i1 %7, i1 false
  br i1 %or.cond, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end
  %.off = add nsw i32 %5, -241200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off)
  %8 = icmp ult i32 %.off, 100000
  br i1 %8, label %if.then11.lor.lhs.false.thread_crit_edge, label %while.body

if.then11.lor.lhs.false.thread_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body:                                       ; preds = %if.then11
  %.off72 = add nsw i32 %5, -241700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off72)
  %9 = icmp ult i32 %.off72, 100000
  br i1 %9, label %while.body.lor.lhs.false.thread_crit_edge, label %while.body.1

while.body.lor.lhs.false.thread_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.1:                                     ; preds = %while.body
  %.off73 = add nsw i32 %5, -242200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off73)
  %10 = icmp ult i32 %.off73, 100000
  br i1 %10, label %while.body.1.lor.lhs.false.thread_crit_edge, label %while.body.2

while.body.1.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.2:                                     ; preds = %while.body.1
  %.off74 = add nsw i32 %5, -242700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off74)
  %11 = icmp ult i32 %.off74, 100000
  br i1 %11, label %while.body.2.lor.lhs.false.thread_crit_edge, label %while.body.3

while.body.2.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.3:                                     ; preds = %while.body.2
  %.off75 = add nsw i32 %5, -243200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off75)
  %12 = icmp ult i32 %.off75, 100000
  br i1 %12, label %while.body.3.lor.lhs.false.thread_crit_edge, label %while.body.4

while.body.3.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.4:                                     ; preds = %while.body.3
  %.off76 = add nsw i32 %5, -243700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off76)
  %13 = icmp ult i32 %.off76, 100000
  br i1 %13, label %while.body.4.lor.lhs.false.thread_crit_edge, label %while.body.5

while.body.4.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.5:                                     ; preds = %while.body.4
  %.off77 = add nsw i32 %5, -244200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off77)
  %14 = icmp ult i32 %.off77, 100000
  br i1 %14, label %while.body.5.lor.lhs.false.thread_crit_edge, label %while.body.6

while.body.5.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.6:                                     ; preds = %while.body.5
  %.off78 = add nsw i32 %5, -244700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off78)
  %15 = icmp ult i32 %.off78, 100000
  br i1 %15, label %while.body.6.lor.lhs.false.thread_crit_edge, label %while.body.7

while.body.6.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.7:                                     ; preds = %while.body.6
  %.off79 = add nsw i32 %5, -245200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off79)
  %16 = icmp ult i32 %.off79, 100000
  br i1 %16, label %while.body.7.lor.lhs.false.thread_crit_edge, label %while.body.8

while.body.7.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.8:                                     ; preds = %while.body.7
  %.off80 = add nsw i32 %5, -245700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off80)
  %17 = icmp ult i32 %.off80, 100000
  br i1 %17, label %while.body.8.lor.lhs.false.thread_crit_edge, label %while.body.9

while.body.8.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.9:                                     ; preds = %while.body.8
  %.off81 = add nsw i32 %5, -246200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off81)
  %18 = icmp ult i32 %.off81, 100000
  br i1 %18, label %while.body.9.lor.lhs.false.thread_crit_edge, label %while.body.10

while.body.9.lor.lhs.false.thread_crit_edge:      ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.10:                                    ; preds = %while.body.9
  %.off82 = add nsw i32 %5, -246700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off82)
  %19 = icmp ult i32 %.off82, 100000
  br i1 %19, label %while.body.10.lor.lhs.false.thread_crit_edge, label %while.body.11

while.body.10.lor.lhs.false.thread_crit_edge:     ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.11:                                    ; preds = %while.body.10
  %.off83 = add nsw i32 %5, -247200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off83)
  %20 = icmp ult i32 %.off83, 100000
  br i1 %20, label %while.body.11.lor.lhs.false.thread_crit_edge, label %while.body.12

while.body.11.lor.lhs.false.thread_crit_edge:     ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.thread

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #20
  %.off84 = add nsw i32 %5, -248400000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off84)
  %21 = icmp ult i32 %.off84, 100000
  %spec.select = select i1 %21, i32 14, i32 15
  br label %lor.lhs.false.thread

lor.lhs.false.thread:                             ; preds = %while.body.12, %while.body.11.lor.lhs.false.thread_crit_edge, %while.body.10.lor.lhs.false.thread_crit_edge, %while.body.9.lor.lhs.false.thread_crit_edge, %while.body.8.lor.lhs.false.thread_crit_edge, %while.body.7.lor.lhs.false.thread_crit_edge, %while.body.6.lor.lhs.false.thread_crit_edge, %while.body.5.lor.lhs.false.thread_crit_edge, %while.body.4.lor.lhs.false.thread_crit_edge, %while.body.3.lor.lhs.false.thread_crit_edge, %while.body.2.lor.lhs.false.thread_crit_edge, %while.body.1.lor.lhs.false.thread_crit_edge, %while.body.lor.lhs.false.thread_crit_edge, %if.then11.lor.lhs.false.thread_crit_edge
  %c.0.lcssa = phi i32 [ 1, %if.then11.lor.lhs.false.thread_crit_edge ], [ 2, %while.body.lor.lhs.false.thread_crit_edge ], [ 3, %while.body.1.lor.lhs.false.thread_crit_edge ], [ 4, %while.body.2.lor.lhs.false.thread_crit_edge ], [ 5, %while.body.3.lor.lhs.false.thread_crit_edge ], [ 6, %while.body.4.lor.lhs.false.thread_crit_edge ], [ 7, %while.body.5.lor.lhs.false.thread_crit_edge ], [ 8, %while.body.6.lor.lhs.false.thread_crit_edge ], [ 9, %while.body.7.lor.lhs.false.thread_crit_edge ], [ 10, %while.body.8.lor.lhs.false.thread_crit_edge ], [ 11, %while.body.9.lor.lhs.false.thread_crit_edge ], [ 12, %while.body.10.lor.lhs.false.thread_crit_edge ], [ 13, %while.body.11.lor.lhs.false.thread_crit_edge ], [ %spec.select, %while.body.12 ]
  %22 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %e, align 4
  %23 = ptrtoint ptr %fwrq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %c.0.lcssa, ptr %fwrq, align 4
  br label %if.end28

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %cmp21 = icmp sgt i32 %5, 1000
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %lor.lhs.false

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end19
  %24 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %24)
  %.pr86 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr86)
  %cmp25 = icmp sgt i16 %.pr86, 0
  br i1 %cmp25, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false.if.end28_crit_edge, %lor.lhs.false.thread
  %25 = phi i32 [ %c.0.lcssa, %lor.lhs.false.thread ], [ %5, %lor.lhs.false.if.end28_crit_edge ]
  %26 = add i32 %25, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %26)
  %27 = icmp ult i32 %26, -14
  br i1 %27, label %do.body36, label %if.end45

do.body36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_set_freq.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_set_freq, %if.then40)) #18
          to label %cleanup [label %if.then40], !srcloc !176

if.then40:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %fwrq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fwrq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_set_freq.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %dev, i32 noundef %29) #18
  br label %cleanup

if.end45:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  %conv46 = trunc i32 %25 to i8
  %channel47 = getelementptr i8, ptr %dev, i32 111061
  %30 = ptrtoint ptr %channel47 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv46, ptr %channel47, align 1
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %31 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %need_commit, align 4
  %or = or i32 %32, 1
  store i32 %or, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then40, %do.body36, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end45 ], [ -1, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end19.cleanup_crit_edge ], [ -22, %if.then40 ], [ -22, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %fwrq, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %connect_status = getelementptr i8, ptr %dev, i32 111776
  %2 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connect_status, align 4
  %and.i = and i32 %3, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %f.0.in.in.v = select i1 %cmp.i, i32 109754, i32 111061
  %f.0.in.in = getelementptr i8, ptr %dev, i32 %f.0.in.in.v
  %4 = ptrtoint ptr %f.0.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %f.0.in = load i8, ptr %f.0.in.in, align 1
  %f.0 = zext i8 %f.0.in to i32
  %sub = add nsw i32 %f.0, -1
  %arrayidx = getelementptr [14 x i32], ptr @frequency_list, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %6, 100000
  %7 = ptrtoint ptr %fwrq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %fwrq, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %fwrq, i32 0, i32 1
  %8 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %e, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_mode(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp8 = icmp eq i32 %3, 1
  %conv10 = select i1 %cmp8, i8 3, i8 1
  %reg = getelementptr i8, ptr %dev, i32 111060
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv10, ptr %reg, align 4
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %5 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %need_commit, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end7 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %reg = getelementptr i8, ptr %dev, i32 111060
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp eq i8 %3, 1
  %cond = select i1 %cmp3, i32 2, i32 1
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %uwrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_range(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %dwrq, ptr noundef writeonly %extra) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 568, ptr %length, align 4
  %num_channels = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 39
  %3 = call ptr @memset(ptr %extra, i32 0, i32 568)
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 14, ptr %num_channels, align 4
  %arrayidx = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 0
  %i5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 0, i32 2
  %5 = ptrtoint ptr %i5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %i5, align 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 241200000, ptr %arrayidx, align 4
  %e = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 0, i32 1
  %7 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %e, align 4
  %arrayidx.1 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 1
  %i5.1 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 1, i32 2
  %8 = ptrtoint ptr %i5.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %i5.1, align 2
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 241700000, ptr %arrayidx.1, align 4
  %e.1 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 1, i32 1
  %10 = ptrtoint ptr %e.1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %e.1, align 4
  %arrayidx.2 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 2
  %i5.2 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 2, i32 2
  %11 = ptrtoint ptr %i5.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %i5.2, align 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 242200000, ptr %arrayidx.2, align 4
  %e.2 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 2, i32 1
  %13 = ptrtoint ptr %e.2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %e.2, align 4
  %arrayidx.3 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 3
  %i5.3 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 3, i32 2
  %14 = ptrtoint ptr %i5.3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %i5.3, align 2
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 242700000, ptr %arrayidx.3, align 4
  %e.3 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 3, i32 1
  %16 = ptrtoint ptr %e.3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %e.3, align 4
  %arrayidx.4 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 4
  %i5.4 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 4, i32 2
  %17 = ptrtoint ptr %i5.4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 5, ptr %i5.4, align 2
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 243200000, ptr %arrayidx.4, align 4
  %e.4 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 4, i32 1
  %19 = ptrtoint ptr %e.4 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %e.4, align 4
  %arrayidx.5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 5
  %i5.5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 5, i32 2
  %20 = ptrtoint ptr %i5.5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 6, ptr %i5.5, align 2
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 243700000, ptr %arrayidx.5, align 4
  %e.5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 5, i32 1
  %22 = ptrtoint ptr %e.5 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %e.5, align 4
  %arrayidx.6 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 6
  %i5.6 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 6, i32 2
  %23 = ptrtoint ptr %i5.6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %i5.6, align 2
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 244200000, ptr %arrayidx.6, align 4
  %e.6 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 6, i32 1
  %25 = ptrtoint ptr %e.6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %e.6, align 4
  %arrayidx.7 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 7
  %i5.7 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 7, i32 2
  %26 = ptrtoint ptr %i5.7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %i5.7, align 2
  %27 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 244700000, ptr %arrayidx.7, align 4
  %e.7 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 7, i32 1
  %28 = ptrtoint ptr %e.7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %e.7, align 4
  %arrayidx.8 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 8
  %i5.8 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 8, i32 2
  %29 = ptrtoint ptr %i5.8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 9, ptr %i5.8, align 2
  %30 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 245200000, ptr %arrayidx.8, align 4
  %e.8 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 8, i32 1
  %31 = ptrtoint ptr %e.8 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %e.8, align 4
  %arrayidx.9 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 9
  %i5.9 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 9, i32 2
  %32 = ptrtoint ptr %i5.9 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 10, ptr %i5.9, align 2
  %33 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 245700000, ptr %arrayidx.9, align 4
  %e.9 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 9, i32 1
  %34 = ptrtoint ptr %e.9 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %e.9, align 4
  %arrayidx.10 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 10
  %i5.10 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 10, i32 2
  %35 = ptrtoint ptr %i5.10 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 11, ptr %i5.10, align 2
  %36 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 246200000, ptr %arrayidx.10, align 4
  %e.10 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 10, i32 1
  %37 = ptrtoint ptr %e.10 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %e.10, align 4
  %arrayidx.11 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 11
  %i5.11 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 11, i32 2
  %38 = ptrtoint ptr %i5.11 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 12, ptr %i5.11, align 2
  %39 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 246700000, ptr %arrayidx.11, align 4
  %e.11 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 11, i32 1
  %40 = ptrtoint ptr %e.11 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %e.11, align 4
  %arrayidx.12 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 12
  %i5.12 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 12, i32 2
  %41 = ptrtoint ptr %i5.12 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 13, ptr %i5.12, align 2
  %42 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 247200000, ptr %arrayidx.12, align 4
  %e.12 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 12, i32 1
  %43 = ptrtoint ptr %e.12 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %e.12, align 4
  %num_frequency = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 40
  %44 = ptrtoint ptr %num_frequency to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 13, ptr %num_frequency, align 2
  %phy_type = getelementptr i8, ptr %dev, i32 111262
  %45 = ptrtoint ptr %phy_type to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %phy_type, align 2
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i16 %46, label %if.end.if.end33_crit_edge [
    i16 0, label %if.end.if.then21_crit_edge
    i16 2, label %if.end.if.then21_crit_edge171
  ]

if.end.if.then21_crit_edge171:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

if.then21:                                        ; preds = %if.end.if.then21_crit_edge, %if.end.if.then21_crit_edge171
  %arrayidx23 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 13
  %i24 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 13, i32 2
  %48 = ptrtoint ptr %i24 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 14, ptr %i24, align 2
  %49 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 248400000, ptr %arrayidx23, align 4
  %e31 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 13, i32 1
  %50 = ptrtoint ptr %e31 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %e31, align 4
  %51 = ptrtoint ptr %num_frequency to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 14, ptr %num_frequency, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then21, %if.end.if.end33_crit_edge
  %max_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8
  %52 = ptrtoint ptr %max_qual to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 100, ptr %max_qual, align 4
  %level = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -128, ptr %level, align 1
  %noise = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 2
  %54 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -128, ptr %noise, align 2
  %sensitivity = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 7
  %55 = ptrtoint ptr %sensitivity to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %sensitivity, align 4
  %56 = ptrtoint ptr %phy_type to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %phy_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp39 = icmp eq i16 %57, 0
  br i1 %cmp39, label %if.end33.if.then77_crit_edge, label %if.else

if.end33.if.then77_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then77

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx58 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 4
  %58 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 6000000, ptr %arrayidx58, align 4
  %arrayidx60 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 5
  %59 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 9000000, ptr %arrayidx60, align 4
  %arrayidx62 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 6
  %60 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 12000000, ptr %arrayidx62, align 4
  %arrayidx64 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 7
  %61 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 18000000, ptr %arrayidx64, align 4
  %arrayidx66 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 8
  %62 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 24000000, ptr %arrayidx66, align 4
  %arrayidx68 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 9
  %63 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 36000000, ptr %arrayidx68, align 4
  %arrayidx70 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 10
  %64 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 48000000, ptr %arrayidx70, align 4
  %arrayidx72 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 11
  %65 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 54000000, ptr %arrayidx72, align 4
  br label %if.then77

if.then77:                                        ; preds = %if.else, %if.end33.if.then77_crit_edge
  %.sink = phi i8 [ 12, %if.else ], [ 4, %if.end33.if.then77_crit_edge ]
  %66 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 11
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1000000, ptr %66, align 4
  %68 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2000000, ptr %68, align 4
  %70 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 5500000, ptr %70, align 4
  %72 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 3
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 11000000, ptr %72, align 4
  %74 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 10
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %.sink, ptr %74, align 4
  %76 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 5000000, ptr %extra, align 4
  %min_rts = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 12
  %77 = ptrtoint ptr %min_rts to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %min_rts, align 4
  %max_rts = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 13
  %78 = ptrtoint ptr %max_rts to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2347, ptr %max_rts, align 4
  %min_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 14
  %79 = ptrtoint ptr %min_frag to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 256, ptr %min_frag, align 4
  %max_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 15
  %80 = ptrtoint ptr %max_frag to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2346, ptr %max_frag, align 4
  %encoding_size = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 23
  %81 = ptrtoint ptr %encoding_size to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 5, ptr %encoding_size, align 2
  %arrayidx83 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 23, i32 1
  %82 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 13, ptr %arrayidx83, align 2
  %num_encoding_sizes = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 24
  %83 = ptrtoint ptr %num_encoding_sizes to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 2, ptr %num_encoding_sizes, align 2
  %max_encoding_tokens = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 25
  %84 = ptrtoint ptr %max_encoding_tokens to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 4, ptr %max_encoding_tokens, align 1
  %pmp_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 20
  %85 = ptrtoint ptr %pmp_flags to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %pmp_flags, align 4
  %pmt_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 21
  %86 = ptrtoint ptr %pmt_flags to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %pmt_flags, align 2
  %pm_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 22
  %87 = ptrtoint ptr %pm_capa to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %pm_capa, align 4
  %txpower = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 29
  %88 = ptrtoint ptr %txpower to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -256, ptr %txpower, align 4
  %num_txpower = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 28
  %89 = ptrtoint ptr %num_txpower to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %num_txpower, align 4
  %txpower_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 27
  %90 = ptrtoint ptr %txpower_capa to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %txpower_capa, align 2
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %91 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 21, ptr %we_version_source, align 1
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %92 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 22, ptr %we_version_compiled, align 4
  %retry_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 32
  %93 = ptrtoint ptr %retry_capa to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %retry_capa, align 2
  %retry_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 33
  %94 = ptrtoint ptr %retry_flags to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %retry_flags, align 4
  %r_time_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 34
  %95 = ptrtoint ptr %r_time_flags to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %r_time_flags, align 2
  %avg_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9
  %96 = ptrtoint ptr %avg_qual to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 50, ptr %avg_qual, align 4
  %level87 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 1
  %97 = ptrtoint ptr %level87 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -70, ptr %level87, align 1
  %noise89 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 2
  %98 = ptrtoint ptr %noise89 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %noise89, align 2
  %event_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 6
  %99 = ptrtoint ptr %event_capa to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 102760528, ptr %event_capa, align 4
  %arrayidx92 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 6, i32 1
  %100 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1024, ptr %arrayidx92, align 4
  %arrayidx94 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 6, i32 4
  %101 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 68, ptr %arrayidx94, align 4
  %enc_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 42
  %102 = ptrtoint ptr %enc_capa to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 15, ptr %enc_capa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then77 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_iwstats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %vwrq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vwrq, align 4
  %level = getelementptr i8, ptr %dev, i32 2535
  %3 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %level, align 1
  %level3 = getelementptr inbounds %struct.iw_quality, ptr %vwrq, i32 0, i32 1
  %5 = ptrtoint ptr %level3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %level3, align 1
  %noise = getelementptr inbounds %struct.iw_quality, ptr %vwrq, i32 0, i32 2
  %6 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %noise, align 2
  %updated = getelementptr inbounds %struct.iw_quality, ptr %vwrq, i32 0, i32 3
  %7 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %updated, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_wap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %awrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr i8, ptr %dev, i32 111060
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %3, label %if.then10 [
    i8 3, label %if.end.if.end12_crit_edge
    i8 1, label %if.end.if.end12_crit_edge52
  ]

if.end.if.end12_crit_edge52:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %bssid = getelementptr i8, ptr %dev, i32 111080
  %5 = call ptr @memset(ptr %bssid, i32 0, i32 6)
  br label %cleanup

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %if.end.if.end12_crit_edge52
  %bssid14 = getelementptr i8, ptr %dev, i32 111080
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %awrq, i32 0, i32 1
  %6 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sa_data, align 4
  %8 = ptrtoint ptr %bssid14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bssid14, align 4
  %add.ptr.i50 = getelementptr %struct.sockaddr, ptr %awrq, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i50, align 2
  %add.ptr1.i = getelementptr i8, ptr %dev, i32 111084
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 2
  %12 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  %conv.i.i = zext i16 %10 to i32
  %or.i.i = or i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp ne i32 %or.i.i, 0
  %or.cond = select i1 %tobool.i.not.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond, label %if.then21, label %if.end12.do.body23_crit_edge

if.end12.do.body23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %13 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %need_commit, align 4
  %or = or i32 %14, 1
  store i32 %or, ptr %need_commit, align 4
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %if.end12.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_set_wap.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_set_wap, %if.then27)) #18
          to label %do.end33 [label %if.then27], !srcloc !176

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_set_wap.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %bssid14) #18
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body23
  %need_commit34 = getelementptr i8, ptr %dev, i32 111444
  %15 = ptrtoint ptr %need_commit34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %need_commit34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool35.not = icmp eq i32 %16, 0
  br i1 %tobool35.not, label %do.end33.cleanup_crit_edge, label %if.then36

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then36:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #20
  %or38 = or i32 %16, 1
  %17 = ptrtoint ptr %need_commit34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or38, ptr %need_commit34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.end33.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then10 ], [ -115, %if.then36 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %do.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_wap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %awrq, ptr nocapture noundef readnone %extra) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %connect_status = getelementptr i8, ptr %dev, i32 111776
  %2 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connect_status, align 4
  %and.i = and i32 %3, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %awrq, i32 0, i32 1
  br i1 %cmp.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %current_ap = getelementptr i8, ptr %dev, i32 109692
  %4 = ptrtoint ptr %current_ap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_ap, align 4
  %6 = ptrtoint ptr %sa_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sa_data, align 4
  %add.ptr.i12 = getelementptr i8, ptr %dev, i32 109696
  %7 = ptrtoint ptr %add.ptr.i12 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i12, align 2
  %add.ptr1.i = getelementptr %struct.sockaddr, ptr %awrq, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 2
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %10 = call ptr @memset(ptr %sa_data, i32 0, i32 6)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %11 = ptrtoint ptr %awrq to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %awrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_mlme(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %dwrq, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %extra, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %switch = icmp ult i16 %3, 2
  br i1 %switch, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp13 = icmp eq i16 %3, 0
  br i1 %cmp13, label %land.lhs.true15, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.lhs.true15:                                  ; preds = %if.end10
  %reason_code = getelementptr inbounds %struct.iw_mlme, ptr %extra, i32 0, i32 1
  %4 = ptrtoint ptr %reason_code to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reason_code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %5)
  %cmp17 = icmp eq i16 %5, 14
  br i1 %cmp17, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end20_crit_edge

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true15.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %6 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %if.end20.cleanup_crit_edge, label %if.end3.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 20) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end20.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %if.end3.i ], [ -1, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_aplist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %dwrq, ptr nocapture noundef writeonly %extra) #9 align 64 {
entry:
  %qual = alloca [31 x %struct.iw_quality], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %qual) #18
  %0 = call ptr @memset(ptr %qual, i32 255, i32 124)
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %1 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %aplist = getelementptr i8, ptr %dev, i32 95160
  %3 = ptrtoint ptr %aplist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aplist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp250 = icmp sgt i32 %4, 0
  br i1 %cmp250, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end23_crit_edge

for.cond.preheader.if.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sockaddr, ptr %extra, i32 %i.051
  %sa_data = getelementptr %struct.sockaddr, ptr %extra, i32 %i.051, i32 1
  %arrayidx5 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 17, i32 1, i32 %i.051
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %7 = ptrtoint ptr %sa_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sa_data, align 4
  %add.ptr.i49 = getelementptr i8, ptr %arrayidx5, i32 4
  %8 = ptrtoint ptr %add.ptr.i49 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i49, align 2
  %add.ptr1.i = getelementptr i8, ptr %sa_data, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr1.i, align 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %arrayidx, align 2
  %rssi = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 17, i32 1, i32 %i.051, i32 1
  %12 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rssi, align 2
  %sub = sub i8 0, %13
  %arrayidx13 = getelementptr [31 x %struct.iw_quality], ptr %qual, i32 0, i32 %i.051
  %level = getelementptr [31 x %struct.iw_quality], ptr %qual, i32 0, i32 %i.051, i32 1
  %14 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %sub, ptr %level, align 1
  %sq = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 17, i32 1, i32 %i.051, i32 2
  %15 = ptrtoint ptr %sq to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sq, align 1
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx13, align 1
  %noise = getelementptr [31 x %struct.iw_quality], ptr %qual, i32 0, i32 %i.051, i32 2
  %18 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %noise, align 1
  %updated = getelementptr [31 x %struct.iw_quality], ptr %qual, i32 0, i32 %i.051, i32 3
  %19 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %updated, align 1
  %inc = add nuw nsw i32 %i.051, 1
  %20 = ptrtoint ptr %aplist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aplist, align 4
  %cmp2 = icmp slt i32 %inc, %21
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %if.then21

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags, align 2
  %mul = shl i32 %inc, 4
  %add.ptr = getelementptr i8, ptr %extra, i32 %mul
  %mul22 = shl i32 %inc, 2
  %23 = call ptr @memcpy(ptr %add.ptr, ptr %qual, i32 %mul22)
  %phi.cast = trunc i32 %inc to i16
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.cond.preheader.if.end23_crit_edge
  %i.0.lcssa54 = phi i16 [ %phi.cast, %if.then21 ], [ 0, %for.cond.preheader.if.end23_crit_edge ]
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %i.0.lcssa54, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %qual) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_scan(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 316, i16 %3)
  %cmp3 = icmp eq i16 %3, 316
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %essid_len = getelementptr inbounds %struct.iw_scan_req, ptr %extra, i32 0, i32 1
  %7 = ptrtoint ptr %essid_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %essid_len, align 1
  %9 = tail call i8 @llvm.umin.i8(i8 %8, i8 32)
  %cond = zext i8 %9 to i32
  %scan_ssid_len = getelementptr i8, ptr %dev, i32 111784
  %10 = ptrtoint ptr %scan_ssid_len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %scan_ssid_len, align 4
  %scan_ssid = getelementptr i8, ptr %dev, i32 111785
  %essid = getelementptr inbounds %struct.iw_scan_req, ptr %extra, i32 0, i32 5
  %11 = call ptr @memcpy(ptr %scan_ssid, ptr %essid, i32 %cond)
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %scan_ssid_len12 = getelementptr i8, ptr %dev, i32 111784
  %12 = ptrtoint ptr %scan_ssid_len12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %scan_ssid_len12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  %sme_flag = getelementptr i8, ptr %dev, i32 95068
  %13 = ptrtoint ptr %sme_flag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sme_flag, align 4
  %or = or i32 %14, 8192
  store i32 %or, ptr %sme_flag, align 4
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 3) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_scan(ptr noundef %dev, ptr noundef %info, ptr nocapture noundef %dwrq, ptr noundef %extra) #0 align 64 {
entry:
  %iwe.i = alloca %struct.iw_event, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %sme_flag = getelementptr i8, ptr %dev, i32 95068
  %2 = ptrtoint ptr %sme_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sme_flag, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %aplist = getelementptr i8, ptr %dev, i32 95160
  %4 = ptrtoint ptr %aplist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aplist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %for.cond.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end3
  %6 = ptrtoint ptr %aplist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aplist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1048 = icmp sgt i32 %7, 0
  br i1 %cmp1048, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %8 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2, i32 0, i32 2
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %9, i32 0, i32 1
  %level.i = getelementptr inbounds %struct.iw_quality, ptr %9, i32 0, i32 1
  %disabled.i = getelementptr inbounds %struct.iw_param, ptr %9, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %ks_wlan_translate_scan.exit.for.body_crit_edge, %for.body.lr.ph
  %current_ev.050 = phi ptr [ %extra, %for.body.lr.ph ], [ %current_ev.addr.3.i, %ks_wlan_translate_scan.exit.for.body_crit_edge ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ks_wlan_translate_scan.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 4
  %conv12 = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %extra, i32 %conv12
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %current_ev.050 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %sub.ptr.sub)
  %cmp13 = icmp ult i32 %sub.ptr.sub, 21
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %length, align 4
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 17, i32 1, i32 %i.049
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iwe.i) #18
  %15 = call ptr @memset(ptr %iwe.i, i32 255, i32 20)
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -29931, ptr %8, align 2
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %9, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %sa_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sa_data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i, align 2
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %11, align 2
  %call.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %current_ev.050, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 20) #18
  %ssid.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 3
  %24 = ptrtoint ptr %ssid.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ssid.i, align 2
  %26 = call i8 @llvm.umin.i8(i8 %25, i8 32) #18
  %spec.select.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %spec.select.i, ptr %10, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -29925, ptr %8, align 2
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %11, align 2
  %body.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 3, i32 1
  %call14.i = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef %body.i) #18
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -29945, ptr %8, align 2
  %capability.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 5
  %31 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %capability.i, align 2
  %conv16.i = zext i16 %32 to i32
  %and.i = and i32 %conv16.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.if.end23.i_crit_edge, label %if.then17.i

if.end17.if.end23.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i

if.then17.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %and19.i = and i32 %conv16.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond.i = select i1 %tobool20.not.i, i32 1, i32 2
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond.i, ptr %9, align 4
  %call22.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call14.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 8) #18
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then17.i, %if.end17.if.end23.i_crit_edge
  %current_ev.addr.0.i = phi ptr [ %call22.i, %if.then17.i ], [ %call14.i, %if.end17.if.end23.i_crit_edge ]
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -29947, ptr %8, align 2
  %channel.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 6
  %35 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %channel.i, align 2
  %conv25.i = zext i8 %36 to i32
  %sub.i = add nsw i32 %conv25.i, -1
  %arrayidx.i = getelementptr [14 x i32], ptr @frequency_list, i32 0, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %38, 100000
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul.i, ptr %9, align 4
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %10, align 4
  %call32.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %current_ev.addr.0.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 12) #18
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -29695, ptr %8, align 2
  %rssi.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 1
  %42 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rssi.i, align 2
  %sub35.i = sub i8 0, %43
  %44 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %sub35.i, ptr %level.i, align 1
  %sq.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 2
  %45 = ptrtoint ptr %sq.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sq.i, align 1
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %9, align 4
  %48 = ptrtoint ptr %sa_data.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %sa_data.i, align 2
  %call40.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call32.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 8) #18
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -29909, ptr %8, align 2
  %and43.i = and i32 %conv16.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %conv46.i = select i1 %tobool44.not.i, i16 -32768, i16 2048
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv46.i, ptr %11, align 2
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %10, align 4
  %call54.i = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call40.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef %body.i) #18
  %add.ptr.i46 = getelementptr i8, ptr %call54.i, i32 4
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -29919, ptr %8, align 2
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %10, align 4
  %54 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %disabled.i, align 1
  %rate_set.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end65.i.for.body.i_crit_edge, %if.end23.i
  %i.03.i = phi i32 [ 0, %if.end23.i ], [ %inc.i, %if.end65.i.for.body.i_crit_edge ]
  %current_val.02.i = phi ptr [ %add.ptr.i46, %if.end23.i ], [ %call73.i, %if.end65.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %rate_set.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rate_set.i, align 2
  %conv61.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.03.i, i32 %conv61.i)
  %cmp62.not.i = icmp ult i32 %i.03.i, %conv61.i
  br i1 %cmp62.not.i, label %if.end65.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

if.end65.i:                                       ; preds = %for.body.i
  %arrayidx68.i = getelementptr %struct.local_ap, ptr %arrayidx, i32 0, i32 4, i32 1, i32 %i.03.i
  %57 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx68.i, align 1
  %59 = and i8 %58, 127
  %and70.i = zext i8 %59 to i32
  %mul71.i = mul nuw nsw i32 %and70.i, 500000
  %60 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul71.i, ptr %9, align 4
  %call73.i = call ptr @iwe_stream_add_value(ptr noundef %info, ptr noundef %call54.i, ptr noundef %current_val.02.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 12) #18
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end65.i.for.end.i_crit_edge, label %if.end65.i.for.body.i_crit_edge

if.end65.i.for.body.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end65.i.for.end.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %if.end65.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %current_val.0.lcssa.i = phi ptr [ %current_val.02.i, %for.body.i.for.end.i_crit_edge ], [ %call73.i, %if.end65.i.for.end.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %current_val.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call54.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp74.i = icmp ugt i32 %sub.ptr.sub.i, 4
  %spec.select1.i = select i1 %cmp74.i, ptr %current_val.0.lcssa.i, ptr %call54.i
  %rsn_ie.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 9
  %61 = ptrtoint ptr %rsn_ie.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rsn_ie.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %62)
  %cmp79.i = icmp eq i8 %62, 48
  br i1 %cmp79.i, label %land.lhs.true.i, label %for.end.i.if.end89.i_crit_edge

for.end.i.if.end89.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end89.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %size82.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %size82.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %size82.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp84.not.i = icmp eq i8 %64, 0
  br i1 %cmp84.not.i, label %land.lhs.true.i.if.end89.i_crit_edge, label %if.then86.i

land.lhs.true.i.if.end89.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end89.i

if.then86.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %call88.i = call fastcc ptr @ks_wlan_add_leader_event(ptr noundef nonnull @ks_wlan_translate_scan.rsn_leader, ptr noundef %add.ptr, ptr noundef %spec.select1.i, ptr noundef %rsn_ie.i, ptr noundef nonnull %iwe.i, ptr noundef %info) #18
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then86.i, %land.lhs.true.i.if.end89.i_crit_edge, %for.end.i.if.end89.i_crit_edge
  %current_ev.addr.2.i = phi ptr [ %call88.i, %if.then86.i ], [ %spec.select1.i, %land.lhs.true.i.if.end89.i_crit_edge ], [ %spec.select1.i, %for.end.i.if.end89.i_crit_edge ]
  %wpa_ie.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 8
  %65 = ptrtoint ptr %wpa_ie.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %wpa_ie.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %66)
  %cmp92.i = icmp eq i8 %66, -35
  br i1 %cmp92.i, label %land.lhs.true94.i, label %if.end89.i.ks_wlan_translate_scan.exit_crit_edge

if.end89.i.ks_wlan_translate_scan.exit_crit_edge: ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ks_wlan_translate_scan.exit

land.lhs.true94.i:                                ; preds = %if.end89.i
  %size96.i = getelementptr inbounds %struct.local_ap, ptr %arrayidx, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %size96.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %size96.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp98.not.i = icmp eq i8 %68, 0
  br i1 %cmp98.not.i, label %land.lhs.true94.i.ks_wlan_translate_scan.exit_crit_edge, label %if.then100.i

land.lhs.true94.i.ks_wlan_translate_scan.exit_crit_edge: ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ks_wlan_translate_scan.exit

if.then100.i:                                     ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #20
  %call102.i = call fastcc ptr @ks_wlan_add_leader_event(ptr noundef nonnull @ks_wlan_translate_scan.wpa_leader, ptr noundef %add.ptr, ptr noundef %current_ev.addr.2.i, ptr noundef %wpa_ie.i, ptr noundef nonnull %iwe.i, ptr noundef %info) #18
  br label %ks_wlan_translate_scan.exit

ks_wlan_translate_scan.exit:                      ; preds = %if.then100.i, %land.lhs.true94.i.ks_wlan_translate_scan.exit_crit_edge, %if.end89.i.ks_wlan_translate_scan.exit_crit_edge
  %current_ev.addr.3.i = phi ptr [ %call102.i, %if.then100.i ], [ %current_ev.addr.2.i, %land.lhs.true94.i.ks_wlan_translate_scan.exit_crit_edge ], [ %current_ev.addr.2.i, %if.end89.i.ks_wlan_translate_scan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iwe.i) #18
  %inc = add nuw nsw i32 %i.049, 1
  %69 = ptrtoint ptr %aplist to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %aplist, align 4
  %cmp10 = icmp slt i32 %inc, %70
  br i1 %cmp10, label %ks_wlan_translate_scan.exit.for.body_crit_edge, label %ks_wlan_translate_scan.exit.for.end_crit_edge

ks_wlan_translate_scan.exit.for.end_crit_edge:    ; preds = %ks_wlan_translate_scan.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

ks_wlan_translate_scan.exit.for.body_crit_edge:   ; preds = %ks_wlan_translate_scan.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %ks_wlan_translate_scan.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %current_ev.0.lcssa = phi ptr [ %extra, %for.cond.preheader.for.end_crit_edge ], [ %current_ev.addr.3.i, %ks_wlan_translate_scan.exit.for.end_crit_edge ]
  %sub.ptr.lhs.cast23 = ptrtoint ptr %current_ev.0.lcssa to i32
  %sub.ptr.rhs.cast24 = ptrtoint ptr %extra to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %conv26 = trunc i32 %sub.ptr.sub25 to i16
  %length27 = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %71 = ptrtoint ptr %length27 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv26, ptr %length27, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then15, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then15 ], [ 0, %for.end ], [ -1, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ -61, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_essid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %dwrq, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %ssid = getelementptr i8, ptr %dev, i32 111086
  %4 = call ptr @memset(ptr %ssid, i32 0, i32 34)
  br label %if.end29

if.else:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp6.not = icmp eq i16 %6, 0
  br i1 %cmp6.not, label %if.else.if.end16_crit_edge, label %if.end12

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.end12:                                         ; preds = %if.else
  %conv5 = zext i16 %6 to i32
  %sub = add nsw i32 %conv5, -1
  %arrayidx = getelementptr i8, ptr %extra, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9 = icmp eq i8 %8, 0
  %spec.select = select i1 %cmp9, i32 %sub, i32 %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %spec.select)
  %cmp13 = icmp ugt i32 %spec.select, 32
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %if.else.if.end16_crit_edge
  %len.052 = phi i32 [ %spec.select, %if.end12.if.end16_crit_edge ], [ 0, %if.else.if.end16_crit_edge ]
  %ssid18 = getelementptr i8, ptr %dev, i32 111086
  %body19 = getelementptr i8, ptr %dev, i32 111087
  %9 = call ptr @memset(ptr %body19, i32 0, i32 33)
  %10 = call ptr @memcpy(ptr %body19, ptr %extra, i32 %len.052)
  %conv25 = trunc i32 %len.052 to i8
  %11 = ptrtoint ptr %ssid18 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv25, ptr %ssid18, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.end16, %if.then2
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %12 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %need_commit, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %need_commit, align 4
  %call31 = tail call i32 @ks_wlan_setup_parameter(ptr noundef %add.ptr.i, i32 noundef %or)
  %14 = ptrtoint ptr %need_commit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_essid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %dwrq, ptr nocapture noundef writeonly %extra) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %ssid = getelementptr i8, ptr %dev, i32 111086
  %2 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ssid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3.not = icmp eq i8 %3, 0
  br i1 %cmp3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv2 = zext i8 %3 to i32
  %body = getelementptr i8, ptr %dev, i32 111087
  %4 = call ptr @memcpy(ptr %extra, ptr %body, i32 %conv2)
  %5 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ssid, align 2
  %conv15 = zext i8 %6 to i16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %if.end.cleanup.sink.split_crit_edge
  %conv15.sink = phi i16 [ %conv15, %if.then5 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %.sink = phi i16 [ 1, %if.then5 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv15.sink, ptr %length, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_nick(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %dwrq, ptr nocapture noundef readonly %extra) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %3)
  %cmp3 = icmp ugt i16 %3, 17
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %nick = getelementptr i8, ptr %dev, i32 111269
  %4 = call ptr @memset(ptr %nick, i32 0, i32 33)
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %length, align 4
  %conv10 = zext i16 %6 to i32
  %7 = call ptr @memcpy(ptr %nick, ptr %extra, i32 %conv10)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end6 ], [ -1, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_nick(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %dwrq, ptr noundef %extra) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %nick = getelementptr i8, ptr %dev, i32 111269
  %call2 = tail call ptr @strncpy(ptr noundef %extra, ptr noundef %nick, i32 noundef 16)
  %arrayidx = getelementptr i8, ptr %extra, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %call3 = tail call i32 @strlen(ptr noundef %extra) #22
  %3 = trunc i32 %call3 to i16
  %conv4 = add i16 %3, 1
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv4, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_rate(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_type = getelementptr i8, ptr %dev, i32 111262
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %phy_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  %fixed = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 1
  %4 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp7 = icmp eq i8 %5, 1
  %6 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vwrq, align 4
  br i1 %cmp3, label %if.then5, label %if.else86

if.then5:                                         ; preds = %if.end
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then5
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %7, label %if.then9.cleanup_crit_edge [
    i32 11000000, label %if.then9.sw.bb_crit_edge
    i32 5500000, label %if.then9.sw.bb_crit_edge486
    i32 2000000, label %if.then9.sw.bb13_crit_edge
    i32 1000000, label %if.then9.sw.bb13_crit_edge487
  ]

if.then9.sw.bb13_crit_edge487:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb13

if.then9.sw.bb13_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb13

if.then9.sw.bb_crit_edge486:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

if.then9.sw.bb_crit_edge:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %if.then9.sw.bb_crit_edge, %if.then9.sw.bb_crit_edge486
  %div482 = udiv i32 %7, 500000
  %conv11 = trunc i32 %div482 to i8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then9.sw.bb13_crit_edge, %if.then9.sw.bb13_crit_edge487
  %div15483 = udiv i32 %7, 500000
  %9 = trunc i32 %div15483 to i8
  %conv18 = or i8 %9, -128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb
  %conv18.sink = phi i8 [ %conv18, %sw.bb13 ], [ %conv11, %sw.bb ]
  %body21 = getelementptr i8, ptr %dev, i32 111064
  %10 = ptrtoint ptr %body21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18.sink, ptr %body21, align 1
  %tx_rate = getelementptr i8, ptr %dev, i32 111062
  %11 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %tx_rate, align 2
  %rate_set25 = getelementptr i8, ptr %dev, i32 111063
  %12 = ptrtoint ptr %rate_set25 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %rate_set25, align 1
  br label %if.end361

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp27 = icmp sgt i32 %7, 0
  br i1 %cmp27, label %if.then29, label %if.else62

if.then29:                                        ; preds = %if.else
  %13 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %7, label %if.then29.cleanup_crit_edge [
    i32 11000000, label %sw.bb31
    i32 5500000, label %if.then29.sw.bb36_crit_edge
    i32 2000000, label %if.then29.sw.bb42_crit_edge
    i32 1000000, label %if.then29.sw.bb48_crit_edge
  ]

if.then29.sw.bb48_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb48

if.then29.sw.bb42_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb42

if.then29.sw.bb36_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb36

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb31:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx35 = getelementptr i8, ptr %dev, i32 111067
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 22, ptr %arrayidx35, align 1
  br label %sw.bb36

sw.bb36:                                          ; preds = %sw.bb31, %if.then29.sw.bb36_crit_edge
  %i.0 = phi i8 [ 3, %if.then29.sw.bb36_crit_edge ], [ 4, %sw.bb31 ]
  %arrayidx40 = getelementptr i8, ptr %dev, i32 111066
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 11, ptr %arrayidx40, align 1
  br label %sw.bb42

sw.bb42:                                          ; preds = %sw.bb36, %if.then29.sw.bb42_crit_edge
  %i.1 = phi i8 [ 2, %if.then29.sw.bb42_crit_edge ], [ %i.0, %sw.bb36 ]
  %arrayidx46 = getelementptr i8, ptr %dev, i32 111065
  %16 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -124, ptr %arrayidx46, align 1
  br label %sw.bb48

sw.bb48:                                          ; preds = %sw.bb42, %if.then29.sw.bb48_crit_edge
  %i.2 = phi i8 [ 1, %if.then29.sw.bb48_crit_edge ], [ %i.1, %sw.bb42 ]
  %rate_set50 = getelementptr i8, ptr %dev, i32 111063
  %body51 = getelementptr i8, ptr %dev, i32 111064
  %17 = ptrtoint ptr %body51 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -126, ptr %body51, align 1
  %tx_rate57 = getelementptr i8, ptr %dev, i32 111062
  %18 = ptrtoint ptr %tx_rate57 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %tx_rate57, align 2
  %19 = ptrtoint ptr %rate_set50 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %i.2, ptr %rate_set50, align 1
  br label %if.end361

if.else62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %rate_set64 = getelementptr i8, ptr %dev, i32 111063
  %body65 = getelementptr i8, ptr %dev, i32 111064
  %arrayidx66 = getelementptr i8, ptr %dev, i32 111067
  %20 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 22, ptr %arrayidx66, align 1
  %arrayidx70 = getelementptr i8, ptr %dev, i32 111066
  %21 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 11, ptr %arrayidx70, align 1
  %arrayidx74 = getelementptr i8, ptr %dev, i32 111065
  %22 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -124, ptr %arrayidx74, align 1
  %23 = ptrtoint ptr %body65 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -126, ptr %body65, align 1
  %tx_rate80 = getelementptr i8, ptr %dev, i32 111062
  %24 = ptrtoint ptr %tx_rate80 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %tx_rate80, align 2
  %25 = ptrtoint ptr %rate_set64 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %rate_set64, align 1
  br label %if.end361

if.else86:                                        ; preds = %if.end
  br i1 %cmp7, label %if.then91, label %if.else119

if.then91:                                        ; preds = %if.else86
  %26 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %7, label %if.then91.cleanup_crit_edge [
    i32 54000000, label %if.then91.sw.bb93_crit_edge
    i32 48000000, label %if.then91.sw.bb93_crit_edge488
    i32 36000000, label %if.then91.sw.bb93_crit_edge489
    i32 18000000, label %if.then91.sw.bb93_crit_edge490
    i32 9000000, label %if.then91.sw.bb93_crit_edge491
    i32 24000000, label %if.then91.sw.bb101_crit_edge
    i32 12000000, label %if.then91.sw.bb101_crit_edge492
    i32 11000000, label %if.then91.sw.bb101_crit_edge493
    i32 6000000, label %if.then91.sw.bb101_crit_edge494
    i32 5500000, label %if.then91.sw.bb101_crit_edge495
    i32 2000000, label %if.then91.sw.bb101_crit_edge496
    i32 1000000, label %if.then91.sw.bb101_crit_edge497
  ]

if.then91.sw.bb101_crit_edge497:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb101

if.then91.sw.bb101_crit_edge496:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb101

if.then91.sw.bb101_crit_edge495:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb101

if.then91.sw.bb101_crit_edge494:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb101

if.then91.sw.bb101_crit_edge493:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb101

if.then91.sw.bb101_crit_edge492:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb101

if.then91.sw.bb101_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb101

if.then91.sw.bb93_crit_edge491:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb93

if.then91.sw.bb93_crit_edge490:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb93

if.then91.sw.bb93_crit_edge489:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb93

if.then91.sw.bb93_crit_edge488:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb93

if.then91.sw.bb93_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb93

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb93:                                          ; preds = %if.then91.sw.bb93_crit_edge, %if.then91.sw.bb93_crit_edge488, %if.then91.sw.bb93_crit_edge489, %if.then91.sw.bb93_crit_edge490, %if.then91.sw.bb93_crit_edge491
  %div95484 = udiv i32 %7, 500000
  %conv96 = trunc i32 %div95484 to i8
  br label %sw.epilog113

sw.bb101:                                         ; preds = %if.then91.sw.bb101_crit_edge, %if.then91.sw.bb101_crit_edge492, %if.then91.sw.bb101_crit_edge493, %if.then91.sw.bb101_crit_edge494, %if.then91.sw.bb101_crit_edge495, %if.then91.sw.bb101_crit_edge496, %if.then91.sw.bb101_crit_edge497
  %div103485 = udiv i32 %7, 500000
  %27 = trunc i32 %div103485 to i8
  %conv107 = or i8 %27, -128
  br label %sw.epilog113

sw.epilog113:                                     ; preds = %sw.bb101, %sw.bb93
  %conv107.sink = phi i8 [ %conv107, %sw.bb101 ], [ %conv96, %sw.bb93 ]
  %body110 = getelementptr i8, ptr %dev, i32 111064
  %28 = ptrtoint ptr %body110 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv107.sink, ptr %body110, align 1
  %tx_rate115 = getelementptr i8, ptr %dev, i32 111062
  %29 = ptrtoint ptr %tx_rate115 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 5, ptr %tx_rate115, align 2
  %rate_set117 = getelementptr i8, ptr %dev, i32 111063
  %30 = ptrtoint ptr %rate_set117 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %rate_set117, align 1
  br label %if.end361

if.else119:                                       ; preds = %if.else86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp121 = icmp sgt i32 %7, 0
  br i1 %cmp121, label %if.then123, label %if.else305

if.then123:                                       ; preds = %if.else119
  %31 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %7, label %if.then123.cleanup_crit_edge [
    i32 54000000, label %sw.bb125
    i32 48000000, label %if.then123.sw.bb131_crit_edge
    i32 36000000, label %if.then123.sw.bb137_crit_edge
    i32 24000000, label %if.then123.sw.bb143_crit_edge
    i32 18000000, label %if.then123.sw.bb143_crit_edge498
    i32 12000000, label %if.then123.sw.bb143_crit_edge499
    i32 11000000, label %if.then123.sw.bb143_crit_edge500
    i32 9000000, label %if.then123.sw.bb143_crit_edge501
    i32 6000000, label %if.then123.sw.bb143_crit_edge502
    i32 5500000, label %if.then123.sw.bb279_crit_edge
    i32 2000000, label %if.then123.sw.bb285_crit_edge
    i32 1000000, label %if.then123.sw.bb291_crit_edge
  ]

if.then123.sw.bb291_crit_edge:                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb291

if.then123.sw.bb285_crit_edge:                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb285

if.then123.sw.bb279_crit_edge:                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb279

if.then123.sw.bb143_crit_edge502:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb143

if.then123.sw.bb143_crit_edge501:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb143

if.then123.sw.bb143_crit_edge500:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb143

if.then123.sw.bb143_crit_edge499:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb143

if.then123.sw.bb143_crit_edge498:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb143

if.then123.sw.bb143_crit_edge:                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb143

if.then123.sw.bb137_crit_edge:                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb137

if.then123.sw.bb131_crit_edge:                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb131

if.then123.cleanup_crit_edge:                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb125:                                         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx129 = getelementptr i8, ptr %dev, i32 111075
  %32 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 108, ptr %arrayidx129, align 1
  br label %sw.bb131

sw.bb131:                                         ; preds = %sw.bb125, %if.then123.sw.bb131_crit_edge
  %i.3 = phi i32 [ 3, %if.then123.sw.bb131_crit_edge ], [ 4, %sw.bb125 ]
  %arrayidx135 = getelementptr i8, ptr %dev, i32 111074
  %33 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 96, ptr %arrayidx135, align 1
  br label %sw.bb137

sw.bb137:                                         ; preds = %sw.bb131, %if.then123.sw.bb137_crit_edge
  %i.4 = phi i32 [ 2, %if.then123.sw.bb137_crit_edge ], [ %i.3, %sw.bb131 ]
  %arrayidx141 = getelementptr i8, ptr %dev, i32 111073
  %34 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 72, ptr %arrayidx141, align 1
  %35 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %vwrq, align 4
  br label %sw.bb143

sw.bb143:                                         ; preds = %sw.bb137, %if.then123.sw.bb143_crit_edge, %if.then123.sw.bb143_crit_edge498, %if.then123.sw.bb143_crit_edge499, %if.then123.sw.bb143_crit_edge500, %if.then123.sw.bb143_crit_edge501, %if.then123.sw.bb143_crit_edge502
  %36 = phi i32 [ %7, %if.then123.sw.bb143_crit_edge ], [ %7, %if.then123.sw.bb143_crit_edge498 ], [ %7, %if.then123.sw.bb143_crit_edge499 ], [ %7, %if.then123.sw.bb143_crit_edge500 ], [ %7, %if.then123.sw.bb143_crit_edge501 ], [ %7, %if.then123.sw.bb143_crit_edge502 ], [ %.pr, %sw.bb137 ]
  %i.5 = phi i32 [ 1, %if.then123.sw.bb143_crit_edge ], [ 1, %if.then123.sw.bb143_crit_edge498 ], [ 1, %if.then123.sw.bb143_crit_edge499 ], [ 1, %if.then123.sw.bb143_crit_edge500 ], [ 1, %if.then123.sw.bb143_crit_edge501 ], [ 1, %if.then123.sw.bb143_crit_edge502 ], [ %i.4, %sw.bb137 ]
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %36, label %if.else268 [
    i32 24000000, label %if.then147
    i32 18000000, label %if.then182
    i32 12000000, label %if.then212
    i32 11000000, label %if.then237
    i32 9000000, label %if.then257
  ]

if.then147:                                       ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx151 = getelementptr i8, ptr %dev, i32 111072
  %38 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 36, ptr %arrayidx151, align 1
  %arrayidx156 = getelementptr i8, ptr %dev, i32 111071
  %39 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 18, ptr %arrayidx156, align 1
  %arrayidx161 = getelementptr i8, ptr %dev, i32 111070
  %40 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -80, ptr %arrayidx161, align 1
  %arrayidx166 = getelementptr i8, ptr %dev, i32 111069
  %41 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -104, ptr %arrayidx166, align 1
  %arrayidx171 = getelementptr i8, ptr %dev, i32 111068
  %42 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -116, ptr %arrayidx171, align 1
  %arrayidx176 = getelementptr i8, ptr %dev, i32 111067
  %43 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -106, ptr %arrayidx176, align 1
  %inc177 = add nuw nsw i32 %i.5, 5
  br label %sw.bb279

if.then182:                                       ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx186 = getelementptr i8, ptr %dev, i32 111071
  %44 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 36, ptr %arrayidx186, align 1
  %arrayidx191 = getelementptr i8, ptr %dev, i32 111070
  %45 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 18, ptr %arrayidx191, align 1
  %arrayidx196 = getelementptr i8, ptr %dev, i32 111069
  %46 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -104, ptr %arrayidx196, align 1
  %arrayidx201 = getelementptr i8, ptr %dev, i32 111068
  %47 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -116, ptr %arrayidx201, align 1
  %arrayidx206 = getelementptr i8, ptr %dev, i32 111067
  %48 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -106, ptr %arrayidx206, align 1
  %inc207 = add nuw nsw i32 %i.5, 4
  br label %sw.bb279

if.then212:                                       ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx216 = getelementptr i8, ptr %dev, i32 111070
  %49 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 18, ptr %arrayidx216, align 1
  %arrayidx221 = getelementptr i8, ptr %dev, i32 111069
  %50 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -104, ptr %arrayidx221, align 1
  %arrayidx226 = getelementptr i8, ptr %dev, i32 111068
  %51 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -116, ptr %arrayidx226, align 1
  %arrayidx231 = getelementptr i8, ptr %dev, i32 111067
  %52 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -106, ptr %arrayidx231, align 1
  %inc232 = add nuw nsw i32 %i.5, 3
  br label %sw.bb279

if.then237:                                       ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx241 = getelementptr i8, ptr %dev, i32 111069
  %53 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 18, ptr %arrayidx241, align 1
  %arrayidx246 = getelementptr i8, ptr %dev, i32 111068
  %54 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -116, ptr %arrayidx246, align 1
  %arrayidx251 = getelementptr i8, ptr %dev, i32 111067
  %55 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -106, ptr %arrayidx251, align 1
  %inc252 = add nuw nsw i32 %i.5, 2
  br label %sw.bb279

if.then257:                                       ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx261 = getelementptr i8, ptr %dev, i32 111068
  %56 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 18, ptr %arrayidx261, align 1
  %arrayidx266 = getelementptr i8, ptr %dev, i32 111067
  %57 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -116, ptr %arrayidx266, align 1
  %inc267 = add nuw nsw i32 %i.5, 1
  br label %sw.bb279

if.else268:                                       ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx272 = getelementptr i8, ptr %dev, i32 111067
  %58 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -116, ptr %arrayidx272, align 1
  br label %sw.bb279

sw.bb279:                                         ; preds = %if.else268, %if.then257, %if.then237, %if.then212, %if.then182, %if.then147, %if.then123.sw.bb279_crit_edge
  %i.6 = phi i32 [ 0, %if.then123.sw.bb279_crit_edge ], [ %inc177, %if.then147 ], [ %inc207, %if.then182 ], [ %inc232, %if.then212 ], [ %inc252, %if.then237 ], [ %inc267, %if.then257 ], [ %i.5, %if.else268 ]
  %arrayidx283 = getelementptr i8, ptr %dev, i32 111066
  %59 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -117, ptr %arrayidx283, align 1
  %phi.bo479 = add nuw nsw i32 %i.6, 3
  br label %sw.bb285

sw.bb285:                                         ; preds = %sw.bb279, %if.then123.sw.bb285_crit_edge
  %i.7 = phi i32 [ 2, %if.then123.sw.bb285_crit_edge ], [ %phi.bo479, %sw.bb279 ]
  %arrayidx289 = getelementptr i8, ptr %dev, i32 111065
  %60 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -124, ptr %arrayidx289, align 1
  br label %sw.bb291

sw.bb291:                                         ; preds = %sw.bb285, %if.then123.sw.bb291_crit_edge
  %i.8 = phi i32 [ 1, %if.then123.sw.bb291_crit_edge ], [ %i.7, %sw.bb285 ]
  %rate_set293 = getelementptr i8, ptr %dev, i32 111063
  %body294 = getelementptr i8, ptr %dev, i32 111064
  %61 = ptrtoint ptr %body294 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -126, ptr %body294, align 1
  %tx_rate300 = getelementptr i8, ptr %dev, i32 111062
  %62 = ptrtoint ptr %tx_rate300 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %tx_rate300, align 2
  %conv301 = trunc i32 %i.8 to i8
  %63 = ptrtoint ptr %rate_set293 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv301, ptr %rate_set293, align 1
  br label %if.end361

if.else305:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #20
  %rate_set307 = getelementptr i8, ptr %dev, i32 111063
  %body308 = getelementptr i8, ptr %dev, i32 111064
  %arrayidx309 = getelementptr i8, ptr %dev, i32 111075
  %64 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 108, ptr %arrayidx309, align 1
  %arrayidx313 = getelementptr i8, ptr %dev, i32 111074
  %65 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 96, ptr %arrayidx313, align 1
  %arrayidx317 = getelementptr i8, ptr %dev, i32 111073
  %66 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 72, ptr %arrayidx317, align 1
  %arrayidx321 = getelementptr i8, ptr %dev, i32 111072
  %67 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 36, ptr %arrayidx321, align 1
  %arrayidx325 = getelementptr i8, ptr %dev, i32 111071
  %68 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 18, ptr %arrayidx325, align 1
  %arrayidx329 = getelementptr i8, ptr %dev, i32 111070
  %69 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -80, ptr %arrayidx329, align 1
  %arrayidx333 = getelementptr i8, ptr %dev, i32 111069
  %70 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -104, ptr %arrayidx333, align 1
  %arrayidx337 = getelementptr i8, ptr %dev, i32 111068
  %71 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -116, ptr %arrayidx337, align 1
  %arrayidx341 = getelementptr i8, ptr %dev, i32 111067
  %72 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -106, ptr %arrayidx341, align 1
  %arrayidx345 = getelementptr i8, ptr %dev, i32 111066
  %73 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -117, ptr %arrayidx345, align 1
  %arrayidx349 = getelementptr i8, ptr %dev, i32 111065
  %74 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -124, ptr %arrayidx349, align 1
  %75 = ptrtoint ptr %body308 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -126, ptr %body308, align 1
  %tx_rate355 = getelementptr i8, ptr %dev, i32 111062
  %76 = ptrtoint ptr %tx_rate355 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %tx_rate355, align 2
  %77 = ptrtoint ptr %rate_set307 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 12, ptr %rate_set307, align 1
  br label %if.end361

if.end361:                                        ; preds = %if.else305, %sw.bb291, %sw.epilog113, %if.else62, %sw.bb48, %sw.epilog
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %78 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %need_commit, align 4
  %or362 = or i32 %79, 1
  store i32 %or362, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end361, %if.then123.cleanup_crit_edge, %if.then91.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end361 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ -22, %if.then29.cleanup_crit_edge ], [ -22, %if.then91.cleanup_crit_edge ], [ -22, %if.then123.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_rate(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_get_rate.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_get_rate, %if.then)) #18
          to label %do.end13 [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i33 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i33 to ptr
  %preempt_count.i34 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i34, align 4
  %and7 = and i32 %7, 983040
  %or = or i32 %and7, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i35 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i35 to ptr
  %preempt_count.i36 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i36, align 4
  %and9 = and i32 %11, 65280
  %or10 = or i32 %or, %and9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @update_phyinfo, i32 noundef 4) #18
  %12 = load volatile i32, ptr @update_phyinfo, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_get_rate.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %or10, i32 noundef %12) #18
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %13 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %do.end13.cleanup_crit_edge, label %if.end16

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %do.end13
  %call.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @update_phyinfo, i32 noundef 4) #18
  %15 = load volatile i32, ptr @update_phyinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.then19, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @ks_wlan_update_phy_information(ptr noundef %add.ptr.i)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %current_rate = getelementptr i8, ptr %dev, i32 111268
  %16 = ptrtoint ptr %current_rate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %current_rate, align 4
  %18 = and i8 %17, 127
  %and23 = zext i8 %18 to i32
  %mul = mul nuw nsw i32 %and23, 500000
  %19 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %vwrq, align 4
  %tx_rate = getelementptr i8, ptr %dev, i32 111062
  %20 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp25 = icmp eq i8 %21, 5
  %conv27 = zext i1 %cmp25 to i8
  %fixed = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 1
  %22 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -1, %do.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_rts(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vwrq, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i32 %3, i32 2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 2347, i32 %spec.select)
  %6 = icmp ugt i32 %spec.select, 2347
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %rts = getelementptr i8, ptr %dev, i32 111132
  %7 = ptrtoint ptr %rts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %rts, align 4
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %8 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %need_commit, align 4
  %or = or i32 %9, 2
  store i32 %or, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end9 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_rts(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %rts = getelementptr i8, ptr %dev, i32 111132
  %2 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rts, align 4
  %4 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2346, i32 %3)
  %cmp3 = icmp sgt i32 %3, 2346
  %conv5 = zext i1 %cmp3 to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %5 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 1
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_frag(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vwrq, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i32 %3, i32 2346
  %6 = add i32 %spec.select, -2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %6)
  %7 = icmp ult i32 %6, -2091
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %and = and i32 %spec.select, -2
  %fragment = getelementptr i8, ptr %dev, i32 111136
  %8 = ptrtoint ptr %fragment to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %fragment, align 4
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %9 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %need_commit, align 4
  %or = or i32 %10, 4
  store i32 %or, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end9 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_frag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %fragment = getelementptr i8, ptr %dev, i32 111136
  %2 = ptrtoint ptr %fragment to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fragment, align 4
  %4 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2345, i32 %3)
  %cmp3 = icmp sgt i32 %3, 2345
  %conv5 = zext i1 %cmp3 to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %5 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 1
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_encode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %dwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %key = alloca %struct.wep_key, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %key) #18
  %0 = getelementptr inbounds %struct.wep_key, ptr %key, i32 0, i32 1
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %1 = call ptr @memset(ptr %key, i32 255, i32 18)
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 255
  %and = zext i16 %4 to i32
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %5 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %8)
  %cmp4 = icmp ugt i16 %8, 13
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp10 = icmp ugt i16 %4, 4
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp14 = icmp eq i16 %4, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %wep_index = getelementptr i8, ptr %dev, i32 111144
  %9 = ptrtoint ptr %wep_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wep_index, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %sub = add nsw i32 %and, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %sub, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp18.not = icmp eq i16 %8, 0
  br i1 %cmp18.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %8)
  %cmp23 = icmp ugt i16 %8, 5
  %conv26 = select i1 %cmp23, i16 13, i16 5
  %11 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv26, ptr %key, align 2
  %privacy_invoked = getelementptr i8, ptr %dev, i32 111140
  %12 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %privacy_invoked, align 4
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %13 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %need_commit, align 4
  %or = or i32 %14, 8
  store i32 %or, ptr %need_commit, align 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %17 = and i16 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.end37, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end37:                                         ; preds = %if.then20
  %18 = call ptr @memset(ptr %0, i32 0, i32 13)
  %19 = ptrtoint ptr %dwrq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dwrq, align 4
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length, align 4
  %conv42 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %22)
  %cmp1.i.i = icmp ugt i16 %22, 16
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !178

if.then3.i.i:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.27, i32 noundef 16, i32 noundef %conv42) #18
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end37
  call void @__check_object_size(ptr noundef %0, i32 noundef %conv42, i1 noundef zeroext false) #18
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #18
  %call.i.i = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 %conv42, i32 -1226833920) #23, !srcloc !179
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !180

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef %conv42) #18
  %24 = call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !181
  %and.i.i.i.i = and i32 %26, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #18, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !183
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %20, i32 noundef %conv42) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #18, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !183
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv42, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv42, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end47, label %if.then11.i.i, !prof !180

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = sub i32 %conv42, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %sub.i.i
  %27 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end47:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %key, align 2
  %conv49 = trunc i16 %29 to i8
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 23, i32 14, i32 %cond
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv49, ptr %arrayidx, align 4
  %val = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 23, i32 14, i32 %cond, i32 1
  %conv49.mask = and i16 %29, 255
  %conv61 = zext i16 %conv49.mask to i32
  %31 = call ptr @memcpy(ptr %val, ptr %0, i32 %conv61)
  %shl = shl i32 32, %cond
  %32 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %need_commit, align 4
  %or63 = or i32 %33, %shl
  %wep_index65 = getelementptr i8, ptr %dev, i32 111144
  %34 = ptrtoint ptr %wep_index65 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond, ptr %wep_index65, align 4
  %or67 = or i32 %or63, 16
  store i32 %or67, ptr %need_commit, align 4
  br label %if.end118

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %tobool71.not = icmp sgt i16 %3, -1
  br i1 %tobool71.not, label %if.else103, label %if.then72

if.then72:                                        ; preds = %if.else
  %wep_key74 = getelementptr i8, ptr %dev, i32 111148
  %35 = ptrtoint ptr %wep_key74 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %wep_key74, align 4
  %arrayidx79 = getelementptr i8, ptr %dev, i32 111176
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx79, align 4
  %arrayidx83 = getelementptr i8, ptr %dev, i32 111204
  %37 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx83, align 4
  %arrayidx87 = getelementptr i8, ptr %dev, i32 111232
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx87, align 4
  %privacy_invoked90 = getelementptr i8, ptr %dev, i32 111140
  %39 = ptrtoint ptr %privacy_invoked90 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %privacy_invoked90, align 4
  %authenticate_type = getelementptr i8, ptr %dev, i32 111260
  %40 = ptrtoint ptr %authenticate_type to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %authenticate_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %41)
  %cmp93 = icmp eq i16 %41, 1
  br i1 %cmp93, label %if.then95, label %if.then72.if.end98_crit_edge

if.then72.if.end98_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end98

if.then95:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #20
  %need_commit96 = getelementptr i8, ptr %dev, i32 111444
  %42 = ptrtoint ptr %need_commit96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %need_commit96, align 4
  %or97 = or i32 %43, 1
  store i32 %or97, ptr %need_commit96, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.then72.if.end98_crit_edge
  %44 = ptrtoint ptr %authenticate_type to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %authenticate_type, align 4
  %need_commit101 = getelementptr i8, ptr %dev, i32 111444
  %45 = ptrtoint ptr %need_commit101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %need_commit101, align 4
  %or102 = or i32 %46, 8
  store i32 %or102, ptr %need_commit101, align 4
  br label %if.end118

if.else103:                                       ; preds = %if.else
  %arrayidx106 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 23, i32 14, i32 %cond
  %47 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx106, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp109 = icmp eq i8 %48, 0
  br i1 %cmp109, label %if.else103.cleanup_crit_edge, label %if.end112

if.else103.cleanup_crit_edge:                     ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end112:                                        ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #20
  %wep_index114 = getelementptr i8, ptr %dev, i32 111144
  %49 = ptrtoint ptr %wep_index114 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond, ptr %wep_index114, align 4
  %need_commit115 = getelementptr i8, ptr %dev, i32 111444
  %50 = ptrtoint ptr %need_commit115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %need_commit115, align 4
  %or116 = or i32 %51, 16
  store i32 %or116, ptr %need_commit115, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end112, %if.end98, %if.end47
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %53)
  %tobool122.not = icmp ult i16 %53, 4096
  br i1 %tobool122.not, label %if.end118.if.end126_crit_edge, label %if.then123

if.end118.if.end126_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end126

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #20
  %need_commit124 = getelementptr i8, ptr %dev, i32 111444
  %54 = ptrtoint ptr %need_commit124 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %need_commit124, align 4
  %or125 = or i32 %55, 8
  store i32 %or125, ptr %need_commit124, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end118.if.end126_crit_edge
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags, align 2
  %conv128 = zext i16 %57 to i32
  %and129 = and i32 %conv128, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.else143, label %if.then131

if.then131:                                       ; preds = %if.end126
  %authenticate_type133 = getelementptr i8, ptr %dev, i32 111260
  %58 = ptrtoint ptr %authenticate_type133 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %authenticate_type133, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %59)
  %cmp135 = icmp eq i16 %59, 1
  br i1 %cmp135, label %if.then137, label %if.then131.if.end140_crit_edge

if.then131.if.end140_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end140

if.then137:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #20
  %need_commit138 = getelementptr i8, ptr %dev, i32 111444
  %60 = ptrtoint ptr %need_commit138 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %need_commit138, align 4
  %or139 = or i32 %61, 1
  store i32 %or139, ptr %need_commit138, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %if.then131.if.end140_crit_edge
  %62 = ptrtoint ptr %authenticate_type133 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %authenticate_type133, align 4
  br label %if.end161

if.else143:                                       ; preds = %if.end126
  %and146 = and i32 %conv128, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.else143.if.end161_crit_edge, label %if.then148

if.else143.if.end161_crit_edge:                   ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end161

if.then148:                                       ; preds = %if.else143
  %authenticate_type150 = getelementptr i8, ptr %dev, i32 111260
  %63 = ptrtoint ptr %authenticate_type150 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %authenticate_type150, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp152 = icmp eq i16 %64, 0
  br i1 %cmp152, label %if.then154, label %if.then148.if.end157_crit_edge

if.then148.if.end157_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end157

if.then154:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #20
  %need_commit155 = getelementptr i8, ptr %dev, i32 111444
  %65 = ptrtoint ptr %need_commit155 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %need_commit155, align 4
  %or156 = or i32 %66, 1
  store i32 %or156, ptr %need_commit155, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %if.then148.if.end157_crit_edge
  %67 = ptrtoint ptr %authenticate_type150 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %authenticate_type150, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.end157, %if.else143.if.end161_crit_edge, %if.end140
  %need_commit162 = getelementptr i8, ptr %dev, i32 111444
  %68 = ptrtoint ptr %need_commit162 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %need_commit162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool163.not = icmp eq i32 %69, 0
  br i1 %tobool163.not, label %if.end161.cleanup_crit_edge, label %if.then164

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #20
  %call166 = call i32 @ks_wlan_setup_parameter(ptr noundef %add.ptr.i, i32 noundef %69)
  %70 = ptrtoint ptr %need_commit162 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %need_commit162, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then164, %if.end161.cleanup_crit_edge, %if.else103.cleanup_crit_edge, %if.then11.i.i, %if.then3.i.i, %if.then20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ], [ -22, %if.else103.cleanup_crit_edge ], [ 0, %if.then164 ], [ 0, %if.end161.cleanup_crit_edge ], [ -14, %if.then3.i.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %key) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_encode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %dwrq, ptr nocapture noundef writeonly %extra) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 255
  %and = zext i16 %2 to i32
  %sub = add nsw i32 %and, -1
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %3 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp eq i8 %4, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32768, ptr %flags, align 2
  %authenticate_type = getelementptr i8, ptr %dev, i32 111260
  %6 = ptrtoint ptr %authenticate_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %authenticate_type, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %7, label %if.end.sw.epilog_crit_edge [
    i16 0, label %if.end.sw.epilog.sink.split_crit_edge
    i16 1, label %sw.bb6
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 16384, %sw.bb6 ], [ 8192, %if.end.sw.epilog.sink.split_crit_edge ]
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %flags, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %10 = add nsw i16 %2, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %10)
  %11 = icmp ult i16 %10, -4
  br i1 %11, label %if.then12, label %sw.epilog.if.end14_crit_edge

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  %wep_index = getelementptr i8, ptr %dev, i32 111144
  %12 = ptrtoint ptr %wep_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wep_index, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sw.epilog.if.end14_crit_edge
  %index.0 = phi i32 [ %13, %if.then12 ], [ %sub, %sw.epilog.if.end14_crit_edge ]
  %privacy_invoked = getelementptr i8, ptr %dev, i32 111140
  %14 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %privacy_invoked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %18 = and i16 %17, 32767
  store i16 %18, ptr %flags, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14.if.end21_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %21 = trunc i32 %index.0 to i16
  %22 = add i16 %21, 1
  %conv24 = or i16 %20, %22
  store i16 %conv24, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index.0)
  %23 = icmp ult i32 %index.0, 4
  br i1 %23, label %if.then29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 23, i32 14, i32 %index.0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %25)
  %cmp32 = icmp ult i8 %25, 17
  %narrow = select i1 %cmp32, i8 %25, i8 0
  %spec.select = zext i8 %narrow to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %spec.select, ptr %length, align 4
  %val = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 23, i32 14, i32 %index.0, i32 1
  %conv44 = zext i8 %narrow to i32
  %27 = call ptr @memcpy(ptr %extra, ptr %val, i32 %conv44)
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_power(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.else:                                          ; preds = %if.end
  %reg3 = getelementptr i8, ptr %dev, i32 111060
  %4 = ptrtoint ptr %reg3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp5.not = icmp eq i8 %5, 1
  br i1 %cmp5.not, label %if.else.if.end11_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %.sink = phi i8 [ 0, %if.end.if.end11_crit_edge ], [ 1, %if.else.if.end11_crit_edge ]
  %power_mgmt10 = getelementptr i8, ptr %dev, i32 111121
  %6 = ptrtoint ptr %power_mgmt10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %power_mgmt10, align 1
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 15) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_power(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %vwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %power_mgmt = getelementptr i8, ptr %dev, i32 111121
  %2 = ptrtoint ptr %power_mgmt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mgmt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3 = icmp eq i8 %3, 0
  %conv5 = zext i1 %cmp3 to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %disabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_genie(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %dwrq, ptr nocapture noundef readnone %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %. = sext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_auth_mode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vwrq, align 4
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %2 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 4095
  %and = zext i16 %6 to i32
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %and, label %if.end.sw.epilog114_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb46
    i32 3, label %sw.bb72
    i32 6, label %sw.bb79
    i32 7, label %sw.bb93
    i32 10, label %sw.bb95
  ]

if.end.sw.epilog114_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog114

sw.bb:                                            ; preds = %if.end
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %1, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb.sw.bb10_crit_edge
    i32 4, label %sw.bb.sw.bb10_crit_edge183
  ]

sw.bb.sw.bb10_crit_edge183:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb10

sw.bb.sw.bb10_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb10

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  %version = getelementptr i8, ptr %dev, i32 110236
  %9 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %version, align 4
  %rsn_enabled = getelementptr i8, ptr %dev, i32 110232
  %10 = ptrtoint ptr %rsn_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rsn_enabled, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %sw.bb4.if.end9_crit_edge, label %if.then6

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %rsn_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rsn_enabled, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %sw.bb4.if.end9_crit_edge
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %13 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %need_commit, align 4
  %or = or i32 %14, 512
  store i32 %or, ptr %need_commit, align 4
  br label %sw.epilog114

sw.bb10:                                          ; preds = %sw.bb.sw.bb10_crit_edge, %sw.bb.sw.bb10_crit_edge183
  %version12 = getelementptr i8, ptr %dev, i32 110236
  %15 = ptrtoint ptr %version12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %1, ptr %version12, align 4
  %rsn_enabled14 = getelementptr i8, ptr %dev, i32 110232
  %16 = ptrtoint ptr %rsn_enabled14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rsn_enabled14, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %if.then16, label %sw.bb10.if.end19_crit_edge

sw.bb10.if.end19_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then16:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %rsn_enabled14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %rsn_enabled14, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %sw.bb10.if.end19_crit_edge
  %need_commit20 = getelementptr i8, ptr %dev, i32 111444
  %19 = ptrtoint ptr %need_commit20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %need_commit20, align 4
  %or21 = or i32 %20, 512
  store i32 %or21, ptr %need_commit20, align 4
  br label %sw.epilog114

sw.bb22:                                          ; preds = %if.end
  %21 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %1, label %sw.bb22.cleanup_crit_edge [
    i32 1, label %sw.bb23
    i32 2, label %sw.bb22.sw.bb31_crit_edge
    i32 4, label %sw.bb22.sw.bb31_crit_edge184
    i32 8, label %sw.bb22.sw.bb31_crit_edge185
    i32 16, label %sw.bb22.sw.bb31_crit_edge186
  ]

sw.bb22.sw.bb31_crit_edge186:                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb31

sw.bb22.sw.bb31_crit_edge185:                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb31

sw.bb22.sw.bb31_crit_edge184:                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb31

sw.bb22.sw.bb31_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb31

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb23:                                          ; preds = %sw.bb22
  %privacy_invoked = getelementptr i8, ptr %dev, i32 111140
  %22 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %privacy_invoked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  br i1 %tobool24.not, label %sw.bb23.sw.epilog114_crit_edge, label %if.then25

sw.bb23.sw.epilog114_crit_edge:                   ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog114

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %privacy_invoked, align 4
  %need_commit28 = getelementptr i8, ptr %dev, i32 111444
  %25 = ptrtoint ptr %need_commit28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %need_commit28, align 4
  %or29 = or i32 %26, 8
  store i32 %or29, ptr %need_commit28, align 4
  br label %sw.epilog114

sw.bb31:                                          ; preds = %sw.bb22.sw.bb31_crit_edge, %sw.bb22.sw.bb31_crit_edge184, %sw.bb22.sw.bb31_crit_edge185, %sw.bb22.sw.bb31_crit_edge186
  %privacy_invoked33 = getelementptr i8, ptr %dev, i32 111140
  %27 = ptrtoint ptr %privacy_invoked33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %privacy_invoked33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool34.not = icmp eq i32 %28, 0
  br i1 %tobool34.not, label %if.then35, label %sw.bb31.if.end40_crit_edge

sw.bb31.if.end40_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then35:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %privacy_invoked33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %privacy_invoked33, align 4
  %need_commit38 = getelementptr i8, ptr %dev, i32 111444
  %30 = ptrtoint ptr %need_commit38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %need_commit38, align 4
  %or39 = or i32 %31, 8
  store i32 %or39, ptr %need_commit38, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %sw.bb31.if.end40_crit_edge
  %pairwise_suite = getelementptr i8, ptr %dev, i32 110240
  %32 = ptrtoint ptr %pairwise_suite to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %1, ptr %pairwise_suite, align 4
  %need_commit42 = getelementptr i8, ptr %dev, i32 111444
  %33 = ptrtoint ptr %need_commit42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %need_commit42, align 4
  %or43 = or i32 %34, 2048
  store i32 %or43, ptr %need_commit42, align 4
  br label %sw.epilog114

sw.bb46:                                          ; preds = %if.end
  %35 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %1, label %sw.bb46.cleanup_crit_edge [
    i32 1, label %sw.bb47
    i32 2, label %sw.bb46.sw.bb57_crit_edge
    i32 4, label %sw.bb46.sw.bb57_crit_edge187
    i32 8, label %sw.bb46.sw.bb57_crit_edge188
    i32 16, label %sw.bb46.sw.bb57_crit_edge189
  ]

sw.bb46.sw.bb57_crit_edge189:                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb57

sw.bb46.sw.bb57_crit_edge188:                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb57

sw.bb46.sw.bb57_crit_edge187:                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb57

sw.bb46.sw.bb57_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb57

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb47:                                          ; preds = %sw.bb46
  %privacy_invoked49 = getelementptr i8, ptr %dev, i32 111140
  %36 = ptrtoint ptr %privacy_invoked49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %privacy_invoked49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool50.not = icmp eq i32 %37, 0
  br i1 %tobool50.not, label %sw.bb47.sw.epilog114_crit_edge, label %if.then51

sw.bb47.sw.epilog114_crit_edge:                   ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog114

if.then51:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #20
  %38 = ptrtoint ptr %privacy_invoked49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %privacy_invoked49, align 4
  %need_commit54 = getelementptr i8, ptr %dev, i32 111444
  %39 = ptrtoint ptr %need_commit54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %need_commit54, align 4
  %or55 = or i32 %40, 8
  store i32 %or55, ptr %need_commit54, align 4
  br label %sw.epilog114

sw.bb57:                                          ; preds = %sw.bb46.sw.bb57_crit_edge, %sw.bb46.sw.bb57_crit_edge187, %sw.bb46.sw.bb57_crit_edge188, %sw.bb46.sw.bb57_crit_edge189
  %privacy_invoked59 = getelementptr i8, ptr %dev, i32 111140
  %41 = ptrtoint ptr %privacy_invoked59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %privacy_invoked59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool60.not = icmp eq i32 %42, 0
  br i1 %tobool60.not, label %if.then61, label %sw.bb57.if.end66_crit_edge

sw.bb57.if.end66_crit_edge:                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

if.then61:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %privacy_invoked59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %privacy_invoked59, align 4
  %need_commit64 = getelementptr i8, ptr %dev, i32 111444
  %44 = ptrtoint ptr %need_commit64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %need_commit64, align 4
  %or65 = or i32 %45, 8
  store i32 %or65, ptr %need_commit64, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %sw.bb57.if.end66_crit_edge
  %group_suite = getelementptr i8, ptr %dev, i32 110244
  %46 = ptrtoint ptr %group_suite to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %1, ptr %group_suite, align 4
  %need_commit68 = getelementptr i8, ptr %dev, i32 111444
  %47 = ptrtoint ptr %need_commit68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %need_commit68, align 4
  %or69 = or i32 %48, 1024
  store i32 %or69, ptr %need_commit68, align 4
  br label %sw.epilog114

sw.bb72:                                          ; preds = %if.end
  %49 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %1, label %sw.bb72.cleanup_crit_edge [
    i32 1, label %sw.bb72.sw.bb73_crit_edge
    i32 2, label %sw.bb72.sw.bb73_crit_edge190
    i32 0, label %sw.bb72.sw.bb73_crit_edge191
    i32 4, label %sw.bb72.sw.bb73_crit_edge192
  ]

sw.bb72.sw.bb73_crit_edge192:                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb73

sw.bb72.sw.bb73_crit_edge191:                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb73

sw.bb72.sw.bb73_crit_edge190:                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb73

sw.bb72.sw.bb73_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb73

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb73:                                          ; preds = %sw.bb72.sw.bb73_crit_edge, %sw.bb72.sw.bb73_crit_edge190, %sw.bb72.sw.bb73_crit_edge191, %sw.bb72.sw.bb73_crit_edge192
  %key_mgmt_suite = getelementptr i8, ptr %dev, i32 110248
  %50 = ptrtoint ptr %key_mgmt_suite to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %1, ptr %key_mgmt_suite, align 4
  %need_commit75 = getelementptr i8, ptr %dev, i32 111444
  %51 = ptrtoint ptr %need_commit75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %need_commit75, align 4
  %or76 = or i32 %52, 4096
  store i32 %or76, ptr %need_commit75, align 4
  br label %sw.epilog114

sw.bb79:                                          ; preds = %if.end
  %53 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %1, label %sw.bb79.cleanup_crit_edge [
    i32 1, label %sw.bb79.sw.epilog90_crit_edge
    i32 2, label %sw.bb83
  ]

sw.bb79.sw.epilog90_crit_edge:                    ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog90

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb83:                                          ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog90

sw.epilog90:                                      ; preds = %sw.bb83, %sw.bb79.sw.epilog90_crit_edge
  %.sink = phi i16 [ 1, %sw.bb83 ], [ 0, %sw.bb79.sw.epilog90_crit_edge ]
  %auth_alg85 = getelementptr i8, ptr %dev, i32 110252
  %54 = ptrtoint ptr %auth_alg85 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %1, ptr %auth_alg85, align 4
  %authenticate_type87 = getelementptr i8, ptr %dev, i32 111260
  %55 = ptrtoint ptr %authenticate_type87 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %.sink, ptr %authenticate_type87, align 4
  %need_commit91 = getelementptr i8, ptr %dev, i32 111444
  %56 = ptrtoint ptr %need_commit91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %need_commit91, align 4
  %or92 = or i32 %57, 1
  store i32 %or92, ptr %need_commit91, align 4
  br label %sw.epilog114

sw.bb93:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %wpa94 = getelementptr i8, ptr %dev, i32 110228
  %58 = ptrtoint ptr %wpa94 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %1, ptr %wpa94, align 4
  br label %sw.epilog114

sw.bb95:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool96.not = icmp eq i32 %1, 0
  %privacy_invoked103 = getelementptr i8, ptr %dev, i32 111140
  %59 = ptrtoint ptr %privacy_invoked103 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %privacy_invoked103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool104.not = icmp eq i32 %60, 0
  br i1 %tobool96.not, label %land.lhs.true101.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb95
  br i1 %tobool104.not, label %land.lhs.true.if.then105_crit_edge, label %land.lhs.true.sw.epilog114_crit_edge

land.lhs.true.sw.epilog114_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog114

land.lhs.true.if.then105_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

land.lhs.true101.critedge:                        ; preds = %sw.bb95
  br i1 %tobool104.not, label %land.lhs.true101.critedge.sw.epilog114_crit_edge, label %land.lhs.true101.critedge.if.then105_crit_edge

land.lhs.true101.critedge.if.then105_crit_edge:   ; preds = %land.lhs.true101.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105

land.lhs.true101.critedge.sw.epilog114_crit_edge: ; preds = %land.lhs.true101.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog114

if.then105:                                       ; preds = %land.lhs.true101.critedge.if.then105_crit_edge, %land.lhs.true.if.then105_crit_edge
  %not.tobool96.not = xor i1 %tobool96.not, true
  %cond = zext i1 %not.tobool96.not to i32
  %privacy_invoked108 = getelementptr i8, ptr %dev, i32 111140
  %61 = ptrtoint ptr %privacy_invoked108 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond, ptr %privacy_invoked108, align 4
  %need_commit109 = getelementptr i8, ptr %dev, i32 111444
  %62 = ptrtoint ptr %need_commit109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %need_commit109, align 4
  %or110 = or i32 %63, 8
  store i32 %or110, ptr %need_commit109, align 4
  br label %sw.epilog114

sw.epilog114:                                     ; preds = %if.then105, %land.lhs.true101.critedge.sw.epilog114_crit_edge, %land.lhs.true.sw.epilog114_crit_edge, %sw.bb93, %sw.epilog90, %sw.bb73, %if.end66, %if.then51, %sw.bb47.sw.epilog114_crit_edge, %if.end40, %if.then25, %sw.bb23.sw.epilog114_crit_edge, %if.end19, %if.end9, %if.end.sw.epilog114_crit_edge
  %need_commit115 = getelementptr i8, ptr %dev, i32 111444
  %64 = ptrtoint ptr %need_commit115 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %need_commit115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool116.not = icmp eq i32 %65, 0
  br i1 %tobool116.not, label %sw.epilog114.cleanup_crit_edge, label %if.then117

sw.epilog114.cleanup_crit_edge:                   ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then117:                                       ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #20
  %call119 = tail call i32 @ks_wlan_setup_parameter(ptr noundef %add.ptr.i, i32 noundef %65)
  %66 = ptrtoint ptr %need_commit115 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %need_commit115, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %sw.epilog114.cleanup_crit_edge, %sw.bb79.cleanup_crit_edge, %sw.bb72.cleanup_crit_edge, %sw.bb46.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %sw.bb22.cleanup_crit_edge ], [ -95, %sw.bb46.cleanup_crit_edge ], [ -95, %sw.bb72.cleanup_crit_edge ], [ -95, %sw.bb79.cleanup_crit_edge ], [ 0, %if.then117 ], [ 0, %sw.epilog114.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_auth_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %vwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 4095
  %and = zext i16 %4 to i32
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 6, label %sw.bb12
    i32 7, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %version = getelementptr i8, ptr %dev, i32 110236
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %pairwise_suite = getelementptr i8, ptr %dev, i32 110240
  %8 = ptrtoint ptr %pairwise_suite to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pairwise_suite, align 4
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %group_suite = getelementptr i8, ptr %dev, i32 110244
  %10 = ptrtoint ptr %group_suite to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %group_suite, align 4
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %key_mgmt_suite = getelementptr i8, ptr %dev, i32 110248
  %12 = ptrtoint ptr %key_mgmt_suite to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_mgmt_suite, align 4
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %auth_alg = getelementptr i8, ptr %dev, i32 110252
  %14 = ptrtoint ptr %auth_alg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %auth_alg, align 4
  br label %cleanup.sink.split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %rsn_enabled = getelementptr i8, ptr %dev, i32 110232
  %16 = ptrtoint ptr %rsn_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rsn_enabled, align 4, !range !177
  %18 = zext i8 %17 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb
  %.sink = phi i32 [ %7, %sw.bb ], [ %9, %sw.bb3 ], [ %11, %sw.bb6 ], [ %13, %sw.bb9 ], [ %15, %sw.bb12 ], [ %18, %sw.bb15 ]
  %19 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %vwrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_encode_ext(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %dwrq, ptr noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %2 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = add nsw i32 %and, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %4)
  %5 = icmp ult i32 %4, -4
  br i1 %5, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %dec = add nsw i32 %and, -1
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec
  %and14 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end10.if.end17_crit_edge, label %if.then16

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %key_len = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 5
  %6 = ptrtoint ptr %key_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %key_len, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end10.if.end17_crit_edge
  %7 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extra, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %10 = load i32, ptr %extra, align 4
  %and20 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %txkey = getelementptr i8, ptr %dev, i32 110256
  %11 = ptrtoint ptr %txkey to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec, ptr %txkey, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end17
  %and25 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else.if.end32_crit_edge, label %if.then27

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %rx_seq = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 2
  %rx_seq29 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 2
  %12 = ptrtoint ptr %rx_seq29 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %rx_seq29, align 4
  %14 = ptrtoint ptr %rx_seq to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %rx_seq, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.else.if.end32_crit_edge, %if.then22
  %commit.0 = phi i32 [ 16, %if.then22 ], [ 0, %if.then27 ], [ 0, %if.else.if.end32_crit_edge ]
  %sa_data = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 3, i32 1
  %sa_data35 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %sa_data35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sa_data35, align 4
  %17 = ptrtoint ptr %sa_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sa_data, align 4
  %add.ptr.i197 = getelementptr %struct.iw_encode_ext, ptr %extra, i32 0, i32 3, i32 1, i32 4
  %18 = ptrtoint ptr %add.ptr.i197 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i197, align 2
  %add.ptr1.i = getelementptr i8, ptr %sa_data, i32 4
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %add.ptr1.i, align 2
  %alg = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %21 = ptrtoint ptr %alg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %alg, align 4
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %22, label %if.end32.cleanup_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %if.end32.sw.bb45_crit_edge
    i16 3, label %if.end32.sw.bb45_crit_edge202
    i16 2, label %sw.bb66
  ]

if.end32.sw.bb45_crit_edge202:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb45

if.end32.sw.bb45_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb45

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %if.end32
  %privacy_invoked = getelementptr i8, ptr %dev, i32 111140
  %24 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %privacy_invoked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool38.not = icmp eq i32 %25, 0
  br i1 %tobool38.not, label %sw.bb.if.end43_crit_edge, label %if.then39

sw.bb.if.end43_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then39:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %privacy_invoked, align 4
  %or42 = or i32 %commit.0, 8
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %sw.bb.if.end43_crit_edge
  %commit.1 = phi i32 [ %or42, %if.then39 ], [ %commit.0, %sw.bb.if.end43_crit_edge ]
  %key_len44 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 5
  %27 = ptrtoint ptr %key_len44 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %key_len44, align 2
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end32.sw.bb45_crit_edge, %if.end32.sw.bb45_crit_edge202
  %privacy_invoked47 = getelementptr i8, ptr %dev, i32 111140
  %28 = ptrtoint ptr %privacy_invoked47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %privacy_invoked47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool48.not = icmp eq i32 %29, 0
  br i1 %tobool48.not, label %if.then49, label %sw.bb45.if.end53_crit_edge

sw.bb45.if.end53_crit_edge:                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then49:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %privacy_invoked47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %privacy_invoked47, align 4
  %or52 = or i32 %commit.0, 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %sw.bb45.if.end53_crit_edge
  %commit.2 = phi i32 [ %commit.0, %sw.bb45.if.end53_crit_edge ], [ %or52, %if.then49 ]
  %key_len54 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %31 = ptrtoint ptr %key_len54 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %key_len54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool55.not = icmp eq i16 %32, 0
  br i1 %tobool55.not, label %if.end53.sw.epilog_crit_edge, label %if.then56

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  %key_val = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 6
  %key58 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %conv61 = zext i16 %32 to i32
  %33 = call ptr @memcpy(ptr %key_val, ptr %key58, i32 %conv61)
  %34 = ptrtoint ptr %key_len54 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len54, align 2
  %key_len63 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 5
  %36 = ptrtoint ptr %key_len63 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %key_len63, align 2
  br label %sw.epilog.thread

sw.bb66:                                          ; preds = %if.end32
  %privacy_invoked68 = getelementptr i8, ptr %dev, i32 111140
  %37 = ptrtoint ptr %privacy_invoked68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %privacy_invoked68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool69.not = icmp eq i32 %38, 0
  br i1 %tobool69.not, label %if.then70, label %sw.bb66.if.end74_crit_edge

sw.bb66.if.end74_crit_edge:                       ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end74

if.then70:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %privacy_invoked68 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %privacy_invoked68, align 4
  %or73 = or i32 %commit.0, 8
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %sw.bb66.if.end74_crit_edge
  %commit.3 = phi i32 [ %commit.0, %sw.bb66.if.end74_crit_edge ], [ %or73, %if.then70 ]
  %key_len75 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %40 = ptrtoint ptr %key_len75 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %key_len75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %41)
  %cmp77 = icmp eq i16 %41, 32
  br i1 %cmp77, label %if.then79, label %if.end74.sw.epilog_crit_edge

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  %key_val80 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 6
  %key82 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %42 = call ptr @memcpy(ptr %key_val80, ptr %key82, i32 16)
  %43 = ptrtoint ptr %key_len75 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %key_len75, align 2
  %sub88 = add i16 %44, -16
  %key_len90 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 5
  %45 = ptrtoint ptr %key_len90 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %sub88, ptr %key_len90, align 2
  %key_mgmt_suite = getelementptr i8, ptr %dev, i32 110248
  %46 = ptrtoint ptr %key_mgmt_suite to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %key_mgmt_suite, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp92 = icmp eq i32 %47, 4
  %tx_mic_key = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 7
  %arrayidx97 = getelementptr %struct.iw_encode_ext, ptr %extra, i32 1, i32 2, i32 4
  %48 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %arrayidx97, align 4
  %50 = ptrtoint ptr %tx_mic_key to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %tx_mic_key, align 4
  %arrayidx109 = getelementptr %struct.iw_encode_ext, ptr %extra, i32 1, i32 3, i32 1, i32 2
  %.sink.in = select i1 %cmp92, ptr %arrayidx97, ptr %arrayidx109
  %51 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %.sink = load i64, ptr %.sink.in, align 4
  %52 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %.sink, ptr %52, align 4
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.then79, %if.then56
  %commit.3.sink = phi i32 [ %commit.3, %if.then79 ], [ %commit.2, %if.then56 ]
  %shl111 = shl nuw nsw i32 16, %and
  %or112 = or i32 %commit.3.sink, %shl111
  %54 = ptrtoint ptr %alg to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %alg, align 4
  %alg115199 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 4
  %56 = ptrtoint ptr %alg115199 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %alg115199, align 4
  br label %if.then117

sw.epilog:                                        ; preds = %if.end74.sw.epilog_crit_edge, %if.end53.sw.epilog_crit_edge, %if.end43
  %commit.4 = phi i32 [ %commit.3, %if.end74.sw.epilog_crit_edge ], [ %commit.2, %if.end53.sw.epilog_crit_edge ], [ %commit.1, %if.end43 ]
  %57 = ptrtoint ptr %alg to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %alg, align 4
  %alg115 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 21, i32 8, i32 %dec, i32 4
  %59 = ptrtoint ptr %alg115 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %alg115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %commit.4)
  %tobool116.not = icmp eq i32 %commit.4, 0
  br i1 %tobool116.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.then117_crit_edge

sw.epilog.if.then117_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then117

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then117:                                       ; preds = %sw.epilog.if.then117_crit_edge, %sw.epilog.thread
  %commit.4201 = phi i32 [ %or112, %sw.epilog.thread ], [ %commit.4, %sw.epilog.if.then117_crit_edge ]
  %and118 = and i32 %commit.4201, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.then117.if.end121_crit_edge, label %if.then120

if.then117.if.end121_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end121

if.then120:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 5) #18
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %if.then117.if.end121_crit_edge
  %and122 = and i32 %commit.4201, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.if.end126_crit_edge, label %if.then124

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end126

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #20
  %60 = trunc i32 %and to i16
  %conv125 = add nuw nsw i16 %60, 5
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext %conv125) #18
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.end121.if.end126_crit_edge
  %and127 = and i32 %commit.4201, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end126.cleanup_crit_edge, label %if.then129

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 28) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %if.end126.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ 0, %if.end126.cleanup_crit_edge ], [ 0, %if.then129 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_encode_ext(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %dwrq, ptr nocapture noundef readnone %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %. = sext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_pmksa(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %dwrq, ptr noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %3, label %if.end3.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb112
    i32 3, label %sw.bb154
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %pmklist = getelementptr i8, ptr %dev, i32 110792
  %head = getelementptr i8, ptr %dev, i32 110796
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %6, %head
  br i1 %cmp.i.not, label %for.body.preheader, label %for.cond28.preheader

for.body.preheader:                               ; preds = %sw.bb
  %arrayidx = getelementptr i8, ptr %dev, i32 110804
  %bssid = getelementptr i8, ptr %dev, i32 110812
  %7 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bssid, align 4
  %add.ptr.i237 = getelementptr i8, ptr %dev, i32 110816
  %9 = ptrtoint ptr %add.ptr.i237 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i237, align 2
  %conv.i238 = zext i16 %10 to i32
  %or.i = or i32 %8, %conv.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i239 = icmp eq i32 %or.i, 0
  br i1 %cmp.i239, label %for.body.preheader.for.end_crit_edge, label %for.cond

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond28.preheader:                             ; preds = %sw.bb
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %ptr.0281 = load ptr, ptr %head, align 4
  %cmp.i241282 = icmp eq ptr %ptr.0281, %head
  br i1 %cmp.i241282, label %for.cond28.preheader.if.end57_crit_edge, label %for.body33.lr.ph

for.cond28.preheader.if.end57_crit_edge:          ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

for.body33.lr.ph:                                 ; preds = %for.cond28.preheader
  %sa_data35 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %sa_data35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sa_data35, align 4
  %add.ptr.i243 = getelementptr %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i243 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i243, align 2
  br label %for.body33

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 110836
  %bssid.1 = getelementptr i8, ptr %dev, i32 110844
  %16 = ptrtoint ptr %bssid.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bssid.1, align 4
  %add.ptr.i237.1 = getelementptr i8, ptr %dev, i32 110848
  %18 = ptrtoint ptr %add.ptr.i237.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i237.1, align 2
  %conv.i238.1 = zext i16 %19 to i32
  %or.i.1 = or i32 %17, %conv.i238.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.1)
  %cmp.i239.1 = icmp eq i32 %or.i.1, 0
  br i1 %cmp.i239.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 110868
  %bssid.2 = getelementptr i8, ptr %dev, i32 110876
  %20 = ptrtoint ptr %bssid.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bssid.2, align 4
  %add.ptr.i237.2 = getelementptr i8, ptr %dev, i32 110880
  %22 = ptrtoint ptr %add.ptr.i237.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i237.2, align 2
  %conv.i238.2 = zext i16 %23 to i32
  %or.i.2 = or i32 %21, %conv.i238.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.2)
  %cmp.i239.2 = icmp eq i32 %or.i.2, 0
  br i1 %cmp.i239.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 110900
  %bssid.3 = getelementptr i8, ptr %dev, i32 110908
  %24 = ptrtoint ptr %bssid.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bssid.3, align 4
  %add.ptr.i237.3 = getelementptr i8, ptr %dev, i32 110912
  %26 = ptrtoint ptr %add.ptr.i237.3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i237.3, align 2
  %conv.i238.3 = zext i16 %27 to i32
  %or.i.3 = or i32 %25, %conv.i238.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.3)
  %cmp.i239.3 = icmp eq i32 %or.i.3, 0
  br i1 %cmp.i239.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 110932
  %bssid.4 = getelementptr i8, ptr %dev, i32 110940
  %28 = ptrtoint ptr %bssid.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bssid.4, align 4
  %add.ptr.i237.4 = getelementptr i8, ptr %dev, i32 110944
  %30 = ptrtoint ptr %add.ptr.i237.4 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i237.4, align 2
  %conv.i238.4 = zext i16 %31 to i32
  %or.i.4 = or i32 %29, %conv.i238.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.4)
  %cmp.i239.4 = icmp eq i32 %or.i.4, 0
  br i1 %cmp.i239.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 110964
  %bssid.5 = getelementptr i8, ptr %dev, i32 110972
  %32 = ptrtoint ptr %bssid.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bssid.5, align 4
  %add.ptr.i237.5 = getelementptr i8, ptr %dev, i32 110976
  %34 = ptrtoint ptr %add.ptr.i237.5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i237.5, align 2
  %conv.i238.5 = zext i16 %35 to i32
  %or.i.5 = or i32 %33, %conv.i238.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.5)
  %cmp.i239.5 = icmp eq i32 %or.i.5, 0
  br i1 %cmp.i239.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #20
  %bssid.6 = getelementptr i8, ptr %dev, i32 111004
  %36 = ptrtoint ptr %bssid.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bssid.6, align 4
  %add.ptr.i237.6 = getelementptr i8, ptr %dev, i32 111008
  %38 = ptrtoint ptr %add.ptr.i237.6 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i237.6, align 2
  %conv.i238.6 = zext i16 %39 to i32
  %or.i.6 = or i32 %37, %conv.i238.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.6)
  %cmp.i239.6 = icmp eq i32 %or.i.6, 0
  %spec.select299.v = select i1 %cmp.i239.6, i32 110996, i32 111028
  %spec.select299 = getelementptr i8, ptr %dev, i32 %spec.select299.v
  br label %for.end

for.end:                                          ; preds = %for.cond.5, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %for.body.preheader.for.end_crit_edge ], [ %arrayidx.1, %for.cond.for.end_crit_edge ], [ %arrayidx.2, %for.cond.1.for.end_crit_edge ], [ %arrayidx.3, %for.cond.2.for.end_crit_edge ], [ %arrayidx.4, %for.cond.3.for.end_crit_edge ], [ %arrayidx.5, %for.cond.4.for.end_crit_edge ], [ %spec.select299, %for.cond.5 ]
  %bssid14 = getelementptr inbounds %struct.pmk, ptr %arrayidx.lcssa, i32 0, i32 1
  %sa_data = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sa_data, align 4
  %42 = ptrtoint ptr %bssid14 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %bssid14, align 4
  %add.ptr.i240 = getelementptr %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1, i32 4
  %43 = ptrtoint ptr %add.ptr.i240 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i240, align 2
  %add.ptr1.i = getelementptr %struct.pmk, ptr %arrayidx.lcssa, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i, align 2
  %pmkid = getelementptr inbounds %struct.pmk, ptr %arrayidx.lcssa, i32 0, i32 2
  %pmkid19 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 2
  %46 = call ptr @memcpy(ptr %pmkid, ptr %pmkid19, i32 16)
  %47 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.lcssa, ptr noundef %head, ptr noundef %48) #18
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx.lcssa, ptr %prev1.i.i, align 4
  %50 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %arrayidx.lcssa, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.lcssa, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %arrayidx.lcssa, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  %53 = ptrtoint ptr %pmklist to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %pmklist, align 4
  %inc24 = add i16 %54, 1
  store i16 %inc24, ptr %pmklist, align 4
  br label %sw.epilog

for.cond28:                                       ; preds = %for.body33
  %55 = ptrtoint ptr %ptr.0283 to i32
  call void @__asan_load4_noabort(i32 %55)
  %ptr.0 = load ptr, ptr %ptr.0283, align 4
  %cmp.i241 = icmp eq ptr %ptr.0, %head
  br i1 %cmp.i241, label %for.cond28.if.end57_crit_edge, label %for.cond28.for.body33_crit_edge

for.cond28.for.body33_crit_edge:                  ; preds = %for.cond28
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body33

for.cond28.if.end57_crit_edge:                    ; preds = %for.cond28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

for.body33:                                       ; preds = %for.cond28.for.body33_crit_edge, %for.body33.lr.ph
  %ptr.0283 = phi ptr [ %ptr.0281, %for.body33.lr.ph ], [ %ptr.0, %for.cond28.for.body33_crit_edge ]
  %bssid37 = getelementptr inbounds %struct.pmk, ptr %ptr.0283, i32 0, i32 1
  %56 = ptrtoint ptr %bssid37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bssid37, align 4
  %xor.i = xor i32 %57, %13
  %add.ptr1.i244 = getelementptr %struct.pmk, ptr %ptr.0283, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %add.ptr1.i244 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr1.i244, align 2
  %xor37.i = xor i16 %59, %15
  %xor3.i = zext i16 %xor37.i to i32
  %or.i245 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i245)
  %cmp.i246 = icmp eq i32 %or.i245, 0
  br i1 %cmp.i246, label %for.end51, label %for.cond28

for.end51:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #20
  %pmkid41 = getelementptr inbounds %struct.pmk, ptr %ptr.0283, i32 0, i32 2
  %pmkid43 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 2
  %60 = call ptr @memcpy(ptr %pmkid41, ptr %pmkid43, i32 16)
  tail call fastcc void @list_move(ptr noundef %ptr.0283, ptr noundef %head)
  br label %sw.epilog

if.end57:                                         ; preds = %for.cond28.if.end57_crit_edge, %for.cond28.preheader.if.end57_crit_edge
  %61 = ptrtoint ptr %pmklist to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %pmklist, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %62)
  %cmp61 = icmp ult i16 %62, 8
  br i1 %cmp61, label %for.body67.preheader, label %if.else

for.body67.preheader:                             ; preds = %if.end57
  %arrayidx70 = getelementptr i8, ptr %dev, i32 110804
  %bssid71 = getelementptr i8, ptr %dev, i32 110812
  %63 = ptrtoint ptr %bssid71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bssid71, align 4
  %add.ptr.i247 = getelementptr i8, ptr %dev, i32 110816
  %65 = ptrtoint ptr %add.ptr.i247 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i247, align 2
  %conv.i248 = zext i16 %66 to i32
  %or.i249 = or i32 %64, %conv.i248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i249)
  %cmp.i250 = icmp eq i32 %or.i249, 0
  br i1 %cmp.i250, label %for.body67.preheader.for.end78_crit_edge, label %for.cond64

for.body67.preheader.for.end78_crit_edge:         ; preds = %for.body67.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.cond64:                                       ; preds = %for.body67.preheader
  %arrayidx70.1 = getelementptr i8, ptr %dev, i32 110836
  %bssid71.1 = getelementptr i8, ptr %dev, i32 110844
  %67 = ptrtoint ptr %bssid71.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bssid71.1, align 4
  %add.ptr.i247.1 = getelementptr i8, ptr %dev, i32 110848
  %69 = ptrtoint ptr %add.ptr.i247.1 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i247.1, align 2
  %conv.i248.1 = zext i16 %70 to i32
  %or.i249.1 = or i32 %68, %conv.i248.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i249.1)
  %cmp.i250.1 = icmp eq i32 %or.i249.1, 0
  br i1 %cmp.i250.1, label %for.cond64.for.end78_crit_edge, label %for.cond64.1

for.cond64.for.end78_crit_edge:                   ; preds = %for.cond64
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.cond64.1:                                     ; preds = %for.cond64
  %arrayidx70.2 = getelementptr i8, ptr %dev, i32 110868
  %bssid71.2 = getelementptr i8, ptr %dev, i32 110876
  %71 = ptrtoint ptr %bssid71.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bssid71.2, align 4
  %add.ptr.i247.2 = getelementptr i8, ptr %dev, i32 110880
  %73 = ptrtoint ptr %add.ptr.i247.2 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i247.2, align 2
  %conv.i248.2 = zext i16 %74 to i32
  %or.i249.2 = or i32 %72, %conv.i248.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i249.2)
  %cmp.i250.2 = icmp eq i32 %or.i249.2, 0
  br i1 %cmp.i250.2, label %for.cond64.1.for.end78_crit_edge, label %for.cond64.2

for.cond64.1.for.end78_crit_edge:                 ; preds = %for.cond64.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.cond64.2:                                     ; preds = %for.cond64.1
  %arrayidx70.3 = getelementptr i8, ptr %dev, i32 110900
  %bssid71.3 = getelementptr i8, ptr %dev, i32 110908
  %75 = ptrtoint ptr %bssid71.3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bssid71.3, align 4
  %add.ptr.i247.3 = getelementptr i8, ptr %dev, i32 110912
  %77 = ptrtoint ptr %add.ptr.i247.3 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i247.3, align 2
  %conv.i248.3 = zext i16 %78 to i32
  %or.i249.3 = or i32 %76, %conv.i248.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i249.3)
  %cmp.i250.3 = icmp eq i32 %or.i249.3, 0
  br i1 %cmp.i250.3, label %for.cond64.2.for.end78_crit_edge, label %for.cond64.3

for.cond64.2.for.end78_crit_edge:                 ; preds = %for.cond64.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.cond64.3:                                     ; preds = %for.cond64.2
  %arrayidx70.4 = getelementptr i8, ptr %dev, i32 110932
  %bssid71.4 = getelementptr i8, ptr %dev, i32 110940
  %79 = ptrtoint ptr %bssid71.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bssid71.4, align 4
  %add.ptr.i247.4 = getelementptr i8, ptr %dev, i32 110944
  %81 = ptrtoint ptr %add.ptr.i247.4 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i247.4, align 2
  %conv.i248.4 = zext i16 %82 to i32
  %or.i249.4 = or i32 %80, %conv.i248.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i249.4)
  %cmp.i250.4 = icmp eq i32 %or.i249.4, 0
  br i1 %cmp.i250.4, label %for.cond64.3.for.end78_crit_edge, label %for.cond64.4

for.cond64.3.for.end78_crit_edge:                 ; preds = %for.cond64.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.cond64.4:                                     ; preds = %for.cond64.3
  %arrayidx70.5 = getelementptr i8, ptr %dev, i32 110964
  %bssid71.5 = getelementptr i8, ptr %dev, i32 110972
  %83 = ptrtoint ptr %bssid71.5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bssid71.5, align 4
  %add.ptr.i247.5 = getelementptr i8, ptr %dev, i32 110976
  %85 = ptrtoint ptr %add.ptr.i247.5 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i247.5, align 2
  %conv.i248.5 = zext i16 %86 to i32
  %or.i249.5 = or i32 %84, %conv.i248.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i249.5)
  %cmp.i250.5 = icmp eq i32 %or.i249.5, 0
  br i1 %cmp.i250.5, label %for.cond64.4.for.end78_crit_edge, label %for.cond64.5

for.cond64.4.for.end78_crit_edge:                 ; preds = %for.cond64.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end78

for.cond64.5:                                     ; preds = %for.cond64.4
  call void @__sanitizer_cov_trace_pc() #20
  %bssid71.6 = getelementptr i8, ptr %dev, i32 111004
  %87 = ptrtoint ptr %bssid71.6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bssid71.6, align 4
  %add.ptr.i247.6 = getelementptr i8, ptr %dev, i32 111008
  %89 = ptrtoint ptr %add.ptr.i247.6 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i247.6, align 2
  %conv.i248.6 = zext i16 %90 to i32
  %or.i249.6 = or i32 %88, %conv.i248.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i249.6)
  %cmp.i250.6 = icmp eq i32 %or.i249.6, 0
  %spec.select300.v = select i1 %cmp.i250.6, i32 110996, i32 111028
  %spec.select300 = getelementptr i8, ptr %dev, i32 %spec.select300.v
  br label %for.end78

for.end78:                                        ; preds = %for.cond64.5, %for.cond64.4.for.end78_crit_edge, %for.cond64.3.for.end78_crit_edge, %for.cond64.2.for.end78_crit_edge, %for.cond64.1.for.end78_crit_edge, %for.cond64.for.end78_crit_edge, %for.body67.preheader.for.end78_crit_edge
  %arrayidx70.lcssa = phi ptr [ %arrayidx70, %for.body67.preheader.for.end78_crit_edge ], [ %arrayidx70.1, %for.cond64.for.end78_crit_edge ], [ %arrayidx70.2, %for.cond64.1.for.end78_crit_edge ], [ %arrayidx70.3, %for.cond64.2.for.end78_crit_edge ], [ %arrayidx70.4, %for.cond64.3.for.end78_crit_edge ], [ %arrayidx70.5, %for.cond64.4.for.end78_crit_edge ], [ %spec.select300, %for.cond64.5 ]
  %bssid79 = getelementptr inbounds %struct.pmk, ptr %arrayidx70.lcssa, i32 0, i32 1
  %sa_data82 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %sa_data82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sa_data82, align 4
  %93 = ptrtoint ptr %bssid79 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %bssid79, align 4
  %add.ptr.i251 = getelementptr %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1, i32 4
  %94 = ptrtoint ptr %add.ptr.i251 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr.i251, align 2
  %add.ptr1.i252 = getelementptr %struct.pmk, ptr %arrayidx70.lcssa, i32 0, i32 1, i32 4
  %96 = ptrtoint ptr %add.ptr1.i252 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %add.ptr1.i252, align 2
  %pmkid84 = getelementptr inbounds %struct.pmk, ptr %arrayidx70.lcssa, i32 0, i32 2
  %pmkid86 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 2
  %97 = call ptr @memcpy(ptr %pmkid84, ptr %pmkid86, i32 16)
  %98 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %head, align 4
  %call.i.i253 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx70.lcssa, ptr noundef %head, ptr noundef %99) #18
  br i1 %call.i.i253, label %if.end.i.i256, label %for.end78.list_add.exit257_crit_edge

for.end78.list_add.exit257_crit_edge:             ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit257

if.end.i.i256:                                    ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i254 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i254 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %arrayidx70.lcssa, ptr %prev1.i.i254, align 4
  %101 = ptrtoint ptr %arrayidx70.lcssa to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %99, ptr %arrayidx70.lcssa, align 4
  %prev3.i.i255 = getelementptr inbounds %struct.list_head, ptr %arrayidx70.lcssa, i32 0, i32 1
  %102 = ptrtoint ptr %prev3.i.i255 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %head, ptr %prev3.i.i255, align 4
  %103 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %arrayidx70.lcssa, ptr %head, align 4
  br label %list_add.exit257

list_add.exit257:                                 ; preds = %if.end.i.i256, %for.end78.list_add.exit257_crit_edge
  %104 = ptrtoint ptr %pmklist to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %pmklist, align 4
  %inc93 = add i16 %105, 1
  store i16 %inc93, ptr %pmklist, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %prev = getelementptr i8, ptr %dev, i32 110800
  %106 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev, align 4
  %bssid99 = getelementptr inbounds %struct.pmk, ptr %107, i32 0, i32 1
  %sa_data102 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %sa_data102 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sa_data102, align 4
  %110 = ptrtoint ptr %bssid99 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %bssid99, align 4
  %add.ptr.i258 = getelementptr %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1, i32 4
  %111 = ptrtoint ptr %add.ptr.i258 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr.i258, align 2
  %add.ptr1.i259 = getelementptr %struct.pmk, ptr %107, i32 0, i32 1, i32 4
  %113 = ptrtoint ptr %add.ptr1.i259 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %add.ptr1.i259, align 2
  %pmkid104 = getelementptr inbounds %struct.pmk, ptr %107, i32 0, i32 2
  %pmkid106 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 2
  %114 = call ptr @memcpy(ptr %pmkid104, ptr %pmkid106, i32 16)
  tail call fastcc void @list_move(ptr noundef %107, ptr noundef %head)
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end3
  %head114 = getelementptr i8, ptr %dev, i32 110796
  %115 = ptrtoint ptr %head114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %head114, align 4
  %cmp.i260.not = icmp eq ptr %116, %head114
  br i1 %cmp.i260.not, label %sw.bb112.cleanup_crit_edge, label %for.cond122.preheader

sw.bb112.cleanup_crit_edge:                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond122.preheader:                            ; preds = %sw.bb112
  %sa_data133 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1
  %add.ptr.i265 = getelementptr %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1, i32 4
  br label %for.cond122

for.cond122:                                      ; preds = %for.body128.for.cond122_crit_edge, %for.cond122.preheader
  %ptr.1.in = phi ptr [ %ptr.1, %for.body128.for.cond122_crit_edge ], [ %head114, %for.cond122.preheader ]
  %117 = ptrtoint ptr %ptr.1.in to i32
  call void @__asan_load4_noabort(i32 %117)
  %ptr.1 = load ptr, ptr %ptr.1.in, align 4
  %cmp.i262 = icmp eq ptr %ptr.1, %head114
  br i1 %cmp.i262, label %for.cond122.cleanup_crit_edge, label %for.body128

for.cond122.cleanup_crit_edge:                    ; preds = %for.cond122
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body128:                                      ; preds = %for.cond122
  %bssid135 = getelementptr inbounds %struct.pmk, ptr %ptr.1, i32 0, i32 1
  %118 = ptrtoint ptr %sa_data133 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sa_data133, align 4
  %120 = ptrtoint ptr %bssid135 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bssid135, align 4
  %xor.i264 = xor i32 %121, %119
  %122 = ptrtoint ptr %add.ptr.i265 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %add.ptr.i265, align 2
  %add.ptr1.i266 = getelementptr %struct.pmk, ptr %ptr.1, i32 0, i32 1, i32 4
  %124 = ptrtoint ptr %add.ptr1.i266 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %add.ptr1.i266, align 2
  %xor37.i267 = xor i16 %125, %123
  %xor3.i268 = zext i16 %xor37.i267 to i32
  %or.i269 = or i32 %xor.i264, %xor3.i268
  %cmp.i270 = icmp eq i32 %or.i269, 0
  br i1 %cmp.i270, label %if.then138, label %for.body128.for.cond122_crit_edge

for.body128.for.cond122_crit_edge:                ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond122

if.then138:                                       ; preds = %for.body128
  %126 = call ptr @memset(ptr %bssid135, i32 0, i32 22)
  %call.i.i271 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.1) #18
  br i1 %call.i.i271, label %if.end.i.i272, label %if.then138.list_del_init.exit_crit_edge

if.then138.list_del_init.exit_crit_edge:          ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i272:                                    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.1, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i, align 4
  %129 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ptr.1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %prev1.i.i.i, align 4
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %130, ptr %128, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i272, %if.then138.list_del_init.exit_crit_edge
  %133 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %ptr.1, ptr %ptr.1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ptr.1, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %ptr.1, ptr %prev.i3.i, align 4
  br label %sw.epilog

sw.bb154:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %pmklist155 = getelementptr i8, ptr %dev, i32 110792
  %135 = call ptr @memset(ptr %pmklist155, i32 0, i32 268)
  %head157 = getelementptr i8, ptr %dev, i32 110796
  %136 = ptrtoint ptr %head157 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %head157, ptr %head157, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 110800
  %137 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %head157, ptr %prev.i, align 4
  %arrayidx164 = getelementptr i8, ptr %dev, i32 110804
  %138 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %arrayidx164, ptr %arrayidx164, align 4
  %prev.i273 = getelementptr i8, ptr %dev, i32 110808
  %139 = ptrtoint ptr %prev.i273 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %arrayidx164, ptr %prev.i273, align 4
  %arrayidx164.1 = getelementptr i8, ptr %dev, i32 110836
  %140 = ptrtoint ptr %arrayidx164.1 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %arrayidx164.1, ptr %arrayidx164.1, align 4
  %prev.i273.1 = getelementptr i8, ptr %dev, i32 110840
  %141 = ptrtoint ptr %prev.i273.1 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %arrayidx164.1, ptr %prev.i273.1, align 4
  %arrayidx164.2 = getelementptr i8, ptr %dev, i32 110868
  %142 = ptrtoint ptr %arrayidx164.2 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %arrayidx164.2, ptr %arrayidx164.2, align 4
  %prev.i273.2 = getelementptr i8, ptr %dev, i32 110872
  %143 = ptrtoint ptr %prev.i273.2 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %arrayidx164.2, ptr %prev.i273.2, align 4
  %arrayidx164.3 = getelementptr i8, ptr %dev, i32 110900
  %144 = ptrtoint ptr %arrayidx164.3 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %arrayidx164.3, ptr %arrayidx164.3, align 4
  %prev.i273.3 = getelementptr i8, ptr %dev, i32 110904
  %145 = ptrtoint ptr %prev.i273.3 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %arrayidx164.3, ptr %prev.i273.3, align 4
  %arrayidx164.4 = getelementptr i8, ptr %dev, i32 110932
  %146 = ptrtoint ptr %arrayidx164.4 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %arrayidx164.4, ptr %arrayidx164.4, align 4
  %prev.i273.4 = getelementptr i8, ptr %dev, i32 110936
  %147 = ptrtoint ptr %prev.i273.4 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %arrayidx164.4, ptr %prev.i273.4, align 4
  %arrayidx164.5 = getelementptr i8, ptr %dev, i32 110964
  %148 = ptrtoint ptr %arrayidx164.5 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %arrayidx164.5, ptr %arrayidx164.5, align 4
  %prev.i273.5 = getelementptr i8, ptr %dev, i32 110968
  %149 = ptrtoint ptr %prev.i273.5 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %arrayidx164.5, ptr %prev.i273.5, align 4
  %arrayidx164.6 = getelementptr i8, ptr %dev, i32 110996
  %150 = ptrtoint ptr %arrayidx164.6 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %arrayidx164.6, ptr %arrayidx164.6, align 4
  %prev.i273.6 = getelementptr i8, ptr %dev, i32 111000
  %151 = ptrtoint ptr %prev.i273.6 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %arrayidx164.6, ptr %prev.i273.6, align 4
  %arrayidx164.7 = getelementptr i8, ptr %dev, i32 111028
  %152 = ptrtoint ptr %arrayidx164.7 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %arrayidx164.7, ptr %arrayidx164.7, align 4
  %prev.i273.7 = getelementptr i8, ptr %dev, i32 111032
  %153 = ptrtoint ptr %prev.i273.7 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %arrayidx164.7, ptr %prev.i273.7, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb154, %list_del_init.exit, %if.else, %list_add.exit257, %for.end51, %list_add.exit
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 14) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.cond122.cleanup_crit_edge, %sw.bb112.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb112.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %for.cond122.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ks_wlan_add_leader_event(ptr nocapture noundef readonly %rsn_leader, ptr noundef %end_buf, ptr noundef %current_ev, ptr nocapture noundef readonly %rsn, ptr noundef %iwe, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [158 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 158, ptr nonnull %buffer) #18
  %0 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %cmd = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -29694, ptr %cmd, align 2
  %2 = getelementptr inbounds i8, ptr %buffer, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 155)
  %4 = call ptr @memcpy(ptr %buffer, ptr %rsn_leader, i32 3)
  %length = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %length, align 4
  %add.ptr = getelementptr inbounds i8, ptr %buffer, i32 3
  %6 = ptrtoint ptr %rsn to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rsn, align 1
  %conv2 = zext i8 %7 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.21, i32 noundef %conv2)
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %call
  %size = getelementptr inbounds %struct.rsn_ie, ptr %rsn, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size, align 1
  %conv4 = zext i8 %9 to i32
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3, ptr noundef nonnull @.str.21, i32 noundef %conv4)
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length, align 4
  %add10 = add i16 %11, 4
  store i16 %add10, ptr %length, align 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp46.not = icmp eq i8 %13, 0
  br i1 %cmp46.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %add.ptr6 = getelementptr i8, ptr %add.ptr3, i32 %call5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pbuf.047 = phi ptr [ %add.ptr18, %for.body.for.body_crit_edge ], [ %add.ptr6, %for.body.preheader ]
  %arrayidx15 = getelementptr %struct.rsn_ie, ptr %rsn, i32 0, i32 2, i32 %i.048
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbuf.047, ptr noundef nonnull @.str.21, i32 noundef %conv16)
  %add.ptr18 = getelementptr i8, ptr %pbuf.047, i32 %call17
  %inc = add nuw nsw i32 %i.048, 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %size, align 1
  %conv13 = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %17, %for.body.for.end_crit_edge ]
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %length, align 4
  %conv13.tr = zext i8 %.lcssa to i16
  %20 = shl nuw nsw i16 %conv13.tr, 1
  %conv25 = add i16 %19, %20
  store i16 %conv25, ptr %length, align 4
  %call27 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %current_ev, ptr noundef %end_buf, ptr noundef %iwe, ptr noundef nonnull %buffer) #18
  call void @llvm.lifetime.end.p0(i64 158, ptr nonnull %buffer) #18
  ret ptr %call27
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks_wlan_update_phy_information(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %wstats1 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_update_phy_information.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_update_phy_information, %if.then)) #18
          to label %do.end12 [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i1 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i1 to ptr
  %preempt_count.i2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i2, align 4
  %and7 = and i32 %9, 983040
  %or = or i32 %and7, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !166) #18
  %and.i.i3 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i3 to ptr
  %preempt_count.i4 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i4, align 4
  %and9 = and i32 %13, 65280
  %or10 = or i32 %or, %and9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_update_phy_information.__UNIQUE_ID_ddebug339, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %or10) #18
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry
  %dev_state = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %14 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp = icmp slt i32 %15, 5
  br i1 %cmp, label %do.end12.cleanup_crit_edge, label %if.end14

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %do.end12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @update_phyinfo, i32 noundef 4) #18
  %16 = load volatile i32, ptr @update_phyinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %reg = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg, align 4
  %conv = zext i8 %18 to i16
  %19 = ptrtoint ptr %wstats1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %wstats1, align 4
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 16) #18
  %confirm_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 7
  %call19 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %confirm_wait, i32 noundef 50) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body23, label %if.end18.if.end42_crit_edge

if.end18.if.end42_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

do.body23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_update_phy_information.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_update_phy_information, %if.then35)) #18
          to label %if.end42 [label %if.then35], !srcloc !176

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #20
  %net_dev36 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %20 = ptrtoint ptr %net_dev36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_update_phy_information.__UNIQUE_ID_ddebug340, ptr noundef %21, ptr noundef nonnull @.str.25) #18
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %do.body23, %if.end18.if.end42_crit_edge
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @update_phyinfo, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr nonnull @update_phyinfo, i32 1, i32 3, i32 1) #18
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @update_phyinfo, ptr nonnull @update_phyinfo, i32 1, ptr nonnull elementtype(i32) @update_phyinfo) #18, !srcloc !184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 100
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @update_phyinfo_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @update_phyinfo_timer) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end14.cleanup_crit_edge, %do.end12.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list, ptr noundef %head) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #18
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %head, ptr noundef %7) #18
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i2 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %__list_del_entry.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_firmware_version(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %dwrq, ptr noundef %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %version_size = getelementptr i8, ptr %dev, i32 111756
  %0 = ptrtoint ptr %version_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version_size, align 4
  %2 = trunc i32 %1 to i16
  %conv = add i16 %2, 1
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %length, align 4
  %firmware_version = getelementptr i8, ptr %dev, i32 111624
  %conv2 = zext i16 %conv to i32
  %call3 = tail call i32 @strscpy(ptr noundef %extra, ptr noundef %firmware_version, i32 noundef %conv2) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_wps_enable(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %wps = getelementptr i8, ptr %dev, i32 111824
  %4 = ptrtoint ptr %wps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %wps, align 4
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 34) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_wps_enable(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %wps = getelementptr i8, ptr %dev, i32 111824
  %2 = ptrtoint ptr %wps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wps, align 4
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %uwrq, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %3) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_wps_probe_req(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %dwrq, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %extra, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv2, 2
  %length = getelementptr inbounds %struct.iw_point, ptr %dwrq, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 4
  %conv3 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv3)
  %cmp4.not = icmp ne i32 %add, %conv3
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %5)
  %cmp8 = icmp ugt i16 %5, 256
  %or.cond = or i1 %cmp8, %cmp4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %add15 = add nuw nsw i32 %conv2, 3
  %ielen = getelementptr i8, ptr %dev, i32 111828
  %6 = ptrtoint ptr %ielen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add15, ptr %ielen, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %add18 = add i8 %8, 2
  %ie = getelementptr i8, ptr %dev, i32 111832
  %9 = ptrtoint ptr %ie to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %add18, ptr %ie, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 111833
  %conv24 = zext i8 %add18 to i32
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %extra, i32 %conv24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_set_wps_probe_req.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_set_wps_probe_req, %if.then29)) #18
          to label %do.end58 [label %if.then29], !srcloc !176

if.then29:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %ielen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ielen, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr, align 1
  %conv35 = zext i8 %14 to i32
  %arrayidx36 = getelementptr i8, ptr %dev, i32 111834
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %16 to i32
  %arrayidx38 = getelementptr i8, ptr %dev, i32 111835
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %18 to i32
  %arrayidx40 = getelementptr i8, ptr %dev, i32 111836
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %20 to i32
  %sub = add i32 %12, -3
  %arrayidx44 = getelementptr i8, ptr %add.ptr, i32 %sub
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %22 to i32
  %sub48 = add i32 %12, -2
  %arrayidx49 = getelementptr i8, ptr %add.ptr, i32 %sub48
  %23 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %24 to i32
  %arrayidx54 = getelementptr %struct.ks_wlan_private, ptr %add.ptr.i, i32 0, i32 47, i32 2, i32 %12
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_set_wps_probe_req.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %12, i32 noundef %12, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv39, i32 noundef %conv41, i32 noundef %conv45, i32 noundef %conv50, i32 noundef %conv55) #18
  br label %do.end58

do.end58:                                         ; preds = %if.then29, %if.end11
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 35) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end58 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_eeprom_cksum(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_checksum = getelementptr i8, ptr %dev, i32 112092
  %0 = ptrtoint ptr %eeprom_checksum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eeprom_checksum, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %uwrq, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_preamble(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv8 = trunc i32 %3 to i8
  %preamble = getelementptr i8, ptr %dev, i32 111120
  %4 = ptrtoint ptr %preamble to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8, ptr %preamble, align 4
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %5 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %need_commit, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end7 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_preamble(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %preamble = getelementptr i8, ptr %dev, i32 111120
  %2 = ptrtoint ptr %preamble to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %preamble, align 4
  %conv2 = zext i8 %3 to i32
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %uwrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_power_mgmt(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch = icmp ult i32 %3, 3
  br i1 %switch, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %.off = add nsw i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch32 = icmp ult i32 %.off, 2
  br i1 %switch32, label %land.lhs.true15, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.lhs.true15:                                  ; preds = %if.end10
  %reg = getelementptr i8, ptr %dev, i32 111060
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp17.not = icmp eq i8 %5, 1
  br i1 %cmp17.not, label %land.lhs.true15.if.end20_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true15.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %conv21 = trunc i32 %3 to i8
  %power_mgmt = getelementptr i8, ptr %dev, i32 111121
  %6 = ptrtoint ptr %power_mgmt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv21, ptr %power_mgmt, align 1
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 15) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_power_mgmt(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %power_mgmt = getelementptr i8, ptr %dev, i32 111121
  %2 = ptrtoint ptr %power_mgmt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mgmt, align 1
  %conv2 = zext i8 %3 to i32
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %uwrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_scan_type(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %scan_type = getelementptr i8, ptr %dev, i32 111124
  %4 = ptrtoint ptr %scan_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %scan_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_scan_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %scan_type = getelementptr i8, ptr %dev, i32 111124
  %2 = ptrtoint ptr %scan_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_type, align 4
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %uwrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_rx_gain(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp2 = icmp ugt i32 %3, 255
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv6 = trunc i32 %3 to i8
  %rx_gain = getelementptr i8, ptr %dev, i32 111821
  %4 = ptrtoint ptr %rx_gain to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %rx_gain, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp10.not = icmp ne i32 %3, 255
  %conv12 = zext i1 %cmp10.not to i8
  %rx_mode = getelementptr i8, ptr %dev, i32 111819
  %5 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %rx_mode, align 1
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 36) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_rx_gain(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_gain = getelementptr i8, ptr %dev, i32 111821
  %2 = ptrtoint ptr %rx_gain to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_gain, align 1
  %conv2 = zext i8 %3 to i32
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %uwrq, align 4
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 37) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_hostt(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %hostt = getelementptr i8, ptr %dev, i32 112096
  %qtail = getelementptr i8, ptr %dev, i32 112612
  br label %for.body

for.body:                                         ; preds = %print_hif_event.exit.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 63, %entry ], [ %dec, %print_hif_event.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %qtail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qtail, align 4
  %2 = xor i32 %i.07, -1
  %sub2 = add i32 %1, %2
  %rem = and i32 %sub2, 127
  %arrayidx = getelementptr [128 x i32], ptr %hostt, i32 0, i32 %rem
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %4, label %for.body.print_hif_event.exit_crit_edge [
    i32 57345, label %for.body.sw.epilog.sink.split.i_crit_edge
    i32 59393, label %sw.bb1.i
    i32 57346, label %sw.bb2.i
    i32 59394, label %sw.bb3.i
    i32 57347, label %sw.bb4.i
    i32 59395, label %sw.bb5.i
    i32 57348, label %sw.bb6.i
    i32 59396, label %sw.bb7.i
    i32 57349, label %sw.bb8.i
    i32 59397, label %sw.bb9.i
    i32 59398, label %sw.bb10.i
    i32 57350, label %sw.bb11.i
    i32 59399, label %sw.bb12.i
    i32 57351, label %sw.bb13.i
    i32 59400, label %sw.bb14.i
    i32 57352, label %sw.bb15.i
    i32 59401, label %sw.bb16.i
    i32 57353, label %sw.bb17.i
    i32 59402, label %sw.bb18.i
    i32 57354, label %sw.bb19.i
    i32 59403, label %sw.bb20.i
    i32 59404, label %sw.bb21.i
    i32 57355, label %sw.bb22.i
    i32 59405, label %sw.bb23.i
    i32 57356, label %sw.bb24.i
    i32 59406, label %sw.bb25.i
    i32 57357, label %sw.bb26.i
    i32 59407, label %sw.bb27.i
    i32 57358, label %sw.bb28.i
    i32 59408, label %sw.bb29.i
    i32 59409, label %sw.bb30.i
    i32 59410, label %sw.bb31.i
    i32 57359, label %sw.bb32.i
    i32 59411, label %sw.bb33.i
    i32 57360, label %sw.bb34.i
    i32 59412, label %sw.bb35.i
  ]

for.body.sw.epilog.sink.split.i_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

for.body.print_hif_event.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %print_hif_event.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb4.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb6.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb7.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb8.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb9.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb10.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb11.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb12.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb13.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb14.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb15.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb16.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb17.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb18.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb19.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb20.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb21.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb22.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb23.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb24.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb25.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb26.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb27.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb28.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb29.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb30.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb31.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb32.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb33.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb34.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb35.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb35.i, %sw.bb34.i, %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb30.i, %sw.bb29.i, %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %for.body.sw.epilog.sink.split.i_crit_edge
  %.str.67.sink.i = phi ptr [ @.str.67, %sw.bb35.i ], [ @.str.66, %sw.bb34.i ], [ @.str.65, %sw.bb33.i ], [ @.str.64, %sw.bb32.i ], [ @.str.63, %sw.bb31.i ], [ @.str.62, %sw.bb30.i ], [ @.str.61, %sw.bb29.i ], [ @.str.60, %sw.bb28.i ], [ @.str.59, %sw.bb27.i ], [ @.str.58, %sw.bb26.i ], [ @.str.57, %sw.bb25.i ], [ @.str.56, %sw.bb24.i ], [ @.str.55, %sw.bb23.i ], [ @.str.54, %sw.bb22.i ], [ @.str.53, %sw.bb21.i ], [ @.str.52, %sw.bb20.i ], [ @.str.51, %sw.bb19.i ], [ @.str.50, %sw.bb18.i ], [ @.str.49, %sw.bb17.i ], [ @.str.48, %sw.bb16.i ], [ @.str.47, %sw.bb15.i ], [ @.str.46, %sw.bb14.i ], [ @.str.45, %sw.bb13.i ], [ @.str.44, %sw.bb12.i ], [ @.str.43, %sw.bb11.i ], [ @.str.42, %sw.bb10.i ], [ @.str.41, %sw.bb9.i ], [ @.str.40, %sw.bb8.i ], [ @.str.39, %sw.bb7.i ], [ @.str.38, %sw.bb6.i ], [ @.str.37, %sw.bb5.i ], [ @.str.36, %sw.bb4.i ], [ @.str.35, %sw.bb3.i ], [ @.str.34, %sw.bb2.i ], [ @.str.33, %sw.bb1.i ], [ @.str.32, %for.body.sw.epilog.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull %.str.67.sink.i) #21
  br label %print_hif_event.exit

print_hif_event.exit:                             ; preds = %sw.epilog.sink.split.i, %for.body.print_hif_event.exit_crit_edge
  %dec = add nsw i32 %i.07, -1
  %cmp.not = icmp eq i32 %i.07, 0
  br i1 %cmp.not, label %for.end, label %print_hif_event.exit.for.body_crit_edge

print_hif_event.exit.for.body_crit_edge:          ; preds = %print_hif_event.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %print_hif_event.exit
  call void @__sanitizer_cov_trace_pc() #20
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_beacon_lost(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp2 = icmp ugt i32 %3, 65535
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %reg = getelementptr i8, ptr %dev, i32 111060
  %beacon_lost_count = getelementptr i8, ptr %dev, i32 111128
  %4 = ptrtoint ptr %beacon_lost_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %beacon_lost_count, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp8 = icmp eq i8 %6, 1
  br i1 %cmp8, label %if.then10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %7 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %need_commit, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.then10 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_beacon_lost(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %beacon_lost_count = getelementptr i8, ptr %dev, i32 111128
  %2 = ptrtoint ptr %beacon_lost_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beacon_lost_count, align 4
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %uwrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_tx_gain(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp2 = icmp ugt i32 %3, 255
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv6 = trunc i32 %3 to i8
  %gain = getelementptr i8, ptr %dev, i32 111818
  %tx_gain = getelementptr i8, ptr %dev, i32 111820
  %4 = ptrtoint ptr %tx_gain to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %tx_gain, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp10.not = icmp ne i32 %3, 255
  %conv12 = zext i1 %cmp10.not to i8
  %5 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %gain, align 2
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 36) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_get_tx_gain(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_gain = getelementptr i8, ptr %dev, i32 111820
  %2 = ptrtoint ptr %tx_gain to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_gain, align 2
  %conv2 = zext i8 %3 to i32
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %uwrq, align 4
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 37) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_phy_type(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch = icmp ult i32 %3, 3
  br i1 %switch, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv11 = trunc i32 %3 to i16
  %phy_type = getelementptr i8, ptr %dev, i32 111262
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv11, ptr %phy_type, align 2
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %5 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %need_commit, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end10 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_phy_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %phy_type = getelementptr i8, ptr %dev, i32 111262
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %phy_type, align 2
  %conv2 = zext i16 %3 to i32
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %uwrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_set_cts_mode(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp eq i32 %3, 0
  br i1 %cmp8, label %if.end7.cond.end20_crit_edge, label %cond.false

if.end7.cond.end20_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end20

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %phy_type = getelementptr i8, ptr %dev, i32 111262
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phy_type, align 2
  %.off = add i16 %5, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch34 = icmp ult i16 %.off, 2
  %spec.select = zext i1 %switch34 to i16
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false, %if.end7.cond.end20_crit_edge
  %cond21 = phi i16 [ 0, %if.end7.cond.end20_crit_edge ], [ %spec.select, %cond.false ]
  %cts_mode = getelementptr i8, ptr %dev, i32 111264
  %6 = ptrtoint ptr %cts_mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %cond21, ptr %cts_mode, align 4
  %need_commit = getelementptr i8, ptr %dev, i32 111444
  %7 = ptrtoint ptr %need_commit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %need_commit, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %need_commit, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %cond.end20 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_cts_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %cts_mode = getelementptr i8, ptr %dev, i32 111264
  %2 = ptrtoint ptr %cts_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cts_mode, align 4
  %conv2 = zext i16 %3 to i32
  %4 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %uwrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_wlan_set_sleep_mode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %uwrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %1) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %1 to i8
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %2 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %sleep_mode, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %1) #21
  %3 = ptrtoint ptr %uwrq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uwrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp4 = icmp eq i32 %4, 1
  br i1 %cmp4, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 20) #18
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @hostif_sme_enqueue(ptr noundef %add.ptr.i, i16 noundef zeroext 38) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ks_wlan_get_sleep_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %uwrq, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_mode = getelementptr i8, ptr %dev, i32 112088
  %0 = ptrtoint ptr %sleep_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep_mode, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %uwrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %uwrq, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !63, !64, !65, !67, !68, !70, !71, !73, !75, !76, !78, !80, !82, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164}
!llvm.named.register.sp = !{!166}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @ks_wlan_net_start.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2624, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @update_phyinfo, !4, !"update_phyinfo", i1 false, i1 false}
!4 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 57, i32 17}
!5 = !{ptr @update_phyinfo_timer, !6, !"update_phyinfo_timer", i1 false, i1 false}
!6 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 58, i32 26}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 94, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ks_wlan_update_phyinfo_timeout.__UNIQUE_ID_ddebug341, !8, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!13 = distinct !{null, !14, !"dummy_addr", i1 false, i1 false}
!14 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2598, i32 28}
!15 = !{ptr @ks_wlan_netdev_ops, !16, !"ks_wlan_netdev_ops", i1 false, i1 false}
!16 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2602, i32 36}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2579, i32 19}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2521, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ks_wlan_start_xmit.__UNIQUE_ID_ddebug349, !20, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2524, i32 19}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2539, i32 19}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2498, i32 19}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2507, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ks_wlan_tx_timeout.__UNIQUE_ID_ddebug348, !30, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!33 = !{ptr @ks_wlan_handler_def, !34, !"ks_wlan_handler_def", i1 false, i1 false}
!34 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2446, i32 36}
!35 = !{ptr @ks_wlan_handler, !36, !"ks_wlan_handler", i1 false, i1 false}
!36 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2373, i32 25}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 161, i32 23}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 163, i32 23}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 165, i32 23}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 167, i32 23}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 204, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ks_wlan_set_freq.__UNIQUE_ID_ddebug342, !46, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!49 = !{ptr @frequency_list, !50, !"frequency_list", i1 false, i1 false}
!50 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 31, i32 19}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 326, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ks_wlan_set_wap.__UNIQUE_ID_ddebug343, !52, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!55 = !{ptr @ks_wlan_translate_scan.rsn_leader, !56, !"rsn_leader", i1 false, i1 false}
!56 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 1185, i32 20}
!57 = !{ptr @ks_wlan_translate_scan.wpa_leader, !58, !"wpa_leader", i1 false, i1 false}
!58 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 1186, i32 20}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 1163, i32 24}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 639, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ks_wlan_get_rate.__UNIQUE_ID_ddebug344, !62, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 64, i32 2}
!67 = !{ptr @ks_wlan_update_phy_information.__UNIQUE_ID_ddebug339, !66, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 81, i32 3}
!70 = !{ptr @ks_wlan_update_phy_information.__UNIQUE_ID_ddebug340, !69, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!71 = distinct !{null, !72, !"wep_on_off", i1 false, i1 false}
!72 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 16, i32 12}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!80 = !{ptr @ks_wlan_private_handler, !81, !"ks_wlan_private_handler", i1 false, i1 false}
!81 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2411, i32 25}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2080, i32 19}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2106, i32 2}
!86 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ks_wlan_set_wps_probe_req.__UNIQUE_ID_ddebug347, !85, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2194, i32 20}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2197, i32 20}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2200, i32 20}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2203, i32 20}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2206, i32 20}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2209, i32 20}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2212, i32 20}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2215, i32 20}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2218, i32 20}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2221, i32 20}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2224, i32 20}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2227, i32 20}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2230, i32 20}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2233, i32 20}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2236, i32 20}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2239, i32 20}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2242, i32 20}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2245, i32 20}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2248, i32 20}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2251, i32 20}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2254, i32 20}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2257, i32 20}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2260, i32 20}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2263, i32 20}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2266, i32 20}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2269, i32 20}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2272, i32 20}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2275, i32 20}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2278, i32 20}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2281, i32 20}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2284, i32 20}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2287, i32 20}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2290, i32 20}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2293, i32 20}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2296, i32 20}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2299, i32 20}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2026, i32 19}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2031, i32 19}
!164 = !{ptr @ks_wlan_private_args, !165, !"ks_wlan_private_args", i1 false, i1 false}
!165 = !{!"../drivers/staging/ks7010/ks_wlan_net.c", i32 2321, i32 34}
!166 = !{!"sp"}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{i64 2148792317, i64 2148792322, i64 2148792335, i64 2148792379, i64 2148792413, i64 2148792434}
!177 = !{i8 0, i8 2}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{i64 2152393924, i64 2152393949}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{i64 4889479}
!182 = !{i64 4889676}
!183 = !{i64 2152374909}
!184 = !{i64 2148188917, i64 2148188943, i64 2148188972, i64 2148189006, i64 2148189037, i64 2148189060}
