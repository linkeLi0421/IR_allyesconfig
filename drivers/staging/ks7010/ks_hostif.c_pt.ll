; ModuleID = '/llk/IR_all_yes/drivers/staging/ks7010/ks_hostif.c_pt.bc'
source_filename = "../drivers/staging/ks7010/ks_hostif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ks_wlan_private = type { ptr, ptr, %struct.delayed_work, %struct.tasklet_struct, ptr, %struct.net_device_stats, %struct.iw_statistics, %struct.completion, %struct.tx_device, %struct.rx_device, %struct.sme_info, ptr, i32, %struct.tasklet_struct, %struct.work_struct, i32, [6 x i8], %struct.local_aplist, %struct.local_ap, %struct.power_save_status, %struct.sleep_status, %struct.wpa_status, %struct.pmk_list, %struct.ks_wlan_parameter, i8, [33 x i8], %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, [20 x ptr], [20 x i32], [129 x i8], i32, i8, i32, ptr, i32, i32, i32, i8, [33 x i8], %struct.local_gain, %struct.wps_status, i8, i8, %struct.local_eeprom_sum, i8, %struct.hostt, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hostif_data_request = type { %struct.hostif_hdr, i16, i16, [0 x i8] }
%struct.hostif_hdr = type { i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ieee802_1x_hdr = type { i8, i8, i16 }
%struct.wpa_eapol_key = type <{ i8, i16, i16, [8 x i8], [32 x i8], [16 x i8], [8 x i8], [8 x i8], [16 x i8], i16 }>
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.ap_info = type { [6 x i8], i8, i8, i8, i8, i16, i16, i8, i8, i16, [1024 x i8] }
%struct.ether_hdr = type { [6 x i8], [6 x i8], i8, i8, i8, [3 x i8], i16 }
%struct.link_ap_info = type <{ [6 x i8], i8, i8, i8, i8, i16, i16, %struct.rate_set8, %struct.fh_parms, %struct.ds_parms, %struct.cf_parms, %struct.ibss_parms, %struct.erp_params_t, i8, %struct.rate_set8, i8, i8, %struct.anon.127 }>
%struct.fh_parms = type <{ i16, i8, i8, i8 }>
%struct.ds_parms = type { i8 }
%struct.cf_parms = type { i8, i8, i16, i16 }
%struct.ibss_parms = type { i16 }
%struct.erp_params_t = type { i8 }
%struct.rate_set8 = type { i8, [8 x i8], i8 }
%struct.anon.127 = type { i8, [128 x i8] }
%struct.pmk_cache = type { i16, [8 x %struct.anon.128] }
%struct.anon.128 = type { [6 x i8], [16 x i8] }
%struct.wpa_suite = type { i16, [4 x [4 x i8]] }
%struct.rsn_mode = type <{ i32, i16 }>
%struct.hostif_mib_get_request = type { %struct.hostif_hdr, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.hostif_bss_scan_request = type <{ %struct.hostif_hdr, i8, [3 x i8], i32, i32, %struct.channel_list, %struct.ssid }>
%struct.channel_list = type { i8, [14 x i8], i8 }
%struct.ssid = type { i8, [32 x i8], i8 }
%struct.hostif_power_mgmt_request = type { %struct.hostif_hdr, i32, i32, i32 }
%struct.hostif_phy_information_request = type { %struct.hostif_hdr, i16, i16 }
%struct.hostif_mic_failure_request = type { %struct.hostif_hdr, i16, i16 }
%struct.hostif_start_request = type { %struct.hostif_hdr, i16 }
%struct.hostif_ps_adhoc_set_request = type { %struct.hostif_hdr, %struct.hostif_request, i16 }
%struct.hostif_request = type { i16, i16, i16, i16, %struct.rate_set16 }
%struct.rate_set16 = type { i8, [16 x i8], i8 }
%struct.hostif_adhoc_set_request = type { %struct.hostif_hdr, %struct.hostif_request, %struct.ssid, i16 }
%struct.hostif_adhoc_set2_request = type { %struct.hostif_hdr, %struct.hostif_request, i16, %struct.ssid, %struct.channel_list, [6 x i8] }
%struct.hostif_mib_set_request_t = type { %struct.hostif_hdr, i32, %struct.hostif_mib_value }
%struct.hostif_mib_value = type { i16, i16, [0 x i8] }
%struct.hostif_infrastructure_set_request = type { %struct.hostif_hdr, %struct.hostif_request, %struct.ssid, i16, i16, %struct.channel_list, [6 x i8] }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad length skb_len=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid mac address: ethernet->h_source=%pM\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MIC ERROR Report SET : %04X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sme queue buffer overflow\0A\00", [37 x i8] zeroinitializer }, align 32
@hostif_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&priv->multicast_spin\00", [42 x i8] zeroinitializer }, align 32
@hostif_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->dev_read_lock\00", [43 x i8] zeroinitializer }, align 32
@hostif_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->devread_wait\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"michael_mic\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"undefined event[%04X]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid : source is own mac address !!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eth_hdrernet->h_dest=%pM\0A\00", [38 x i8] zeroinitializer }, align 32
@hostif_data_indication.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks7010\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hostif_data_indication\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/ks7010/ks_hostif.c\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SNAP, rx_ind_size = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@hostif_data_indication.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NETBEUI/NetBIOS rx_ind_size=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid data format\0A\00", [43 x i8] zeroinitializer }, align 32
@hostif_data_indication_wpa.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.19, ptr @.str.15, ptr @.str.20, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hostif_data_indication_wpa\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TKIP: protocol=%04X: size=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MIC FAILURE\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"MLME-MICHAELMICFAILURE.indication(keyid=%d %scast addr=%pM)\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"broad\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uni\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"attribute=%08X, status=%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC ADDRESS = %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"firmware ver. = %s\0A\00", [44 x i8] zeroinitializer }, align 32
@hostif_mib_get_confirm.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.28, ptr @.str.15, ptr @.str.29, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hostif_mib_get_confirm\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tx_mode=%d, rx_mode=%d, tx_gain=%d, rx_gain=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LOCAL_EEPROM_SUM error!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mib_attribute=%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error :: attribute=%08X, status=%08X\0A\00", [58 x i8] zeroinitializer }, align 32
@hostif_start_confirm.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.33, ptr @.str.15, ptr @.str.34, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hostif_start_confirm\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" scan_ind_count=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@hostif_connect_indication.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.15, ptr @.str.36, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hostif_connect_indication\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unknown connect_code=%d :: scan_ind_count=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@hostif_connect_indication.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.15, ptr @.str.37, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"disconnect :: scan_ind_count=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@get_current_ap.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.38, ptr @.str.15, ptr @.str.39, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_current_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IWEVENT: connect bssid=%pM\0A\00", [36 x i8] zeroinitializer }, align 32
@get_current_ap.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.38, ptr @.str.15, ptr @.str.40, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [202 x i8], [54 x i8] } { [202 x i8] c"Link AP\0A- bssid=%pM\0A- essid=%s\0A- rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\0A- channel=%d\0A- rssi=%d\0A- sq=%d\0A- capability=%04X\0A- rsn.mode=%d\0A- rsn.size=%d\0A- ext_rate_set_size=%d\0A- rate_set_size=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IWEVENT: disconnect\0A\00", [43 x i8] zeroinitializer }, align 32
@hostif_associate_indication.associnfo_leader0 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ASSOCINFO(ReqIEs=\00", [46 x i8] zeroinitializer }, align 32
@hostif_associate_indication.associnfo_leader1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" RespIEs=\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@hostif_mic_failure_confirm.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.44, ptr @.str.15, ptr @.str.45, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hostif_mic_failure_confirm\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mic_failure=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@hostif_bss_scan_confirm.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.46, ptr @.str.15, ptr @.str.47, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hostif_bss_scan_confirm\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"result=%d :: scan_ind_count=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@hostif_phy_information_confirm.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.48, ptr @.str.15, ptr @.str.49, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hostif_phy_information_confirm\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"phyinfo confirm rssi=%d signal=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@hostif_phy_information_confirm.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.48, ptr @.str.15, ptr @.str.50, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [159 x i8], [33 x i8] } { [159 x i8] c"\0A    rssi=%u\0A    signal=%u\0A    link_speed=%ux500Kbps\0A    transmitted_frame_count=%u\0A    received_fragment_count=%u\0A    failed_count=%u\0A    fcs_error_count=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@hostif_scan_indication.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.51, ptr @.str.15, ptr @.str.52, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hostif_scan_indication\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scan_ind_count = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@hostif_scan_indication.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.51, ptr @.str.15, ptr @.str.53, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" scan_ind_count=%d :: aplist.size=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@hostif_scan_indication.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.51, ptr @.str.15, ptr @.str.54, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" count over :: scan_ind_count=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00P\F2\01\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown Element ID=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@hostif_power_save_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&priv->wakeup_work)\00", [58 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ks_wlan_hw_wakeup_task.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.59, ptr @.str.15, ptr @.str.60, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ks_wlan_hw_wakeup_task\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wake up timeout or interrupted !!!\0A\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hostif_sme_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&priv->sme_i.sme_spin\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SME_MIC_FAILURE_REQUEST: failure count=%u error?\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\0F\AC\00\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00P\F2\00\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\0F\AC\01\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\0F\AC\02\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00P\F2\02\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\0F\AC\04\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00P\F2\04\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\0F\AC\05\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00P\F2\05\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\0F\AC\FF\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00P\F2\FF\00", [27 x i8] zeroinitializer }, align 32
@hostif_sme_mode_setup.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.74, ptr @.str.15, ptr @.str.75, i8 1, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hostif_sme_mode_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Infra bssid = %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@hostif_sme_mode_setup.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.74, ptr @.str.15, ptr @.str.76, i8 1, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Adhoc bssid = %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid mode %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.78 = internal global [21 x i64] [i64 19, i64 16, i64 59393, i64 59394, i64 59395, i64 59396, i64 59397, i64 59398, i64 59399, i64 59400, i64 59401, i64 59402, i64 59404, i64 59405, i64 59406, i64 59407, i64 59408, i64 59409, i64 59410, i64 59411, i64 59412]
@__sancov_gen_cov_switch_values.79 = internal global [20 x i64] [i64 18, i64 32, i64 318898433, i64 318898434, i64 318898435, i64 318898436, i64 352387328, i64 352452864, i64 352780544, i64 553779456, i64 553976064, i64 1359216896, i64 1375863040, i64 1392640256, i64 1426129153, i64 1426129154, i64 1442906368, i64 4043636992, i64 4043702528, i64 4043702784]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 170, i64 240]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 553713920, i64 822231296, i64 4044161280, i64 4044226816]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 42, i64 48, i64 50, i64 221]
@__sancov_gen_cov_switch_values.86 = internal global [46 x i64] [i64 44, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 29, i64 30, i64 31, i64 32, i64 33]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.89 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.93 = internal global [14 x i64] [i64 12, i64 7, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1072, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1110, i32 7 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1211, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2229, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2300, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2301, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2302, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 204, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1028, i32 29 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 440, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 441, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 467, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 487, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 504, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 365, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 385, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 401, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 403, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 403, i32 43 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 534, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 545, i32 20 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 551, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 559, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 567, i32 20 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 576, i32 29 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 593, i32 29 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 709, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 737, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 760, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 158, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 163, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 820, i32 23 }
@___asan_gen_.224 = private unnamed_addr constant [18 x i8] c"associnfo_leader0\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 870, i32 20 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"associnfo_leader1\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 871, i32 20 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 883, i32 25 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 963, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 909, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 939, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 947, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 773, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 793, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 799, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 305, i32 23 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 321, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2275, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 87, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 82, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2255, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2075, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1682, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1682, i32 27 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1686, i32 5 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1690, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1690, i32 27 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1694, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1694, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1698, i32 5 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1698, i32 29 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1757, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1758, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1870, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1879, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private constant [38 x i8] c"../drivers/staging/ks7010/ks_hostif.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1505, i32 29 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hostif_init.__key, ptr @.str.4, ptr @hostif_init.__key.5, ptr @.str.6, ptr @hostif_init.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @hostif_associate_indication.associnfo_leader0, ptr @hostif_associate_indication.associnfo_leader1, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @hostif_power_save_init.__key, ptr @.str.57, ptr @init_completion.__key, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @hostif_sme_init.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostif_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostif_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostif_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 202, i32 256, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostif_associate_indication.associnfo_leader0 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostif_associate_indication.associnfo_leader1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 159, i32 192, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostif_power_save_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostif_sme_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostif_data_request(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %mic = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %1)
  %cmp = icmp ugt i32 %1, 1514
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %1) #14
  br label %err_kfree_skb

if.end:                                           ; preds = %entry
  %connect_status = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 42
  %4 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connect_status, align 4
  %call = tail call zeroext i1 @is_disconnect_status(i32 noundef %5) #11
  br i1 %call, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %lor.lhs.false2, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %mic_failure = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 10
  %stop = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 10, i32 3
  %8 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end10, label %lor.lhs.false2.if.then4_crit_edge

lor.lhs.false2.if.then4_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false2.if.then4_crit_edge, %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %net_dev5 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %10 = ptrtoint ptr %net_dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev5, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then4.if.end9_crit_edge, label %if.then7

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_tx_wake_queue(ptr noundef %13) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4.if.end9_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup193

if.end10:                                         ; preds = %lor.lhs.false2
  %psstatus = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #11
  %16 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %psstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp12 = icmp eq i32 %17, 4
  br i1 %cmp12, label %if.then13, label %if.end10.if.end8.i_crit_edge

if.end10.if.end8.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then13:                                        ; preds = %if.end10
  %net_dev14 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %18 = ptrtoint ptr %net_dev14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev14, align 4
  %_tx.i.i293 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i293 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i293, align 128
  %state.i.i294 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %state.i.i294 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.i294, align 4
  %and1.i.i.i295 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i295)
  %tobool.i.i296.not = icmp eq i32 %and1.i.i.i295, 0
  br i1 %tobool.i.i296.not, label %if.then16, label %if.then13.if.end8.i_crit_edge

if.then13.if.end8.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i294) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then16, %if.then13.if.end8.i_crit_edge, %if.end10.if.end8.i_crit_edge
  %add.i = add nuw nsw i32 %1, 53
  %and.i = and i32 %add.i, -32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 2592) #15
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.end8.i.err_kfree_skb_crit_edge, label %if.end25

if.end8.i.err_kfree_skb_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_kfree_skb

if.end25:                                         ; preds = %if.end8.i
  %data = getelementptr inbounds %struct.hostif_data_request, ptr %call9.i, i32 0, i32 3
  %data26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data26, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %eth_addr = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 16
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eth_addr, align 4
  %30 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h_source, align 4
  %xor.i = xor i32 %31, %29
  %add.ptr.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 16, i32 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ethhdr, ptr %25, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %35, %33
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i299 = icmp eq i32 %or.i, 0
  br i1 %cmp.i299, label %if.end35, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev32 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %36 = ptrtoint ptr %net_dev32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev32, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.1, ptr noundef %h_source) #14
  br label %err_kfree

if.end35:                                         ; preds = %if.end25
  %38 = call ptr @memcpy(ptr %data, ptr %25, i32 12)
  %add.ptr = getelementptr %struct.hostif_data_request, ptr %call9.i, i32 2, i32 1
  %add.ptr36 = getelementptr i8, ptr %25, i32 12
  %add.ptr37 = getelementptr i8, ptr %25, i32 13
  %39 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr37, align 1
  %conv = zext i8 %40 to i32
  %41 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr36, align 1
  %conv38 = zext i8 %42 to i32
  %shl = shl nuw nsw i32 %conv38, 8
  %add39 = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %add39)
  %cmp40 = icmp ugt i32 %add39, 1500
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %27, -12
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -86, ptr %add.ptr, align 4
  %incdec.ptr43 = getelementptr %struct.hostif_data_request, ptr %call9.i, i32 2, i32 2
  %44 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -86, ptr %incdec.ptr, align 1
  %incdec.ptr44 = getelementptr i8, ptr %incdec.ptr43, i32 1
  %45 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %incdec.ptr43, align 2
  %incdec.ptr45 = getelementptr %struct.hostif_data_request, ptr %call9.i, i32 3
  %46 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %incdec.ptr44, align 1
  %incdec.ptr46 = getelementptr i8, ptr %incdec.ptr45, i32 1
  %47 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %incdec.ptr45, align 8
  %incdec.ptr47 = getelementptr i8, ptr %incdec.ptr46, i32 1
  %48 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %incdec.ptr46, align 1
  br label %if.end52

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr49 = getelementptr i8, ptr %25, i32 14
  %sub50 = add i32 %27, -14
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then42
  %.sink = phi i32 [ -2, %if.else ], [ 6, %if.then42 ]
  %buffer.0 = phi ptr [ %add.ptr49, %if.else ], [ %add.ptr36, %if.then42 ]
  %length.0 = phi i32 [ %sub50, %if.else ], [ %sub, %if.then42 ]
  %p.0 = phi ptr [ %add.ptr, %if.else ], [ %incdec.ptr47, %if.then42 ]
  %sub51 = add nsw i32 %1, %.sink
  %49 = call ptr @memcpy(ptr %p.0, ptr %buffer.0, i32 %length.0)
  %add.ptr53 = getelementptr i8, ptr %p.0, i32 %length.0
  %h_proto = getelementptr inbounds %struct.hostif_data_request, ptr %call9.i, i32 3, i32 0, i32 1
  %50 = ptrtoint ptr %h_proto to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %h_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %51)
  %cmp57 = icmp eq i16 %51, -30578
  br i1 %cmp57, label %land.lhs.true, label %if.end52.if.end72_crit_edge

if.end52.if.end72_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end52
  %52 = ptrtoint ptr %mic_failure to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mic_failure, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp62.not = icmp eq i16 %53, 0
  br i1 %cmp62.not, label %land.lhs.true.if.end72_crit_edge, label %if.then64

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then64:                                        ; preds = %land.lhs.true
  %add.ptr65 = getelementptr %struct.hostif_data_request, ptr %call9.i, i32 3, i32 1
  %type = getelementptr inbounds %struct.ieee802_1x_hdr, ptr %add.ptr65, i32 0, i32 1
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %cmp67 = icmp eq i8 %55, 3
  br i1 %cmp67, label %if.then69, label %if.then64.if.end72_crit_edge

if.then64.if.end72_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr70 = getelementptr %struct.hostif_data_request, ptr %call9.i, i32 4
  %key_info = getelementptr inbounds %struct.wpa_eapol_key, ptr %add.ptr70, i32 0, i32 1
  %56 = ptrtoint ptr %key_info to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %key_info, align 1
  %phi.cast = zext i16 %57 to i32
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then64.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge, %if.end52.if.end72_crit_edge
  %keyinfo.0 = phi i32 [ %phi.cast, %if.then69 ], [ 0, %if.then64.if.end72_crit_edge ], [ 0, %land.lhs.true.if.end72_crit_edge ], [ 0, %if.end52.if.end72_crit_edge ]
  %rsn_enabled = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 1
  %58 = ptrtoint ptr %rsn_enabled to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rsn_enabled, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool74.not = icmp eq i8 %59, 0
  br i1 %tobool74.not, label %if.end72.if.else142_crit_edge, label %land.lhs.true76

if.end72.if.else142_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else142

land.lhs.true76:                                  ; preds = %if.end72
  %key_len = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 8, i32 0, i32 5
  %60 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool80.not = icmp eq i16 %61, 0
  br i1 %tobool80.not, label %land.lhs.true76.if.else142_crit_edge, label %if.then81

land.lhs.true76.if.else142_crit_edge:             ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else142

if.then81:                                        ; preds = %land.lhs.true76
  br i1 %cmp57, label %land.lhs.true85, label %if.then81.if.else110_crit_edge

if.then81.if.else110_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else110

land.lhs.true85:                                  ; preds = %if.then81
  %key_len89 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 8, i32 1, i32 5
  %62 = ptrtoint ptr %key_len89 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %key_len89, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp91 = icmp eq i16 %63, 0
  br i1 %cmp91, label %land.lhs.true93, label %land.lhs.true85.if.else110_crit_edge

land.lhs.true85.if.else110_crit_edge:             ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else110

land.lhs.true93:                                  ; preds = %land.lhs.true85
  %key_len97 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 8, i32 2, i32 5
  %64 = ptrtoint ptr %key_len97 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %key_len97, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp99 = icmp eq i16 %65, 0
  br i1 %cmp99, label %land.lhs.true101, label %land.lhs.true93.if.else110_crit_edge

land.lhs.true93.if.else110_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else110

land.lhs.true101:                                 ; preds = %land.lhs.true93
  %key_len105 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 8, i32 3, i32 5
  %66 = ptrtoint ptr %key_len105 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %key_len105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp107 = icmp eq i16 %67, 0
  br i1 %cmp107, label %if.then109, label %land.lhs.true101.if.else110_crit_edge

land.lhs.true101.if.else110_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else110

if.then109:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #13
  %auth_type = getelementptr inbounds %struct.hostif_data_request, ptr %call9.i, i32 0, i32 1
  %68 = ptrtoint ptr %auth_type to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 256, ptr %auth_type, align 4
  br label %if.end151

if.else110:                                       ; preds = %land.lhs.true101.if.else110_crit_edge, %land.lhs.true93.if.else110_crit_edge, %land.lhs.true85.if.else110_crit_edge, %if.then81.if.else110_crit_edge
  %pairwise_suite = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 3
  %69 = ptrtoint ptr %pairwise_suite to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pairwise_suite, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %70, label %if.else110.if.end151_crit_edge [
    i32 4, label %if.then114
    i32 8, label %if.then137
  ]

if.else110.if.end151_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then114:                                       ; preds = %if.else110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #11
  %tx_mic_key = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 8, i32 0, i32 7
  %72 = ptrtoint ptr %mic to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 -1, ptr %mic, align 8
  %call122 = call fastcc i32 @michael_mic(ptr noundef %tx_mic_key, ptr noundef %data, i32 noundef %sub51, ptr noundef nonnull %mic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %mic to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %mic, align 8
  %75 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %74, ptr %add.ptr53, align 1
  %add129 = add nsw i32 %sub51, 8
  %auth_type131 = getelementptr inbounds %struct.hostif_data_request, ptr %call9.i, i32 0, i32 1
  %76 = ptrtoint ptr %auth_type131 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %auth_type131, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #11
  br label %if.end151

cleanup:                                          ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #11
  br label %err_kfree

if.then137:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  %auth_type138 = getelementptr inbounds %struct.hostif_data_request, ptr %call9.i, i32 0, i32 1
  %77 = ptrtoint ptr %auth_type138 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %auth_type138, align 4
  br label %if.end151

if.else142:                                       ; preds = %land.lhs.true76.if.else142_crit_edge, %if.end72.if.else142_crit_edge
  %auth_type147 = getelementptr inbounds %struct.hostif_data_request, ptr %call9.i, i32 0, i32 1
  br i1 %cmp57, label %if.then146, label %if.else148

if.then146:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %auth_type147 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 256, ptr %auth_type147, align 4
  br label %if.end151

if.else148:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %auth_type147 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %auth_type147, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else148, %if.then146, %if.then137, %cleanup.thread, %if.else110.if.end151_crit_edge, %if.then109
  %skb_len.2 = phi i32 [ %sub51, %if.then109 ], [ %sub51, %if.then137 ], [ %sub51, %if.then146 ], [ %sub51, %if.else148 ], [ %sub51, %if.else110.if.end151_crit_edge ], [ %add129, %cleanup.thread ]
  %80 = trunc i32 %skb_len.2 to i16
  %conv153 = add nsw i16 %80, 6
  %81 = call i16 @llvm.bswap.i16(i16 %conv153)
  %82 = ptrtoint ptr %call9.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %call9.i, align 128
  %event = getelementptr inbounds %struct.hostif_hdr, ptr %call9.i, i32 0, i32 1
  %83 = ptrtoint ptr %event to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 480, ptr %event, align 2
  %add.i300 = add nsw i32 %skb_len.2, 39
  %and.i301 = and i32 %add.i300, -32
  %call158 = call i32 @ks_wlan_hw_tx(ptr noundef %priv, ptr noundef nonnull %call9.i, i32 noundef %and.i301, ptr noundef nonnull @send_packet_complete, ptr noundef %skb) #11
  br i1 %cmp57, label %land.lhs.true162, label %if.end151.cleanup193_crit_edge

if.end151.cleanup193_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup193

land.lhs.true162:                                 ; preds = %if.end151
  %84 = ptrtoint ptr %mic_failure to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %mic_failure, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp167.not = icmp eq i16 %85, 0
  br i1 %cmp167.not, label %land.lhs.true162.cleanup193_crit_edge, label %if.then169

land.lhs.true162.cleanup193_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup193

if.then169:                                       ; preds = %land.lhs.true162
  %86 = and i32 %keyinfo.0, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %86)
  %.not = icmp eq i32 %86, 3072
  br i1 %.not, label %if.then177, label %if.then169.if.end180_crit_edge

if.then169.if.end180_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

if.then177:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev178 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %87 = ptrtoint ptr %net_dev178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %net_dev178, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %88, ptr noundef nonnull @.str.2, i32 noundef %keyinfo.0) #14
  call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 17)
  %89 = ptrtoint ptr %mic_failure to i32
  call void @__asan_load2_noabort(i32 %89)
  %.pr = load i16, ptr %mic_failure, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %if.then169.if.end180_crit_edge
  %90 = phi i16 [ %.pr, %if.then177 ], [ %85, %if.then169.if.end180_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %90)
  %cmp185 = icmp eq i16 %90, 2
  br i1 %cmp185, label %if.then187, label %if.end180.cleanup193_crit_edge

if.end180.cleanup193_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup193

if.then187:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %stop, align 4
  br label %cleanup193

err_kfree:                                        ; preds = %cleanup, %if.then31
  %ret.0 = phi i32 [ %call122, %cleanup ], [ -6, %if.then31 ]
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %err_kfree_skb

err_kfree_skb:                                    ; preds = %err_kfree, %if.end8.i.err_kfree_skb_crit_edge, %if.then
  %ret.1 = phi i32 [ -75, %if.then ], [ %ret.0, %err_kfree ], [ -12, %if.end8.i.err_kfree_skb_crit_edge ]
  call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup193

cleanup193:                                       ; preds = %err_kfree_skb, %if.then187, %if.end180.cleanup193_crit_edge, %land.lhs.true162.cleanup193_crit_edge, %if.end151.cleanup193_crit_edge, %if.end9
  %retval.0 = phi i32 [ %ret.1, %err_kfree_skb ], [ 0, %if.end9 ], [ %call158, %if.end180.cleanup193_crit_edge ], [ %call158, %if.then187 ], [ %call158, %land.lhs.true162.cleanup193_crit_edge ], [ %call158, %if.end151.cleanup193_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_disconnect_status(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @michael_mic(ptr noundef %key, ptr noundef %data, i32 noundef %len, ptr noundef %result) unnamed_addr #0 align 64 {
entry:
  %pad_data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_data) #11
  %0 = ptrtoint ptr %pad_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pad_data, align 4
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #11
  %cmp.i1 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call to i32
  br label %err

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @crypto_shash_setkey(ptr noundef %call, ptr noundef %key, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.err_free_tfm_crit_edge, label %if.end8.i

if.end.err_free_tfm_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_tfm

if.end8.i:                                        ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 128
  %add = add i32 %3, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.err_free_tfm_crit_edge, label %if.end11

if.end8.i.err_free_tfm_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_tfm

if.end11:                                         ; preds = %if.end8.i
  %4 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %call9.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end11.err_free_desc_crit_edge

if.end11.err_free_desc_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_desc

crypto_shash_init.exit:                           ; preds = %if.end11
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -256
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %10(ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp14 = icmp slt i32 %call3.i, 0
  br i1 %cmp14, label %crypto_shash_init.exit.err_free_desc_crit_edge, label %if.end16

crypto_shash_init.exit.err_free_desc_crit_edge:   ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_desc

if.end16:                                         ; preds = %crypto_shash_init.exit
  %call17 = tail call i32 @crypto_shash_update(ptr noundef nonnull %call9.i, ptr noundef %data, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.err_free_desc_crit_edge, label %if.end20

if.end16.err_free_desc_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_desc

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i, ptr noundef nonnull %pad_data, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.err_free_desc_crit_edge, label %if.end24

if.end20.err_free_desc_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_desc

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %data, i32 12
  %sub = add i32 %len, -12
  %call25 = call i32 @crypto_shash_finup(ptr noundef nonnull %call9.i, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %result) #11
  br label %err_free_desc

err_free_desc:                                    ; preds = %if.end24, %if.end20.err_free_desc_crit_edge, %if.end16.err_free_desc_crit_edge, %crypto_shash_init.exit.err_free_desc_crit_edge, %if.end11.err_free_desc_crit_edge
  %ret.0 = phi i32 [ %call3.i, %crypto_shash_init.exit.err_free_desc_crit_edge ], [ %call17, %if.end16.err_free_desc_crit_edge ], [ %call21, %if.end20.err_free_desc_crit_edge ], [ %call25, %if.end24 ], [ -126, %if.end11.err_free_desc_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i) #11
  br label %err_free_tfm

err_free_tfm:                                     ; preds = %err_free_desc, %if.end8.i.err_free_tfm_crit_edge, %if.end.err_free_tfm_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end.err_free_tfm_crit_edge ], [ %ret.0, %err_free_desc ], [ -12, %if.end8.i.err_free_tfm_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #11
  br label %err

err:                                              ; preds = %err_free_tfm, %if.then
  %ret.2 = phi i32 [ %1, %if.then ], [ %ret.1, %err_free_tfm ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_data) #11
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks_wlan_hw_tx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @send_packet_complete(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qtail.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qtail.i, align 4
  %sub.i = sub i32 128, %1
  %qhead.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qhead.i, align 4
  %add.i = add i32 %3, %sub.i
  %and.i = and i32 %add.i, 127
  %4 = tail call i32 @llvm.smin.i32(i32 %and.i, i32 %sub.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %4)
  %cmp = icmp ult i32 %4, 127
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %event to i32
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qtail.i, align 4
  %add.i8 = add i32 %7, 1
  %rem.i = and i32 %add.i8, 127
  store i32 %rem.i, ptr %qtail.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %state.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.tasklet_schedule.exit_crit_edge

if.end.tasklet_schedule.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostif_receive(ptr noundef %priv, ptr noundef %p, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %wrqu.i.i = alloca %union.iwreq_data, align 4
  %buf.i.i = alloca [256 x i8], align 1
  %wrqu0.i.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_device_open.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 30
  %0 = ptrtoint ptr %is_device_open.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_device_open.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.devio_rec_ind.exit_crit_edge, label %if.end.i

entry.devio_rec_ind.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %devio_rec_ind.exit

if.end.i:                                         ; preds = %entry
  %dev_read_lock.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %dev_read_lock.i) #11
  %rec_count.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rec_count.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %rec_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rec_count.i, align 4
  %arrayidx.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 34, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %p, ptr %arrayidx.i, align 4
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rec_count.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %rec_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %rec_count.i, align 4
  %arrayidx3.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 35, i32 %6
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %arrayidx3.i, align 4
  %event_count.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 31
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event_count.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %event_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %event_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 20
  br i1 %cmp.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i30.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %event_count.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_count.i, ptr %event_count.i, i32 1, ptr elementtype(i32) %event_count.i) #11, !srcloc !177
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %call.i.i31.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rec_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rec_count.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rec_count.i, ptr %rec_count.i, i32 1, ptr elementtype(i32) %rec_count.i) #11, !srcloc !177
  %call.i.i32.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rec_count.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %rec_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %rec_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %13)
  %cmp11.i = icmp eq i32 %13, 20
  br i1 %cmp11.i, label %if.then12.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rec_count.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %rec_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %rec_count.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end7.i.if.end14.i_crit_edge
  %devread_wait.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %devread_wait.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  tail call void @_raw_spin_unlock(ptr noundef %dev_read_lock.i) #11
  br label %devio_rec_ind.exit

devio_rec_ind.exit:                               ; preds = %if.end14.i, %entry.devio_rec_ind.exit_crit_edge
  %rxp = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 11
  %rx_size = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 12
  %15 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size, ptr %rx_size, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %p, i32 1
  %16 = ptrtoint ptr %rxp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr.i.i, ptr %rxp, align 4
  %17 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %p, align 1
  %dec.i.i = add i32 %size, -1
  store i32 %dec.i.i, ptr %rx_size, align 4
  %incdec.ptr.i10.i = getelementptr i8, ptr %p, i32 2
  store ptr %incdec.ptr.i10.i, ptr %rxp, align 4
  %19 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i.i, align 1
  %dec.i12.i = add i32 %size, -2
  store i32 %dec.i12.i, ptr %rx_size, align 4
  %conv3.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %conv5.i = zext i8 %18 to i32
  %or.i = or i32 %shl.i, %conv5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i12.i, i32 %or.i)
  %cmp = icmp eq i32 %dec.i12.i, %or.i
  br i1 %cmp, label %if.then, label %devio_rec_ind.exit.if.end_crit_edge

devio_rec_ind.exit.if.end_crit_edge:              ; preds = %devio_rec_ind.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %devio_rec_ind.exit
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p, i32 3
  %21 = ptrtoint ptr %rxp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr.i.i.i, ptr %rxp, align 4
  %22 = ptrtoint ptr %incdec.ptr.i10.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.i10.i, align 1
  %dec.i.i.i = add i32 %size, -3
  %24 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %dec.i.i.i, ptr %rx_size, align 4
  %incdec.ptr.i10.i.i = getelementptr i8, ptr %p, i32 4
  store ptr %incdec.ptr.i10.i.i, ptr %rxp, align 4
  %25 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %dec.i12.i.i = add i32 %size, -4
  store i32 %dec.i12.i.i, ptr %rx_size, align 4
  %conv3.i.i = zext i8 %26 to i16
  %shl.i.i = shl nuw i16 %conv3.i.i, 8
  %conv5.i.i = zext i8 %23 to i16
  %or.i.i = or i16 %shl.i.i, %conv5.i.i
  %conv.i = zext i16 %or.i.i to i32
  %27 = zext i16 %or.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %or.i.i, label %sw.default.i [
    i16 -6143, label %sw.bb.i
    i16 -6142, label %sw.bb1.i
    i16 -6141, label %sw.bb2.i
    i16 -6140, label %sw.bb3.i
    i16 -6128, label %sw.bb4.i
    i16 -6139, label %sw.bb5.i
    i16 -6138, label %sw.bb6.i
    i16 -6137, label %sw.bb7.i
    i16 -6136, label %sw.bb8.i
    i16 -6135, label %if.then.sw.bb9.i_crit_edge
    i16 -6125, label %if.then.sw.bb9.i_crit_edge18
    i16 -6134, label %if.then.sw.bb10.i_crit_edge
    i16 -6124, label %if.then.sw.bb10.i_crit_edge19
    i16 -6132, label %sw.bb11.i
    i16 -6131, label %sw.bb12.i
    i16 -6130, label %sw.bb13.i
    i16 -6129, label %if.then.sw.bb14.i_crit_edge
    i16 -6127, label %if.then.sw.bb14.i_crit_edge20
    i16 -6126, label %sw.bb15.i
  ]

if.then.sw.bb14.i_crit_edge20:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i

if.then.sw.bb14.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i

if.then.sw.bb10.i_crit_edge19:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10.i

if.then.sw.bb10.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10.i

if.then.sw.bb9.i_crit_edge18:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i

if.then.sw.bb9.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_data_indication(ptr noundef %priv) #11
  br label %hostif_event_check.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_mib_get_confirm(ptr noundef %priv) #11
  br label %hostif_event_check.exit

sw.bb2.i:                                         ; preds = %if.then
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %p, i32 5
  %28 = ptrtoint ptr %rxp to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %incdec.ptr.i.i.i.i, ptr %rxp, align 4
  %29 = ptrtoint ptr %incdec.ptr.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.i10.i.i, align 1
  %dec.i.i.i.i = add i32 %size, -5
  %31 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec.i.i.i.i, ptr %rx_size, align 4
  %conv.i.i.i = zext i8 %30 to i32
  %incdec.ptr.i21.i.i.i = getelementptr i8, ptr %p, i32 6
  store ptr %incdec.ptr.i21.i.i.i, ptr %rxp, align 4
  %32 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.i.i.i.i, align 1
  %dec.i23.i.i.i = add i32 %size, -6
  store i32 %dec.i23.i.i.i, ptr %rx_size, align 4
  %conv2.i.i.i = zext i8 %33 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  %incdec.ptr.i25.i.i.i = getelementptr i8, ptr %p, i32 7
  store ptr %incdec.ptr.i25.i.i.i, ptr %rxp, align 4
  %34 = ptrtoint ptr %incdec.ptr.i21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.i21.i.i.i, align 1
  %dec.i27.i.i.i = add i32 %size, -7
  store i32 %dec.i27.i.i.i, ptr %rx_size, align 4
  %conv5.i.i.i = zext i8 %35 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 16
  %or8.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %incdec.ptr.i29.i.i.i = getelementptr i8, ptr %p, i32 8
  store ptr %incdec.ptr.i29.i.i.i, ptr %rxp, align 4
  %36 = ptrtoint ptr %incdec.ptr.i25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.i25.i.i.i, align 1
  %dec.i31.i.i.i = add i32 %size, -8
  store i32 %dec.i31.i.i.i, ptr %rx_size, align 4
  %conv10.i.i.i = zext i8 %37 to i32
  %shl11.i.i.i = shl nuw i32 %conv10.i.i.i, 24
  %or13.i.i.i = or i32 %or8.i.i.i, %shl11.i.i.i
  %incdec.ptr.i.i100.i.i = getelementptr i8, ptr %p, i32 9
  store ptr %incdec.ptr.i.i100.i.i, ptr %rxp, align 4
  %38 = ptrtoint ptr %incdec.ptr.i29.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.i29.i.i.i, align 1
  %dec.i.i102.i.i = add i32 %size, -9
  store i32 %dec.i.i102.i.i, ptr %rx_size, align 4
  %conv.i103.i.i = zext i8 %39 to i32
  %incdec.ptr.i21.i104.i.i = getelementptr i8, ptr %p, i32 10
  store ptr %incdec.ptr.i21.i104.i.i, ptr %rxp, align 4
  %40 = ptrtoint ptr %incdec.ptr.i.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.i.i100.i.i, align 1
  %dec.i23.i105.i.i = add i32 %size, -10
  store i32 %dec.i23.i105.i.i, ptr %rx_size, align 4
  %conv2.i106.i.i = zext i8 %41 to i32
  %shl.i107.i.i = shl nuw nsw i32 %conv2.i106.i.i, 8
  %or.i108.i.i = or i32 %shl.i107.i.i, %conv.i103.i.i
  %incdec.ptr.i25.i109.i.i = getelementptr i8, ptr %p, i32 11
  store ptr %incdec.ptr.i25.i109.i.i, ptr %rxp, align 4
  %42 = ptrtoint ptr %incdec.ptr.i21.i104.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.i21.i104.i.i, align 1
  %dec.i27.i110.i.i = add i32 %size, -11
  store i32 %dec.i27.i110.i.i, ptr %rx_size, align 4
  %conv5.i111.i.i = zext i8 %43 to i32
  %shl6.i112.i.i = shl nuw nsw i32 %conv5.i111.i.i, 16
  %or8.i113.i.i = or i32 %or.i108.i.i, %shl6.i112.i.i
  %incdec.ptr.i29.i114.i.i = getelementptr i8, ptr %p, i32 12
  store ptr %incdec.ptr.i29.i114.i.i, ptr %rxp, align 4
  %44 = ptrtoint ptr %incdec.ptr.i25.i109.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.i25.i109.i.i, align 1
  %dec.i31.i115.i.i = add i32 %size, -12
  store i32 %dec.i31.i115.i.i, ptr %rx_size, align 4
  %conv10.i116.i.i = zext i8 %45 to i32
  %shl11.i117.i.i = shl nuw i32 %conv10.i116.i.i, 24
  %or13.i118.i.i = or i32 %or8.i113.i.i, %shl11.i117.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or13.i.i.i)
  %tobool.not.i.i = icmp eq i32 %or13.i.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb2.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.bb2.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %46 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.32, i32 noundef %or13.i118.i.i, i32 noundef %or13.i.i.i) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb2.i.if.end.i.i_crit_edge
  %48 = zext i32 %or13.i118.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %or13.i118.i.i, label %if.end.i.i.hostif_event_check.exit_crit_edge [
    i32 553779456, label %sw.bb.i.i
    i32 553976064, label %sw.bb2.i.i
    i32 352452864, label %sw.bb3.i.i
    i32 318898433, label %sw.bb7.i.i
    i32 318898434, label %sw.bb12.i.i
    i32 318898435, label %sw.bb19.i.i
    i32 318898436, label %sw.bb26.i.i
    i32 352387328, label %sw.bb32.i.i
    i32 352780544, label %sw.bb38.i.i
    i32 1442906368, label %sw.bb39.i.i
    i32 -251264768, label %sw.bb40.i.i
    i32 -251264512, label %sw.bb41.i.i
    i32 -251330304, label %sw.bb42.i.i
    i32 1359216896, label %sw.bb43.i.i
    i32 1375863040, label %sw.bb44.i.i
    i32 1392640256, label %sw.bb45.i.i
    i32 1426129153, label %sw.bb46.i.i
    i32 1426129154, label %sw.bb53.i.i
  ]

if.end.i.i.hostif_event_check.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %qtail.i.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %49 = ptrtoint ptr %qtail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qtail.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 128, %50
  %qhead.i.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %51 = ptrtoint ptr %qhead.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qhead.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %52, %sub.i.i.i.i
  %and.i.i.i.i = and i32 %add.i.i.i.i, 127
  %53 = tail call i32 @llvm.smin.i32(i32 %and.i.i.i.i, i32 %sub.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %53)
  %cmp.i.i.i = icmp ult i32 %53, 127
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %50
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 51, ptr %arrayidx.i.i.i, align 4
  %55 = ptrtoint ptr %qtail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qtail.i.i.i.i, align 4
  %add.i8.i.i.i = add i32 %56, 1
  %rem.i.i.i.i = and i32 %add.i8.i.i.i, 127
  store i32 %rem.i.i.i.i, ptr %qtail.i.i.i.i, align 4
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %57 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %58, ptr noundef nonnull @.str.3) #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i119.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i119.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.hostif_event_check.exit_crit_edge

if.end.i.i.i.hostif_event_check.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i.i.i) #11
  br label %hostif_event_check.exit

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  %qtail.i.i120.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %59 = ptrtoint ptr %qtail.i.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qtail.i.i120.i.i, align 4
  %sub.i.i121.i.i = sub i32 128, %60
  %qhead.i.i122.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %61 = ptrtoint ptr %qhead.i.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qhead.i.i122.i.i, align 4
  %add.i.i123.i.i = add i32 %62, %sub.i.i121.i.i
  %and.i.i124.i.i = and i32 %add.i.i123.i.i, 127
  %63 = tail call i32 @llvm.smin.i32(i32 %and.i.i124.i.i, i32 %sub.i.i121.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %63)
  %cmp.i125.i.i = icmp ult i32 %63, 127
  br i1 %cmp.i125.i.i, label %if.then.i129.i.i, label %if.else.i131.i.i

if.then.i129.i.i:                                 ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i126.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %60
  %64 = ptrtoint ptr %arrayidx.i126.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 52, ptr %arrayidx.i126.i.i, align 4
  %65 = ptrtoint ptr %qtail.i.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qtail.i.i120.i.i, align 4
  %add.i8.i127.i.i = add i32 %66, 1
  %rem.i.i128.i.i = and i32 %add.i8.i127.i.i, 127
  store i32 %rem.i.i128.i.i, ptr %qtail.i.i120.i.i, align 4
  br label %if.end.i135.i.i

if.else.i131.i.i:                                 ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i130.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %67 = ptrtoint ptr %net_dev.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net_dev.i130.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %68, ptr noundef nonnull @.str.3) #14
  br label %if.end.i135.i.i

if.end.i135.i.i:                                  ; preds = %if.else.i131.i.i, %if.then.i129.i.i
  %state.i.i132.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i133.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i132.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133.i.i)
  %tobool.not.i.i134.i.i = icmp eq i32 %call.i.i133.i.i, 0
  br i1 %tobool.not.i.i134.i.i, label %if.then.i.i137.i.i, label %if.end.i135.i.i.hostif_event_check.exit_crit_edge

if.end.i135.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i135.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i137.i.i:                               ; preds = %if.end.i135.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i136.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i136.i.i) #11
  br label %hostif_event_check.exit

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  %wpa.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21
  %69 = ptrtoint ptr %wpa.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %wpa.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool4.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %sw.bb3.i.i.hostif_event_check.exit_crit_edge

sw.bb3.i.i.hostif_event_check.exit_crit_edge:     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then5.i.i:                                     ; preds = %sw.bb3.i.i
  %qtail.i.i139.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %71 = ptrtoint ptr %qtail.i.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qtail.i.i139.i.i, align 4
  %sub.i.i140.i.i = sub i32 128, %72
  %qhead.i.i141.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %73 = ptrtoint ptr %qhead.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qhead.i.i141.i.i, align 4
  %add.i.i142.i.i = add i32 %74, %sub.i.i140.i.i
  %and.i.i143.i.i = and i32 %add.i.i142.i.i, 127
  %75 = tail call i32 @llvm.smin.i32(i32 %and.i.i143.i.i, i32 %sub.i.i140.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %75)
  %cmp.i144.i.i = icmp ult i32 %75, 127
  br i1 %cmp.i144.i.i, label %if.then.i148.i.i, label %if.else.i150.i.i

if.then.i148.i.i:                                 ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i145.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %72
  %76 = ptrtoint ptr %arrayidx.i145.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 53, ptr %arrayidx.i145.i.i, align 4
  %77 = ptrtoint ptr %qtail.i.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %qtail.i.i139.i.i, align 4
  %add.i8.i146.i.i = add i32 %78, 1
  %rem.i.i147.i.i = and i32 %add.i8.i146.i.i, 127
  store i32 %rem.i.i147.i.i, ptr %qtail.i.i139.i.i, align 4
  br label %if.end.i154.i.i

if.else.i150.i.i:                                 ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i149.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %79 = ptrtoint ptr %net_dev.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev.i149.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.3) #14
  br label %if.end.i154.i.i

if.end.i154.i.i:                                  ; preds = %if.else.i150.i.i, %if.then.i148.i.i
  %state.i.i151.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i152.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i151.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152.i.i)
  %tobool.not.i.i153.i.i = icmp eq i32 %call.i.i152.i.i, 0
  br i1 %tobool.not.i.i153.i.i, label %if.then.i.i156.i.i, label %if.end.i154.i.i.hostif_event_check.exit_crit_edge

if.end.i154.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i154.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i156.i.i:                               ; preds = %if.end.i154.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i155.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i155.i.i) #11
  br label %hostif_event_check.exit

sw.bb7.i.i:                                       ; preds = %if.end.i.i
  %rsn_enabled.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 1
  %81 = ptrtoint ptr %rsn_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rsn_enabled.i.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool9.not.i.i = icmp eq i8 %82, 0
  %qtail.i.i177.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %83 = ptrtoint ptr %qtail.i.i177.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %qtail.i.i177.i.i, align 4
  %sub.i.i178.i.i = sub i32 128, %84
  %qhead.i.i179.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %85 = ptrtoint ptr %qhead.i.i179.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qhead.i.i179.i.i, align 4
  %add.i.i180.i.i = add i32 %86, %sub.i.i178.i.i
  %and.i.i181.i.i = and i32 %add.i.i180.i.i, 127
  %87 = tail call i32 @llvm.smin.i32(i32 %and.i.i181.i.i, i32 %sub.i.i178.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %87)
  %cmp.i182.i.i = icmp ult i32 %87, 127
  br i1 %tobool9.not.i.i, label %if.else.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %sw.bb7.i.i
  br i1 %cmp.i182.i.i, label %if.then.i167.i.i, label %if.else.i169.i.i

if.then.i167.i.i:                                 ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i164.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %84
  %88 = ptrtoint ptr %arrayidx.i164.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 10, ptr %arrayidx.i164.i.i, align 4
  %89 = ptrtoint ptr %qtail.i.i177.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %qtail.i.i177.i.i, align 4
  %add.i8.i165.i.i = add i32 %90, 1
  %rem.i.i166.i.i = and i32 %add.i8.i165.i.i, 127
  store i32 %rem.i.i166.i.i, ptr %qtail.i.i177.i.i, align 4
  br label %if.end.i173.i.i

if.else.i169.i.i:                                 ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i168.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %91 = ptrtoint ptr %net_dev.i168.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %net_dev.i168.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.3) #14
  br label %if.end.i173.i.i

if.end.i173.i.i:                                  ; preds = %if.else.i169.i.i, %if.then.i167.i.i
  %state.i.i170.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i171.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i170.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171.i.i)
  %tobool.not.i.i172.i.i = icmp eq i32 %call.i.i171.i.i, 0
  br i1 %tobool.not.i.i172.i.i, label %if.then.i.i175.i.i, label %if.end.i173.i.i.hostif_event_check.exit_crit_edge

if.end.i173.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i173.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i175.i.i:                               ; preds = %if.end.i173.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i174.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i174.i.i) #11
  br label %hostif_event_check.exit

if.else.i.i:                                      ; preds = %sw.bb7.i.i
  br i1 %cmp.i182.i.i, label %if.then.i186.i.i, label %if.else.i188.i.i

if.then.i186.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i183.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %84
  %93 = ptrtoint ptr %arrayidx.i183.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 54, ptr %arrayidx.i183.i.i, align 4
  %94 = ptrtoint ptr %qtail.i.i177.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %qtail.i.i177.i.i, align 4
  %add.i8.i184.i.i = add i32 %95, 1
  %rem.i.i185.i.i = and i32 %add.i8.i184.i.i, 127
  store i32 %rem.i.i185.i.i, ptr %qtail.i.i177.i.i, align 4
  br label %if.end.i192.i.i

if.else.i188.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i187.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %96 = ptrtoint ptr %net_dev.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net_dev.i187.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %97, ptr noundef nonnull @.str.3) #14
  br label %if.end.i192.i.i

if.end.i192.i.i:                                  ; preds = %if.else.i188.i.i, %if.then.i186.i.i
  %state.i.i189.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i190.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i189.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i190.i.i)
  %tobool.not.i.i191.i.i = icmp eq i32 %call.i.i190.i.i, 0
  br i1 %tobool.not.i.i191.i.i, label %if.then.i.i194.i.i, label %if.end.i192.i.i.hostif_event_check.exit_crit_edge

if.end.i192.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i192.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i194.i.i:                               ; preds = %if.end.i192.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i193.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i193.i.i) #11
  br label %hostif_event_check.exit

sw.bb12.i.i:                                      ; preds = %if.end.i.i
  %rsn_enabled14.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 1
  %98 = ptrtoint ptr %rsn_enabled14.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rsn_enabled14.i.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool15.not.i.i = icmp eq i8 %99, 0
  %qtail.i.i215.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %100 = ptrtoint ptr %qtail.i.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qtail.i.i215.i.i, align 4
  %sub.i.i216.i.i = sub i32 128, %101
  %qhead.i.i217.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %102 = ptrtoint ptr %qhead.i.i217.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %qhead.i.i217.i.i, align 4
  %add.i.i218.i.i = add i32 %103, %sub.i.i216.i.i
  %and.i.i219.i.i = and i32 %add.i.i218.i.i, 127
  %104 = tail call i32 @llvm.smin.i32(i32 %and.i.i219.i.i, i32 %sub.i.i216.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %104)
  %cmp.i220.i.i = icmp ult i32 %104, 127
  br i1 %tobool15.not.i.i, label %if.else17.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %sw.bb12.i.i
  br i1 %cmp.i220.i.i, label %if.then.i205.i.i, label %if.else.i207.i.i

if.then.i205.i.i:                                 ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i202.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %101
  %105 = ptrtoint ptr %arrayidx.i202.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 11, ptr %arrayidx.i202.i.i, align 4
  %106 = ptrtoint ptr %qtail.i.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %qtail.i.i215.i.i, align 4
  %add.i8.i203.i.i = add i32 %107, 1
  %rem.i.i204.i.i = and i32 %add.i8.i203.i.i, 127
  store i32 %rem.i.i204.i.i, ptr %qtail.i.i215.i.i, align 4
  br label %if.end.i211.i.i

if.else.i207.i.i:                                 ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i206.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %108 = ptrtoint ptr %net_dev.i206.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %net_dev.i206.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %109, ptr noundef nonnull @.str.3) #14
  br label %if.end.i211.i.i

if.end.i211.i.i:                                  ; preds = %if.else.i207.i.i, %if.then.i205.i.i
  %state.i.i208.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i209.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i208.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i209.i.i)
  %tobool.not.i.i210.i.i = icmp eq i32 %call.i.i209.i.i, 0
  br i1 %tobool.not.i.i210.i.i, label %if.then.i.i213.i.i, label %if.end.i211.i.i.hostif_event_check.exit_crit_edge

if.end.i211.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i211.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i213.i.i:                               ; preds = %if.end.i211.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i212.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i212.i.i) #11
  br label %hostif_event_check.exit

if.else17.i.i:                                    ; preds = %sw.bb12.i.i
  br i1 %cmp.i220.i.i, label %if.then.i224.i.i, label %if.else.i226.i.i

if.then.i224.i.i:                                 ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i221.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %101
  %110 = ptrtoint ptr %arrayidx.i221.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 55, ptr %arrayidx.i221.i.i, align 4
  %111 = ptrtoint ptr %qtail.i.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %qtail.i.i215.i.i, align 4
  %add.i8.i222.i.i = add i32 %112, 1
  %rem.i.i223.i.i = and i32 %add.i8.i222.i.i, 127
  store i32 %rem.i.i223.i.i, ptr %qtail.i.i215.i.i, align 4
  br label %if.end.i230.i.i

if.else.i226.i.i:                                 ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i225.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %113 = ptrtoint ptr %net_dev.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net_dev.i225.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %114, ptr noundef nonnull @.str.3) #14
  br label %if.end.i230.i.i

if.end.i230.i.i:                                  ; preds = %if.else.i226.i.i, %if.then.i224.i.i
  %state.i.i227.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i228.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i227.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i228.i.i)
  %tobool.not.i.i229.i.i = icmp eq i32 %call.i.i228.i.i, 0
  br i1 %tobool.not.i.i229.i.i, label %if.then.i.i232.i.i, label %if.end.i230.i.i.hostif_event_check.exit_crit_edge

if.end.i230.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i230.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i232.i.i:                               ; preds = %if.end.i230.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i231.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i231.i.i) #11
  br label %hostif_event_check.exit

sw.bb19.i.i:                                      ; preds = %if.end.i.i
  %rsn_enabled21.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 1
  %115 = ptrtoint ptr %rsn_enabled21.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %rsn_enabled21.i.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool22.not.i.i = icmp eq i8 %116, 0
  %qtail.i.i253.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %117 = ptrtoint ptr %qtail.i.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %qtail.i.i253.i.i, align 4
  %sub.i.i254.i.i = sub i32 128, %118
  %qhead.i.i255.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %119 = ptrtoint ptr %qhead.i.i255.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %qhead.i.i255.i.i, align 4
  %add.i.i256.i.i = add i32 %120, %sub.i.i254.i.i
  %and.i.i257.i.i = and i32 %add.i.i256.i.i, 127
  %121 = tail call i32 @llvm.smin.i32(i32 %and.i.i257.i.i, i32 %sub.i.i254.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %121)
  %cmp.i258.i.i = icmp ult i32 %121, 127
  br i1 %tobool22.not.i.i, label %if.else24.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %sw.bb19.i.i
  br i1 %cmp.i258.i.i, label %if.then.i243.i.i, label %if.else.i245.i.i

if.then.i243.i.i:                                 ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i240.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %118
  %122 = ptrtoint ptr %arrayidx.i240.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 12, ptr %arrayidx.i240.i.i, align 4
  %123 = ptrtoint ptr %qtail.i.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qtail.i.i253.i.i, align 4
  %add.i8.i241.i.i = add i32 %124, 1
  %rem.i.i242.i.i = and i32 %add.i8.i241.i.i, 127
  store i32 %rem.i.i242.i.i, ptr %qtail.i.i253.i.i, align 4
  br label %if.end.i249.i.i

if.else.i245.i.i:                                 ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i244.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %125 = ptrtoint ptr %net_dev.i244.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %net_dev.i244.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %126, ptr noundef nonnull @.str.3) #14
  br label %if.end.i249.i.i

if.end.i249.i.i:                                  ; preds = %if.else.i245.i.i, %if.then.i243.i.i
  %state.i.i246.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i247.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i246.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i247.i.i)
  %tobool.not.i.i248.i.i = icmp eq i32 %call.i.i247.i.i, 0
  br i1 %tobool.not.i.i248.i.i, label %if.then.i.i251.i.i, label %if.end.i249.i.i.hostif_event_check.exit_crit_edge

if.end.i249.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i249.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i251.i.i:                               ; preds = %if.end.i249.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i250.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i250.i.i) #11
  br label %hostif_event_check.exit

if.else24.i.i:                                    ; preds = %sw.bb19.i.i
  br i1 %cmp.i258.i.i, label %if.then.i262.i.i, label %if.else.i264.i.i

if.then.i262.i.i:                                 ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i259.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %118
  %127 = ptrtoint ptr %arrayidx.i259.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 56, ptr %arrayidx.i259.i.i, align 4
  %128 = ptrtoint ptr %qtail.i.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %qtail.i.i253.i.i, align 4
  %add.i8.i260.i.i = add i32 %129, 1
  %rem.i.i261.i.i = and i32 %add.i8.i260.i.i, 127
  store i32 %rem.i.i261.i.i, ptr %qtail.i.i253.i.i, align 4
  br label %if.end.i268.i.i

if.else.i264.i.i:                                 ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i263.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %130 = ptrtoint ptr %net_dev.i263.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %net_dev.i263.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %131, ptr noundef nonnull @.str.3) #14
  br label %if.end.i268.i.i

if.end.i268.i.i:                                  ; preds = %if.else.i264.i.i, %if.then.i262.i.i
  %state.i.i265.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i266.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i265.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i266.i.i)
  %tobool.not.i.i267.i.i = icmp eq i32 %call.i.i266.i.i, 0
  br i1 %tobool.not.i.i267.i.i, label %if.then.i.i270.i.i, label %if.end.i268.i.i.hostif_event_check.exit_crit_edge

if.end.i268.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i268.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i270.i.i:                               ; preds = %if.end.i268.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i269.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i269.i.i) #11
  br label %hostif_event_check.exit

sw.bb26.i.i:                                      ; preds = %if.end.i.i
  %rsn_enabled28.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 1
  %132 = ptrtoint ptr %rsn_enabled28.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %rsn_enabled28.i.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool29.not.i.i = icmp eq i8 %133, 0
  br i1 %tobool29.not.i.i, label %if.then30.i.i, label %sw.bb26.i.i.hostif_event_check.exit_crit_edge

sw.bb26.i.i.hostif_event_check.exit_crit_edge:    ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then30.i.i:                                    ; preds = %sw.bb26.i.i
  %qtail.i.i272.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %134 = ptrtoint ptr %qtail.i.i272.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %qtail.i.i272.i.i, align 4
  %sub.i.i273.i.i = sub i32 128, %135
  %qhead.i.i274.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %136 = ptrtoint ptr %qhead.i.i274.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %qhead.i.i274.i.i, align 4
  %add.i.i275.i.i = add i32 %137, %sub.i.i273.i.i
  %and.i.i276.i.i = and i32 %add.i.i275.i.i, 127
  %138 = tail call i32 @llvm.smin.i32(i32 %and.i.i276.i.i, i32 %sub.i.i273.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %138)
  %cmp.i277.i.i = icmp ult i32 %138, 127
  br i1 %cmp.i277.i.i, label %if.then.i281.i.i, label %if.else.i283.i.i

if.then.i281.i.i:                                 ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i278.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %135
  %139 = ptrtoint ptr %arrayidx.i278.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 57, ptr %arrayidx.i278.i.i, align 4
  %140 = ptrtoint ptr %qtail.i.i272.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %qtail.i.i272.i.i, align 4
  %add.i8.i279.i.i = add i32 %141, 1
  %rem.i.i280.i.i = and i32 %add.i8.i279.i.i, 127
  store i32 %rem.i.i280.i.i, ptr %qtail.i.i272.i.i, align 4
  br label %if.end.i287.i.i

if.else.i283.i.i:                                 ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i282.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %142 = ptrtoint ptr %net_dev.i282.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %net_dev.i282.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %143, ptr noundef nonnull @.str.3) #14
  br label %if.end.i287.i.i

if.end.i287.i.i:                                  ; preds = %if.else.i283.i.i, %if.then.i281.i.i
  %state.i.i284.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i285.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i284.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i285.i.i)
  %tobool.not.i.i286.i.i = icmp eq i32 %call.i.i285.i.i, 0
  br i1 %tobool.not.i.i286.i.i, label %if.then.i.i289.i.i, label %if.end.i287.i.i.hostif_event_check.exit_crit_edge

if.end.i287.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i287.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i289.i.i:                               ; preds = %if.end.i287.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i288.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i288.i.i) #11
  br label %hostif_event_check.exit

sw.bb32.i.i:                                      ; preds = %if.end.i.i
  %rsn_enabled34.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 1
  %144 = ptrtoint ptr %rsn_enabled34.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %rsn_enabled34.i.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool35.not.i.i = icmp eq i8 %145, 0
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %sw.bb32.i.i.hostif_event_check.exit_crit_edge

sw.bb32.i.i.hostif_event_check.exit_crit_edge:    ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then36.i.i:                                    ; preds = %sw.bb32.i.i
  %qtail.i.i291.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %146 = ptrtoint ptr %qtail.i.i291.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %qtail.i.i291.i.i, align 4
  %sub.i.i292.i.i = sub i32 128, %147
  %qhead.i.i293.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %148 = ptrtoint ptr %qhead.i.i293.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %qhead.i.i293.i.i, align 4
  %add.i.i294.i.i = add i32 %149, %sub.i.i292.i.i
  %and.i.i295.i.i = and i32 %add.i.i294.i.i, 127
  %150 = tail call i32 @llvm.smin.i32(i32 %and.i.i295.i.i, i32 %sub.i.i292.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %150)
  %cmp.i296.i.i = icmp ult i32 %150, 127
  br i1 %cmp.i296.i.i, label %if.then.i300.i.i, label %if.else.i302.i.i

if.then.i300.i.i:                                 ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i297.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %147
  %151 = ptrtoint ptr %arrayidx.i297.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 58, ptr %arrayidx.i297.i.i, align 4
  %152 = ptrtoint ptr %qtail.i.i291.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %qtail.i.i291.i.i, align 4
  %add.i8.i298.i.i = add i32 %153, 1
  %rem.i.i299.i.i = and i32 %add.i8.i298.i.i, 127
  store i32 %rem.i.i299.i.i, ptr %qtail.i.i291.i.i, align 4
  br label %if.end.i306.i.i

if.else.i302.i.i:                                 ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i301.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %154 = ptrtoint ptr %net_dev.i301.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %net_dev.i301.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %155, ptr noundef nonnull @.str.3) #14
  br label %if.end.i306.i.i

if.end.i306.i.i:                                  ; preds = %if.else.i302.i.i, %if.then.i300.i.i
  %state.i.i303.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i304.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i303.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i304.i.i)
  %tobool.not.i.i305.i.i = icmp eq i32 %call.i.i304.i.i, 0
  br i1 %tobool.not.i.i305.i.i, label %if.then.i.i308.i.i, label %if.end.i306.i.i.hostif_event_check.exit_crit_edge

if.end.i306.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i306.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i308.i.i:                               ; preds = %if.end.i306.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i307.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i307.i.i) #11
  br label %hostif_event_check.exit

sw.bb38.i.i:                                      ; preds = %if.end.i.i
  %qtail.i.i310.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %156 = ptrtoint ptr %qtail.i.i310.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %qtail.i.i310.i.i, align 4
  %sub.i.i311.i.i = sub i32 128, %157
  %qhead.i.i312.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %158 = ptrtoint ptr %qhead.i.i312.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %qhead.i.i312.i.i, align 4
  %add.i.i313.i.i = add i32 %159, %sub.i.i311.i.i
  %and.i.i314.i.i = and i32 %add.i.i313.i.i, 127
  %160 = tail call i32 @llvm.smin.i32(i32 %and.i.i314.i.i, i32 %sub.i.i311.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %160)
  %cmp.i315.i.i = icmp ult i32 %160, 127
  br i1 %cmp.i315.i.i, label %if.then.i319.i.i, label %if.else.i321.i.i

if.then.i319.i.i:                                 ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i316.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %157
  %161 = ptrtoint ptr %arrayidx.i316.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 62, ptr %arrayidx.i316.i.i, align 4
  %162 = ptrtoint ptr %qtail.i.i310.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %qtail.i.i310.i.i, align 4
  %add.i8.i317.i.i = add i32 %163, 1
  %rem.i.i318.i.i = and i32 %add.i8.i317.i.i, 127
  store i32 %rem.i.i318.i.i, ptr %qtail.i.i310.i.i, align 4
  br label %if.end.i325.i.i

if.else.i321.i.i:                                 ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i320.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %164 = ptrtoint ptr %net_dev.i320.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %net_dev.i320.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %165, ptr noundef nonnull @.str.3) #14
  br label %if.end.i325.i.i

if.end.i325.i.i:                                  ; preds = %if.else.i321.i.i, %if.then.i319.i.i
  %state.i.i322.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i323.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i322.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i323.i.i)
  %tobool.not.i.i324.i.i = icmp eq i32 %call.i.i323.i.i, 0
  br i1 %tobool.not.i.i324.i.i, label %if.then.i.i327.i.i, label %if.end.i325.i.i.hostif_event_check.exit_crit_edge

if.end.i325.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i325.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i327.i.i:                               ; preds = %if.end.i325.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i326.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i326.i.i) #11
  br label %hostif_event_check.exit

sw.bb39.i.i:                                      ; preds = %if.end.i.i
  %qtail.i.i329.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %166 = ptrtoint ptr %qtail.i.i329.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %qtail.i.i329.i.i, align 4
  %sub.i.i330.i.i = sub i32 128, %167
  %qhead.i.i331.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %168 = ptrtoint ptr %qhead.i.i331.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %qhead.i.i331.i.i, align 4
  %add.i.i332.i.i = add i32 %169, %sub.i.i330.i.i
  %and.i.i333.i.i = and i32 %add.i.i332.i.i, 127
  %170 = tail call i32 @llvm.smin.i32(i32 %and.i.i333.i.i, i32 %sub.i.i330.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %170)
  %cmp.i334.i.i = icmp ult i32 %170, 127
  br i1 %cmp.i334.i.i, label %if.then.i338.i.i, label %if.else.i340.i.i

if.then.i338.i.i:                                 ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i335.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %167
  %171 = ptrtoint ptr %arrayidx.i335.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 63, ptr %arrayidx.i335.i.i, align 4
  %172 = ptrtoint ptr %qtail.i.i329.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %qtail.i.i329.i.i, align 4
  %add.i8.i336.i.i = add i32 %173, 1
  %rem.i.i337.i.i = and i32 %add.i8.i336.i.i, 127
  store i32 %rem.i.i337.i.i, ptr %qtail.i.i329.i.i, align 4
  br label %if.end.i344.i.i

if.else.i340.i.i:                                 ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i339.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %174 = ptrtoint ptr %net_dev.i339.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %net_dev.i339.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %175, ptr noundef nonnull @.str.3) #14
  br label %if.end.i344.i.i

if.end.i344.i.i:                                  ; preds = %if.else.i340.i.i, %if.then.i338.i.i
  %state.i.i341.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i342.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i341.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i342.i.i)
  %tobool.not.i.i343.i.i = icmp eq i32 %call.i.i342.i.i, 0
  br i1 %tobool.not.i.i343.i.i, label %if.then.i.i346.i.i, label %if.end.i344.i.i.hostif_event_check.exit_crit_edge

if.end.i344.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i344.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i346.i.i:                               ; preds = %if.end.i344.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i345.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i345.i.i) #11
  br label %hostif_event_check.exit

sw.bb40.i.i:                                      ; preds = %if.end.i.i
  %qtail.i.i348.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %176 = ptrtoint ptr %qtail.i.i348.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %qtail.i.i348.i.i, align 4
  %sub.i.i349.i.i = sub i32 128, %177
  %qhead.i.i350.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %178 = ptrtoint ptr %qhead.i.i350.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %qhead.i.i350.i.i, align 4
  %add.i.i351.i.i = add i32 %179, %sub.i.i349.i.i
  %and.i.i352.i.i = and i32 %add.i.i351.i.i, 127
  %180 = tail call i32 @llvm.smin.i32(i32 %and.i.i352.i.i, i32 %sub.i.i349.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %180)
  %cmp.i353.i.i = icmp ult i32 %180, 127
  br i1 %cmp.i353.i.i, label %if.then.i357.i.i, label %if.else.i359.i.i

if.then.i357.i.i:                                 ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i354.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %177
  %181 = ptrtoint ptr %arrayidx.i354.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1, ptr %arrayidx.i354.i.i, align 4
  %182 = ptrtoint ptr %qtail.i.i348.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %qtail.i.i348.i.i, align 4
  %add.i8.i355.i.i = add i32 %183, 1
  %rem.i.i356.i.i = and i32 %add.i8.i355.i.i, 127
  store i32 %rem.i.i356.i.i, ptr %qtail.i.i348.i.i, align 4
  br label %if.end.i363.i.i

if.else.i359.i.i:                                 ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i358.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %184 = ptrtoint ptr %net_dev.i358.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %net_dev.i358.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %185, ptr noundef nonnull @.str.3) #14
  br label %if.end.i363.i.i

if.end.i363.i.i:                                  ; preds = %if.else.i359.i.i, %if.then.i357.i.i
  %state.i.i360.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i361.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i360.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i361.i.i)
  %tobool.not.i.i362.i.i = icmp eq i32 %call.i.i361.i.i, 0
  br i1 %tobool.not.i.i362.i.i, label %if.then.i.i365.i.i, label %if.end.i363.i.i.hostif_event_check.exit_crit_edge

if.end.i363.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i363.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i365.i.i:                               ; preds = %if.end.i363.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i364.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i364.i.i) #11
  br label %hostif_event_check.exit

sw.bb41.i.i:                                      ; preds = %if.end.i.i
  %qtail.i.i367.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %186 = ptrtoint ptr %qtail.i.i367.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %qtail.i.i367.i.i, align 4
  %sub.i.i368.i.i = sub i32 128, %187
  %qhead.i.i369.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %188 = ptrtoint ptr %qhead.i.i369.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %qhead.i.i369.i.i, align 4
  %add.i.i370.i.i = add i32 %189, %sub.i.i368.i.i
  %and.i.i371.i.i = and i32 %add.i.i370.i.i, 127
  %190 = tail call i32 @llvm.smin.i32(i32 %and.i.i371.i.i, i32 %sub.i.i368.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %190)
  %cmp.i372.i.i = icmp ult i32 %190, 127
  br i1 %cmp.i372.i.i, label %if.then.i376.i.i, label %if.else.i378.i.i

if.then.i376.i.i:                                 ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i373.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %187
  %191 = ptrtoint ptr %arrayidx.i373.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 45, ptr %arrayidx.i373.i.i, align 4
  %192 = ptrtoint ptr %qtail.i.i367.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %qtail.i.i367.i.i, align 4
  %add.i8.i374.i.i = add i32 %193, 1
  %rem.i.i375.i.i = and i32 %add.i8.i374.i.i, 127
  store i32 %rem.i.i375.i.i, ptr %qtail.i.i367.i.i, align 4
  br label %if.end.i382.i.i

if.else.i378.i.i:                                 ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i377.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %194 = ptrtoint ptr %net_dev.i377.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %net_dev.i377.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %195, ptr noundef nonnull @.str.3) #14
  br label %if.end.i382.i.i

if.end.i382.i.i:                                  ; preds = %if.else.i378.i.i, %if.then.i376.i.i
  %state.i.i379.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i380.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i379.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i380.i.i)
  %tobool.not.i.i381.i.i = icmp eq i32 %call.i.i380.i.i, 0
  br i1 %tobool.not.i.i381.i.i, label %if.then.i.i384.i.i, label %if.end.i382.i.i.hostif_event_check.exit_crit_edge

if.end.i382.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i382.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i384.i.i:                               ; preds = %if.end.i382.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i383.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i383.i.i) #11
  br label %hostif_event_check.exit

sw.bb42.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mac_address_valid.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 38
  %196 = ptrtoint ptr %mac_address_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %mac_address_valid.i.i, align 4
  br label %hostif_event_check.exit

sw.bb43.i.i:                                      ; preds = %if.end.i.i
  %qtail.i.i386.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %197 = ptrtoint ptr %qtail.i.i386.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %qtail.i.i386.i.i, align 4
  %sub.i.i387.i.i = sub i32 128, %198
  %qhead.i.i388.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %199 = ptrtoint ptr %qhead.i.i388.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %qhead.i.i388.i.i, align 4
  %add.i.i389.i.i = add i32 %200, %sub.i.i387.i.i
  %and.i.i390.i.i = and i32 %add.i.i389.i.i, 127
  %201 = tail call i32 @llvm.smin.i32(i32 %and.i.i390.i.i, i32 %sub.i.i387.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %201)
  %cmp.i391.i.i = icmp ult i32 %201, 127
  br i1 %cmp.i391.i.i, label %if.then.i395.i.i, label %if.else.i397.i.i

if.then.i395.i.i:                                 ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i392.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %198
  %202 = ptrtoint ptr %arrayidx.i392.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 60, ptr %arrayidx.i392.i.i, align 4
  %203 = ptrtoint ptr %qtail.i.i386.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %qtail.i.i386.i.i, align 4
  %add.i8.i393.i.i = add i32 %204, 1
  %rem.i.i394.i.i = and i32 %add.i8.i393.i.i, 127
  store i32 %rem.i.i394.i.i, ptr %qtail.i.i386.i.i, align 4
  br label %if.end.i401.i.i

if.else.i397.i.i:                                 ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i396.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %205 = ptrtoint ptr %net_dev.i396.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %net_dev.i396.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %206, ptr noundef nonnull @.str.3) #14
  br label %if.end.i401.i.i

if.end.i401.i.i:                                  ; preds = %if.else.i397.i.i, %if.then.i395.i.i
  %state.i.i398.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i399.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i398.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i399.i.i)
  %tobool.not.i.i400.i.i = icmp eq i32 %call.i.i399.i.i, 0
  br i1 %tobool.not.i.i400.i.i, label %if.then.i.i403.i.i, label %if.end.i401.i.i.hostif_event_check.exit_crit_edge

if.end.i401.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i401.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i403.i.i:                               ; preds = %if.end.i401.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i402.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i402.i.i) #11
  br label %hostif_event_check.exit

sw.bb44.i.i:                                      ; preds = %if.end.i.i
  %qtail.i.i405.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %207 = ptrtoint ptr %qtail.i.i405.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %qtail.i.i405.i.i, align 4
  %sub.i.i406.i.i = sub i32 128, %208
  %qhead.i.i407.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %209 = ptrtoint ptr %qhead.i.i407.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %qhead.i.i407.i.i, align 4
  %add.i.i408.i.i = add i32 %210, %sub.i.i406.i.i
  %and.i.i409.i.i = and i32 %add.i.i408.i.i, 127
  %211 = tail call i32 @llvm.smin.i32(i32 %and.i.i409.i.i, i32 %sub.i.i406.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %211)
  %cmp.i410.i.i = icmp ult i32 %211, 127
  br i1 %cmp.i410.i.i, label %if.then.i414.i.i, label %if.else.i416.i.i

if.then.i414.i.i:                                 ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i411.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %208
  %212 = ptrtoint ptr %arrayidx.i411.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 59, ptr %arrayidx.i411.i.i, align 4
  %213 = ptrtoint ptr %qtail.i.i405.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %qtail.i.i405.i.i, align 4
  %add.i8.i412.i.i = add i32 %214, 1
  %rem.i.i413.i.i = and i32 %add.i8.i412.i.i, 127
  store i32 %rem.i.i413.i.i, ptr %qtail.i.i405.i.i, align 4
  br label %if.end.i420.i.i

if.else.i416.i.i:                                 ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i415.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %215 = ptrtoint ptr %net_dev.i415.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %net_dev.i415.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %216, ptr noundef nonnull @.str.3) #14
  br label %if.end.i420.i.i

if.end.i420.i.i:                                  ; preds = %if.else.i416.i.i, %if.then.i414.i.i
  %state.i.i417.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i418.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i417.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i418.i.i)
  %tobool.not.i.i419.i.i = icmp eq i32 %call.i.i418.i.i, 0
  br i1 %tobool.not.i.i419.i.i, label %if.then.i.i422.i.i, label %if.end.i420.i.i.hostif_event_check.exit_crit_edge

if.end.i420.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i420.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i422.i.i:                               ; preds = %if.end.i420.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i421.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i421.i.i) #11
  br label %hostif_event_check.exit

sw.bb45.i.i:                                      ; preds = %if.end.i.i
  %qtail.i.i424.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %217 = ptrtoint ptr %qtail.i.i424.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %qtail.i.i424.i.i, align 4
  %sub.i.i425.i.i = sub i32 128, %218
  %qhead.i.i426.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %219 = ptrtoint ptr %qhead.i.i426.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %qhead.i.i426.i.i, align 4
  %add.i.i427.i.i = add i32 %220, %sub.i.i425.i.i
  %and.i.i428.i.i = and i32 %add.i.i427.i.i, 127
  %221 = tail call i32 @llvm.smin.i32(i32 %and.i.i428.i.i, i32 %sub.i.i425.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %221)
  %cmp.i429.i.i = icmp ult i32 %221, 127
  br i1 %cmp.i429.i.i, label %if.then.i433.i.i, label %if.else.i435.i.i

if.then.i433.i.i:                                 ; preds = %sw.bb45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i430.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %218
  %222 = ptrtoint ptr %arrayidx.i430.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 61, ptr %arrayidx.i430.i.i, align 4
  %223 = ptrtoint ptr %qtail.i.i424.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %qtail.i.i424.i.i, align 4
  %add.i8.i431.i.i = add i32 %224, 1
  %rem.i.i432.i.i = and i32 %add.i8.i431.i.i, 127
  store i32 %rem.i.i432.i.i, ptr %qtail.i.i424.i.i, align 4
  br label %if.end.i439.i.i

if.else.i435.i.i:                                 ; preds = %sw.bb45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i434.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %225 = ptrtoint ptr %net_dev.i434.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %net_dev.i434.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %226, ptr noundef nonnull @.str.3) #14
  br label %if.end.i439.i.i

if.end.i439.i.i:                                  ; preds = %if.else.i435.i.i, %if.then.i433.i.i
  %state.i.i436.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i437.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i436.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i437.i.i)
  %tobool.not.i.i438.i.i = icmp eq i32 %call.i.i437.i.i, 0
  br i1 %tobool.not.i.i438.i.i, label %if.then.i.i441.i.i, label %if.end.i439.i.i.hostif_event_check.exit_crit_edge

if.end.i439.i.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i439.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i441.i.i:                               ; preds = %if.end.i439.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i440.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i440.i.i) #11
  br label %hostif_event_check.exit

sw.bb46.i.i:                                      ; preds = %if.end.i.i
  %snooze_guard.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %snooze_guard.i.i, i32 noundef 4) #11
  %227 = ptrtoint ptr %snooze_guard.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %snooze_guard.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool48.not.i.i = icmp eq i32 %228, 0
  br i1 %tobool48.not.i.i, label %sw.bb46.i.i.hostif_event_check.exit_crit_edge, label %if.then49.i.i

sw.bb46.i.i.hostif_event_check.exit_crit_edge:    ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then49.i.i:                                    ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i96.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snooze_guard.i.i, i32 noundef 4) #11
  %229 = ptrtoint ptr %snooze_guard.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile i32 0, ptr %snooze_guard.i.i, align 4
  br label %hostif_event_check.exit

sw.bb53.i.i:                                      ; preds = %if.end.i.i
  %snooze_guard55.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 3
  %call.i.i97.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %snooze_guard55.i.i, i32 noundef 4) #11
  %230 = ptrtoint ptr %snooze_guard55.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %snooze_guard55.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool57.not.i.i = icmp eq i32 %231, 0
  br i1 %tobool57.not.i.i, label %sw.bb53.i.i.hostif_event_check.exit_crit_edge, label %if.then58.i.i

sw.bb53.i.i.hostif_event_check.exit_crit_edge:    ; preds = %sw.bb53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then58.i.i:                                    ; preds = %sw.bb53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i98.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snooze_guard55.i.i, i32 noundef 4) #11
  %232 = ptrtoint ptr %snooze_guard55.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store volatile i32 0, ptr %snooze_guard55.i.i, align 4
  br label %hostif_event_check.exit

sw.bb3.i:                                         ; preds = %if.then
  %power_mgmt.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 7
  %233 = ptrtoint ptr %power_mgmt.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %power_mgmt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %cmp.not.i.i = icmp eq i8 %234, 0
  br i1 %cmp.not.i.i, label %sw.bb3.i.if.else.i50.i_crit_edge, label %land.lhs.true.i.i

sw.bb3.i.if.else.i50.i_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i50.i

land.lhs.true.i.i:                                ; preds = %sw.bb3.i
  %reg.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23
  %235 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %236)
  %cmp4.i.i = icmp eq i8 %236, 1
  br i1 %cmp4.i.i, label %if.then.i49.i, label %land.lhs.true.i.i.if.else.i50.i_crit_edge

land.lhs.true.i.i.if.else.i50.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i50.i

if.then.i49.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i, i32 noundef 4) #11
  %237 = ptrtoint ptr %confirm_wait.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile i32 0, ptr %confirm_wait.i.i, align 4
  %dev_state.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %238 = ptrtoint ptr %dev_state.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 6, ptr %dev_state.i.i, align 4
  %call.i.i = tail call i32 @ks_wlan_hw_power_save(ptr noundef %priv) #11
  br label %hostif_event_check.exit

if.else.i50.i:                                    ; preds = %land.lhs.true.i.i.if.else.i50.i_crit_edge, %sw.bb3.i.if.else.i50.i_crit_edge
  %dev_state6.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %239 = ptrtoint ptr %dev_state6.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 5, ptr %dev_state6.i.i, align 4
  br label %hostif_event_check.exit

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %doze_request.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 20, i32 1
  %call.i.i.i52.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %doze_request.i.i, i32 noundef 4) #11
  %240 = ptrtoint ptr %doze_request.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile i32 1, ptr %doze_request.i.i, align 4
  %wq.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 1
  %241 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %wq.i.i, align 4
  %rw_dwork.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 2
  %call.i.i.i10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %242, ptr noundef %rw_dwork.i.i, i32 noundef 1) #11
  br label %hostif_event_check.exit

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_start_confirm(ptr noundef %priv) #11
  br label %hostif_event_check.exit

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_connect_indication(ptr noundef %priv) #11
  br label %hostif_event_check.exit

sw.bb7.i:                                         ; preds = %if.then
  %connect_status.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 42
  %243 = ptrtoint ptr %connect_status.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %connect_status.i.i, align 4
  %net_dev.i53.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %245 = ptrtoint ptr %net_dev.i53.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %net_dev.i53.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu0.i.i) #11
  %247 = getelementptr inbounds %struct.iw_point, ptr %wrqu0.i.i, i32 0, i32 1
  %248 = getelementptr inbounds %struct.iw_point, ptr %wrqu0.i.i, i32 0, i32 2
  %dev_state.i54.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %249 = call ptr @memset(ptr %wrqu0.i.i, i32 255, i32 16)
  %250 = ptrtoint ptr %dev_state.i54.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %dev_state.i54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %251)
  %cmp.i.i = icmp eq i32 %251, 6
  br i1 %cmp.i.i, label %if.then.i55.i, label %sw.bb7.i.if.end.i57.i_crit_edge

sw.bb7.i.if.end.i57.i_crit_edge:                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i57.i

if.then.i55.i:                                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  %252 = ptrtoint ptr %dev_state.i54.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 5, ptr %dev_state.i54.i, align 4
  br label %if.end.i57.i

if.end.i57.i:                                     ; preds = %if.then.i55.i, %sw.bb7.i.if.end.i57.i_crit_edge
  %call.i56.i = tail call zeroext i1 @is_connect_status(i32 noundef %244) #11
  br i1 %call.i56.i, label %if.then3.i.i, label %if.end.i57.i.if.end11.i.i_crit_edge

if.end.i57.i.if.end11.i.i_crit_edge:              ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.then3.i.i:                                     ; preds = %if.end.i57.i
  tail call void @netif_carrier_off(ptr noundef %246) #11
  %253 = ptrtoint ptr %connect_status.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %connect_status.i.i, align 4
  %and.i.i = and i32 %254, -2147483648
  %or.i58.i = or i32 %and.i.i, 1
  store i32 %or.i58.i, ptr %connect_status.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %246, ptr noundef nonnull @.str.41) #14
  %255 = ptrtoint ptr %247 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 0, ptr %247, align 4
  %256 = ptrtoint ptr %248 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %248, align 2
  %257 = ptrtoint ptr %wrqu0.i.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 1, ptr %wrqu0.i.i, align 4
  %258 = ptrtoint ptr %connect_status.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %connect_status.i.i, align 4
  %call7.i.i = tail call zeroext i1 @is_disconnect_status(i32 noundef %259) #11
  br i1 %call7.i.i, label %land.lhs.true.i59.i, label %if.then3.i.i.if.end10.i.i_crit_edge

if.then3.i.i.if.end10.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

land.lhs.true.i59.i:                              ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @is_connect_status(i32 noundef %244) #11
  br i1 %call8.i.i, label %if.then9.i.i, label %land.lhs.true.i59.i.if.end10.i.i_crit_edge

land.lhs.true.i59.i.if.end10.i.i_crit_edge:       ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  %sa_data.i.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu0.i.i, i32 0, i32 1
  %260 = call ptr @memset(ptr %sa_data.i.i, i32 0, i32 6)
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %246, ptr noundef nonnull @.str.41) #14
  call void @wireless_send_event(ptr noundef %246, i32 noundef 35605, ptr noundef nonnull %wrqu0.i.i, ptr noundef null) #11
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %land.lhs.true.i59.i.if.end10.i.i_crit_edge, %if.then3.i.i.if.end10.i.i_crit_edge
  %scan_ind_count.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %261 = ptrtoint ptr %scan_ind_count.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %scan_ind_count.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end10.i.i, %if.end.i57.i.if.end11.i.i_crit_edge
  %qtail.i.i.i60.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %262 = ptrtoint ptr %qtail.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %qtail.i.i.i60.i, align 4
  %sub.i.i.i61.i = sub i32 128, %263
  %qhead.i.i.i62.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %264 = ptrtoint ptr %qhead.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %qhead.i.i.i62.i, align 4
  %add.i.i.i63.i = add i32 %265, %sub.i.i.i61.i
  %and.i.i.i64.i = and i32 %add.i.i.i63.i, 127
  %266 = call i32 @llvm.smin.i32(i32 %and.i.i.i64.i, i32 %sub.i.i.i61.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %266)
  %cmp.i.i65.i = icmp ult i32 %266, 127
  br i1 %cmp.i.i65.i, label %if.then.i.i69.i, label %if.else.i.i70.i

if.then.i.i69.i:                                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i66.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %263
  %267 = ptrtoint ptr %arrayidx.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 50, ptr %arrayidx.i.i66.i, align 4
  %268 = ptrtoint ptr %qtail.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %qtail.i.i.i60.i, align 4
  %add.i8.i.i67.i = add i32 %269, 1
  %rem.i.i.i68.i = and i32 %add.i8.i.i67.i, 127
  store i32 %rem.i.i.i68.i, ptr %qtail.i.i.i60.i, align 4
  br label %if.end.i.i74.i

if.else.i.i70.i:                                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %270 = ptrtoint ptr %net_dev.i53.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %net_dev.i53.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %271, ptr noundef nonnull @.str.3) #14
  br label %if.end.i.i74.i

if.end.i.i74.i:                                   ; preds = %if.else.i.i70.i, %if.then.i.i69.i
  %state.i.i.i71.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i.i72.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i71.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i72.i)
  %tobool.not.i.i.i73.i = icmp eq i32 %call.i.i.i72.i, 0
  br i1 %tobool.not.i.i.i73.i, label %if.then.i.i.i76.i, label %if.end.i.i74.i.hostif_stop_confirm.exit.i_crit_edge

if.end.i.i74.i.hostif_stop_confirm.exit.i_crit_edge: ; preds = %if.end.i.i74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_stop_confirm.exit.i

if.then.i.i.i76.i:                                ; preds = %if.end.i.i74.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i.i75.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  call void @__tasklet_schedule(ptr noundef %sme_task.i.i75.i) #11
  br label %hostif_stop_confirm.exit.i

hostif_stop_confirm.exit.i:                       ; preds = %if.then.i.i.i76.i, %if.end.i.i74.i.hostif_stop_confirm.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu0.i.i) #11
  br label %hostif_event_check.exit

sw.bb8.i:                                         ; preds = %if.then
  %infra_status.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 43
  %272 = ptrtoint ptr %infra_status.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 0, ptr %infra_status.i.i, align 4
  %qtail.i.i.i77.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %273 = ptrtoint ptr %qtail.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %qtail.i.i.i77.i, align 4
  %sub.i.i.i78.i = sub i32 128, %274
  %qhead.i.i.i79.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %275 = ptrtoint ptr %qhead.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %qhead.i.i.i79.i, align 4
  %add.i.i.i80.i = add i32 %276, %sub.i.i.i78.i
  %and.i.i.i81.i = and i32 %add.i.i.i80.i, 127
  %277 = tail call i32 @llvm.smin.i32(i32 %and.i.i.i81.i, i32 %sub.i.i.i78.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %277)
  %cmp.i.i82.i = icmp ult i32 %277, 127
  br i1 %cmp.i.i82.i, label %if.then.i.i86.i, label %if.else.i.i88.i

if.then.i.i86.i:                                  ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i83.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %274
  %278 = ptrtoint ptr %arrayidx.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 64, ptr %arrayidx.i.i83.i, align 4
  %279 = ptrtoint ptr %qtail.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %qtail.i.i.i77.i, align 4
  %add.i8.i.i84.i = add i32 %280, 1
  %rem.i.i.i85.i = and i32 %add.i8.i.i84.i, 127
  store i32 %rem.i.i.i85.i, ptr %qtail.i.i.i77.i, align 4
  br label %if.end.i.i92.i

if.else.i.i88.i:                                  ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i.i87.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %281 = ptrtoint ptr %net_dev.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %net_dev.i.i87.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %282, ptr noundef nonnull @.str.3) #14
  br label %if.end.i.i92.i

if.end.i.i92.i:                                   ; preds = %if.else.i.i88.i, %if.then.i.i86.i
  %state.i.i.i89.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i.i90.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i89.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i90.i)
  %tobool.not.i.i.i91.i = icmp eq i32 %call.i.i.i90.i, 0
  br i1 %tobool.not.i.i.i91.i, label %if.then.i.i.i94.i, label %if.end.i.i92.i.hostif_event_check.exit_crit_edge

if.end.i.i92.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i.i94.i:                                ; preds = %if.end.i.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i.i93.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i.i93.i) #11
  br label %hostif_event_check.exit

sw.bb9.i:                                         ; preds = %if.then.sw.bb9.i_crit_edge, %if.then.sw.bb9.i_crit_edge18
  %incdec.ptr.i10.i.i.i = getelementptr i8, ptr %p, i32 6
  %283 = ptrtoint ptr %rxp to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %incdec.ptr.i10.i.i.i, ptr %rxp, align 4
  %dec.i12.i.i.i = add i32 %size, -6
  %284 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %dec.i12.i.i.i, ptr %rx_size, align 4
  %infra_status.i97.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 43
  %285 = ptrtoint ptr %infra_status.i97.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 1, ptr %infra_status.i97.i, align 4
  %qtail.i.i.i98.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %286 = ptrtoint ptr %qtail.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %qtail.i.i.i98.i, align 4
  %sub.i.i.i99.i = sub i32 128, %287
  %qhead.i.i.i100.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %288 = ptrtoint ptr %qhead.i.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %qhead.i.i.i100.i, align 4
  %add.i.i.i101.i = add i32 %289, %sub.i.i.i99.i
  %and.i.i.i102.i = and i32 %add.i.i.i101.i, 127
  %290 = tail call i32 @llvm.smin.i32(i32 %and.i.i.i102.i, i32 %sub.i.i.i99.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %290)
  %cmp.i.i103.i = icmp ult i32 %290, 127
  br i1 %cmp.i.i103.i, label %if.then.i.i107.i, label %if.else.i.i109.i

if.then.i.i107.i:                                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i104.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %287
  %291 = ptrtoint ptr %arrayidx.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 64, ptr %arrayidx.i.i104.i, align 4
  %292 = ptrtoint ptr %qtail.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %qtail.i.i.i98.i, align 4
  %add.i8.i.i105.i = add i32 %293, 1
  %rem.i.i.i106.i = and i32 %add.i8.i.i105.i, 127
  store i32 %rem.i.i.i106.i, ptr %qtail.i.i.i98.i, align 4
  br label %if.end.i.i113.i

if.else.i.i109.i:                                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i.i108.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %294 = ptrtoint ptr %net_dev.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %net_dev.i.i108.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %295, ptr noundef nonnull @.str.3) #14
  br label %if.end.i.i113.i

if.end.i.i113.i:                                  ; preds = %if.else.i.i109.i, %if.then.i.i107.i
  %state.i.i.i110.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i.i111.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i110.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i111.i)
  %tobool.not.i.i.i112.i = icmp eq i32 %call.i.i.i111.i, 0
  br i1 %tobool.not.i.i.i112.i, label %if.then.i.i.i115.i, label %if.end.i.i113.i.hostif_event_check.exit_crit_edge

if.end.i.i113.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i.i115.i:                               ; preds = %if.end.i.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i.i114.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i.i114.i) #11
  br label %hostif_event_check.exit

sw.bb10.i:                                        ; preds = %if.then.sw.bb10.i_crit_edge, %if.then.sw.bb10.i_crit_edge19
  %infra_status.i116.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 43
  %296 = ptrtoint ptr %infra_status.i116.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 1, ptr %infra_status.i116.i, align 4
  %qtail.i.i.i117.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %297 = ptrtoint ptr %qtail.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %qtail.i.i.i117.i, align 4
  %sub.i.i.i118.i = sub i32 128, %298
  %qhead.i.i.i119.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %299 = ptrtoint ptr %qhead.i.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %qhead.i.i.i119.i, align 4
  %add.i.i.i120.i = add i32 %300, %sub.i.i.i118.i
  %and.i.i.i121.i = and i32 %add.i.i.i120.i, 127
  %301 = tail call i32 @llvm.smin.i32(i32 %and.i.i.i121.i, i32 %sub.i.i.i118.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %301)
  %cmp.i.i122.i = icmp ult i32 %301, 127
  br i1 %cmp.i.i122.i, label %if.then.i.i126.i, label %if.else.i.i128.i

if.then.i.i126.i:                                 ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i123.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %298
  %302 = ptrtoint ptr %arrayidx.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 64, ptr %arrayidx.i.i123.i, align 4
  %303 = ptrtoint ptr %qtail.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %qtail.i.i.i117.i, align 4
  %add.i8.i.i124.i = add i32 %304, 1
  %rem.i.i.i125.i = and i32 %add.i8.i.i124.i, 127
  store i32 %rem.i.i.i125.i, ptr %qtail.i.i.i117.i, align 4
  br label %if.end.i.i132.i

if.else.i.i128.i:                                 ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i.i127.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %305 = ptrtoint ptr %net_dev.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %net_dev.i.i127.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %306, ptr noundef nonnull @.str.3) #14
  br label %if.end.i.i132.i

if.end.i.i132.i:                                  ; preds = %if.else.i.i128.i, %if.then.i.i126.i
  %state.i.i.i129.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i.i130.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i129.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i130.i)
  %tobool.not.i.i.i131.i = icmp eq i32 %call.i.i.i130.i, 0
  br i1 %tobool.not.i.i.i131.i, label %if.then.i.i.i134.i, label %if.end.i.i132.i.hostif_event_check.exit_crit_edge

if.end.i.i132.i.hostif_event_check.exit_crit_edge: ; preds = %if.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_event_check.exit

if.then.i.i.i134.i:                               ; preds = %if.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i.i133.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i.i133.i) #11
  br label %hostif_event_check.exit

sw.bb11.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i) #11
  %307 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i.i) #11
  %add.ptr1.i.i = getelementptr i8, ptr %p, i32 28
  %308 = call ptr @memset(ptr %wrqu.i.i, i32 0, i32 16)
  %309 = getelementptr inbounds i8, ptr %buf.i.i, i32 17
  %310 = call ptr @memset(ptr %309, i32 255, i32 239)
  %311 = call ptr @memcpy(ptr %buf.i.i, ptr @hostif_associate_indication.associnfo_leader0, i32 17)
  %312 = ptrtoint ptr %307 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 17, ptr %307, align 4
  %req_ies_size.i.i = getelementptr i8, ptr %p, i32 16
  %313 = ptrtoint ptr %req_ies_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %313, i32 2)
  %314 = load i16, ptr %req_ies_size.i.i, align 1
  %315 = tail call i16 @llvm.bswap.i16(i16 %314) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %314)
  %cmp72.not.i.i = icmp eq i16 %314, 0
  br i1 %cmp72.not.i.i, label %sw.bb11.i.for.end.i.i_crit_edge, label %sw.bb11.i.for.body.i.i_crit_edge

sw.bb11.i.for.body.i.i_crit_edge:                 ; preds = %sw.bb11.i
  br label %for.body.i.i

sw.bb11.i.for.end.i.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb11.i.for.body.i.i_crit_edge
  %i.074.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb11.i.for.body.i.i_crit_edge ]
  %pbuf.073.i.i = phi ptr [ %add.ptr8.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %309, %sw.bb11.i.for.body.i.i_crit_edge ]
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %i.074.i.i
  %316 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %add.ptr6.i.i, align 1
  %conv7.i.i = zext i8 %317 to i32
  %call.i135.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbuf.073.i.i, ptr noundef nonnull @.str.42, i32 noundef %conv7.i.i) #11
  %add.ptr8.i.i = getelementptr i8, ptr %pbuf.073.i.i, i32 %call.i135.i
  %inc.i.i = add nuw nsw i32 %i.074.i.i, 1
  %318 = ptrtoint ptr %req_ies_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %318, i32 2)
  %319 = load i16, ptr %req_ies_size.i.i, align 1
  %320 = tail call i16 @llvm.bswap.i16(i16 %319) #11
  %conv4.i.i = zext i16 %320 to i32
  %cmp.i136.i = icmp ult i32 %inc.i.i, %conv4.i.i
  br i1 %cmp.i136.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %sw.bb11.i.for.end.i.i_crit_edge
  %pbuf.0.lcssa.i.i = phi ptr [ %309, %sw.bb11.i.for.end.i.i_crit_edge ], [ %add.ptr8.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %.lcssa70.i.i = phi i16 [ %315, %sw.bb11.i.for.end.i.i_crit_edge ], [ %320, %for.body.i.i.for.end.i.i_crit_edge ]
  %mul.i.i = shl i16 %.lcssa70.i.i, 1
  %321 = ptrtoint ptr %307 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %307, align 4
  %323 = call ptr @memcpy(ptr %pbuf.0.lcssa.i.i, ptr @hostif_associate_indication.associnfo_leader1, i32 9)
  %add13.i.i = add i16 %mul.i.i, 9
  %add17.i.i = add i16 %add13.i.i, %322
  store i16 %add17.i.i, ptr %307, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %pbuf.0.lcssa.i.i, i32 9
  %324 = ptrtoint ptr %req_ies_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %324, i32 2)
  %325 = load i16, ptr %req_ies_size.i.i, align 1
  %326 = tail call i16 @llvm.bswap.i16(i16 %325) #11
  %conv21.i.i = zext i16 %326 to i32
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %conv21.i.i
  %resp_ies_size.i.i = getelementptr i8, ptr %p, i32 26
  %327 = ptrtoint ptr %resp_ies_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %327, i32 2)
  %328 = load i16, ptr %resp_ies_size.i.i, align 1
  %329 = tail call i16 @llvm.bswap.i16(i16 %328) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %328)
  %cmp2577.not.i.i = icmp eq i16 %328, 0
  br i1 %cmp2577.not.i.i, label %for.end.i.i.hostif_associate_indication.exit.i_crit_edge, label %for.end.i.i.for.body27.i.i_crit_edge

for.end.i.i.for.body27.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body27.i.i

for.end.i.i.hostif_associate_indication.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_associate_indication.exit.i

for.body27.i.i:                                   ; preds = %for.body27.i.i.for.body27.i.i_crit_edge, %for.end.i.i.for.body27.i.i_crit_edge
  %i.179.i.i = phi i32 [ %inc33.i.i, %for.body27.i.i.for.body27.i.i_crit_edge ], [ 0, %for.end.i.i.for.body27.i.i_crit_edge ]
  %pbuf.178.i.i = phi ptr [ %add.ptr31.i.i, %for.body27.i.i.for.body27.i.i_crit_edge ], [ %add.ptr19.i.i, %for.end.i.i.for.body27.i.i_crit_edge ]
  %add.ptr28.i.i = getelementptr i8, ptr %add.ptr22.i.i, i32 %i.179.i.i
  %330 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %add.ptr28.i.i, align 1
  %conv29.i.i = zext i8 %331 to i32
  %call30.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbuf.178.i.i, ptr noundef nonnull @.str.42, i32 noundef %conv29.i.i) #11
  %add.ptr31.i.i = getelementptr i8, ptr %pbuf.178.i.i, i32 %call30.i.i
  %inc33.i.i = add nuw nsw i32 %i.179.i.i, 1
  %332 = ptrtoint ptr %resp_ies_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %332, i32 2)
  %333 = load i16, ptr %resp_ies_size.i.i, align 1
  %334 = tail call i16 @llvm.bswap.i16(i16 %333) #11
  %conv24.i.i = zext i16 %334 to i32
  %cmp25.i.i = icmp ult i32 %inc33.i.i, %conv24.i.i
  br i1 %cmp25.i.i, label %for.body27.i.i.for.body27.i.i_crit_edge, label %for.body27.i.i.hostif_associate_indication.exit.i_crit_edge

for.body27.i.i.hostif_associate_indication.exit.i_crit_edge: ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_associate_indication.exit.i

for.body27.i.i.for.body27.i.i_crit_edge:          ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27.i.i

hostif_associate_indication.exit.i:               ; preds = %for.body27.i.i.hostif_associate_indication.exit.i_crit_edge, %for.end.i.i.hostif_associate_indication.exit.i_crit_edge
  %pbuf.1.lcssa.i.i = phi ptr [ %add.ptr19.i.i, %for.end.i.i.hostif_associate_indication.exit.i_crit_edge ], [ %add.ptr31.i.i, %for.body27.i.i.hostif_associate_indication.exit.i_crit_edge ]
  %.lcssa.i.i = phi i16 [ %329, %for.end.i.i.hostif_associate_indication.exit.i_crit_edge ], [ %334, %for.body27.i.i.hostif_associate_indication.exit.i_crit_edge ]
  %mul37.i.i = shl i16 %.lcssa.i.i, 1
  %335 = ptrtoint ptr %307 to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %307, align 4
  %337 = ptrtoint ptr %pbuf.1.lcssa.i.i to i32
  call void @__asan_storeN_noabort(i32 %337, i32 2)
  store i16 10496, ptr %pbuf.1.lcssa.i.i, align 1
  %add40.i.i = or i16 %mul37.i.i, 1
  %add46.i.i = add i16 %add40.i.i, %336
  store i16 %add46.i.i, ptr %307, align 4
  %net_dev.i137.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %338 = ptrtoint ptr %net_dev.i137.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %net_dev.i137.i, align 4
  call void @wireless_send_event(ptr noundef %339, i32 noundef 35842, ptr noundef nonnull %wrqu.i.i, ptr noundef nonnull %buf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i) #11
  br label %hostif_event_check.exit

sw.bb12.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_mic_failure_confirm(ptr noundef %priv) #11
  br label %hostif_event_check.exit

sw.bb13.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_bss_scan_confirm(ptr noundef %priv) #11
  br label %hostif_event_check.exit

sw.bb14.i:                                        ; preds = %if.then.sw.bb14.i_crit_edge, %if.then.sw.bb14.i_crit_edge20
  tail call fastcc void @hostif_phy_information_confirm(ptr noundef %priv) #11
  br label %hostif_event_check.exit

sw.bb15.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_scan_indication(ptr noundef %priv) #11
  br label %hostif_event_check.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %340 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %341, ptr noundef nonnull @.str.10, i32 noundef %conv.i) #14
  %confirm_wait.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 7
  tail call void @complete(ptr noundef %confirm_wait.i) #11
  br label %hostif_event_check.exit

hostif_event_check.exit:                          ; preds = %sw.default.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %hostif_associate_indication.exit.i, %if.then.i.i.i134.i, %if.end.i.i132.i.hostif_event_check.exit_crit_edge, %if.then.i.i.i115.i, %if.end.i.i113.i.hostif_event_check.exit_crit_edge, %if.then.i.i.i94.i, %if.end.i.i92.i.hostif_event_check.exit_crit_edge, %hostif_stop_confirm.exit.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %if.else.i50.i, %if.then.i49.i, %if.then58.i.i, %sw.bb53.i.i.hostif_event_check.exit_crit_edge, %if.then49.i.i, %sw.bb46.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i441.i.i, %if.end.i439.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i422.i.i, %if.end.i420.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i403.i.i, %if.end.i401.i.i.hostif_event_check.exit_crit_edge, %sw.bb42.i.i, %if.then.i.i384.i.i, %if.end.i382.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i365.i.i, %if.end.i363.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i346.i.i, %if.end.i344.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i327.i.i, %if.end.i325.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i308.i.i, %if.end.i306.i.i.hostif_event_check.exit_crit_edge, %sw.bb32.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i289.i.i, %if.end.i287.i.i.hostif_event_check.exit_crit_edge, %sw.bb26.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i270.i.i, %if.end.i268.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i251.i.i, %if.end.i249.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i232.i.i, %if.end.i230.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i213.i.i, %if.end.i211.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i194.i.i, %if.end.i192.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i175.i.i, %if.end.i173.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i156.i.i, %if.end.i154.i.i.hostif_event_check.exit_crit_edge, %sw.bb3.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i137.i.i, %if.end.i135.i.i.hostif_event_check.exit_crit_edge, %if.then.i.i.i.i, %if.end.i.i.i.hostif_event_check.exit_crit_edge, %if.end.i.i.hostif_event_check.exit_crit_edge, %sw.bb1.i, %sw.bb.i
  %hostt.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 52
  %qtail.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 52, i32 2
  %342 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %qtail.i, align 4
  %arrayidx.i11 = getelementptr [128 x i32], ptr %hostt.i, i32 0, i32 %343
  %344 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %conv.i, ptr %arrayidx.i11, align 4
  %345 = load i32, ptr %qtail.i, align 4
  %add.i = add i32 %345, 1
  %rem.i = and i32 %add.i, 127
  store i32 %rem.i, ptr %qtail.i, align 4
  br label %if.end

if.end:                                           ; preds = %hostif_event_check.exit, %devio_rec_ind.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostif_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aplist.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 17
  %0 = call ptr @memset(ptr %aplist.i, i32 0, i32 14078)
  %infra_status.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 43
  %1 = ptrtoint ptr %infra_status.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %infra_status.i, align 4
  %current_rate.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 24
  %2 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %current_rate.i, align 4
  %connect_status.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 42
  %3 = ptrtoint ptr %connect_status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %connect_status.i, align 4
  %multicast_spin = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %multicast_spin, ptr noundef nonnull @.str.4, ptr noundef nonnull @hostif_init.__key, i16 noundef signext 3) #11
  %dev_read_lock = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %dev_read_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @hostif_init.__key.5, i16 noundef signext 3) #11
  %devread_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 28
  tail call void @__init_waitqueue_head(ptr noundef %devread_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @hostif_init.__key.7) #11
  %dev_count.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 33
  %4 = ptrtoint ptr %dev_count.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dev_count.i, align 4
  %event_count.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_count.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %event_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %event_count.i, align 4
  %rec_count.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 32
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rec_count.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %rec_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %rec_count.i, align 4
  %psstatus.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %psstatus.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %psstatus.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %psstatus.i, align 4
  %confirm_wait.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i17.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %confirm_wait.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %confirm_wait.i, align 4
  %snooze_guard.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 3
  %call.i.i18.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snooze_guard.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %snooze_guard.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %snooze_guard.i, align 4
  %wakeup_wait.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %wakeup_wait.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wakeup_wait.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @init_completion.__key) #11
  %wakeup_work.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 14
  tail call void @__init_work(ptr noundef %wakeup_work.i, i32 noundef 0) #11
  %11 = ptrtoint ptr %wakeup_work.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %wakeup_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @hostif_power_save_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry7.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %entry7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry7.i, ptr %entry7.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 14, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry7.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ks_wlan_hw_wakeup_task, ptr %func.i, align 4
  %wpa.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21
  %head.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 1
  %15 = call ptr @memset(ptr %wpa.i, i32 0, i32 832)
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %head.i, ptr %head.i, align 4
  %prev.i.i16 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %head.i, ptr %prev.i.i16, align 4
  %arrayidx.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i7.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.i, ptr %prev.i7.i, align 4
  %arrayidx.1.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i7.1.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i7.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.1.i, ptr %prev.i7.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i7.2.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i7.2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.2.i, ptr %prev.i7.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 3
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %arrayidx.3.i, ptr %arrayidx.3.i, align 4
  %prev.i7.3.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i7.3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.3.i, ptr %prev.i7.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.4.i, ptr %arrayidx.4.i, align 4
  %prev.i7.4.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i7.4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.4.i, ptr %prev.i7.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 5
  %28 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx.5.i, ptr %arrayidx.5.i, align 4
  %prev.i7.5.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i7.5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.5.i, ptr %prev.i7.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 6
  %30 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx.6.i, ptr %arrayidx.6.i, align 4
  %prev.i7.6.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 6, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i7.6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.6.i, ptr %prev.i7.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 7
  %32 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx.7.i, ptr %arrayidx.7.i, align 4
  %prev.i7.7.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 22, i32 2, i32 7, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i7.7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.7.i, ptr %prev.i7.7.i, align 4
  %sme_i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10
  %34 = ptrtoint ptr %sme_i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %sme_i.i, align 4
  %qhead.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %qhead.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %qhead.i, align 4
  %qtail.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %36 = ptrtoint ptr %qtail.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %qtail.i, align 4
  %sme_spin.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %sme_spin.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @hostif_sme_init.__key, i16 noundef signext 3) #11
  %sme_flag.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 5
  %37 = ptrtoint ptr %sme_flag.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sme_flag.i, align 4
  %sme_task.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @tasklet_setup(ptr noundef %sme_task.i, ptr noundef nonnull @hostif_sme_task) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostif_exit(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sme_task = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @tasklet_kill(ptr noundef %sme_task) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_data_indication(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_size = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ult i32 %1, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_errors = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rx_errors, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxp.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 11
  %4 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxp.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %5, i32 1
  store ptr %incdec.ptr.i.i, ptr %rxp.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %dec.i.i = add i32 %1, -1
  %8 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i.i, ptr %rx_size, align 4
  %incdec.ptr.i10.i = getelementptr i8, ptr %5, i32 2
  store ptr %incdec.ptr.i10.i, ptr %rxp.i.i, align 4
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv3.i = zext i8 %10 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %conv5.i = zext i8 %7 to i16
  %or.i = or i16 %shl.i, %conv5.i
  %incdec.ptr.i10.i188 = getelementptr i8, ptr %5, i32 4
  store ptr %incdec.ptr.i10.i188, ptr %rxp.i.i, align 4
  %dec.i12.i189 = add i32 %1, -4
  store i32 %dec.i12.i189, ptr %rx_size, align 4
  %eth_addr = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 16
  %h_source = getelementptr i8, ptr %5, i32 10
  %11 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eth_addr, align 4
  %13 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h_source, align 4
  %xor.i = xor i32 %14, %12
  %add.ptr.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 16, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %5, i32 14
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i194 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i194)
  %cmp.i = icmp eq i32 %or.i194, 0
  br i1 %cmp.i, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.11) #14
  %21 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.12, ptr noundef %h_source) #14
  %rx_errors8 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 4
  %23 = ptrtoint ptr %rx_errors8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_errors8, align 4
  %inc9 = add i32 %24, 1
  store i32 %inc9, ptr %rx_errors8, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %cmp11.not = icmp eq i16 %or.i, 0
  br i1 %cmp11.not, label %if.end10.if.end19_crit_edge, label %land.lhs.true

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %rsn_enabled = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 1
  %25 = ptrtoint ptr %rsn_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rsn_enabled, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %land.lhs.true.if.end19_crit_edge, label %if.then14

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %land.lhs.true
  %call15 = tail call fastcc i32 @hostif_data_indication_wpa(ptr noundef %priv, i16 noundef zeroext %or.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %connect_status = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 42
  %27 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool20.not = icmp sgt i32 %28, -1
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end19
  %mic_failure = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 10
  %29 = ptrtoint ptr %mic_failure to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mic_failure, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %30)
  %cmp23 = icmp eq i16 %30, 2
  br i1 %cmp23, label %lor.lhs.false.cleanup_crit_edge, label %if.end26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rxp.i.i, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 12
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %34, label %sw.default [
    i8 -86, label %sw.bb
    i8 -16, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end26
  %36 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_size, align 4
  %sub = add i32 %37, -6
  %call.i.i195 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %sub, i32 noundef 2592) #11
  %tobool31.not = icmp eq ptr %call.i.i195, null
  br i1 %tobool31.not, label %if.then32, label %do.body36

if.then32:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dropped = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 6
  %38 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_dropped, align 4
  %inc34 = add i32 %39, 1
  store i32 %inc34, ptr %rx_dropped, align 4
  br label %cleanup

do.body36:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_data_indication.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_data_indication, %if.then41)) #11
          to label %do.end45 [label %if.then41], !srcloc !178

if.then41:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev42 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %40 = ptrtoint ptr %net_dev42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_data_indication.__UNIQUE_ID_ddebug343, ptr noundef %41, ptr noundef nonnull @.str.16, i32 noundef %sub) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body36
  %42 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rxp.i.i, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i195, i32 noundef 12) #11
  %44 = call ptr @memcpy(ptr %call.i, ptr %43, i32 12)
  %sub48 = add i32 %37, -18
  %h_proto = getelementptr i8, ptr %5, i32 22
  %call.i196 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i195, i32 noundef %sub48) #11
  %45 = call ptr @memcpy(ptr %call.i196, ptr %h_proto, i32 %sub48)
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end26
  %46 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_size, align 4
  %add = add i32 %47, 2
  %call.i.i197 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #11
  %tobool55.not = icmp eq ptr %call.i.i197, null
  br i1 %tobool55.not, label %if.then56, label %do.body62

if.then56:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dropped58 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 6
  %48 = ptrtoint ptr %rx_dropped58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_dropped58, align 4
  %inc59 = add i32 %49, 1
  store i32 %inc59, ptr %rx_dropped58, align 4
  br label %cleanup

do.body62:                                        ; preds = %sw.bb52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_data_indication.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_data_indication, %if.then74)) #11
          to label %do.end80 [label %if.then74], !srcloc !178

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev75 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %50 = ptrtoint ptr %net_dev75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev75, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_data_indication.__UNIQUE_ID_ddebug344, ptr noundef %51, ptr noundef nonnull @.str.17, i32 noundef %add) #11
  br label %do.end80

do.end80:                                         ; preds = %if.then74, %do.body62
  %52 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rxp.i.i, align 4
  %call.i198 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i197, i32 noundef 12) #11
  %54 = call ptr @memcpy(ptr %call.i198, ptr %53, i32 12)
  %sub83 = add i32 %47, -10
  %shr = lshr i32 %sub83, 8
  %conv85 = trunc i32 %shr to i8
  %conv89 = trunc i32 %sub83 to i8
  %call.i199 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i197, i32 noundef 2) #11
  %55 = ptrtoint ptr %call.i199 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv85, ptr %call.i199, align 1
  %temp.sroa.5.0.call.i199.sroa_idx = getelementptr inbounds i8, ptr %call.i199, i32 1
  %56 = ptrtoint ptr %temp.sroa.5.0.call.i199.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv89, ptr %temp.sroa.5.0.call.i199.sroa_idx, align 1
  %57 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rxp.i.i, align 4
  %add.ptr94 = getelementptr i8, ptr %58, i32 12
  %sub95 = add i32 %47, -12
  %call.i200 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i197, i32 noundef %sub95) #11
  %59 = call ptr @memcpy(ptr %call.i200, ptr %add.ptr94, i32 %sub95)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev99 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %60 = ptrtoint ptr %net_dev99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev99, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.18) #14
  %rx_errors101 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 4
  %62 = ptrtoint ptr %rx_errors101 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_errors101, align 4
  %inc102 = add i32 %63, 1
  store i32 %inc102, ptr %rx_errors101, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %do.end80, %do.end45
  %.sink203 = phi i32 [ 14, %do.end80 ], [ 20, %do.end45 ]
  %skb.0 = phi ptr [ %call.i.i197, %do.end80 ], [ %call.i.i195, %do.end45 ]
  %rx_ind_size.0 = phi i32 [ %add, %do.end80 ], [ %sub, %do.end45 ]
  %64 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rxp.i.i, align 4
  %add.ptr98 = getelementptr i8, ptr %65, i32 %.sink203
  %type = getelementptr inbounds %struct.ieee802_1x_hdr, ptr %add.ptr98, i32 0, i32 1
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp104 = icmp eq i8 %67, 3
  br i1 %cmp104, label %land.lhs.true106, label %sw.epilog.if.end112_crit_edge

sw.epilog.if.end112_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

land.lhs.true106:                                 ; preds = %sw.epilog
  %rsn_enabled108 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 1
  %68 = ptrtoint ptr %rsn_enabled108 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rsn_enabled108, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool109.not = icmp eq i8 %69, 0
  br i1 %tobool109.not, label %land.lhs.true106.if.end112_crit_edge, label %if.then111

land.lhs.true106.if.end112_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then111:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  %snooze_guard = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snooze_guard, i32 noundef 4) #11
  %70 = ptrtoint ptr %snooze_guard to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 1, ptr %snooze_guard, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %land.lhs.true106.if.end112_crit_edge, %sw.epilog.if.end112_crit_edge
  %net_dev113 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %71 = ptrtoint ptr %net_dev113 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_dev113, align 4
  %73 = getelementptr inbounds %struct.anon.2, ptr %skb.0, i32 0, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %73, align 8
  %call114 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.0, ptr noundef %72) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %75 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %call114, ptr %protocol, align 8
  %nstats115 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5
  %76 = ptrtoint ptr %nstats115 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nstats115, align 4
  %inc116 = add i32 %77, 1
  store i32 %inc116, ptr %nstats115, align 4
  %rx_bytes = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 2
  %78 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_bytes, align 4
  %add118 = add i32 %79, %rx_ind_size.0
  store i32 %add118, ptr %rx_bytes, align 4
  %call119 = tail call i32 @netif_rx(ptr noundef nonnull %skb.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %sw.default, %if.then56, %if.then32, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_mib_get_confirm(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %rxp.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxp.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %3, i32 1
  store ptr %incdec.ptr.i.i, ptr %rxp.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %rx_size.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 12
  %6 = ptrtoint ptr %rx_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_size.i.i, align 4
  %dec.i.i = add i32 %7, -1
  store i32 %dec.i.i, ptr %rx_size.i.i, align 4
  %conv.i = zext i8 %5 to i32
  %incdec.ptr.i21.i = getelementptr i8, ptr %3, i32 2
  store ptr %incdec.ptr.i21.i, ptr %rxp.i.i, align 4
  %8 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i.i, align 1
  %dec.i23.i = add i32 %7, -2
  store i32 %dec.i23.i, ptr %rx_size.i.i, align 4
  %conv2.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %incdec.ptr.i25.i = getelementptr i8, ptr %3, i32 3
  store ptr %incdec.ptr.i25.i, ptr %rxp.i.i, align 4
  %10 = ptrtoint ptr %incdec.ptr.i21.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr.i21.i, align 1
  %dec.i27.i = add i32 %7, -3
  store i32 %dec.i27.i, ptr %rx_size.i.i, align 4
  %conv5.i = zext i8 %11 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or8.i = or i32 %or.i, %shl6.i
  %incdec.ptr.i29.i = getelementptr i8, ptr %3, i32 4
  store ptr %incdec.ptr.i29.i, ptr %rxp.i.i, align 4
  %12 = ptrtoint ptr %incdec.ptr.i25.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i25.i, align 1
  %dec.i31.i = add i32 %7, -4
  store i32 %dec.i31.i, ptr %rx_size.i.i, align 4
  %conv10.i = zext i8 %13 to i32
  %shl11.i = shl nuw i32 %conv10.i, 24
  %or13.i = or i32 %or8.i, %shl11.i
  %incdec.ptr.i.i105 = getelementptr i8, ptr %3, i32 5
  store ptr %incdec.ptr.i.i105, ptr %rxp.i.i, align 4
  %14 = ptrtoint ptr %incdec.ptr.i29.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i29.i, align 1
  %dec.i.i107 = add i32 %7, -5
  store i32 %dec.i.i107, ptr %rx_size.i.i, align 4
  %conv.i108 = zext i8 %15 to i32
  %incdec.ptr.i21.i109 = getelementptr i8, ptr %3, i32 6
  store ptr %incdec.ptr.i21.i109, ptr %rxp.i.i, align 4
  %16 = ptrtoint ptr %incdec.ptr.i.i105 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i.i105, align 1
  %dec.i23.i110 = add i32 %7, -6
  store i32 %dec.i23.i110, ptr %rx_size.i.i, align 4
  %conv2.i111 = zext i8 %17 to i32
  %shl.i112 = shl nuw nsw i32 %conv2.i111, 8
  %or.i113 = or i32 %shl.i112, %conv.i108
  %incdec.ptr.i25.i114 = getelementptr i8, ptr %3, i32 7
  store ptr %incdec.ptr.i25.i114, ptr %rxp.i.i, align 4
  %18 = ptrtoint ptr %incdec.ptr.i21.i109 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.i21.i109, align 1
  %dec.i27.i115 = add i32 %7, -7
  store i32 %dec.i27.i115, ptr %rx_size.i.i, align 4
  %conv5.i116 = zext i8 %19 to i32
  %shl6.i117 = shl nuw nsw i32 %conv5.i116, 16
  %or8.i118 = or i32 %or.i113, %shl6.i117
  %incdec.ptr.i29.i119 = getelementptr i8, ptr %3, i32 8
  store ptr %incdec.ptr.i29.i119, ptr %rxp.i.i, align 4
  %20 = ptrtoint ptr %incdec.ptr.i25.i114 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.i25.i114, align 1
  %conv10.i121 = zext i8 %21 to i32
  %shl11.i122 = shl nuw i32 %conv10.i121, 24
  %or13.i123 = or i32 %or8.i118, %shl11.i122
  %incdec.ptr.i10.i135 = getelementptr i8, ptr %3, i32 12
  store ptr %incdec.ptr.i10.i135, ptr %rxp.i.i, align 4
  %dec.i12.i136 = add i32 %7, -12
  store i32 %dec.i12.i136, ptr %rx_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or13.i)
  %tobool.not = icmp eq i32 %or13.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %or13.i123, i32 noundef %or13.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = zext i32 %or13.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %or13.i123, label %sw.default [
    i32 553713920, label %sw.bb
    i32 822231296, label %sw.bb9
    i32 -250806016, label %sw.bb17
    i32 -250740480, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end
  %qtail.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qtail.i.i, align 4
  %sub.i.i = sub i32 128, %24
  %qhead.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %25 = ptrtoint ptr %qhead.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qhead.i.i, align 4
  %add.i.i = add i32 %26, %sub.i.i
  %and.i.i = and i32 %add.i.i, 127
  %27 = tail call i32 @llvm.smin.i32(i32 %and.i.i, i32 %sub.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %27)
  %cmp.i = icmp ult i32 %27, 127
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %24
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 18, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qtail.i.i, align 4
  %add.i8.i = add i32 %30, 1
  %rem.i.i = and i32 %add.i8.i, 127
  store i32 %rem.i.i, ptr %qtail.i.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.3) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %state.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.hostif_sme_enqueue.exit_crit_edge

if.end.i.hostif_sme_enqueue.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_enqueue.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i) #11
  br label %hostif_sme_enqueue.exit

hostif_sme_enqueue.exit:                          ; preds = %if.then.i.i, %if.end.i.hostif_sme_enqueue.exit_crit_edge
  %eth_addr = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 16
  %31 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rxp.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = ptrtoint ptr %eth_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %eth_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 4
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 16, i32 4
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i, align 2
  %mac_address_valid = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 38
  %39 = ptrtoint ptr %mac_address_valid to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %mac_address_valid, align 4
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %eth_addr, i32 noundef 6) #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef %eth_addr) #14
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %version_size = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 37
  %40 = ptrtoint ptr %version_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %dec.i12.i136, ptr %version_size, align 4
  %firmware_version = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 36
  %41 = call ptr @memcpy(ptr %firmware_version, ptr %incdec.ptr.i10.i135, i32 %dec.i12.i136)
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 36, i32 %dec.i12.i136
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx, align 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef %firmware_version) #14
  %qtail.i.i141 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %43 = ptrtoint ptr %qtail.i.i141 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qtail.i.i141, align 4
  %sub.i.i142 = sub i32 128, %44
  %qhead.i.i143 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %45 = ptrtoint ptr %qhead.i.i143 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qhead.i.i143, align 4
  %add.i.i144 = add i32 %46, %sub.i.i142
  %and.i.i145 = and i32 %add.i.i144, 127
  %47 = tail call i32 @llvm.smin.i32(i32 %and.i.i145, i32 %sub.i.i142) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %47)
  %cmp.i146 = icmp ult i32 %47, 127
  br i1 %cmp.i146, label %if.then.i150, label %if.else.i152

if.then.i150:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i147 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %44
  %48 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 19, ptr %arrayidx.i147, align 4
  %49 = ptrtoint ptr %qtail.i.i141 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qtail.i.i141, align 4
  %add.i8.i148 = add i32 %50, 1
  %rem.i.i149 = and i32 %add.i8.i148, 127
  store i32 %rem.i.i149, ptr %qtail.i.i141, align 4
  br label %if.end.i156

if.else.i152:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.3) #14
  br label %if.end.i156

if.end.i156:                                      ; preds = %if.else.i152, %if.then.i150
  %state.i.i153 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i154 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i153) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %tobool.not.i.i155 = icmp eq i32 %call.i.i154, 0
  br i1 %tobool.not.i.i155, label %if.then.i.i158, label %if.end.i156.hostif_sme_enqueue.exit159_crit_edge

if.end.i156.hostif_sme_enqueue.exit159_crit_edge: ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_enqueue.exit159

if.then.i.i158:                                   ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i157 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i157) #11
  br label %hostif_sme_enqueue.exit159

hostif_sme_enqueue.exit159:                       ; preds = %if.then.i.i158, %if.end.i156.hostif_sme_enqueue.exit159_crit_edge
  %confirm_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 7
  tail call void @complete(ptr noundef %confirm_wait) #11
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gain = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 46
  %53 = ptrtoint ptr %incdec.ptr.i10.i135 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %incdec.ptr.i10.i135, align 1
  %55 = ptrtoint ptr %gain to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %gain, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_mib_get_confirm.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_mib_get_confirm, %if.then24)) #11
          to label %cleanup [label %if.then24], !srcloc !178

if.then24:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev, align 4
  %58 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %gain, align 2
  %conv = zext i8 %59 to i32
  %rx_mode = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 46, i32 1
  %60 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rx_mode, align 1
  %conv28 = zext i8 %61 to i32
  %tx_gain = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 46, i32 2
  %62 = ptrtoint ptr %tx_gain to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tx_gain, align 2
  %conv30 = zext i8 %63 to i32
  %rx_gain = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 46, i32 3
  %64 = ptrtoint ptr %rx_gain to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rx_gain, align 1
  %conv32 = zext i8 %65 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_mib_get_confirm.__UNIQUE_ID_ddebug345, ptr noundef %57, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %conv32) #11
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  %eeprom_sum = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 50
  %66 = ptrtoint ptr %incdec.ptr.i10.i135 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %incdec.ptr.i10.i135, align 1
  %68 = ptrtoint ptr %eeprom_sum to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %eeprom_sum, align 2
  %69 = lshr i16 %67, 8
  %70 = trunc i16 %69 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %switch = icmp ult i8 %70, 2
  br i1 %switch, label %if.end47, label %if.then46

if.then46:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #14
  br label %cleanup

if.end47:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp51 = icmp eq i8 %70, 0
  br i1 %cmp51, label %if.end47.cond.end_crit_edge, label %cond.false

if.end47.cond.end_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 50, i32 1
  %71 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %result, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp55 = icmp eq i8 %72, 0
  %phi.cast = select i1 %cmp55, i8 3, i8 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end47.cond.end_crit_edge
  %cond57 = phi i8 [ %phi.cast, %cond.false ], [ 1, %if.end47.cond.end_crit_edge ]
  %eeprom_checksum = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 51
  %73 = ptrtoint ptr %eeprom_checksum to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %cond57, ptr %eeprom_checksum, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %or13.i123) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %cond.end, %if.then46, %if.then24, %sw.bb17, %hostif_sme_enqueue.exit159, %hostif_sme_enqueue.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_start_confirm(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #11
  %0 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %2 = call ptr @memset(ptr %wrqu, i32 255, i32 16)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %1, align 2
  %5 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %wrqu, align 4
  %connect_status = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 42
  %6 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connect_status, align 4
  %call = tail call zeroext i1 @is_connect_status(i32 noundef %7) #11
  br i1 %call, label %if.then, label %entry.do.body1_crit_edge

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %8 = call ptr @memset(ptr %sa_data, i32 0, i32 6)
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  call void @wireless_send_event(ptr noundef %10, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #11
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_start_confirm.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_start_confirm, %if.then5)) #11
          to label %do.end9 [label %if.then5], !srcloc !178

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev6 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %net_dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev6, align 4
  %scan_ind_count = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %13 = ptrtoint ptr %scan_ind_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_ind_count, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_start_confirm.__UNIQUE_ID_ddebug346, ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef %14) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1
  %qtail.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qtail.i.i, align 4
  %sub.i.i = sub i32 128, %16
  %qhead.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %qhead.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qhead.i.i, align 4
  %add.i.i = add i32 %18, %sub.i.i
  %and.i.i = and i32 %add.i.i, 127
  %19 = call i32 @llvm.smin.i32(i32 %and.i.i, i32 %sub.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %19)
  %cmp.i = icmp ult i32 %19, 127
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %16
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 44, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qtail.i.i, align 4
  %add.i8.i = add i32 %22, 1
  %rem.i.i = and i32 %add.i8.i, 127
  store i32 %rem.i.i, ptr %qtail.i.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %23 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.3) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %state.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.hostif_sme_enqueue.exit_crit_edge

if.end.i.hostif_sme_enqueue.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_enqueue.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  call void @__tasklet_schedule(ptr noundef %sme_task.i) #11
  br label %hostif_sme_enqueue.exit

hostif_sme_enqueue.exit:                          ; preds = %if.then.i.i, %if.end.i.hostif_sme_enqueue.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_connect_indication(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %wrqu0 = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %connect_status = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connect_status, align 4
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu0) #11
  %rxp.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 11
  %4 = call ptr @memset(ptr %wrqu0, i32 255, i32 16)
  %5 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rxp.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %6, i32 1
  store ptr %incdec.ptr.i.i, ptr %rxp.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %rx_size.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 12
  %9 = ptrtoint ptr %rx_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_size.i.i, align 4
  %dec.i.i = add i32 %10, -1
  store i32 %dec.i.i, ptr %rx_size.i.i, align 4
  %incdec.ptr.i10.i = getelementptr i8, ptr %6, i32 2
  store ptr %incdec.ptr.i10.i, ptr %rxp.i.i, align 4
  %11 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i.i, align 1
  %dec.i12.i = add i32 %10, -2
  store i32 %dec.i12.i, ptr %rx_size.i.i, align 4
  %conv3.i = zext i8 %12 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %conv5.i = zext i8 %8 to i16
  %or.i = or i16 %shl.i, %conv5.i
  %conv = zext i16 %or.i to i32
  %13 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %or.i, label %do.body10 [
    i16 0, label %sw.bb
    i16 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_carrier_on(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %14 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %connect_status, align 4
  %and3 = and i32 %15, -2147483648
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_carrier_off(ptr noundef %3) #11
  %16 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %connect_status, align 4
  %and7 = and i32 %17, -2147483648
  %add8 = or i32 %and7, 1
  br label %sw.epilog

do.body10:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_connect_indication.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_connect_indication, %if.then16)) #11
          to label %do.end21 [label %if.then16], !srcloc !178

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %scan_ind_count = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %20 = ptrtoint ptr %scan_ind_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_ind_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_connect_indication.__UNIQUE_ID_ddebug347, ptr noundef %19, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %21) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body10
  tail call void @netif_carrier_off(ptr noundef %3) #11
  %22 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connect_status, align 4
  %and23 = and i32 %23, -2147483648
  %add24 = or i32 %and23, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end21, %sw.bb5, %if.end
  %add24.sink = phi i32 [ %add24, %do.end21 ], [ %add8, %sw.bb5 ], [ %and3, %if.end ]
  %24 = ptrtoint ptr %connect_status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add24.sink, ptr %connect_status, align 4
  %25 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxp.i.i, align 4
  tail call fastcc void @get_current_ap(ptr noundef %priv, ptr noundef %26)
  %27 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %connect_status, align 4
  %call28 = tail call zeroext i1 @is_connect_status(i32 noundef %28) #11
  br i1 %call28, label %land.lhs.true, label %sw.epilog.if.end34_crit_edge

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %sw.epilog
  %call30 = tail call zeroext i1 @is_disconnect_status(i32 noundef %1) #11
  br i1 %call30, label %if.then32, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %snooze_guard = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snooze_guard, i32 noundef 4) #11
  %29 = ptrtoint ptr %snooze_guard to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %snooze_guard, align 4
  %confirm_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait, i32 noundef 4) #11
  %30 = ptrtoint ptr %confirm_wait to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %confirm_wait, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true.if.end34_crit_edge, %sw.epilog.if.end34_crit_edge
  %31 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %connect_status, align 4
  %call.i = tail call zeroext i1 @is_connect_status(i32 noundef %32) #11
  br i1 %call.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end34
  %qtail.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %33 = ptrtoint ptr %qtail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qtail.i.i.i, align 4
  %sub.i.i.i = sub i32 128, %34
  %qhead.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %qhead.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qhead.i.i.i, align 4
  %add.i.i.i = add i32 %36, %sub.i.i.i
  %and.i.i.i = and i32 %add.i.i.i, 127
  %37 = tail call i32 @llvm.smin.i32(i32 %and.i.i.i, i32 %sub.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %37)
  %cmp.i.i = icmp ult i32 %37, 127
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %34
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 15, ptr %arrayidx.i.i, align 4
  %39 = ptrtoint ptr %qtail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qtail.i.i.i, align 4
  %add.i8.i.i = add i32 %40, 1
  %rem.i.i.i = and i32 %add.i8.i.i, 127
  store i32 %rem.i.i.i, ptr %qtail.i.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.3) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %state.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.ks_wlan_do_power_save.exit_crit_edge

if.end.i.i.ks_wlan_do_power_save.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ks_wlan_do_power_save.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i.i) #11
  br label %ks_wlan_do_power_save.exit

if.else.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %dev_state.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %43 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %dev_state.i, align 4
  br label %ks_wlan_do_power_save.exit

ks_wlan_do_power_save.exit:                       ; preds = %if.else.i, %if.then.i.i.i, %if.end.i.i.ks_wlan_do_power_save.exit_crit_edge
  %44 = ptrtoint ptr %wrqu0 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %wrqu0, align 4
  %45 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %connect_status, align 4
  %call36 = tail call zeroext i1 @is_disconnect_status(i32 noundef %46) #11
  br i1 %call36, label %land.lhs.true38, label %ks_wlan_do_power_save.exit.if.end63_crit_edge

ks_wlan_do_power_save.exit.if.end63_crit_edge:    ; preds = %ks_wlan_do_power_save.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

land.lhs.true38:                                  ; preds = %ks_wlan_do_power_save.exit
  %call39 = tail call zeroext i1 @is_connect_status(i32 noundef %1) #11
  br i1 %call39, label %if.then41, label %land.lhs.true38.if.end63_crit_edge

land.lhs.true38.if.end63_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then41:                                        ; preds = %land.lhs.true38
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu0, i32 0, i32 1
  %47 = call ptr @memset(ptr %sa_data, i32 0, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_connect_indication.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_connect_indication, %if.then55)) #11
          to label %do.end62 [label %if.then55], !srcloc !178

if.then55:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev, align 4
  %scan_ind_count57 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %50 = ptrtoint ptr %scan_ind_count57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_ind_count57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_connect_indication.__UNIQUE_ID_ddebug348, ptr noundef %49, ptr noundef nonnull @.str.37, i32 noundef %51) #11
  br label %do.end62

do.end62:                                         ; preds = %if.then55, %if.then41
  call void @wireless_send_event(ptr noundef %3, i32 noundef 35605, ptr noundef nonnull %wrqu0, ptr noundef null) #11
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %land.lhs.true38.if.end63_crit_edge, %ks_wlan_do_power_save.exit.if.end63_crit_edge
  %scan_ind_count64 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %52 = ptrtoint ptr %scan_ind_count64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %scan_ind_count64, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_mic_failure_confirm(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_mic_failure_confirm.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_mic_failure_confirm, %if.then)) #11
          to label %do.end4 [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %mic_failure = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 10
  %2 = ptrtoint ptr %mic_failure to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mic_failure, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_mic_failure_confirm.__UNIQUE_ID_ddebug355, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %conv) #11
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %qtail.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qtail.i.i, align 4
  %sub.i.i = sub i32 128, %5
  %qhead.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %qhead.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qhead.i.i, align 4
  %add.i.i = add i32 %7, %sub.i.i
  %and.i.i = and i32 %add.i.i, 127
  %8 = tail call i32 @llvm.smin.i32(i32 %and.i.i, i32 %sub.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %8)
  %cmp.i = icmp ult i32 %8, 127
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %5
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 43, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qtail.i.i, align 4
  %add.i8.i = add i32 %11, 1
  %rem.i.i = and i32 %add.i8.i, 127
  store i32 %rem.i.i, ptr %qtail.i.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %12 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.3) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %state.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.hostif_sme_enqueue.exit_crit_edge

if.end.i.hostif_sme_enqueue.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_enqueue.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i) #11
  br label %hostif_sme_enqueue.exit

hostif_sme_enqueue.exit:                          ; preds = %if.then.i.i, %if.end.i.hostif_sme_enqueue.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_bss_scan_confirm(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #11
  %rxp.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 11
  %2 = call ptr @memset(ptr %wrqu, i32 255, i32 16)
  %3 = ptrtoint ptr %rxp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxp.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %4, i32 1
  store ptr %incdec.ptr.i.i, ptr %rxp.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %rx_size.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 12
  %7 = ptrtoint ptr %rx_size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_size.i.i, align 4
  %dec.i.i = add i32 %8, -1
  store i32 %dec.i.i, ptr %rx_size.i.i, align 4
  %incdec.ptr.i21.i = getelementptr i8, ptr %4, i32 2
  store ptr %incdec.ptr.i21.i, ptr %rxp.i.i, align 4
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.i.i, align 1
  %dec.i23.i = add i32 %8, -2
  store i32 %dec.i23.i, ptr %rx_size.i.i, align 4
  %incdec.ptr.i25.i = getelementptr i8, ptr %4, i32 3
  store ptr %incdec.ptr.i25.i, ptr %rxp.i.i, align 4
  %11 = ptrtoint ptr %incdec.ptr.i21.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i21.i, align 1
  %dec.i27.i = add i32 %8, -3
  store i32 %dec.i27.i, ptr %rx_size.i.i, align 4
  %incdec.ptr.i29.i = getelementptr i8, ptr %4, i32 4
  store ptr %incdec.ptr.i29.i, ptr %rxp.i.i, align 4
  %13 = ptrtoint ptr %incdec.ptr.i25.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.i25.i, align 1
  %dec.i31.i = add i32 %8, -4
  store i32 %dec.i31.i, ptr %rx_size.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_bss_scan_confirm.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_bss_scan_confirm, %if.then)) #11
          to label %do.end7 [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %conv.i = zext i8 %6 to i32
  %or.i = or i32 %shl.i, %conv.i
  %conv5.i = zext i8 %12 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or8.i = or i32 %or.i, %shl6.i
  %conv10.i = zext i8 %14 to i32
  %shl11.i = shl nuw i32 %conv10.i, 24
  %or13.i = or i32 %or8.i, %shl11.i
  %15 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev, align 4
  %scan_ind_count = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %17 = ptrtoint ptr %scan_ind_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scan_ind_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_bss_scan_confirm.__UNIQUE_ID_ddebug352, ptr noundef %16, ptr noundef nonnull @.str.47, i32 noundef %or13.i, i32 noundef %18) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %sme_flag = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 5
  %19 = ptrtoint ptr %sme_flag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sme_flag, align 4
  %and = and i32 %20, -8193
  store i32 %and, ptr %sme_flag, align 4
  %qtail.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qtail.i.i, align 4
  %sub.i.i = sub i32 128, %22
  %qhead.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 2
  %23 = ptrtoint ptr %qhead.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qhead.i.i, align 4
  %add.i.i = add i32 %24, %sub.i.i
  %and.i.i = and i32 %add.i.i, 127
  %25 = tail call i32 @llvm.smin.i32(i32 %and.i.i, i32 %sub.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %25)
  %cmp.i = icmp ult i32 %25, 127
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 10, i32 1, i32 %22
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 46, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qtail.i.i, align 4
  %add.i8.i = add i32 %28, 1
  %rem.i.i = and i32 %add.i8.i, 127
  store i32 %rem.i.i, ptr %qtail.i.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.3) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %state.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.hostif_sme_enqueue.exit_crit_edge

if.end.i.hostif_sme_enqueue.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_enqueue.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sme_task.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %sme_task.i) #11
  br label %hostif_sme_enqueue.exit

hostif_sme_enqueue.exit:                          ; preds = %if.then.i.i, %if.end.i.hostif_sme_enqueue.exit_crit_edge
  %31 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %32 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %32, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %31, align 2
  call void @wireless_send_event(ptr noundef %1, i32 noundef 35609, ptr noundef nonnull %wrqu, ptr noundef null) #11
  %scan_ind_count8 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %35 = ptrtoint ptr %scan_ind_count8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %scan_ind_count8, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_phy_information_confirm(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rxp.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %rxp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxp.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %1, i32 1
  store ptr %incdec.ptr.i, ptr %rxp.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %rx_size.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 12
  %4 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_size.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %rx_size.i, align 4
  %incdec.ptr.i71 = getelementptr i8, ptr %1, i32 2
  store ptr %incdec.ptr.i71, ptr %rxp.i, align 4
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.i, align 1
  %incdec.ptr.i75 = getelementptr i8, ptr %1, i32 3
  %dec.i77 = add i32 %5, -3
  store i32 %dec.i77, ptr %rx_size.i, align 4
  %incdec.ptr.i79 = getelementptr i8, ptr %1, i32 4
  store ptr %incdec.ptr.i79, ptr %rxp.i, align 4
  %8 = ptrtoint ptr %incdec.ptr.i75 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i75, align 1
  %dec.i81 = add i32 %5, -4
  store i32 %dec.i81, ptr %rx_size.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %1, i32 5
  store ptr %incdec.ptr.i.i, ptr %rxp.i, align 4
  %10 = ptrtoint ptr %incdec.ptr.i79 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr.i79, align 1
  %dec.i.i = add i32 %5, -5
  store i32 %dec.i.i, ptr %rx_size.i, align 4
  %conv.i = zext i8 %11 to i32
  %incdec.ptr.i21.i = getelementptr i8, ptr %1, i32 6
  store ptr %incdec.ptr.i21.i, ptr %rxp.i, align 4
  %12 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i.i, align 1
  %dec.i23.i = add i32 %5, -6
  store i32 %dec.i23.i, ptr %rx_size.i, align 4
  %conv2.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %incdec.ptr.i25.i = getelementptr i8, ptr %1, i32 7
  store ptr %incdec.ptr.i25.i, ptr %rxp.i, align 4
  %14 = ptrtoint ptr %incdec.ptr.i21.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i21.i, align 1
  %dec.i27.i = add i32 %5, -7
  store i32 %dec.i27.i, ptr %rx_size.i, align 4
  %conv5.i = zext i8 %15 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or8.i = or i32 %or.i, %shl6.i
  %incdec.ptr.i29.i = getelementptr i8, ptr %1, i32 8
  store ptr %incdec.ptr.i29.i, ptr %rxp.i, align 4
  %16 = ptrtoint ptr %incdec.ptr.i25.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i25.i, align 1
  %dec.i31.i = add i32 %5, -8
  store i32 %dec.i31.i, ptr %rx_size.i, align 4
  %conv10.i = zext i8 %17 to i32
  %shl11.i = shl nuw i32 %conv10.i, 24
  %or13.i = or i32 %or8.i, %shl11.i
  %incdec.ptr.i.i83 = getelementptr i8, ptr %1, i32 9
  store ptr %incdec.ptr.i.i83, ptr %rxp.i, align 4
  %18 = ptrtoint ptr %incdec.ptr.i29.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.i29.i, align 1
  %dec.i.i85 = add i32 %5, -9
  store i32 %dec.i.i85, ptr %rx_size.i, align 4
  %conv.i86 = zext i8 %19 to i32
  %incdec.ptr.i21.i87 = getelementptr i8, ptr %1, i32 10
  store ptr %incdec.ptr.i21.i87, ptr %rxp.i, align 4
  %20 = ptrtoint ptr %incdec.ptr.i.i83 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.i.i83, align 1
  %dec.i23.i88 = add i32 %5, -10
  store i32 %dec.i23.i88, ptr %rx_size.i, align 4
  %conv2.i89 = zext i8 %21 to i32
  %shl.i90 = shl nuw nsw i32 %conv2.i89, 8
  %or.i91 = or i32 %shl.i90, %conv.i86
  %incdec.ptr.i25.i92 = getelementptr i8, ptr %1, i32 11
  store ptr %incdec.ptr.i25.i92, ptr %rxp.i, align 4
  %22 = ptrtoint ptr %incdec.ptr.i21.i87 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.i21.i87, align 1
  %dec.i27.i93 = add i32 %5, -11
  store i32 %dec.i27.i93, ptr %rx_size.i, align 4
  %conv5.i94 = zext i8 %23 to i32
  %shl6.i95 = shl nuw nsw i32 %conv5.i94, 16
  %or8.i96 = or i32 %or.i91, %shl6.i95
  %incdec.ptr.i29.i97 = getelementptr i8, ptr %1, i32 12
  store ptr %incdec.ptr.i29.i97, ptr %rxp.i, align 4
  %24 = ptrtoint ptr %incdec.ptr.i25.i92 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.i25.i92, align 1
  %dec.i31.i98 = add i32 %5, -12
  store i32 %dec.i31.i98, ptr %rx_size.i, align 4
  %conv10.i99 = zext i8 %25 to i32
  %shl11.i100 = shl nuw i32 %conv10.i99, 24
  %or13.i101 = or i32 %or8.i96, %shl11.i100
  %incdec.ptr.i.i103 = getelementptr i8, ptr %1, i32 13
  store ptr %incdec.ptr.i.i103, ptr %rxp.i, align 4
  %26 = ptrtoint ptr %incdec.ptr.i29.i97 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.i29.i97, align 1
  %dec.i.i105 = add i32 %5, -13
  store i32 %dec.i.i105, ptr %rx_size.i, align 4
  %conv.i106 = zext i8 %27 to i32
  %incdec.ptr.i21.i107 = getelementptr i8, ptr %1, i32 14
  store ptr %incdec.ptr.i21.i107, ptr %rxp.i, align 4
  %28 = ptrtoint ptr %incdec.ptr.i.i103 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i.i103, align 1
  %dec.i23.i108 = add i32 %5, -14
  store i32 %dec.i23.i108, ptr %rx_size.i, align 4
  %conv2.i109 = zext i8 %29 to i32
  %shl.i110 = shl nuw nsw i32 %conv2.i109, 8
  %or.i111 = or i32 %shl.i110, %conv.i106
  %incdec.ptr.i25.i112 = getelementptr i8, ptr %1, i32 15
  store ptr %incdec.ptr.i25.i112, ptr %rxp.i, align 4
  %30 = ptrtoint ptr %incdec.ptr.i21.i107 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.i21.i107, align 1
  %dec.i27.i113 = add i32 %5, -15
  store i32 %dec.i27.i113, ptr %rx_size.i, align 4
  %conv5.i114 = zext i8 %31 to i32
  %shl6.i115 = shl nuw nsw i32 %conv5.i114, 16
  %or8.i116 = or i32 %or.i111, %shl6.i115
  %incdec.ptr.i29.i117 = getelementptr i8, ptr %1, i32 16
  store ptr %incdec.ptr.i29.i117, ptr %rxp.i, align 4
  %32 = ptrtoint ptr %incdec.ptr.i25.i112 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.i25.i112, align 1
  %dec.i31.i118 = add i32 %5, -16
  store i32 %dec.i31.i118, ptr %rx_size.i, align 4
  %conv10.i119 = zext i8 %33 to i32
  %shl11.i120 = shl nuw i32 %conv10.i119, 24
  %or13.i121 = or i32 %or8.i116, %shl11.i120
  %incdec.ptr.i.i123 = getelementptr i8, ptr %1, i32 17
  store ptr %incdec.ptr.i.i123, ptr %rxp.i, align 4
  %34 = ptrtoint ptr %incdec.ptr.i29.i117 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.i29.i117, align 1
  %dec.i.i125 = add i32 %5, -17
  store i32 %dec.i.i125, ptr %rx_size.i, align 4
  %conv.i126 = zext i8 %35 to i32
  %incdec.ptr.i21.i127 = getelementptr i8, ptr %1, i32 18
  store ptr %incdec.ptr.i21.i127, ptr %rxp.i, align 4
  %36 = ptrtoint ptr %incdec.ptr.i.i123 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.i.i123, align 1
  %dec.i23.i128 = add i32 %5, -18
  store i32 %dec.i23.i128, ptr %rx_size.i, align 4
  %conv2.i129 = zext i8 %37 to i32
  %shl.i130 = shl nuw nsw i32 %conv2.i129, 8
  %or.i131 = or i32 %shl.i130, %conv.i126
  %incdec.ptr.i25.i132 = getelementptr i8, ptr %1, i32 19
  store ptr %incdec.ptr.i25.i132, ptr %rxp.i, align 4
  %38 = ptrtoint ptr %incdec.ptr.i21.i127 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.i21.i127, align 1
  %dec.i27.i133 = add i32 %5, -19
  store i32 %dec.i27.i133, ptr %rx_size.i, align 4
  %conv5.i134 = zext i8 %39 to i32
  %shl6.i135 = shl nuw nsw i32 %conv5.i134, 16
  %or8.i136 = or i32 %or.i131, %shl6.i135
  %incdec.ptr.i29.i137 = getelementptr i8, ptr %1, i32 20
  store ptr %incdec.ptr.i29.i137, ptr %rxp.i, align 4
  %40 = ptrtoint ptr %incdec.ptr.i25.i132 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.i25.i132, align 1
  %dec.i31.i138 = add i32 %5, -20
  store i32 %dec.i31.i138, ptr %rx_size.i, align 4
  %conv10.i139 = zext i8 %41 to i32
  %shl11.i140 = shl nuw i32 %conv10.i139, 24
  %or13.i141 = or i32 %or8.i136, %shl11.i140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_phy_information_confirm.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_phy_information_confirm, %if.then)) #11
          to label %do.end15 [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %42 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev, align 4
  %conv = zext i8 %3 to i32
  %conv13 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_phy_information_confirm.__UNIQUE_ID_ddebug353, ptr noundef %43, ptr noundef nonnull @.str.49, i32 noundef %conv, i32 noundef %conv13) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %and = and i8 %9, 127
  %current_rate = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 24
  %44 = ptrtoint ptr %current_rate to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %and, ptr %current_rate, align 4
  %qual = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %qual to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %7, ptr %qual, align 2
  %sub = sub i8 0, %3
  %level = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 6, i32 1, i32 1
  %46 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %sub, ptr %level, align 1
  %noise = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 6, i32 1, i32 2
  %47 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %noise, align 2
  %updated = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 6, i32 1, i32 3
  %48 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 15, ptr %updated, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_phy_information_confirm.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_phy_information_confirm, %if.then37)) #11
          to label %do.end46 [label %if.then37], !srcloc !178

if.then37:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %conv19 = zext i8 %3 to i32
  %conv16 = zext i8 %9 to i32
  %net_dev38 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %49 = ptrtoint ptr %net_dev38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev38, align 4
  %conv40 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_phy_information_confirm.__UNIQUE_ID_ddebug354, ptr noundef %50, ptr noundef nonnull @.str.50, i32 noundef %conv19, i32 noundef %conv40, i32 noundef %conv16, i32 noundef %or13.i, i32 noundef %or13.i101, i32 noundef %or13.i121, i32 noundef %or13.i141) #11
  br label %do.end46

do.end46:                                         ; preds = %if.then37, %do.end15
  %confirm_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 7
  tail call void @complete(ptr noundef %confirm_wait) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_scan_indication(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_scan_indication.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_scan_indication, %if.then)) #11
          to label %do.end5 [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %scan_ind_count = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %scan_ind_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_ind_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_scan_indication.__UNIQUE_ID_ddebug349, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %3) #11
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %rxp = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 11
  %4 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxp, align 4
  %scan_ind_count6 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %6 = ptrtoint ptr %scan_ind_count6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_ind_count6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end24.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end5
  %aplist = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 17
  %8 = ptrtoint ptr %aplist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aplist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp125 = icmp sgt i32 %9, 0
  br i1 %cmp125, label %for.body.lr.ph, label %for.cond.preheader.if.end24_crit_edge

for.cond.preheader.if.end24_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  br label %for.body

if.end24.thread:                                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %scan_ind_count6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %scan_ind_count6, align 4
  br label %do.body32

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.cond.if.end24_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.if.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 17, i32 1, i32 %i.0126
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %xor.i = xor i32 %16, %11
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %13
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.cond, label %if.end15

if.end15:                                         ; preds = %for.body
  %frame_type = getelementptr inbounds %struct.ap_info, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %frame_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %frame_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %20)
  %cmp16 = icmp eq i8 %20, 80
  br i1 %cmp16, label %if.then18, label %if.end15.cleanup85_crit_edge

if.end15.cleanup85_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @get_ap_information(ptr noundef %priv, ptr noundef %5, ptr noundef %arrayidx)
  br label %cleanup85

if.end24:                                         ; preds = %for.cond.if.end24_crit_edge, %for.cond.preheader.if.end24_crit_edge
  %inc26 = add i32 %7, 1
  %21 = ptrtoint ptr %scan_ind_count6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc26, ptr %scan_ind_count6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc26)
  %cmp28 = icmp slt i32 %inc26, 32
  br i1 %cmp28, label %if.end24.do.body32_crit_edge, label %do.body64

if.end24.do.body32_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

do.body32:                                        ; preds = %if.end24.do.body32_crit_edge, %if.end24.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_scan_indication.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_scan_indication, %if.then44)) #11
          to label %do.end53 [label %if.then44], !srcloc !178

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev45 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %22 = ptrtoint ptr %net_dev45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev45, align 4
  %24 = ptrtoint ptr %scan_ind_count6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_ind_count6, align 4
  %aplist47 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 17
  %26 = ptrtoint ptr %aplist47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aplist47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_scan_indication.__UNIQUE_ID_ddebug350, ptr noundef %23, ptr noundef nonnull @.str.53, i32 noundef %25, i32 noundef %27) #11
  br label %do.end53

do.end53:                                         ; preds = %if.then44, %do.body32
  %28 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rxp, align 4
  %aplist55 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 17
  %30 = ptrtoint ptr %scan_ind_count6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_ind_count6, align 4
  %sub = add i32 %31, -1
  %arrayidx58 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 17, i32 1, i32 %sub
  tail call fastcc void @get_ap_information(ptr noundef %priv, ptr noundef %29, ptr noundef %arrayidx58)
  %32 = ptrtoint ptr %scan_ind_count6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scan_ind_count6, align 4
  %34 = ptrtoint ptr %aplist55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %aplist55, align 4
  br label %cleanup85

do.body64:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_scan_indication.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_scan_indication, %if.then76)) #11
          to label %cleanup85 [label %if.then76], !srcloc !178

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev77 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %35 = ptrtoint ptr %net_dev77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_dev77, align 4
  %37 = ptrtoint ptr %scan_ind_count6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan_ind_count6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_scan_indication.__UNIQUE_ID_ddebug351, ptr noundef %36, ptr noundef nonnull @.str.54, i32 noundef %38) #11
  br label %cleanup85

cleanup85:                                        ; preds = %if.then76, %do.body64, %do.end53, %if.then18, %if.end15.cleanup85_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hostif_data_indication_wpa(ptr noundef %priv, i16 noundef zeroext %auth_type) unnamed_addr #0 align 64 {
entry:
  %recv_mic = alloca [8 x i8], align 8
  %buf = alloca [128 x i8], align 1
  %mic = alloca [8 x i8], align 8
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %recv_mic) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #11
  %1 = ptrtoint ptr %mic to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %mic, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #11
  %2 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %conv = zext i16 %auth_type to i32
  %sub = add nsw i32 %conv, -1
  %rxp = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 11
  %3 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxp, align 4
  %h_proto = getelementptr inbounds %struct.ether_hdr, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %h_proto, align 1
  %h_dest_snap = getelementptr inbounds %struct.ether_hdr, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %h_dest_snap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %h_dest_snap, align 1
  %h_source_snap = getelementptr inbounds %struct.ether_hdr, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %h_source_snap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %h_source_snap, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp.not = icmp eq i8 %8, %10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.18) #14
  %rx_errors = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_errors, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rx_errors, align 4
  br label %cleanup112

if.end:                                           ; preds = %entry
  %15 = zext i16 %auth_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %auth_type, label %if.end.cleanup112_crit_edge [
    i16 1, label %land.lhs.true
    i16 2, label %land.lhs.true14
    i16 3, label %land.lhs.true22
  ]

if.end.cleanup112_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

land.lhs.true:                                    ; preds = %if.end
  %pairwise_suite = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 3
  %16 = ptrtoint ptr %pairwise_suite to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pairwise_suite, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp9 = icmp eq i32 %17, 4
  br i1 %cmp9, label %land.lhs.true.land.lhs.true27_crit_edge, label %land.lhs.true.cleanup112_crit_edge

land.lhs.true.cleanup112_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

land.lhs.true.land.lhs.true27_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

land.lhs.true14:                                  ; preds = %if.end
  %group_suite = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 4
  %18 = ptrtoint ptr %group_suite to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %group_suite, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp16 = icmp eq i32 %19, 4
  br i1 %cmp16, label %land.lhs.true14.land.lhs.true27_crit_edge, label %land.lhs.true14.cleanup112_crit_edge

land.lhs.true14.cleanup112_crit_edge:             ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

land.lhs.true14.land.lhs.true27_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

land.lhs.true22:                                  ; preds = %if.end
  %group_suite24 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 4
  %20 = ptrtoint ptr %group_suite24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %group_suite24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp25 = icmp eq i32 %21, 4
  br i1 %cmp25, label %land.lhs.true22.land.lhs.true27_crit_edge, label %land.lhs.true22.cleanup112_crit_edge

land.lhs.true22.cleanup112_crit_edge:             ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

land.lhs.true22.land.lhs.true27_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true22.land.lhs.true27_crit_edge, %land.lhs.true14.land.lhs.true27_crit_edge, %land.lhs.true.land.lhs.true27_crit_edge
  %key_len = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 8, i32 %sub, i32 5
  %22 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not = icmp eq i16 %23, 0
  br i1 %tobool.not, label %land.lhs.true27.cleanup112_crit_edge, label %if.then29

land.lhs.true27.cleanup112_crit_edge:             ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

if.then29:                                        ; preds = %land.lhs.true27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_data_indication_wpa.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_data_indication_wpa, %if.then34)) #11
          to label %do.end39 [label %if.then34], !srcloc !178

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev35 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %24 = ptrtoint ptr %net_dev35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev35, align 4
  %conv36 = zext i16 %6 to i32
  %rx_size = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 12
  %26 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_data_indication_wpa.__UNIQUE_ID_ddebug342, ptr noundef %25, ptr noundef nonnull @.str.20, i32 noundef %conv36, i32 noundef %27) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %if.then29
  %28 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rxp, align 4
  %rx_size42 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 12
  %30 = ptrtoint ptr %rx_size42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_size42, align 4
  %sub43 = add i32 %31, -8
  %add.ptr = getelementptr i8, ptr %29, i32 %sub43
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %add.ptr, align 1
  %34 = ptrtoint ptr %recv_mic to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %recv_mic, align 8
  store i32 %sub43, ptr %rx_size42, align 4
  %rx_mic_key = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 8, i32 %sub, i32 8
  %call50 = call fastcc i32 @michael_mic(ptr noundef %rx_mic_key, ptr noundef %29, i32 noundef %sub43, ptr noundef nonnull %mic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end39.cleanup112_crit_edge, label %if.end54

do.end39.cleanup112_crit_edge:                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

if.end54:                                         ; preds = %do.end39
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %mic, ptr noundef nonnull dereferenceable(8) %recv_mic, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp58.not = icmp eq i32 %bcmp, 0
  br i1 %cmp58.not, label %if.end54.cleanup112_crit_edge, label %if.then60

if.end54.cleanup112_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

if.then60:                                        ; preds = %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %mic_failure62 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 10
  %last_failure_time = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 10, i32 2
  %36 = ptrtoint ptr %last_failure_time to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last_failure_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool63.not = icmp ne i32 %37, 0
  %sub66 = sub i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 5999, i32 %sub66)
  %cmp67 = icmp ugt i32 %sub66, 5999
  %or.cond = select i1 %tobool63.not, i1 %cmp67, i1 false
  br i1 %or.cond, label %if.then69, label %if.then60.if.end70_crit_edge

if.then60.if.end70_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then69:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %mic_failure62 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %mic_failure62, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.then60.if.end70_crit_edge
  %net_dev71 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %39 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev71, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.21) #14
  %41 = ptrtoint ptr %mic_failure62 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mic_failure62, align 4
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %42, label %if.end70.if.end95_crit_edge [
    i16 0, label %if.then76
    i16 1, label %if.then82
  ]

if.end70.if.end95_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %mic_failure62 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %mic_failure62, align 4
  %counter = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 10, i32 1
  %45 = ptrtoint ptr %counter to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %counter, align 2
  br label %if.end95

if.then82:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %mic_failure62 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 2, ptr %mic_failure62, align 4
  %47 = ptrtoint ptr %last_failure_time to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_failure_time, align 4
  %sub85 = sub i32 %35, %48
  %div86 = udiv i32 %sub85, 100
  %conv87 = trunc i32 %div86 to i16
  %counter88 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 10, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv87)
  %tobool90.not = icmp eq i16 %conv87, 0
  %spec.store.select = select i1 %tobool90.not, i16 1, i16 %conv87
  %49 = ptrtoint ptr %counter88 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %spec.store.select, ptr %counter88, align 2
  br label %if.end95

if.end95:                                         ; preds = %if.then82, %if.then76, %if.end70.if.end95_crit_edge
  %50 = ptrtoint ptr %last_failure_time to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %35, ptr %last_failure_time, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool102.not = icmp eq i8 %53, 0
  %cond = select i1 %tobool102.not, ptr @.str.24, ptr @.str.23
  %h_source = getelementptr inbounds %struct.ether_hdr, ptr %4, i32 0, i32 1
  %call104 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.22, i32 noundef %sub, ptr noundef nonnull %cond, ptr noundef %h_source)
  %54 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %call106 = call i32 @strlen(ptr noundef nonnull %buf) #16
  %conv107 = trunc i32 %call106 to i16
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv107, ptr %2, align 4
  %56 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev71, align 4
  call void @wireless_send_event(ptr noundef %57, i32 noundef 35842, ptr noundef nonnull %wrqu, ptr noundef nonnull %buf) #11
  br label %cleanup112

cleanup112:                                       ; preds = %if.end95, %if.end54.cleanup112_crit_edge, %do.end39.cleanup112_crit_edge, %land.lhs.true27.cleanup112_crit_edge, %land.lhs.true22.cleanup112_crit_edge, %land.lhs.true14.cleanup112_crit_edge, %land.lhs.true.cleanup112_crit_edge, %if.end.cleanup112_crit_edge, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ 0, %if.end54.cleanup112_crit_edge ], [ 0, %land.lhs.true14.cleanup112_crit_edge ], [ 0, %land.lhs.true.cleanup112_crit_edge ], [ 0, %if.end.cleanup112_crit_edge ], [ 0, %land.lhs.true27.cleanup112_crit_edge ], [ 0, %land.lhs.true22.cleanup112_crit_edge ], [ %call50, %do.end39.cleanup112_crit_edge ], [ -22, %if.end95 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %recv_mic) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks_wlan_hw_power_save(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_connect_status(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_current_ap(ptr noundef %priv, ptr nocapture noundef readonly %ap_info) unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #11
  %0 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %2 = call ptr @memset(ptr %wrqu, i32 255, i32 16)
  %3 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev, align 4
  %current_ap = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18
  %connect_status = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 42
  %5 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connect_status, align 4
  %call = tail call zeroext i1 @is_disconnect_status(i32 noundef %6) #11
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call ptr @memset(ptr %current_ap, i32 0, i32 454)
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ap_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ap_info, align 4
  %10 = ptrtoint ptr %current_ap to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %current_ap, align 4
  %add.ptr.i = getelementptr i8, ptr %ap_info, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 0, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  %ssid = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 3
  %body = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 3, i32 1
  %ssid4 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 5
  %body5 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 5, i32 1
  %14 = ptrtoint ptr %ssid4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ssid4, align 2
  %conv = zext i8 %15 to i32
  %16 = call ptr @memcpy(ptr %body, ptr %body5, i32 %conv)
  %17 = load i8, ptr %ssid4, align 2
  %18 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ssid, align 2
  %rate_set = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4
  %body15 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1
  %rate_set17 = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 7
  %body18 = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %rate_set17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rate_set17, align 1
  %conv22 = zext i8 %20 to i32
  %21 = call ptr @memcpy(ptr %body15, ptr %body18, i32 %conv22)
  %22 = load i8, ptr %rate_set17, align 1
  %23 = ptrtoint ptr %rate_set to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %rate_set, align 2
  %ext_rate_set = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 14
  %24 = ptrtoint ptr %ext_rate_set to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ext_rate_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.not = icmp eq i8 %25, 0
  br i1 %cmp.not, label %if.end.if.end48_crit_edge, label %if.then30

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv28 = zext i8 %25 to i32
  %idxprom = zext i8 %22 to i32
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1, i32 %idxprom
  %body36 = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 14, i32 1
  %26 = call ptr @memcpy(ptr %arrayidx, ptr %body36, i32 %conv28)
  %27 = ptrtoint ptr %ext_rate_set to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ext_rate_set, align 1
  %29 = ptrtoint ptr %rate_set to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rate_set, align 2
  %add = add i8 %30, %28
  store i8 %add, ptr %rate_set, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then30, %if.end.if.end48_crit_edge
  %ds_parameter = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 9
  %31 = ptrtoint ptr %ds_parameter to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ds_parameter, align 1
  %channel49 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 6
  %33 = ptrtoint ptr %channel49 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %channel49, align 2
  %rssi = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 1
  %34 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rssi, align 1
  %rssi50 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %rssi50 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %rssi50, align 2
  %sq = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 2
  %37 = ptrtoint ptr %sq to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sq, align 1
  %sq51 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 2
  %39 = ptrtoint ptr %sq51 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %sq51, align 1
  %noise = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 3
  %40 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %noise, align 1
  %noise52 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 7
  %42 = ptrtoint ptr %noise52 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %noise52, align 1
  %capability = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 6
  %43 = ptrtoint ptr %capability to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %capability, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %capability53 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 5
  %46 = ptrtoint ptr %capability53 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %capability53, align 2
  %rsn = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 17
  %47 = ptrtoint ptr %rsn to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rsn, align 1
  %49 = tail call i8 @llvm.umin.i8(i8 %48, i8 64)
  %rsn_mode = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 16
  %50 = ptrtoint ptr %rsn_mode to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rsn_mode, align 1
  %52 = and i8 %51, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  br i1 %tobool.not, label %if.end48.if.else_crit_edge, label %land.lhs.true

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end48
  %version = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 2
  %53 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp63 = icmp eq i32 %54, 4
  br i1 %cmp63, label %if.then65, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %rsn_ie = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 9
  %55 = ptrtoint ptr %rsn_ie to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 48, ptr %rsn_ie, align 2
  %size67 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 9, i32 1
  %56 = ptrtoint ptr %size67 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %49, ptr %size67, align 1
  %body69 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 9, i32 2
  %body72 = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 17, i32 1
  %conv74 = zext i8 %49 to i32
  %57 = call ptr @memcpy(ptr %body69, ptr %body72, i32 %conv74)
  br label %if.end105

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end48.if.else_crit_edge
  %58 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool78.not = icmp eq i8 %58, 0
  br i1 %tobool78.not, label %if.else.if.else95_crit_edge, label %land.lhs.true79

if.else.if.else95_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else95

land.lhs.true79:                                  ; preds = %if.else
  %version81 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 21, i32 2
  %59 = ptrtoint ptr %version81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %version81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp82 = icmp eq i32 %60, 2
  br i1 %cmp82, label %if.then84, label %land.lhs.true79.if.else95_crit_edge

land.lhs.true79.if.else95_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else95

if.then84:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  %wpa_ie = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 8
  %61 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -35, ptr %wpa_ie, align 2
  %size87 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 8, i32 1
  %62 = ptrtoint ptr %size87 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %49, ptr %size87, align 1
  %body89 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 8, i32 2
  %body92 = getelementptr inbounds %struct.link_ap_info, ptr %ap_info, i32 0, i32 17, i32 1
  %conv94 = zext i8 %49 to i32
  %63 = call ptr @memcpy(ptr %body89, ptr %body92, i32 %conv94)
  br label %if.end105

if.else95:                                        ; preds = %land.lhs.true79.if.else95_crit_edge, %if.else.if.else95_crit_edge
  %rsn_ie96 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 9
  %64 = ptrtoint ptr %rsn_ie96 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %rsn_ie96, align 2
  %size99 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 9, i32 1
  %65 = ptrtoint ptr %size99 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %size99, align 1
  %wpa_ie100 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 8
  %66 = ptrtoint ptr %wpa_ie100 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %wpa_ie100, align 2
  %size103 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 8, i32 1
  %67 = ptrtoint ptr %size103 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %size103, align 1
  br label %if.end105

if.end105:                                        ; preds = %if.else95, %if.then84, %if.then65
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %0, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %1, align 2
  %70 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %wrqu, align 4
  %71 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %connect_status, align 4
  %call107 = tail call zeroext i1 @is_connect_status(i32 noundef %72) #11
  br i1 %call107, label %if.then108, label %if.end105.do.body127_crit_edge

if.end105.do.body127_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127

if.then108:                                       ; preds = %if.end105
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %73 = ptrtoint ptr %current_ap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %current_ap, align 4
  %75 = ptrtoint ptr %sa_data to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sa_data, align 4
  %76 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr1.i, align 2
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %1, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_current_ap.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_current_ap, %if.then118)) #11
          to label %do.end124 [label %if.then118], !srcloc !178

if.then118:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @get_current_ap.__UNIQUE_ID_ddebug340, ptr noundef %80, ptr noundef nonnull @.str.39, ptr noundef %sa_data) #11
  br label %do.end124

do.end124:                                        ; preds = %if.then118, %if.then108
  call void @wireless_send_event(ptr noundef %4, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #11
  br label %do.body127

do.body127:                                       ; preds = %do.end124, %if.end105.do.body127_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_current_ap.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_current_ap, %if.then139)) #11
          to label %cleanup [label %if.then139], !srcloc !178

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %net_dev, align 4
  %83 = ptrtoint ptr %body15 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %body15, align 1
  %conv149 = zext i8 %84 to i32
  %arrayidx152 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1, i32 1
  %85 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %86 to i32
  %arrayidx156 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1, i32 2
  %87 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %88 to i32
  %arrayidx160 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1, i32 3
  %89 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %90 to i32
  %arrayidx164 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1, i32 4
  %91 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %92 to i32
  %arrayidx168 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1, i32 5
  %93 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %94 to i32
  %arrayidx172 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1, i32 6
  %95 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %96 to i32
  %arrayidx176 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 18, i32 4, i32 1, i32 7
  %97 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %98 to i32
  %99 = ptrtoint ptr %channel49 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %channel49, align 2
  %conv179 = zext i8 %100 to i32
  %101 = ptrtoint ptr %rssi50 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %rssi50, align 2
  %conv181 = zext i8 %102 to i32
  %103 = ptrtoint ptr %sq51 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %sq51, align 1
  %conv183 = zext i8 %104 to i32
  %105 = ptrtoint ptr %capability53 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %capability53, align 2
  %conv185 = zext i16 %106 to i32
  %107 = ptrtoint ptr %rsn_mode to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rsn_mode, align 1
  %conv187 = zext i8 %108 to i32
  %109 = ptrtoint ptr %rsn to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %rsn, align 1
  %conv190 = zext i8 %110 to i32
  %111 = ptrtoint ptr %ext_rate_set to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ext_rate_set, align 1
  %conv193 = zext i8 %112 to i32
  %113 = ptrtoint ptr %rate_set17 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rate_set17, align 1
  %conv196 = zext i8 %114 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @get_current_ap.__UNIQUE_ID_ddebug341, ptr noundef %82, ptr noundef nonnull @.str.40, ptr noundef %current_ap, ptr noundef %body, i32 noundef %conv149, i32 noundef %conv153, i32 noundef %conv157, i32 noundef %conv161, i32 noundef %conv165, i32 noundef %conv169, i32 noundef %conv173, i32 noundef %conv177, i32 noundef %conv179, i32 noundef %conv181, i32 noundef %conv183, i32 noundef %conv185, i32 noundef %conv187, i32 noundef %conv190, i32 noundef %conv193, i32 noundef %conv196) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %do.body127, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_ap_information(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %ap_info, ptr nocapture noundef %ap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ap, i32 0, i32 454)
  %1 = ptrtoint ptr %ap_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ap_info, align 4
  %3 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ap, align 4
  %add.ptr.i = getelementptr i8, ptr %ap_info, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %ap, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 2
  %rssi = getelementptr inbounds %struct.ap_info, ptr %ap_info, i32 0, i32 1
  %7 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rssi, align 1
  %rssi3 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 1
  %9 = ptrtoint ptr %rssi3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %rssi3, align 2
  %sq = getelementptr inbounds %struct.ap_info, ptr %ap_info, i32 0, i32 2
  %10 = ptrtoint ptr %sq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sq, align 1
  %sq4 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 2
  %12 = ptrtoint ptr %sq4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %sq4, align 1
  %noise = getelementptr inbounds %struct.ap_info, ptr %ap_info, i32 0, i32 3
  %13 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %noise, align 1
  %noise5 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 7
  %15 = ptrtoint ptr %noise5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %noise5, align 1
  %capability = getelementptr inbounds %struct.ap_info, ptr %ap_info, i32 0, i32 6
  %16 = ptrtoint ptr %capability to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %capability, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %capability6 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 5
  %19 = ptrtoint ptr %capability6 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %capability6, align 2
  %ch_info = getelementptr inbounds %struct.ap_info, ptr %ap_info, i32 0, i32 8
  %20 = ptrtoint ptr %ch_info to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ch_info, align 1
  %channel = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 6
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %channel, align 2
  %body_size = getelementptr inbounds %struct.ap_info, ptr %ap_info, i32 0, i32 9
  %23 = ptrtoint ptr %body_size to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %body_size, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp8.not = icmp eq i16 %24, 0
  br i1 %cmp8.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %body = getelementptr inbounds %struct.ap_info, ptr %ap_info, i32 0, i32 10
  %wpa_ie = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 8
  %body67 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 8, i32 2
  %size71 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 8, i32 1
  %rsn_ie = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 9
  %body54 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 9, i32 2
  %size58 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 9, i32 1
  %rate_set = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 4
  %ssid = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 3
  %body10 = getelementptr inbounds %struct.local_ap, ptr %ap, i32 0, i32 3, i32 1
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %offset.011 = phi i32 [ 0, %while.body.lr.ph ], [ %add78, %sw.epilog.while.body_crit_edge ]
  %bp.09 = phi ptr [ %body, %while.body.lr.ph ], [ %add.ptr82, %sw.epilog.while.body_crit_edge ]
  %26 = ptrtoint ptr %bp.09 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bp.09, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %27, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %while.body.sw.bb13_crit_edge
    i8 50, label %while.body.sw.bb13_crit_edge12
    i8 48, label %sw.bb52
    i8 -35, label %sw.bb59
    i8 3, label %while.body.sw.epilog_crit_edge
    i8 2, label %while.body.sw.epilog_crit_edge13
    i8 4, label %while.body.sw.epilog_crit_edge14
    i8 5, label %while.body.sw.epilog_crit_edge15
    i8 6, label %while.body.sw.epilog_crit_edge16
    i8 7, label %while.body.sw.epilog_crit_edge17
    i8 42, label %while.body.sw.epilog_crit_edge18
  ]

while.body.sw.epilog_crit_edge18:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.sw.epilog_crit_edge17:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.sw.epilog_crit_edge16:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.sw.epilog_crit_edge15:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.sw.epilog_crit_edge14:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.sw.epilog_crit_edge13:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.sw.bb13_crit_edge12:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

while.body.sw.bb13_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i1 = getelementptr i8, ptr %bp.09, i32 1
  %29 = ptrtoint ptr %add.ptr.i1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i1, align 1
  %31 = tail call i8 @llvm.umin.i8(i8 %30, i8 32) #11
  %add.ptr7.i = getelementptr i8, ptr %bp.09, i32 2
  %conv8.i = zext i8 %31 to i32
  %32 = call ptr @memcpy(ptr %body10, ptr %add.ptr7.i, i32 %conv8.i)
  %33 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %ssid, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %while.body.sw.bb13_crit_edge, %while.body.sw.bb13_crit_edge12
  %add.ptr = getelementptr i8, ptr %bp.09, i32 1
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr, align 1
  %conv14 = zext i8 %35 to i32
  %36 = ptrtoint ptr %rate_set to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rate_set, align 2
  %conv16 = zext i8 %37 to i32
  %add = add nuw nsw i32 %conv16, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add)
  %cmp17 = icmp ult i32 %add, 17
  %arrayidx = getelementptr %struct.local_ap, ptr %ap, i32 0, i32 4, i32 1, i32 %conv16
  %add.ptr23 = getelementptr i8, ptr %bp.09, i32 2
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %38 = call ptr @memcpy(ptr %arrayidx, ptr %add.ptr23, i32 %conv14)
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr, align 1
  %41 = ptrtoint ptr %rate_set to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rate_set, align 2
  %add31 = add i8 %42, %40
  store i8 %add31, ptr %rate_set, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub nsw i32 16, %conv16
  %43 = call ptr @memcpy(ptr %arrayidx, ptr %add.ptr23, i32 %sub)
  %44 = ptrtoint ptr %rate_set to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %rate_set, align 2
  br label %sw.epilog

sw.bb52:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %rsn_ie to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 48, ptr %rsn_ie, align 2
  %add.ptr.i2 = getelementptr i8, ptr %bp.09, i32 1
  %46 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i2, align 1
  %48 = tail call i8 @llvm.umin.i8(i8 %47, i8 64) #11
  %add.ptr7.i3 = getelementptr i8, ptr %bp.09, i32 2
  %conv8.i4 = zext i8 %48 to i32
  %49 = call ptr @memcpy(ptr %body54, ptr %add.ptr7.i3, i32 %conv8.i4)
  %50 = ptrtoint ptr %size58 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %48, ptr %size58, align 1
  br label %sw.epilog

sw.bb59:                                          ; preds = %while.body
  %add.ptr60 = getelementptr i8, ptr %bp.09, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr60, ptr noundef nonnull dereferenceable(4) @.str.55, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp62 = icmp eq i32 %bcmp, 0
  br i1 %cmp62, label %if.then64, label %sw.bb59.sw.epilog_crit_edge

sw.bb59.sw.epilog_crit_edge:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then64:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -35, ptr %wpa_ie, align 2
  %add.ptr.i5 = getelementptr i8, ptr %bp.09, i32 1
  %52 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i5, align 1
  %54 = tail call i8 @llvm.umin.i8(i8 %53, i8 64) #11
  %conv8.i7 = zext i8 %54 to i32
  %55 = call ptr @memcpy(ptr %body67, ptr %add.ptr60, i32 %conv8.i7)
  %56 = ptrtoint ptr %size71 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %54, ptr %size71, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv9 = zext i8 %27 to i32
  %57 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %58, ptr noundef nonnull @.str.56, i32 noundef %conv9) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then64, %sw.bb59.sw.epilog_crit_edge, %sw.bb52, %if.else, %if.then, %sw.bb, %while.body.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge13, %while.body.sw.epilog_crit_edge14, %while.body.sw.epilog_crit_edge15, %while.body.sw.epilog_crit_edge16, %while.body.sw.epilog_crit_edge17, %while.body.sw.epilog_crit_edge18
  %add.ptr76 = getelementptr i8, ptr %bp.09, i32 1
  %59 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr76, align 1
  %conv77 = zext i8 %60 to i32
  %add75 = add nuw nsw i32 %conv77, 2
  %add78 = add i32 %add75, %offset.011
  %add.ptr82 = getelementptr i8, ptr %bp.09, i32 %add75
  %cmp = icmp slt i32 %add78, %conv
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_wlan_hw_wakeup_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %psstatus = getelementptr i8, ptr %work, i32 15044
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #11
  %0 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %psstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -92800
  tail call void @ks_wlan_hw_wakeup_request(ptr noundef %add.ptr) #11
  %wakeup_wait = getelementptr i8, ptr %work, i32 15048
  %call3 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %wakeup_wait, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %do.body6, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.body6:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_hw_wakeup_task.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_hw_wakeup_task, %if.then11)) #11
          to label %do.end13 [label %if.then11], !srcloc !178

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr i8, ptr %work, i32 -92668
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_hw_wakeup_task.__UNIQUE_ID_ddebug339, ptr noundef %3, ptr noundef nonnull @.str.60) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %do.body6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i31 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #11
  br label %cleanup

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %count = getelementptr i8, ptr %work, i32 -16
  %call.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #11
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp18 = icmp sgt i32 %6, 0
  br i1 %cmp18, label %if.then19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !179
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #11, !srcloc !180
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end16.cleanup_crit_edge, %do.end13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ks_wlan_hw_wakeup_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hostif_sme_task(ptr noundef %t) #0 align 64 {
entry:
  %v.i268.i = alloca i32, align 4
  %v.i227.i = alloca i32, align 4
  %pmkcache.i.i = alloca %struct.pmk_cache, align 2
  %v.i79.i.i = alloca i32, align 4
  %v.i.i208.i = alloca i32, align 4
  %v.i.i202.i = alloca i32, align 4
  %wpa_suite.i.i = alloca %struct.wpa_suite, align 2
  %rsn_mode.i.i = alloca %struct.rsn_mode, align 4
  %v.i77.i.i = alloca i32, align 4
  %v.i.i197.i = alloca i32, align 4
  %v.i196.i = alloca i32, align 4
  %v.i.i = alloca i32, align 4
  %v.i49.i.i = alloca i32, align 4
  %v.i48.i.i = alloca i32, align 4
  %v.i.i.i = alloca i32, align 4
  %set_address.i.i = alloca [192 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -92776
  %dev_state = getelementptr i8, ptr %t, i32 16684
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %qtail.i = getelementptr i8, ptr %t, i32 -60
  %2 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qtail.i, align 4
  %sub.i = sub i32 128, %3
  %qhead.i = getelementptr i8, ptr %t, i32 -64
  %4 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qhead.i, align 4
  %add.i = add i32 %5, %sub.i
  %and.i = and i32 %add.i, 127
  %6 = tail call i32 @llvm.smin.i32(i32 %and.i, i32 %sub.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %event_buff = getelementptr i8, ptr %t, i32 -576
  %7 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qhead.i, align 4
  %arrayidx = getelementptr [128 x i32], ptr %event_buff, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %10, label %if.end3.hostif_sme_execute.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 15, label %sw.bb4.i
    i32 16, label %sw.bb5.i
    i32 17, label %sw.bb6.i
    i32 43, label %sw.bb25.i
    i32 18, label %sw.bb45.i
    i32 19, label %sw.bb51.i
    i32 20, label %sw.bb58.i
    i32 21, label %sw.bb59.i
    i32 22, label %sw.bb61.i
    i32 39, label %sw.bb89.i
    i32 38, label %sw.bb88.i
    i32 44, label %sw.bb79.i
    i32 41, label %sw.bb76.i
    i32 42, label %sw.bb75.i
    i32 37, label %sw.bb74.i
    i32 29, label %if.end3.sw.bb64.i_crit_edge
    i32 30, label %if.end3.sw.bb64.i_crit_edge42
    i32 31, label %if.end3.sw.bb64.i_crit_edge43
    i32 32, label %if.end3.sw.bb64.i_crit_edge44
    i32 33, label %if.end3.sw.bb64.i_crit_edge45
    i32 28, label %sw.bb55.i.i
    i32 27, label %sw.bb39.i.i
    i32 26, label %sw.bb23.i.i
    i32 25, label %sw.bb7.i.i
    i32 24, label %sw.bb1.i.i
    i32 23, label %sw.bb.i.i
    i32 36, label %sw.bb73.i
    i32 40, label %sw.bb72.i
    i32 35, label %sw.bb68.i
    i32 14, label %sw.bb66.i
    i32 34, label %sw.bb67.i
    i32 4, label %sw.bb.i211.i
    i32 5, label %sw.bb1.i212.i
    i32 6, label %sw.bb2.i214.i
    i32 7, label %sw.bb8.i.i
    i32 8, label %sw.bb19.i215.i
    i32 9, label %sw.bb30.i.i
    i32 10, label %sw.bb41.i.i
    i32 11, label %sw.bb46.i216.i
    i32 12, label %sw.bb52.i217.i
  ]

if.end3.sw.bb64.i_crit_edge45:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb64.i

if.end3.sw.bb64.i_crit_edge44:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb64.i

if.end3.sw.bb64.i_crit_edge43:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb64.i

if.end3.sw.bb64.i_crit_edge42:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb64.i

if.end3.sw.bb64.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb64.i

if.end3.hostif_sme_execute.exit_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

sw.bb.i:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.hostif_sme_execute.exit_crit_edge

sw.bb.i.hostif_sme_execute.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i29 = icmp eq ptr %call7.i.i.i.i28, null
  br i1 %tobool.not.i.i29, label %if.then.i.hostif_sme_execute.exit_crit_edge, label %if.end.i35

if.then.i.hostif_sme_execute.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i35:                                       ; preds = %if.then.i
  %15 = ptrtoint ptr %call7.i.i.i.i28 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1536, ptr %call7.i.i.i.i28, align 8
  %event4.i.i30 = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i28, i32 0, i32 1
  %16 = ptrtoint ptr %event4.i.i30 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 736, ptr %event4.i.i30, align 2
  %mib_attribute1.i31 = getelementptr inbounds %struct.hostif_mib_get_request, ptr %call7.i.i.i.i28, i32 0, i32 1
  %17 = ptrtoint ptr %mib_attribute1.i31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65825, ptr %mib_attribute1.i31, align 4
  %psstatus.i.i.i32 = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i32, i32 noundef 4) #11
  %18 = ptrtoint ptr %psstatus.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %psstatus.i.i.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i.i34 = icmp sgt i32 %19, 1
  br i1 %cmp.i.i.i34, label %if.then.i.i.i38, label %if.end.i35.send_request_to_device.exit.i40_crit_edge

if.end.i35.send_request_to_device.exit.i40_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i40

if.then.i.i.i38:                                  ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i36 = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i36, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i36, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i36, ptr %confirm_wait.i.i.i36, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i36) #11, !srcloc !177
  br label %send_request_to_device.exit.i40

send_request_to_device.exit.i40:                  ; preds = %if.then.i.i.i38, %if.end.i35.send_request_to_device.exit.i40_crit_edge
  %call.i.i39 = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i28, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

sw.bb1.i:                                         ; preds = %if.end3
  %net_dev.i.i = getelementptr i8, ptr %t, i32 -92644
  %21 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %set_address.i.i) #11
  %multicast_spin.i.i = getelementptr i8, ptr %t, i32 16224
  tail call void @_raw_spin_lock(ptr noundef %multicast_spin.i.i) #11
  %23 = call ptr @memset(ptr %set_address.i.i, i32 0, i32 192)
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i.i) #11
  %26 = ptrtoint ptr %v.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 33554432, ptr %v.i.i.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -251264512, i32 noundef 1, ptr noundef nonnull %v.i.i.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i.i) #11
  br label %hostif_sme_multicast_set.exit.i

if.end.i.i:                                       ; preds = %sw.bb1.i
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 66
  %count.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 66, i32 1
  %27 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %28)
  %cmp.i.i = icmp slt i32 %28, 33
  %and2.i.i = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool3.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end5.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i48.i.i) #11
  %29 = ptrtoint ptr %v.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16777216, ptr %v.i48.i.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -251264512, i32 noundef 1, ptr noundef nonnull %v.i48.i.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i48.i.i) #11
  br label %hostif_sme_multicast_set.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %sme_flag.i.i = getelementptr i8, ptr %t, i32 -12
  %30 = ptrtoint ptr %sme_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sme_flag.i.i, align 4
  %and6.i.i = and i32 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end5.i.i
  %32 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %ha.050.i.i = load ptr, ptr %mc.i.i, align 4
  %cmp15.not51.i.i = icmp eq ptr %ha.050.i.i, %mc.i.i
  br i1 %cmp15.not51.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %ha.053.i.i = phi ptr [ %ha.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %ha.050.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.052.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.052.i.i, 6
  %arrayidx.i.i = getelementptr [192 x i8], ptr %set_address.i.i, i32 0, i32 %mul.i.i
  %addr.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.053.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i.i, align 4
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.053.i.i, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 4
  %38 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i.i.i, align 2
  %inc.i.i = add i32 %i.052.i.i, 1
  %39 = ptrtoint ptr %ha.053.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %ha.0.i.i = load ptr, ptr %ha.053.i.i, align 4
  %cmp15.not.i.i = icmp eq ptr %ha.0.i.i, %mc.i.i
  br i1 %cmp15.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %and24.i.i = and i32 %31, -16385
  %40 = ptrtoint ptr %sme_flag.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and24.i.i, ptr %sme_flag.i.i, align 4
  %mul26.i.i = mul i32 %28, 6
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -251264768, i32 noundef 4, ptr noundef nonnull %set_address.i.i, i32 noundef %mul26.i.i) #11
  br label %hostif_sme_multicast_set.exit.i

if.else.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i.i = or i32 %31, 16384
  %41 = ptrtoint ptr %sme_flag.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i, ptr %sme_flag.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i49.i.i) #11
  %42 = ptrtoint ptr %v.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %v.i49.i.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -251264512, i32 noundef 1, ptr noundef nonnull %v.i49.i.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i49.i.i) #11
  br label %hostif_sme_multicast_set.exit.i

hostif_sme_multicast_set.exit.i:                  ; preds = %if.else.i.i, %for.end.i.i, %if.then4.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock(ptr noundef %multicast_spin.i.i) #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %set_address.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb2.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %eth_addr.i = getelementptr i8, ptr %t, i32 72
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -251330304, i32 noundef 4, ptr noundef %eth_addr.i, i32 noundef 6) #11
  br label %hostif_sme_execute.exit

sw.bb3.i:                                         ; preds = %if.end3
  %scan_type.i = getelementptr i8, ptr %t, i32 16044
  %43 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scan_type.i, align 4
  %scan_ssid.i = getelementptr i8, ptr %t, i32 16705
  %scan_ssid_len.i = getelementptr i8, ptr %t, i32 16704
  %45 = ptrtoint ptr %scan_ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %scan_ssid_len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 2848, i32 noundef 96) #17
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb3.i.hostif_sme_execute.exit_crit_edge, label %if.end.i155.i

sw.bb3.i.hostif_sme_execute.exit_crit_edge:       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i155.i:                                    ; preds = %sw.bb3.i
  %48 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 16384, ptr %call7.i.i.i.i.i, align 8
  %event4.i.i.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %event4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 3296, ptr %event4.i.i.i, align 2
  %conv.i.i = trunc i32 %44 to i8
  %scan_type1.i.i = getelementptr inbounds %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %scan_type1.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.i, ptr %scan_type1.i.i, align 4
  %ch_time_min.i.i = getelementptr inbounds %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %ch_time_min.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1845493760, ptr %ch_time_min.i.i, align 8
  %ch_time_max.i.i = getelementptr inbounds %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %ch_time_max.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -2113929216, ptr %ch_time_max.i.i, align 4
  %channel_list.i.i = getelementptr inbounds %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %body.i.i = getelementptr inbounds %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %body.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %body.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 1
  %54 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 8, ptr %arrayidx4.i.i, align 2
  %arrayidx7.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 2
  %55 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %arrayidx7.i.i, align 1
  %arrayidx10.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 3
  %56 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 9, ptr %arrayidx10.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 4
  %57 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %arrayidx13.i.i, align 1
  %arrayidx16.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 5
  %58 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 10, ptr %arrayidx16.i.i, align 2
  %arrayidx19.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 6
  %59 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 4, ptr %arrayidx19.i.i, align 1
  %arrayidx22.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 7
  %60 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 11, ptr %arrayidx22.i.i, align 8
  %arrayidx25.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 8
  %61 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 5, ptr %arrayidx25.i.i, align 1
  %arrayidx28.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 9
  %62 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 12, ptr %arrayidx28.i.i, align 2
  %arrayidx31.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 10
  %63 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 6, ptr %arrayidx31.i.i, align 1
  %arrayidx34.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 11
  %64 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 13, ptr %arrayidx34.i.i, align 4
  %arrayidx37.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 12
  %65 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 7, ptr %arrayidx37.i.i, align 1
  %phy_type.i.i = getelementptr i8, ptr %t, i32 16182
  %66 = ptrtoint ptr %phy_type.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %phy_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %67)
  %cmp.i154.i = icmp eq i16 %67, 1
  br i1 %cmp.i154.i, label %if.end.i155.i.if.end47.i.i_crit_edge, label %if.else.i156.i

if.end.i155.i.if.end47.i.i_crit_edge:             ; preds = %if.end.i155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i.i

if.else.i156.i:                                   ; preds = %if.end.i155.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx44.i.i = getelementptr %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1, i32 13
  %68 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 14, ptr %arrayidx44.i.i, align 2
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.else.i156.i, %if.end.i155.i.if.end47.i.i_crit_edge
  %storemerge.i.i = phi i8 [ 14, %if.else.i156.i ], [ 13, %if.end.i155.i.if.end47.i.i_crit_edge ]
  %69 = ptrtoint ptr %channel_list.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %storemerge.i.i, ptr %channel_list.i.i, align 8
  %ssid.i.i = getelementptr inbounds %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %ssid.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %ssid.i.i, align 8
  %71 = add i8 %46, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %71)
  %72 = icmp ult i8 %71, 32
  br i1 %72, label %if.then55.i.i, label %if.end47.i.i.if.end62.i.i_crit_edge

if.end47.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i.i

if.then55.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv49.i.i = zext i8 %46 to i32
  %73 = ptrtoint ptr %ssid.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %46, ptr %ssid.i.i, align 8
  %body59.i.i = getelementptr inbounds %struct.hostif_bss_scan_request, ptr %call7.i.i.i.i.i, i32 0, i32 6, i32 1
  %74 = call ptr @memcpy(ptr %body59.i.i, ptr %scan_ssid.i, i32 %conv49.i.i)
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then55.i.i, %if.end47.i.i.if.end62.i.i_crit_edge
  %psstatus.i.i.i.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i.i, i32 noundef 4) #11
  %75 = ptrtoint ptr %psstatus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %psstatus.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i.i.i.i = icmp sgt i32 %76, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end62.i.i.send_request_to_device.exit.i.i_crit_edge

if.end62.i.i.send_request_to_device.exit.i.i_crit_edge: ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i.i, i32 1, i32 3, i32 1) #11
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i.i, ptr %confirm_wait.i.i.i.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i.i

send_request_to_device.exit.i.i:                  ; preds = %if.then.i.i.i.i, %if.end62.i.i.send_request_to_device.exit.i.i_crit_edge
  %call.i.i157.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 96, ptr noundef null, ptr noundef null) #11
  %aplist.i.i = getelementptr i8, ptr %t, i32 80
  %78 = ptrtoint ptr %aplist.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %aplist.i.i, align 4
  %scan_ind_count.i.i = getelementptr i8, ptr %t, i32 68
  %79 = ptrtoint ptr %scan_ind_count.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %scan_ind_count.i.i, align 4
  br label %hostif_sme_execute.exit

sw.bb4.i:                                         ; preds = %if.end3
  %power_mgmt.i.i = getelementptr i8, ptr %t, i32 16041
  %80 = ptrtoint ptr %power_mgmt.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %power_mgmt.i.i, align 1
  %.off.i.i = add i8 %81, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %if.else.i158.i, label %sw.bb4.i.if.end.i159.i_crit_edge

sw.bb4.i.if.end.i159.i_crit_edge:                 ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i159.i

if.else.i158.i:                                   ; preds = %sw.bb4.i
  %reg.i.i = getelementptr i8, ptr %t, i32 15980
  %82 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %cmp9.i.i = icmp eq i8 %83, 1
  br i1 %cmp9.i.i, label %land.rhs.i.i, label %if.else.i158.i.if.end.i159.i_crit_edge

if.else.i158.i.if.end.i159.i_crit_edge:           ; preds = %if.else.i158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i159.i

land.rhs.i.i:                                     ; preds = %if.else.i158.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp19.i.i = icmp eq i8 %81, 2
  %phi.bo.i.i = select i1 %cmp19.i.i, i32 16777216, i32 0
  br label %if.end.i159.i

if.end.i159.i:                                    ; preds = %land.rhs.i.i, %if.else.i158.i.if.end.i159.i_crit_edge, %sw.bb4.i.if.end.i159.i_crit_edge
  %mode.0.i.i = phi i32 [ 16777216, %sw.bb4.i.if.end.i159.i_crit_edge ], [ 33554432, %land.rhs.i.i ], [ 16777216, %if.else.i158.i.if.end.i159.i_crit_edge ]
  %receive_dtims.0.i.i = phi i32 [ 0, %sw.bb4.i.if.end.i159.i_crit_edge ], [ %phi.bo.i.i, %land.rhs.i.i ], [ 0, %if.else.i158.i.if.end.i159.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %84 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i159.i.hostif_sme_execute.exit_crit_edge, label %if.end.i.i.i

if.end.i159.i.hostif_sme_execute.exit_crit_edge:  ; preds = %if.end.i159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i.i.i:                                     ; preds = %if.end.i159.i
  %85 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 3584, ptr %call7.i.i.i.i.i.i, align 8
  %event4.i.i.i.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %event4.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1248, ptr %event4.i.i.i.i, align 2
  %mode1.i.i.i = getelementptr inbounds %struct.hostif_power_mgmt_request, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %mode1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mode.0.i.i, ptr %mode1.i.i.i, align 4
  %wake_up2.i.i.i = getelementptr inbounds %struct.hostif_power_mgmt_request, ptr %call7.i.i.i.i.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %wake_up2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %wake_up2.i.i.i, align 8
  %receive_dtims3.i.i.i = getelementptr inbounds %struct.hostif_power_mgmt_request, ptr %call7.i.i.i.i.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %receive_dtims3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %receive_dtims.0.i.i, ptr %receive_dtims3.i.i.i, align 4
  %psstatus.i.i.i.i.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i.i.i, i32 noundef 4) #11
  %90 = ptrtoint ptr %psstatus.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %psstatus.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i.i.i.i.i = icmp sgt i32 %91, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.send_request_to_device.exit.i.i.i_crit_edge

if.end.i.i.i.send_request_to_device.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i.i.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i.i.i, ptr %confirm_wait.i.i.i.i.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i.i.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i.i.i

send_request_to_device.exit.i.i.i:                ; preds = %if.then.i.i.i.i.i, %if.end.i.i.i.send_request_to_device.exit.i.i.i_crit_edge
  %call.i.i.i.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i.i.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

sw.bb5.i:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i160.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i161.i = icmp eq ptr %call7.i.i.i.i160.i, null
  br i1 %tobool.not.i.i161.i, label %sw.bb5.i.hostif_sme_execute.exit_crit_edge, label %if.end.i163.i

sw.bb5.i.hostif_sme_execute.exit_crit_edge:       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i163.i:                                    ; preds = %sw.bb5.i
  %94 = ptrtoint ptr %call7.i.i.i.i160.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1536, ptr %call7.i.i.i.i160.i, align 8
  %event4.i.i162.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i160.i, i32 0, i32 1
  %95 = ptrtoint ptr %event4.i.i162.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 3552, ptr %event4.i.i162.i, align 2
  %phy_info_timer.i.i = getelementptr i8, ptr %t, i32 16186
  %96 = ptrtoint ptr %phy_info_timer.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %phy_info_timer.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool1.not.i.i = icmp eq i16 %97, 0
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #11
  %spec.select.i = select i1 %tobool1.not.i.i, i16 0, i16 256
  %spec.select269.i = select i1 %tobool1.not.i.i, i16 0, i16 %98
  %99 = getelementptr inbounds %struct.hostif_phy_information_request, ptr %call7.i.i.i.i160.i, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %spec.select.i, ptr %99, align 4
  %101 = getelementptr inbounds %struct.hostif_phy_information_request, ptr %call7.i.i.i.i160.i, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %spec.select269.i, ptr %101, align 2
  %psstatus.i.i.i164.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i165.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i164.i, i32 noundef 4) #11
  %103 = ptrtoint ptr %psstatus.i.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %psstatus.i.i.i164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp.i.i.i166.i = icmp sgt i32 %104, 1
  br i1 %cmp.i.i.i166.i, label %if.then.i.i.i169.i, label %if.end.i163.i.send_request_to_device.exit.i171.i_crit_edge

if.end.i163.i.send_request_to_device.exit.i171.i_crit_edge: ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i171.i

if.then.i.i.i169.i:                               ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i167.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i168.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i167.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i167.i, i32 1, i32 3, i32 1) #11
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i167.i, ptr %confirm_wait.i.i.i167.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i167.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i171.i

send_request_to_device.exit.i171.i:               ; preds = %if.then.i.i.i169.i, %if.end.i163.i.send_request_to_device.exit.i171.i_crit_edge
  %call.i.i170.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i160.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

sw.bb6.i:                                         ; preds = %if.end3
  %mic_failure.i = getelementptr i8, ptr %t, i32 15700
  %106 = ptrtoint ptr %mic_failure.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %mic_failure.i, align 4
  %.off.i = add i16 %107, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.end15.i, label %if.then13.i

if.then13.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %107 to i32
  %net_dev.i = getelementptr i8, ptr %t, i32 -92644
  %108 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %109, ptr noundef nonnull @.str.62, i32 noundef %conv.i) #14
  br label %hostif_sme_execute.exit

if.end15.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %107)
  %cmp19.i = icmp eq i16 %107, 1
  br i1 %cmp19.i, label %if.end15.i.cond.end.i_crit_edge, label %cond.false.i

if.end15.i.cond.end.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %counter.i = getelementptr i8, ptr %t, i32 15702
  %110 = ptrtoint ptr %counter.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %counter.i, align 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end15.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %111, %cond.false.i ], [ 0, %if.end15.i.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i172.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i173.i = icmp eq ptr %call7.i.i.i.i172.i, null
  br i1 %tobool.not.i.i173.i, label %cond.end.i.hostif_sme_execute.exit_crit_edge, label %if.end.i178.i

cond.end.i.hostif_sme_execute.exit_crit_edge:     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i178.i:                                    ; preds = %cond.end.i
  %113 = ptrtoint ptr %call7.i.i.i.i172.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1536, ptr %call7.i.i.i.i172.i, align 8
  %event4.i.i174.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i172.i, i32 0, i32 1
  %114 = ptrtoint ptr %event4.i.i174.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 3040, ptr %event4.i.i174.i, align 2
  %115 = tail call i16 @llvm.bswap.i16(i16 %.off.i) #11
  %failure_count1.i.i = getelementptr inbounds %struct.hostif_mic_failure_request, ptr %call7.i.i.i.i172.i, i32 0, i32 1
  %116 = ptrtoint ptr %failure_count1.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %failure_count1.i.i, align 4
  %117 = tail call i16 @llvm.bswap.i16(i16 %cond.i) #11
  %timer2.i.i = getelementptr inbounds %struct.hostif_mic_failure_request, ptr %call7.i.i.i.i172.i, i32 0, i32 2
  %118 = ptrtoint ptr %timer2.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %timer2.i.i, align 2
  %psstatus.i.i.i175.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i176.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i175.i, i32 noundef 4) #11
  %119 = ptrtoint ptr %psstatus.i.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %psstatus.i.i.i175.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp.i.i.i177.i = icmp sgt i32 %120, 1
  br i1 %cmp.i.i.i177.i, label %if.then.i.i.i181.i, label %if.end.i178.i.send_request_to_device.exit.i183.i_crit_edge

if.end.i178.i.send_request_to_device.exit.i183.i_crit_edge: ; preds = %if.end.i178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i183.i

if.then.i.i.i181.i:                               ; preds = %if.end.i178.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i179.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i180.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i179.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i179.i, i32 1, i32 3, i32 1) #11
  %121 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i179.i, ptr %confirm_wait.i.i.i179.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i179.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i183.i

send_request_to_device.exit.i183.i:               ; preds = %if.then.i.i.i181.i, %if.end.i178.i.send_request_to_device.exit.i183.i_crit_edge
  %call.i.i182.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i172.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

sw.bb25.i:                                        ; preds = %if.end3
  %mic_failure27.i = getelementptr i8, ptr %t, i32 15700
  %122 = ptrtoint ptr %mic_failure27.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %mic_failure27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %123)
  %cmp30.i = icmp eq i16 %123, 2
  br i1 %cmp30.i, label %if.then32.i, label %sw.bb25.i.hostif_sme_execute.exit_crit_edge

sw.bb25.i.hostif_sme_execute.exit_crit_edge:      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.then32.i:                                      ; preds = %sw.bb25.i
  %stop.i = getelementptr i8, ptr %t, i32 15708
  %124 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %stop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i = icmp eq i32 %125, 0
  br i1 %tobool.not.i, label %if.then32.i.if.end39.i_crit_edge, label %if.then35.i

if.then32.i.if.end39.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

if.then35.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %stop.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %if.then32.i.if.end39.i_crit_edge
  %127 = ptrtoint ptr %mic_failure27.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %mic_failure27.i, align 4
  %reg43.i = getelementptr i8, ptr %t, i32 15980
  %128 = ptrtoint ptr %reg43.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %reg43.i, align 4
  tail call fastcc void @hostif_start_request(ptr noundef %add.ptr, i8 noundef zeroext %129) #11
  br label %hostif_sme_execute.exit

sw.bb45.i:                                        ; preds = %if.end3
  %130 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp47.i = icmp eq i32 %131, 2
  br i1 %cmp47.i, label %if.then49.i, label %sw.bb45.i.hostif_sme_execute.exit_crit_edge

sw.bb45.i.hostif_sme_execute.exit_crit_edge:      ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.then49.i:                                      ; preds = %sw.bb45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %132 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %132, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i25 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i25, label %if.then49.i.hostif_sme_execute.exit_crit_edge, label %if.end.i

if.then49.i.hostif_sme_execute.exit_crit_edge:    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i:                                         ; preds = %if.then49.i
  %133 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 1536, ptr %call7.i.i.i.i, align 8
  %event4.i.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %event4.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 736, ptr %event4.i.i, align 2
  %mib_attribute1.i = getelementptr inbounds %struct.hostif_mib_get_request, ptr %call7.i.i.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %mib_attribute1.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 4260401, ptr %mib_attribute1.i, align 4
  %psstatus.i.i.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i, i32 noundef 4) #11
  %136 = ptrtoint ptr %psstatus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %psstatus.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp.i.i.i = icmp sgt i32 %137, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i27, label %if.end.i.send_request_to_device.exit.i_crit_edge

if.end.i.send_request_to_device.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i

if.then.i.i.i27:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i, i32 1, i32 3, i32 1) #11
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i, ptr %confirm_wait.i.i.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i

send_request_to_device.exit.i:                    ; preds = %if.then.i.i.i27, %if.end.i.send_request_to_device.exit.i_crit_edge
  %call.i.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

sw.bb51.i:                                        ; preds = %if.end3
  %139 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %140)
  %cmp53.i = icmp eq i32 %140, 2
  br i1 %cmp53.i, label %if.then55.i, label %sw.bb51.i.hostif_sme_execute.exit_crit_edge

sw.bb51.i.hostif_sme_execute.exit_crit_edge:      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.then55.i:                                      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #13
  %141 = ptrtoint ptr %dev_state to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 3, ptr %dev_state, align 4
  br label %hostif_sme_execute.exit

sw.bb58.i:                                        ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %142 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i184.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i185.i = icmp eq ptr %call7.i.i.i.i184.i, null
  br i1 %tobool.not.i.i185.i, label %sw.bb58.i.hostif_sme_execute.exit_crit_edge, label %if.end.i190.i

sw.bb58.i.hostif_sme_execute.exit_crit_edge:      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i190.i:                                    ; preds = %sw.bb58.i
  %143 = ptrtoint ptr %call7.i.i.i.i184.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 512, ptr %call7.i.i.i.i184.i, align 8
  %event4.i.i186.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i184.i, i32 0, i32 1
  %144 = ptrtoint ptr %event4.i.i186.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 1760, ptr %event4.i.i186.i, align 2
  %psstatus.i.i.i187.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i188.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i187.i, i32 noundef 4) #11
  %145 = ptrtoint ptr %psstatus.i.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %psstatus.i.i.i187.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp.i.i.i189.i = icmp sgt i32 %146, 1
  br i1 %cmp.i.i.i189.i, label %if.then.i.i.i193.i, label %if.end.i190.i.send_request_to_device.exit.i195.i_crit_edge

if.end.i190.i.send_request_to_device.exit.i195.i_crit_edge: ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i195.i

if.then.i.i.i193.i:                               ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i191.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i192.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i191.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i191.i, i32 1, i32 3, i32 1) #11
  %147 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i191.i, ptr %confirm_wait.i.i.i191.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i191.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i195.i

send_request_to_device.exit.i195.i:               ; preds = %if.then.i.i.i193.i, %if.end.i190.i.send_request_to_device.exit.i195.i_crit_edge
  %call.i.i194.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i184.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

sw.bb59.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %rts.i = getelementptr i8, ptr %t, i32 16052
  %148 = ptrtoint ptr %rts.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rts.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #11
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #11
  %151 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %v.i.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 553779456, i32 noundef 1, ptr noundef nonnull %v.i.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb61.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %fragment.i = getelementptr i8, ptr %t, i32 16056
  %152 = ptrtoint ptr %fragment.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %fragment.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i196.i) #11
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #11
  %155 = ptrtoint ptr %v.i196.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %v.i196.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 553976064, i32 noundef 1, ptr noundef nonnull %v.i196.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i196.i) #11
  br label %hostif_sme_execute.exit

sw.bb.i.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %wep_index.i.i = getelementptr i8, ptr %t, i32 16064
  %156 = ptrtoint ptr %wep_index.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %wep_index.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i197.i) #11
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #11
  %159 = ptrtoint ptr %v.i.i197.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %v.i.i197.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 352452864, i32 noundef 1, ptr noundef nonnull %v.i.i197.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i197.i) #11
  br label %hostif_sme_execute.exit

sw.bb1.i.i:                                       ; preds = %if.end3
  %wpa.i.i = getelementptr i8, ptr %t, i32 15148
  %160 = ptrtoint ptr %wpa.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %wpa.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i198.i = icmp eq i32 %161, 0
  br i1 %tobool.not.i198.i, label %if.end.i200.i, label %sw.bb1.i.i.hostif_sme_execute.exit_crit_edge

sw.bb1.i.i.hostif_sme_execute.exit_crit_edge:     ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i200.i:                                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %wep_key.i.i = getelementptr i8, ptr %t, i32 16068
  %val.i.i = getelementptr i8, ptr %t, i32 16069
  %162 = ptrtoint ptr %wep_key.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %wep_key.i.i, align 4
  %conv.i199.i = zext i8 %163 to i32
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 318898433, i32 noundef 4, ptr noundef %val.i.i, i32 noundef %conv.i199.i) #11
  br label %hostif_sme_execute.exit

sw.bb7.i.i:                                       ; preds = %if.end3
  %wpa8.i.i = getelementptr i8, ptr %t, i32 15148
  %164 = ptrtoint ptr %wpa8.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %wpa8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool10.not.i.i = icmp eq i32 %165, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %sw.bb7.i.i.hostif_sme_execute.exit_crit_edge

sw.bb7.i.i.hostif_sme_execute.exit_crit_edge:     ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end12.i.i:                                     ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i.i = getelementptr i8, ptr %t, i32 16096
  %val16.i.i = getelementptr i8, ptr %t, i32 16097
  %166 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx15.i.i, align 4
  %conv22.i.i = zext i8 %167 to i32
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 318898434, i32 noundef 4, ptr noundef %val16.i.i, i32 noundef %conv22.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb23.i.i:                                      ; preds = %if.end3
  %wpa24.i.i = getelementptr i8, ptr %t, i32 15148
  %168 = ptrtoint ptr %wpa24.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %wpa24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool26.not.i.i = icmp eq i32 %169, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %sw.bb23.i.i.hostif_sme_execute.exit_crit_edge

sw.bb23.i.i.hostif_sme_execute.exit_crit_edge:    ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end28.i.i:                                     ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx31.i201.i = getelementptr i8, ptr %t, i32 16124
  %val32.i.i = getelementptr i8, ptr %t, i32 16125
  %170 = ptrtoint ptr %arrayidx31.i201.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx31.i201.i, align 4
  %conv38.i.i = zext i8 %171 to i32
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 318898435, i32 noundef 4, ptr noundef %val32.i.i, i32 noundef %conv38.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb39.i.i:                                      ; preds = %if.end3
  %wpa40.i.i = getelementptr i8, ptr %t, i32 15148
  %172 = ptrtoint ptr %wpa40.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %wpa40.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool42.not.i.i = icmp eq i32 %173, 0
  br i1 %tobool42.not.i.i, label %if.end44.i.i, label %sw.bb39.i.i.hostif_sme_execute.exit_crit_edge

sw.bb39.i.i.hostif_sme_execute.exit_crit_edge:    ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end44.i.i:                                     ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx47.i.i = getelementptr i8, ptr %t, i32 16152
  %val48.i.i = getelementptr i8, ptr %t, i32 16153
  %174 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx47.i.i, align 4
  %conv54.i.i = zext i8 %175 to i32
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 318898436, i32 noundef 4, ptr noundef %val48.i.i, i32 noundef %conv54.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb55.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %privacy_invoked.i.i = getelementptr i8, ptr %t, i32 16060
  %176 = ptrtoint ptr %privacy_invoked.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %privacy_invoked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool57.not.i.i = icmp eq i32 %177, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i77.i.i) #11
  %178 = select i1 %tobool57.not.i.i, i32 0, i32 16777216
  %179 = ptrtoint ptr %v.i77.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %v.i77.i.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 352387328, i32 noundef 2, ptr noundef nonnull %v.i77.i.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i77.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb64.i:                                        ; preds = %if.end3.sw.bb64.i_crit_edge, %if.end3.sw.bb64.i_crit_edge42, %if.end3.sw.bb64.i_crit_edge43, %if.end3.sw.bb64.i_crit_edge44, %if.end3.sw.bb64.i_crit_edge45
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %wpa_suite.i.i) #11
  %180 = getelementptr inbounds %struct.wpa_suite, ptr %wpa_suite.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rsn_mode.i.i) #11
  %181 = call ptr @memset(ptr %wpa_suite.i.i, i32 0, i32 18)
  %182 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %10, label %sw.bb64.i.hostif_sme_set_rsn.exit.i_crit_edge [
    i32 29, label %sw.bb.i203.i
    i32 30, label %sw.bb26.i.i
    i32 31, label %sw.bb68.i.i
    i32 32, label %sw.bb106.i.i
    i32 33, label %sw.bb109.i.i
  ]

sw.bb64.i.hostif_sme_set_rsn.exit.i_crit_edge:    ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_rsn.exit.i

sw.bb.i203.i:                                     ; preds = %sw.bb64.i
  %183 = ptrtoint ptr %wpa_suite.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 256, ptr %wpa_suite.i.i, align 2
  %pairwise_suite.i.i = getelementptr i8, ptr %t, i32 15160
  %184 = ptrtoint ptr %pairwise_suite.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pairwise_suite.i.i, align 4
  %186 = zext i32 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %185, label %sw.bb.i203.i.if.end.i206.i_crit_edge [
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb4.i.i
    i32 4, label %sw.bb9.i.i
    i32 8, label %sw.bb14.i.i
    i32 16, label %sw.bb19.i.i
  ]

sw.bb.i203.i.if.end.i206.i_crit_edge:             ; preds = %sw.bb.i203.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i206.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i203.i
  call void @__sanitizer_cov_trace_pc() #13
  %version.i.i = getelementptr i8, ptr %t, i32 15156
  %187 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %188)
  %cmp.i204.i = icmp eq i32 %188, 4
  %cond.i.i = select i1 %cmp.i204.i, ptr @.str.63, ptr @.str.64
  br label %if.then.i205.i

sw.bb4.i.i:                                       ; preds = %sw.bb.i203.i
  call void @__sanitizer_cov_trace_pc() #13
  %version6.i.i = getelementptr i8, ptr %t, i32 15156
  %189 = ptrtoint ptr %version6.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %version6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %190)
  %cmp7.i.i = icmp eq i32 %190, 4
  %cond8.i.i = select i1 %cmp7.i.i, ptr @.str.65, ptr @.str.55
  br label %if.then.i205.i

sw.bb9.i.i:                                       ; preds = %sw.bb.i203.i
  call void @__sanitizer_cov_trace_pc() #13
  %version11.i.i = getelementptr i8, ptr %t, i32 15156
  %191 = ptrtoint ptr %version11.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %version11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %192)
  %cmp12.i.i = icmp eq i32 %192, 4
  %cond13.i.i = select i1 %cmp12.i.i, ptr @.str.66, ptr @.str.67
  br label %if.then.i205.i

sw.bb14.i.i:                                      ; preds = %sw.bb.i203.i
  call void @__sanitizer_cov_trace_pc() #13
  %version16.i.i = getelementptr i8, ptr %t, i32 15156
  %193 = ptrtoint ptr %version16.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %version16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %194)
  %cmp17.i.i = icmp eq i32 %194, 4
  %cond18.i.i = select i1 %cmp17.i.i, ptr @.str.68, ptr @.str.69
  br label %if.then.i205.i

sw.bb19.i.i:                                      ; preds = %sw.bb.i203.i
  call void @__sanitizer_cov_trace_pc() #13
  %version21.i.i = getelementptr i8, ptr %t, i32 15156
  %195 = ptrtoint ptr %version21.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %version21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %196)
  %cmp22.i.i = icmp eq i32 %196, 4
  %cond23.i.i = select i1 %cmp22.i.i, ptr @.str.70, ptr @.str.71
  br label %if.then.i205.i

if.then.i205.i:                                   ; preds = %sw.bb19.i.i, %sw.bb14.i.i, %sw.bb9.i.i, %sw.bb4.i.i, %sw.bb2.i.i
  %buf.0.ph.i.i = phi ptr [ %cond.i.i, %sw.bb2.i.i ], [ %cond8.i.i, %sw.bb4.i.i ], [ %cond13.i.i, %sw.bb9.i.i ], [ %cond18.i.i, %sw.bb14.i.i ], [ %cond23.i.i, %sw.bb19.i.i ]
  %197 = ptrtoint ptr %buf.0.ph.i.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %buf.0.ph.i.i, align 1
  %199 = ptrtoint ptr %180 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %198, ptr %180, align 2
  br label %if.end.i206.i

if.end.i206.i:                                    ; preds = %if.then.i205.i, %sw.bb.i203.i.if.end.i206.i_crit_edge
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 1375863040, i32 noundef 4, ptr noundef nonnull %wpa_suite.i.i, i32 noundef 6) #11
  br label %hostif_sme_set_rsn.exit.i

sw.bb26.i.i:                                      ; preds = %sw.bb64.i
  %group_suite.i.i = getelementptr i8, ptr %t, i32 15164
  %200 = ptrtoint ptr %group_suite.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %group_suite.i.i, align 4
  %202 = zext i32 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %201, label %sw.bb26.i.i.if.end64.i.i_crit_edge [
    i32 1, label %sw.bb28.i.i
    i32 2, label %sw.bb34.i.i
    i32 4, label %sw.bb40.i.i
    i32 8, label %sw.bb46.i.i
    i32 16, label %sw.bb52.i.i
  ]

sw.bb26.i.i.if.end64.i.i_crit_edge:               ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i.i

sw.bb28.i.i:                                      ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version30.i.i = getelementptr i8, ptr %t, i32 15156
  %203 = ptrtoint ptr %version30.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %version30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %204)
  %cmp31.i.i = icmp eq i32 %204, 4
  %cond33.i.i = select i1 %cmp31.i.i, ptr @.str.63, ptr @.str.64
  br label %if.then60.i.i

sw.bb34.i.i:                                      ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version36.i.i = getelementptr i8, ptr %t, i32 15156
  %205 = ptrtoint ptr %version36.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %version36.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %206)
  %cmp37.i.i = icmp eq i32 %206, 4
  %cond39.i.i = select i1 %cmp37.i.i, ptr @.str.65, ptr @.str.55
  br label %if.then60.i.i

sw.bb40.i.i:                                      ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version42.i.i = getelementptr i8, ptr %t, i32 15156
  %207 = ptrtoint ptr %version42.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %version42.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %208)
  %cmp43.i.i = icmp eq i32 %208, 4
  %cond45.i.i = select i1 %cmp43.i.i, ptr @.str.66, ptr @.str.67
  br label %if.then60.i.i

sw.bb46.i.i:                                      ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version48.i.i = getelementptr i8, ptr %t, i32 15156
  %209 = ptrtoint ptr %version48.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %version48.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %210)
  %cmp49.i.i = icmp eq i32 %210, 4
  %cond51.i.i = select i1 %cmp49.i.i, ptr @.str.68, ptr @.str.69
  br label %if.then60.i.i

sw.bb52.i.i:                                      ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version54.i.i = getelementptr i8, ptr %t, i32 15156
  %211 = ptrtoint ptr %version54.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %version54.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %212)
  %cmp55.i.i = icmp eq i32 %212, 4
  %cond57.i.i = select i1 %cmp55.i.i, ptr @.str.70, ptr @.str.71
  br label %if.then60.i.i

if.then60.i.i:                                    ; preds = %sw.bb52.i.i, %sw.bb46.i.i, %sw.bb40.i.i, %sw.bb34.i.i, %sw.bb28.i.i
  %buf.1.ph.i.i = phi ptr [ %cond33.i.i, %sw.bb28.i.i ], [ %cond39.i.i, %sw.bb34.i.i ], [ %cond45.i.i, %sw.bb40.i.i ], [ %cond51.i.i, %sw.bb46.i.i ], [ %cond57.i.i, %sw.bb52.i.i ]
  %213 = ptrtoint ptr %buf.1.ph.i.i to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %buf.1.ph.i.i, align 1
  %215 = ptrtoint ptr %180 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 4)
  store i32 %214, ptr %180, align 2
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.then60.i.i, %sw.bb26.i.i.if.end64.i.i_crit_edge
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 1359216896, i32 noundef 4, ptr noundef %180, i32 noundef 4) #11
  br label %hostif_sme_set_rsn.exit.i

sw.bb68.i.i:                                      ; preds = %sw.bb64.i
  %216 = ptrtoint ptr %wpa_suite.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 256, ptr %wpa_suite.i.i, align 2
  %key_mgmt_suite.i.i = getelementptr i8, ptr %t, i32 15168
  %217 = ptrtoint ptr %key_mgmt_suite.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %key_mgmt_suite.i.i, align 4
  %219 = zext i32 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %218, label %sw.bb68.i.i.if.end101.i.i_crit_edge [
    i32 1, label %sw.bb71.i.i
    i32 2, label %sw.bb77.i.i
    i32 0, label %sw.bb83.i.i
    i32 4, label %sw.bb89.i.i
  ]

sw.bb68.i.i.if.end101.i.i_crit_edge:              ; preds = %sw.bb68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101.i.i

sw.bb71.i.i:                                      ; preds = %sw.bb68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version73.i.i = getelementptr i8, ptr %t, i32 15156
  %220 = ptrtoint ptr %version73.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %version73.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %221)
  %cmp74.i.i = icmp eq i32 %221, 4
  %cond76.i.i = select i1 %cmp74.i.i, ptr @.str.65, ptr @.str.55
  br label %if.then97.i.i

sw.bb77.i.i:                                      ; preds = %sw.bb68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version79.i.i = getelementptr i8, ptr %t, i32 15156
  %222 = ptrtoint ptr %version79.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %version79.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %223)
  %cmp80.i.i = icmp eq i32 %223, 4
  %cond82.i.i = select i1 %cmp80.i.i, ptr @.str.66, ptr @.str.67
  br label %if.then97.i.i

sw.bb83.i.i:                                      ; preds = %sw.bb68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version85.i.i = getelementptr i8, ptr %t, i32 15156
  %224 = ptrtoint ptr %version85.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %version85.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %225)
  %cmp86.i.i = icmp eq i32 %225, 4
  %cond88.i.i = select i1 %cmp86.i.i, ptr @.str.63, ptr @.str.64
  br label %if.then97.i.i

sw.bb89.i.i:                                      ; preds = %sw.bb68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %version91.i.i = getelementptr i8, ptr %t, i32 15156
  %226 = ptrtoint ptr %version91.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %version91.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %227)
  %cmp92.i.i = icmp eq i32 %227, 4
  %cond94.i.i = select i1 %cmp92.i.i, ptr @.str.72, ptr @.str.73
  br label %if.then97.i.i

if.then97.i.i:                                    ; preds = %sw.bb89.i.i, %sw.bb83.i.i, %sw.bb77.i.i, %sw.bb71.i.i
  %buf.2.ph.i.i = phi ptr [ %cond76.i.i, %sw.bb71.i.i ], [ %cond82.i.i, %sw.bb77.i.i ], [ %cond88.i.i, %sw.bb83.i.i ], [ %cond94.i.i, %sw.bb89.i.i ]
  %228 = ptrtoint ptr %buf.2.ph.i.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %buf.2.ph.i.i, align 1
  %230 = ptrtoint ptr %180 to i32
  call void @__asan_storeN_noabort(i32 %230, i32 4)
  store i32 %229, ptr %180, align 2
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.then97.i.i, %sw.bb68.i.i.if.end101.i.i_crit_edge
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 1392640256, i32 noundef 4, ptr noundef nonnull %wpa_suite.i.i, i32 noundef 6) #11
  br label %hostif_sme_set_rsn.exit.i

sw.bb106.i.i:                                     ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #13
  %rsn_enabled.i.i = getelementptr i8, ptr %t, i32 15152
  %231 = ptrtoint ptr %rsn_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %rsn_enabled.i.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool108.not.i.i = icmp eq i8 %232, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i202.i) #11
  %233 = select i1 %tobool108.not.i.i, i32 0, i32 16777216
  %234 = ptrtoint ptr %v.i.i202.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %v.i.i202.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 352780544, i32 noundef 2, ptr noundef nonnull %v.i.i202.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i202.i) #11
  br label %hostif_sme_set_rsn.exit.i

sw.bb109.i.i:                                     ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #13
  %235 = getelementptr inbounds %struct.rsn_mode, ptr %rsn_mode.i.i, i32 0, i32 1
  %version111.i.i = getelementptr i8, ptr %t, i32 15156
  %236 = ptrtoint ptr %version111.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %version111.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %237)
  %cmp112.i.i = icmp eq i32 %237, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %237)
  %cmp116.i.i = icmp eq i32 %237, 2
  %phi.bo.i207.i = select i1 %cmp116.i.i, i32 16777216, i32 0
  %cond119.i.i = select i1 %cmp112.i.i, i32 33554432, i32 %phi.bo.i207.i
  %238 = ptrtoint ptr %rsn_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %cond119.i.i, ptr %rsn_mode.i.i, align 4
  %239 = ptrtoint ptr %235 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 0, ptr %235, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 1442906368, i32 noundef 4, ptr noundef nonnull %rsn_mode.i.i, i32 noundef 6) #11
  br label %hostif_sme_set_rsn.exit.i

hostif_sme_set_rsn.exit.i:                        ; preds = %sw.bb109.i.i, %sw.bb106.i.i, %if.end101.i.i, %if.end64.i.i, %if.end.i206.i, %sw.bb64.i.hostif_sme_set_rsn.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rsn_mode.i.i) #11
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %wpa_suite.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb.i211.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %privacy_invoked.i209.i = getelementptr i8, ptr %t, i32 16060
  %240 = ptrtoint ptr %privacy_invoked.i209.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %privacy_invoked.i209.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not.i210.i = icmp eq i32 %241, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i208.i) #11
  %242 = select i1 %tobool.not.i210.i, i32 0, i32 16777216
  %243 = ptrtoint ptr %v.i.i208.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %v.i.i208.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 352387328, i32 noundef 2, ptr noundef nonnull %v.i.i208.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i208.i) #11
  br label %hostif_sme_execute.exit

sw.bb1.i212.i:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %txkey.i.i = getelementptr i8, ptr %t, i32 15176
  %244 = ptrtoint ptr %txkey.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %txkey.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i79.i.i) #11
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #11
  %247 = ptrtoint ptr %v.i79.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %v.i79.i.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 352452864, i32 noundef 1, ptr noundef nonnull %v.i79.i.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i79.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb2.i214.i:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %key_val.i.i = getelementptr i8, ptr %t, i32 15220
  %key_len.i.i = getelementptr i8, ptr %t, i32 15218
  %248 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %key_len.i.i, align 2
  %conv.i213.i = zext i16 %249 to i32
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 318898433, i32 noundef 4, ptr noundef %key_val.i.i, i32 noundef %conv.i213.i) #11
  br label %hostif_sme_execute.exit

sw.bb8.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %key_val12.i.i = getelementptr i8, ptr %t, i32 15340
  %key_len17.i.i = getelementptr i8, ptr %t, i32 15338
  %250 = ptrtoint ptr %key_len17.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %key_len17.i.i, align 2
  %conv18.i.i = zext i16 %251 to i32
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 318898434, i32 noundef 4, ptr noundef %key_val12.i.i, i32 noundef %conv18.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb19.i215.i:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %key_val23.i.i = getelementptr i8, ptr %t, i32 15460
  %key_len28.i.i = getelementptr i8, ptr %t, i32 15458
  %252 = ptrtoint ptr %key_len28.i.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %key_len28.i.i, align 2
  %conv29.i.i = zext i16 %253 to i32
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 318898435, i32 noundef 4, ptr noundef %key_val23.i.i, i32 noundef %conv29.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb30.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %key_val34.i.i = getelementptr i8, ptr %t, i32 15580
  %key_len39.i.i = getelementptr i8, ptr %t, i32 15578
  %254 = ptrtoint ptr %key_len39.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %key_len39.i.i, align 2
  %conv40.i.i = zext i16 %255 to i32
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 318898436, i32 noundef 4, ptr noundef %key_val34.i.i, i32 noundef %conv40.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb41.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %rx_seq.i.i = getelementptr i8, ptr %t, i32 15192
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 1426129152, i32 noundef 4, ptr noundef %rx_seq.i.i, i32 noundef 6) #11
  br label %hostif_sme_execute.exit

sw.bb46.i216.i:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %rx_seq50.i.i = getelementptr i8, ptr %t, i32 15312
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 1426129153, i32 noundef 4, ptr noundef %rx_seq50.i.i, i32 noundef 6) #11
  br label %hostif_sme_execute.exit

sw.bb52.i217.i:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %rx_seq56.i.i = getelementptr i8, ptr %t, i32 15432
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 1426129154, i32 noundef 4, ptr noundef %rx_seq56.i.i, i32 noundef 6) #11
  br label %hostif_sme_execute.exit

sw.bb66.i:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 178, ptr nonnull %pmkcache.i.i) #11
  %256 = getelementptr inbounds i8, ptr %pmkcache.i.i, i32 2
  %257 = call ptr @memset(ptr %256, i32 255, i32 176)
  %head.i.i = getelementptr i8, ptr %t, i32 15716
  %258 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %pmk.032.i.i = load ptr, ptr %head.i.i, align 4
  %cmp.not33.i.i = icmp eq ptr %pmk.032.i.i, %head.i.i
  br i1 %cmp.not33.i.i, label %sw.bb66.i.hostif_sme_set_pmksa.exit.i_crit_edge, label %if.end.i223.i

sw.bb66.i.hostif_sme_set_pmksa.exit.i_crit_edge:  ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_pmksa.exit.i

if.end.i223.i:                                    ; preds = %sw.bb66.i
  %arrayidx.i218.i = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 0
  %bssid5.i.i = getelementptr inbounds %struct.pmk, ptr %pmk.032.i.i, i32 0, i32 1
  %259 = ptrtoint ptr %bssid5.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %bssid5.i.i, align 4
  %261 = ptrtoint ptr %arrayidx.i218.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %arrayidx.i218.i, align 4
  %add.ptr.i.i219.i = getelementptr %struct.pmk, ptr %pmk.032.i.i, i32 0, i32 1, i32 4
  %262 = ptrtoint ptr %add.ptr.i.i219.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %add.ptr.i.i219.i, align 2
  %add.ptr1.i.i220.i = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %264 = ptrtoint ptr %add.ptr1.i.i220.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %263, ptr %add.ptr1.i.i220.i, align 2
  %pmkid.i.i = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 0, i32 1
  %pmkid10.i.i = getelementptr inbounds %struct.pmk, ptr %pmk.032.i.i, i32 0, i32 2
  %265 = call ptr @memcpy(ptr %pmkid.i.i, ptr %pmkid10.i.i, i32 16)
  %266 = ptrtoint ptr %pmk.032.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %pmk.0.i.i = load ptr, ptr %pmk.032.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pmk.0.i.i, %head.i.i
  br i1 %cmp.not.i.i, label %if.end.i223.i.hostif_sme_set_pmksa.exit.i_crit_edge, label %if.end.i223.i.1

if.end.i223.i.hostif_sme_set_pmksa.exit.i_crit_edge: ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_pmksa.exit.i

if.end.i223.i.1:                                  ; preds = %if.end.i223.i
  %arrayidx.i218.i.1 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 1
  %bssid5.i.i.1 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i, i32 0, i32 1
  %267 = ptrtoint ptr %bssid5.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %bssid5.i.i.1, align 4
  %269 = ptrtoint ptr %arrayidx.i218.i.1 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %arrayidx.i218.i.1, align 4
  %add.ptr.i.i219.i.1 = getelementptr %struct.pmk, ptr %pmk.0.i.i, i32 0, i32 1, i32 4
  %270 = ptrtoint ptr %add.ptr.i.i219.i.1 to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %add.ptr.i.i219.i.1, align 2
  %add.ptr1.i.i220.i.1 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 1, i32 0, i32 4
  %272 = ptrtoint ptr %add.ptr1.i.i220.i.1 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %271, ptr %add.ptr1.i.i220.i.1, align 2
  %pmkid.i.i.1 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 1, i32 1
  %pmkid10.i.i.1 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i, i32 0, i32 2
  %273 = call ptr @memcpy(ptr %pmkid.i.i.1, ptr %pmkid10.i.i.1, i32 16)
  %274 = ptrtoint ptr %pmk.0.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %pmk.0.i.i.1 = load ptr, ptr %pmk.0.i.i, align 4
  %cmp.not.i.i.1 = icmp eq ptr %pmk.0.i.i.1, %head.i.i
  br i1 %cmp.not.i.i.1, label %if.end.i223.i.1.hostif_sme_set_pmksa.exit.i_crit_edge, label %if.end.i223.i.2

if.end.i223.i.1.hostif_sme_set_pmksa.exit.i_crit_edge: ; preds = %if.end.i223.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_pmksa.exit.i

if.end.i223.i.2:                                  ; preds = %if.end.i223.i.1
  %arrayidx.i218.i.2 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 2
  %bssid5.i.i.2 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.1, i32 0, i32 1
  %275 = ptrtoint ptr %bssid5.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %bssid5.i.i.2, align 4
  %277 = ptrtoint ptr %arrayidx.i218.i.2 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %arrayidx.i218.i.2, align 4
  %add.ptr.i.i219.i.2 = getelementptr %struct.pmk, ptr %pmk.0.i.i.1, i32 0, i32 1, i32 4
  %278 = ptrtoint ptr %add.ptr.i.i219.i.2 to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %add.ptr.i.i219.i.2, align 2
  %add.ptr1.i.i220.i.2 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 2, i32 0, i32 4
  %280 = ptrtoint ptr %add.ptr1.i.i220.i.2 to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %279, ptr %add.ptr1.i.i220.i.2, align 2
  %pmkid.i.i.2 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 2, i32 1
  %pmkid10.i.i.2 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.1, i32 0, i32 2
  %281 = call ptr @memcpy(ptr %pmkid.i.i.2, ptr %pmkid10.i.i.2, i32 16)
  %282 = ptrtoint ptr %pmk.0.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %pmk.0.i.i.2 = load ptr, ptr %pmk.0.i.i.1, align 4
  %cmp.not.i.i.2 = icmp eq ptr %pmk.0.i.i.2, %head.i.i
  br i1 %cmp.not.i.i.2, label %if.end.i223.i.2.hostif_sme_set_pmksa.exit.i_crit_edge, label %if.end.i223.i.3

if.end.i223.i.2.hostif_sme_set_pmksa.exit.i_crit_edge: ; preds = %if.end.i223.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_pmksa.exit.i

if.end.i223.i.3:                                  ; preds = %if.end.i223.i.2
  %arrayidx.i218.i.3 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 3
  %bssid5.i.i.3 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.2, i32 0, i32 1
  %283 = ptrtoint ptr %bssid5.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %bssid5.i.i.3, align 4
  %285 = ptrtoint ptr %arrayidx.i218.i.3 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %arrayidx.i218.i.3, align 4
  %add.ptr.i.i219.i.3 = getelementptr %struct.pmk, ptr %pmk.0.i.i.2, i32 0, i32 1, i32 4
  %286 = ptrtoint ptr %add.ptr.i.i219.i.3 to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %add.ptr.i.i219.i.3, align 2
  %add.ptr1.i.i220.i.3 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 3, i32 0, i32 4
  %288 = ptrtoint ptr %add.ptr1.i.i220.i.3 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %287, ptr %add.ptr1.i.i220.i.3, align 2
  %pmkid.i.i.3 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 3, i32 1
  %pmkid10.i.i.3 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.2, i32 0, i32 2
  %289 = call ptr @memcpy(ptr %pmkid.i.i.3, ptr %pmkid10.i.i.3, i32 16)
  %290 = ptrtoint ptr %pmk.0.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %290)
  %pmk.0.i.i.3 = load ptr, ptr %pmk.0.i.i.2, align 4
  %cmp.not.i.i.3 = icmp eq ptr %pmk.0.i.i.3, %head.i.i
  br i1 %cmp.not.i.i.3, label %if.end.i223.i.3.hostif_sme_set_pmksa.exit.i_crit_edge, label %if.end.i223.i.4

if.end.i223.i.3.hostif_sme_set_pmksa.exit.i_crit_edge: ; preds = %if.end.i223.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_pmksa.exit.i

if.end.i223.i.4:                                  ; preds = %if.end.i223.i.3
  %arrayidx.i218.i.4 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 4
  %bssid5.i.i.4 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.3, i32 0, i32 1
  %291 = ptrtoint ptr %bssid5.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %bssid5.i.i.4, align 4
  %293 = ptrtoint ptr %arrayidx.i218.i.4 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %arrayidx.i218.i.4, align 4
  %add.ptr.i.i219.i.4 = getelementptr %struct.pmk, ptr %pmk.0.i.i.3, i32 0, i32 1, i32 4
  %294 = ptrtoint ptr %add.ptr.i.i219.i.4 to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %add.ptr.i.i219.i.4, align 2
  %add.ptr1.i.i220.i.4 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 4, i32 0, i32 4
  %296 = ptrtoint ptr %add.ptr1.i.i220.i.4 to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %295, ptr %add.ptr1.i.i220.i.4, align 2
  %pmkid.i.i.4 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 4, i32 1
  %pmkid10.i.i.4 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.3, i32 0, i32 2
  %297 = call ptr @memcpy(ptr %pmkid.i.i.4, ptr %pmkid10.i.i.4, i32 16)
  %298 = ptrtoint ptr %pmk.0.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %298)
  %pmk.0.i.i.4 = load ptr, ptr %pmk.0.i.i.3, align 4
  %cmp.not.i.i.4 = icmp eq ptr %pmk.0.i.i.4, %head.i.i
  br i1 %cmp.not.i.i.4, label %if.end.i223.i.4.hostif_sme_set_pmksa.exit.i_crit_edge, label %if.end.i223.i.5

if.end.i223.i.4.hostif_sme_set_pmksa.exit.i_crit_edge: ; preds = %if.end.i223.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_pmksa.exit.i

if.end.i223.i.5:                                  ; preds = %if.end.i223.i.4
  %arrayidx.i218.i.5 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 5
  %bssid5.i.i.5 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.4, i32 0, i32 1
  %299 = ptrtoint ptr %bssid5.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %bssid5.i.i.5, align 4
  %301 = ptrtoint ptr %arrayidx.i218.i.5 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %300, ptr %arrayidx.i218.i.5, align 4
  %add.ptr.i.i219.i.5 = getelementptr %struct.pmk, ptr %pmk.0.i.i.4, i32 0, i32 1, i32 4
  %302 = ptrtoint ptr %add.ptr.i.i219.i.5 to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %add.ptr.i.i219.i.5, align 2
  %add.ptr1.i.i220.i.5 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 5, i32 0, i32 4
  %304 = ptrtoint ptr %add.ptr1.i.i220.i.5 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 %303, ptr %add.ptr1.i.i220.i.5, align 2
  %pmkid.i.i.5 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 5, i32 1
  %pmkid10.i.i.5 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.4, i32 0, i32 2
  %305 = call ptr @memcpy(ptr %pmkid.i.i.5, ptr %pmkid10.i.i.5, i32 16)
  %306 = ptrtoint ptr %pmk.0.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %306)
  %pmk.0.i.i.5 = load ptr, ptr %pmk.0.i.i.4, align 4
  %cmp.not.i.i.5 = icmp eq ptr %pmk.0.i.i.5, %head.i.i
  br i1 %cmp.not.i.i.5, label %if.end.i223.i.5.hostif_sme_set_pmksa.exit.i_crit_edge, label %if.end.i223.i.6

if.end.i223.i.5.hostif_sme_set_pmksa.exit.i_crit_edge: ; preds = %if.end.i223.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_pmksa.exit.i

if.end.i223.i.6:                                  ; preds = %if.end.i223.i.5
  %arrayidx.i218.i.6 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 6
  %bssid5.i.i.6 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.5, i32 0, i32 1
  %307 = ptrtoint ptr %bssid5.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %bssid5.i.i.6, align 4
  %309 = ptrtoint ptr %arrayidx.i218.i.6 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %arrayidx.i218.i.6, align 4
  %add.ptr.i.i219.i.6 = getelementptr %struct.pmk, ptr %pmk.0.i.i.5, i32 0, i32 1, i32 4
  %310 = ptrtoint ptr %add.ptr.i.i219.i.6 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %add.ptr.i.i219.i.6, align 2
  %add.ptr1.i.i220.i.6 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 6, i32 0, i32 4
  %312 = ptrtoint ptr %add.ptr1.i.i220.i.6 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 %311, ptr %add.ptr1.i.i220.i.6, align 2
  %pmkid.i.i.6 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 6, i32 1
  %pmkid10.i.i.6 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.5, i32 0, i32 2
  %313 = call ptr @memcpy(ptr %pmkid.i.i.6, ptr %pmkid10.i.i.6, i32 16)
  %314 = ptrtoint ptr %pmk.0.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %314)
  %pmk.0.i.i.6 = load ptr, ptr %pmk.0.i.i.5, align 4
  %cmp.not.i.i.6 = icmp eq ptr %pmk.0.i.i.6, %head.i.i
  br i1 %cmp.not.i.i.6, label %if.end.i223.i.6.hostif_sme_set_pmksa.exit.i_crit_edge, label %if.end.i223.i.7

if.end.i223.i.6.hostif_sme_set_pmksa.exit.i_crit_edge: ; preds = %if.end.i223.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_set_pmksa.exit.i

if.end.i223.i.7:                                  ; preds = %if.end.i223.i.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i218.i.7 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 7
  %bssid5.i.i.7 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.6, i32 0, i32 1
  %315 = ptrtoint ptr %bssid5.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %bssid5.i.i.7, align 4
  %317 = ptrtoint ptr %arrayidx.i218.i.7 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %arrayidx.i218.i.7, align 4
  %add.ptr.i.i219.i.7 = getelementptr %struct.pmk, ptr %pmk.0.i.i.6, i32 0, i32 1, i32 4
  %318 = ptrtoint ptr %add.ptr.i.i219.i.7 to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %add.ptr.i.i219.i.7, align 2
  %add.ptr1.i.i220.i.7 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 7, i32 0, i32 4
  %320 = ptrtoint ptr %add.ptr1.i.i220.i.7 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %319, ptr %add.ptr1.i.i220.i.7, align 2
  %pmkid.i.i.7 = getelementptr inbounds %struct.pmk_cache, ptr %pmkcache.i.i, i32 0, i32 1, i32 7, i32 1
  %pmkid10.i.i.7 = getelementptr inbounds %struct.pmk, ptr %pmk.0.i.i.6, i32 0, i32 2
  %321 = call ptr @memcpy(ptr %pmkid.i.i.7, ptr %pmkid10.i.i.7, i32 16)
  br label %hostif_sme_set_pmksa.exit.i

hostif_sme_set_pmksa.exit.i:                      ; preds = %if.end.i223.i.7, %if.end.i223.i.6.hostif_sme_set_pmksa.exit.i_crit_edge, %if.end.i223.i.5.hostif_sme_set_pmksa.exit.i_crit_edge, %if.end.i223.i.4.hostif_sme_set_pmksa.exit.i_crit_edge, %if.end.i223.i.3.hostif_sme_set_pmksa.exit.i_crit_edge, %if.end.i223.i.2.hostif_sme_set_pmksa.exit.i_crit_edge, %if.end.i223.i.1.hostif_sme_set_pmksa.exit.i_crit_edge, %if.end.i223.i.hostif_sme_set_pmksa.exit.i_crit_edge, %sw.bb66.i.hostif_sme_set_pmksa.exit.i_crit_edge
  %pmklist.i.i = getelementptr i8, ptr %t, i32 15712
  %322 = ptrtoint ptr %pmklist.i.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %pmklist.i.i, align 4
  %324 = tail call i16 @llvm.bswap.i16(i16 %323) #11
  %325 = ptrtoint ptr %pmkcache.i.i to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 %324, ptr %pmkcache.i.i, align 2
  %conv.i224.i = zext i16 %323 to i32
  %mul.i225.i = mul nuw nsw i32 %conv.i224.i, 22
  %add.i.i = add nuw nsw i32 %mul.i225.i, 2
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef 1476460800, i32 noundef 4, ptr noundef nonnull %pmkcache.i.i, i32 noundef %add.i.i) #11
  call void @llvm.lifetime.end.p0(i64 178, ptr nonnull %pmkcache.i.i) #11
  br label %hostif_sme_execute.exit

sw.bb67.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %wps.i = getelementptr i8, ptr %t, i32 16744
  %326 = ptrtoint ptr %wps.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %wps.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i227.i) #11
  %328 = tail call i32 @llvm.bswap.i32(i32 %327) #11
  %329 = ptrtoint ptr %v.i227.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %v.i227.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -250937088, i32 noundef 1, ptr noundef nonnull %v.i227.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i227.i) #11
  br label %hostif_sme_execute.exit

sw.bb68.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %ie.i = getelementptr i8, ptr %t, i32 16752
  %ielen.i = getelementptr i8, ptr %t, i32 16748
  %330 = ptrtoint ptr %ielen.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %ielen.i, align 4
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -250871552, i32 noundef 4, ptr noundef %ie.i, i32 noundef %331) #11
  br label %hostif_sme_execute.exit

sw.bb72.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_sme_mode_setup(ptr noundef %add.ptr) #11
  br label %hostif_sme_execute.exit

sw.bb73.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %gain.i = getelementptr i8, ptr %t, i32 16738
  tail call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -250806016, i32 noundef 4, ptr noundef %gain.i, i32 noundef 4) #11
  br label %hostif_sme_execute.exit

sw.bb74.i:                                        ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %332 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i228.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %332, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i229.i = icmp eq ptr %call7.i.i.i.i228.i, null
  br i1 %tobool.not.i.i229.i, label %sw.bb74.i.hostif_sme_execute.exit_crit_edge, label %if.end.i234.i

sw.bb74.i.hostif_sme_execute.exit_crit_edge:      ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i234.i:                                    ; preds = %sw.bb74.i
  %333 = ptrtoint ptr %call7.i.i.i.i228.i to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 1536, ptr %call7.i.i.i.i228.i, align 8
  %event4.i.i230.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i228.i, i32 0, i32 1
  %334 = ptrtoint ptr %event4.i.i230.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 736, ptr %event4.i.i230.i, align 2
  %mib_attribute1.i.i = getelementptr inbounds %struct.hostif_mib_get_request, ptr %call7.i.i.i.i228.i, i32 0, i32 1
  %335 = ptrtoint ptr %mib_attribute1.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 69105, ptr %mib_attribute1.i.i, align 4
  %psstatus.i.i.i231.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i232.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i231.i, i32 noundef 4) #11
  %336 = ptrtoint ptr %psstatus.i.i.i231.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load volatile i32, ptr %psstatus.i.i.i231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %337)
  %cmp.i.i.i233.i = icmp sgt i32 %337, 1
  br i1 %cmp.i.i.i233.i, label %if.then.i.i.i237.i, label %if.end.i234.i.send_request_to_device.exit.i239.i_crit_edge

if.end.i234.i.send_request_to_device.exit.i239.i_crit_edge: ; preds = %if.end.i234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i239.i

if.then.i.i.i237.i:                               ; preds = %if.end.i234.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i235.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i236.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i235.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i235.i, i32 1, i32 3, i32 1) #11
  %338 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i235.i, ptr %confirm_wait.i.i.i235.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i235.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i239.i

send_request_to_device.exit.i239.i:               ; preds = %if.then.i.i.i237.i, %if.end.i234.i.send_request_to_device.exit.i239.i_crit_edge
  %call.i.i238.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i228.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

sw.bb75.i:                                        ; preds = %if.end3
  %eeprom_checksum.i = getelementptr i8, ptr %t, i32 17012
  %339 = ptrtoint ptr %eeprom_checksum.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 2, ptr %eeprom_checksum.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %340 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i240.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %340, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i241.i = icmp eq ptr %call7.i.i.i.i240.i, null
  br i1 %tobool.not.i.i241.i, label %sw.bb75.i.hostif_sme_execute.exit_crit_edge, label %if.end.i247.i

sw.bb75.i.hostif_sme_execute.exit_crit_edge:      ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i247.i:                                    ; preds = %sw.bb75.i
  %341 = ptrtoint ptr %call7.i.i.i.i240.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 1536, ptr %call7.i.i.i.i240.i, align 8
  %event4.i.i242.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i240.i, i32 0, i32 1
  %342 = ptrtoint ptr %event4.i.i242.i to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 736, ptr %event4.i.i242.i, align 2
  %mib_attribute1.i243.i = getelementptr inbounds %struct.hostif_mib_get_request, ptr %call7.i.i.i.i240.i, i32 0, i32 1
  %343 = ptrtoint ptr %mib_attribute1.i243.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 69361, ptr %mib_attribute1.i243.i, align 4
  %psstatus.i.i.i244.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i245.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i244.i, i32 noundef 4) #11
  %344 = ptrtoint ptr %psstatus.i.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load volatile i32, ptr %psstatus.i.i.i244.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %345)
  %cmp.i.i.i246.i = icmp sgt i32 %345, 1
  br i1 %cmp.i.i.i246.i, label %if.then.i.i.i250.i, label %if.end.i247.i.send_request_to_device.exit.i252.i_crit_edge

if.end.i247.i.send_request_to_device.exit.i252.i_crit_edge: ; preds = %if.end.i247.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i252.i

if.then.i.i.i250.i:                               ; preds = %if.end.i247.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i248.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i249.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i248.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i248.i, i32 1, i32 3, i32 1) #11
  %346 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i248.i, ptr %confirm_wait.i.i.i248.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i248.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i252.i

send_request_to_device.exit.i252.i:               ; preds = %if.then.i.i.i250.i, %if.end.i247.i.send_request_to_device.exit.i252.i_crit_edge
  %call.i.i251.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i240.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

sw.bb76.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %reg77.i = getelementptr i8, ptr %t, i32 15980
  %347 = ptrtoint ptr %reg77.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %reg77.i, align 4
  tail call fastcc void @hostif_start_request(ptr noundef %add.ptr, i8 noundef zeroext %348) #11
  br label %hostif_sme_execute.exit

sw.bb79.i:                                        ; preds = %if.end3
  %snooze_guard.i = getelementptr i8, ptr %t, i32 15132
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snooze_guard.i, i32 noundef 4) #11
  %349 = ptrtoint ptr %snooze_guard.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store volatile i32 0, ptr %snooze_guard.i, align 4
  %confirm_wait.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i153.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i, i32 noundef 4) #11
  %350 = ptrtoint ptr %confirm_wait.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store volatile i32 0, ptr %confirm_wait.i, align 4
  %351 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %352)
  %cmp82.i = icmp eq i32 %352, 3
  br i1 %cmp82.i, label %if.then84.i, label %sw.bb79.i.if.end86.i_crit_edge

sw.bb79.i.if.end86.i_crit_edge:                   ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86.i

if.then84.i:                                      ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #13
  %353 = ptrtoint ptr %dev_state to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 4, ptr %dev_state, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then84.i, %sw.bb79.i.if.end86.i_crit_edge
  %confirm_wait87.i = getelementptr i8, ptr %t, i32 -92516
  tail call void @complete(ptr noundef %confirm_wait87.i) #11
  br label %hostif_sme_execute.exit

sw.bb88.i:                                        ; preds = %if.end3
  %sleep_mode.i.i = getelementptr i8, ptr %t, i32 17008
  %354 = ptrtoint ptr %sleep_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %sleep_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %355)
  %switch.i254.i = icmp ult i8 %355, 2
  br i1 %switch.i254.i, label %if.end.i255.i, label %sw.bb88.i.hostif_sme_execute.exit_crit_edge

sw.bb88.i.hostif_sme_execute.exit_crit_edge:      ; preds = %sw.bb88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i255.i:                                    ; preds = %sw.bb88.i
  %356 = zext i8 %355 to i64
  call void @__sanitizer_cov_trace_switch(i64 %356, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %355, label %if.else6.i.i.i [
    i8 1, label %if.then.i.i.i
    i8 0, label %if.then4.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %if.end.i255.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %357 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i256.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %357, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i.i257.i = icmp eq ptr %call7.i.i.i.i.i256.i, null
  br i1 %tobool.not.i.i.i257.i, label %if.then.i.i.i.hostif_sme_execute.exit_crit_edge, label %if.end.i.i262.i

if.then.i.i.i.hostif_sme_execute.exit_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_sme_execute.exit

if.end.i.i262.i:                                  ; preds = %if.then.i.i.i
  %358 = ptrtoint ptr %call7.i.i.i.i.i256.i to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 512, ptr %call7.i.i.i.i.i256.i, align 8
  %event4.i.i.i258.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i.i256.i, i32 0, i32 1
  %359 = ptrtoint ptr %event4.i.i.i258.i to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 3808, ptr %event4.i.i.i258.i, align 2
  %psstatus.i.i.i.i259.i = getelementptr i8, ptr %t, i32 15068
  %call.i.i.i.i.i.i260.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i.i259.i, i32 noundef 4) #11
  %360 = ptrtoint ptr %psstatus.i.i.i.i259.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load volatile i32, ptr %psstatus.i.i.i.i259.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %361)
  %cmp.i.i.i.i261.i = icmp sgt i32 %361, 1
  br i1 %cmp.i.i.i.i261.i, label %if.then.i.i.i.i265.i, label %if.end.i.i262.i.send_request_to_device.exit.i.i267.i_crit_edge

if.end.i.i262.i.send_request_to_device.exit.i.i267.i_crit_edge: ; preds = %if.end.i.i262.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i.i267.i

if.then.i.i.i.i265.i:                             ; preds = %if.end.i.i262.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i.i263.i = getelementptr i8, ptr %t, i32 15128
  %call.i.i3.i.i.i.i264.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i.i263.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i.i263.i, i32 1, i32 3, i32 1) #11
  %362 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i.i263.i, ptr %confirm_wait.i.i.i.i263.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i.i263.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i.i267.i

send_request_to_device.exit.i.i267.i:             ; preds = %if.then.i.i.i.i265.i, %if.end.i.i262.i.send_request_to_device.exit.i.i267.i_crit_edge
  %call.i.i.i266.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i.i256.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %hostif_sme_execute.exit

if.then4.i.i.i:                                   ; preds = %if.end.i255.i
  call void @__sanitizer_cov_trace_pc() #13
  %wakeup_request.i.i.i = getelementptr i8, ptr %t, i32 15144
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup_request.i.i.i, i32 noundef 4) #11
  %363 = ptrtoint ptr %wakeup_request.i.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store volatile i32 1, ptr %wakeup_request.i.i.i, align 4
  %wq.i.i.i = getelementptr i8, ptr %t, i32 -92772
  %364 = ptrtoint ptr %wq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %wq.i.i.i, align 4
  %rw_dwork.i.i.i = getelementptr i8, ptr %t, i32 -92768
  %call.i16.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %365, ptr noundef %rw_dwork.i.i.i, i32 noundef 1) #11
  br label %hostif_sme_execute.exit

if.else6.i.i.i:                                   ; preds = %if.end.i255.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv7.i.i = zext i8 %355 to i32
  %net_dev.i.i.i = getelementptr i8, ptr %t, i32 -92644
  %366 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %net_dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %367, ptr noundef nonnull @.str.77, i32 noundef %conv7.i.i) #14
  br label %hostif_sme_execute.exit

sw.bb89.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %region.i = getelementptr i8, ptr %t, i32 17009
  %368 = ptrtoint ptr %region.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %region.i, align 1
  %conv90.i = zext i8 %369 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i268.i) #11
  %370 = shl nuw i32 %conv90.i, 24
  %371 = ptrtoint ptr %v.i268.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %370, ptr %v.i268.i, align 4
  call fastcc void @hostif_mib_set_request(ptr noundef %add.ptr, i32 noundef -251002624, i32 noundef 1, ptr noundef nonnull %v.i268.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i268.i) #11
  br label %hostif_sme_execute.exit

hostif_sme_execute.exit:                          ; preds = %sw.bb89.i, %if.else6.i.i.i, %if.then4.i.i.i, %send_request_to_device.exit.i.i267.i, %if.then.i.i.i.hostif_sme_execute.exit_crit_edge, %sw.bb88.i.hostif_sme_execute.exit_crit_edge, %if.end86.i, %sw.bb76.i, %send_request_to_device.exit.i252.i, %sw.bb75.i.hostif_sme_execute.exit_crit_edge, %send_request_to_device.exit.i239.i, %sw.bb74.i.hostif_sme_execute.exit_crit_edge, %sw.bb73.i, %sw.bb72.i, %sw.bb68.i, %sw.bb67.i, %hostif_sme_set_pmksa.exit.i, %sw.bb52.i217.i, %sw.bb46.i216.i, %sw.bb41.i.i, %sw.bb30.i.i, %sw.bb19.i215.i, %sw.bb8.i.i, %sw.bb2.i214.i, %sw.bb1.i212.i, %sw.bb.i211.i, %hostif_sme_set_rsn.exit.i, %sw.bb55.i.i, %if.end44.i.i, %sw.bb39.i.i.hostif_sme_execute.exit_crit_edge, %if.end28.i.i, %sw.bb23.i.i.hostif_sme_execute.exit_crit_edge, %if.end12.i.i, %sw.bb7.i.i.hostif_sme_execute.exit_crit_edge, %if.end.i200.i, %sw.bb1.i.i.hostif_sme_execute.exit_crit_edge, %sw.bb.i.i, %sw.bb61.i, %sw.bb59.i, %send_request_to_device.exit.i195.i, %sw.bb58.i.hostif_sme_execute.exit_crit_edge, %if.then55.i, %sw.bb51.i.hostif_sme_execute.exit_crit_edge, %send_request_to_device.exit.i, %if.then49.i.hostif_sme_execute.exit_crit_edge, %sw.bb45.i.hostif_sme_execute.exit_crit_edge, %if.end39.i, %sw.bb25.i.hostif_sme_execute.exit_crit_edge, %send_request_to_device.exit.i183.i, %cond.end.i.hostif_sme_execute.exit_crit_edge, %if.then13.i, %send_request_to_device.exit.i171.i, %sw.bb5.i.hostif_sme_execute.exit_crit_edge, %send_request_to_device.exit.i.i.i, %if.end.i159.i.hostif_sme_execute.exit_crit_edge, %send_request_to_device.exit.i.i, %sw.bb3.i.hostif_sme_execute.exit_crit_edge, %sw.bb2.i, %hostif_sme_multicast_set.exit.i, %send_request_to_device.exit.i40, %if.then.i.hostif_sme_execute.exit_crit_edge, %sw.bb.i.hostif_sme_execute.exit_crit_edge, %if.end3.hostif_sme_execute.exit_crit_edge
  %372 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %qhead.i, align 4
  %add.i17 = add i32 %373, 1
  %rem.i = and i32 %add.i17, 127
  store i32 %rem.i, ptr %qhead.i, align 4
  %374 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %qtail.i, align 4
  %sub.i19 = sub i32 128, %375
  %add.i21 = add i32 %sub.i19, %add.i17
  %and.i22 = and i32 %add.i21, 127
  %376 = tail call i32 @llvm.smin.i32(i32 %and.i22, i32 %sub.i19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %cmp6.not = icmp eq i32 %376, 0
  br i1 %cmp6.not, label %hostif_sme_execute.exit.cleanup_crit_edge, label %if.then7

hostif_sme_execute.exit.cleanup_crit_edge:        ; preds = %hostif_sme_execute.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %hostif_sme_execute.exit
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i23 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i23, label %if.then.i24, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i24:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__tasklet_schedule(ptr noundef %t) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i24, %if.then7.cleanup_crit_edge, %hostif_sme_execute.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_start_request(ptr noundef %priv, i8 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1024, ptr %call7.i.i.i, align 8
  %event4.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %event4.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1504, ptr %event4.i, align 2
  %conv = zext i8 %mode to i16
  %3 = shl nuw i16 %conv, 8
  %mode1 = getelementptr inbounds %struct.hostif_start_request, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %mode1, align 4
  %psstatus.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %psstatus.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %psstatus.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.i = icmp sgt i32 %6, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.send_request_to_device.exit_crit_edge

if.end.send_request_to_device.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i, ptr %confirm_wait.i.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i) #11, !srcloc !177
  br label %send_request_to_device.exit

send_request_to_device.exit:                      ; preds = %if.then.i.i, %if.end.send_request_to_device.exit_crit_edge
  %call.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  %aplist = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 17
  %8 = ptrtoint ptr %aplist to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %aplist, align 4
  %scan_ind_count = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 15
  %9 = ptrtoint ptr %scan_ind_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %scan_ind_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %send_request_to_device.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_sme_mode_setup(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %rate_octet = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rate_octet) #11
  %reg = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23
  %tx_rate = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 2
  %0 = call ptr @memset(ptr %rate_octet, i32 255, i32 16)
  %1 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end73_crit_edge

entry.if.end73_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then:                                          ; preds = %entry
  %phy_type = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 16
  %3 = ptrtoint ptr %phy_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp4 = icmp eq i16 %4, 0
  %rate_set = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3
  %body = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1
  br i1 %cmp4, label %if.then.if.end73.sink.split_crit_edge, label %if.else

if.then.if.end73.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx25 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 11
  %5 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 108, ptr %arrayidx25, align 1
  %arrayidx29 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 10
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 96, ptr %arrayidx29, align 1
  %arrayidx33 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 9
  %7 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 72, ptr %arrayidx33, align 1
  %arrayidx37 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 8
  %8 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 36, ptr %arrayidx37, align 1
  %arrayidx41 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 7
  %9 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 18, ptr %arrayidx41, align 1
  %arrayidx45 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 6
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -80, ptr %arrayidx45, align 1
  %arrayidx49 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 5
  %11 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -104, ptr %arrayidx49, align 1
  %arrayidx53 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -116, ptr %arrayidx53, align 1
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %if.else, %if.then.if.end73.sink.split_crit_edge
  %.sink395 = phi i8 [ -106, %if.else ], [ 22, %if.then.if.end73.sink.split_crit_edge ]
  %.sink394 = phi i8 [ -117, %if.else ], [ 11, %if.then.if.end73.sink.split_crit_edge ]
  %.sink393 = phi i8 [ 12, %if.else ], [ 4, %if.then.if.end73.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink395, ptr %arrayidx, align 1
  %arrayidx11 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink394, ptr %arrayidx11, align 1
  %arrayidx15 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -124, ptr %arrayidx15, align 1
  %16 = ptrtoint ptr %body to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -126, ptr %body, align 1
  %17 = ptrtoint ptr %rate_set to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink393, ptr %rate_set, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %entry.if.end73_crit_edge
  %phy_type75 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 16
  %18 = ptrtoint ptr %phy_type75 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_type75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp77 = icmp eq i16 %19, 0
  %rate_set81 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3
  %20 = ptrtoint ptr %rate_set81 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rate_set81, align 1
  %conv83 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp84379.not = icmp eq i8 %21, 0
  br i1 %cmp77, label %for.cond.preheader, label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %if.end73
  br i1 %cmp84379.not, label %for.cond116.preheader.if.then160_crit_edge, label %for.cond116.preheader.for.body123_crit_edge

for.cond116.preheader.for.body123_crit_edge:      ; preds = %for.cond116.preheader
  br label %for.body123

for.cond116.preheader.if.then160_crit_edge:       ; preds = %for.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160

for.cond.preheader:                               ; preds = %if.end73
  br i1 %cmp84379.not, label %for.cond.preheader.if.then160_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then160_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160

for.body:                                         ; preds = %if.end91.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0380 = phi i32 [ %inc, %if.end91.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx89 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 %i.0380
  %22 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx89, align 1
  %trunc.i = trunc i8 %23 to i7
  %24 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.92)
  switch i7 %trunc.i, label %for.body.if.end155_crit_edge [
    i7 2, label %for.body.if.end91_crit_edge
    i7 4, label %for.body.if.end91_crit_edge400
    i7 11, label %for.body.if.end91_crit_edge401
    i7 22, label %for.body.if.end91_crit_edge402
  ]

for.body.if.end91_crit_edge402:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

for.body.if.end91_crit_edge401:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

for.body.if.end91_crit_edge400:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

for.body.if.end91_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

for.body.if.end155_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.end91:                                         ; preds = %for.body.if.end91_crit_edge, %for.body.if.end91_crit_edge400, %for.body.if.end91_crit_edge401, %for.body.if.end91_crit_edge402
  %25 = and i8 %23, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %25)
  %cmp97 = icmp ugt i8 %25, 10
  %spec.select = select i1 %cmp97, i8 %25, i8 %23
  %26 = getelementptr [16 x i8], ptr %rate_octet, i32 0, i32 %i.0380
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select, ptr %26, align 1
  %inc = add nuw nsw i32 %i.0380, 1
  %exitcond386.not = icmp eq i32 %inc, %conv83
  br i1 %exitcond386.not, label %if.end91.if.end155_crit_edge, label %if.end91.for.body_crit_edge

if.end91.for.body_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end91.if.end155_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

for.body123:                                      ; preds = %for.inc152.for.body123_crit_edge, %for.cond116.preheader.for.body123_crit_edge
  %i.1376 = phi i32 [ %inc153, %for.inc152.for.body123_crit_edge ], [ 0, %for.cond116.preheader.for.body123_crit_edge ]
  %arrayidx127 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1, i32 %i.1376
  %28 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx127, align 1
  %trunc.i.i = trunc i8 %29 to i7
  %30 = zext i7 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.93)
  switch i7 %trunc.i.i, label %for.body123.if.end155_crit_edge [
    i7 18, label %for.body123.if.then136_crit_edge
    i7 36, label %for.body123.if.then136_crit_edge403
    i7 -56, label %for.body123.if.then136_crit_edge404
    i7 -32, label %for.body123.if.then136_crit_edge405
    i7 -20, label %for.body123.if.then136_crit_edge406
    i7 2, label %for.body123.for.inc152_crit_edge
    i7 4, label %for.body123.for.inc152_crit_edge407
    i7 11, label %for.body123.for.inc152_crit_edge408
    i7 12, label %for.body123.for.inc152_crit_edge409
    i7 22, label %for.body123.for.inc152_crit_edge410
    i7 24, label %for.body123.for.inc152_crit_edge411
    i7 48, label %for.body123.for.inc152_crit_edge412
  ]

for.body123.for.inc152_crit_edge412:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc152

for.body123.for.inc152_crit_edge411:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc152

for.body123.for.inc152_crit_edge410:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc152

for.body123.for.inc152_crit_edge409:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc152

for.body123.for.inc152_crit_edge408:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc152

for.body123.for.inc152_crit_edge407:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc152

for.body123.for.inc152_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc152

for.body123.if.then136_crit_edge406:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then136

for.body123.if.then136_crit_edge405:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then136

for.body123.if.then136_crit_edge404:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then136

for.body123.if.then136_crit_edge403:              ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then136

for.body123.if.then136_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then136

for.body123.if.end155_crit_edge:                  ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.then136:                                       ; preds = %for.body123.if.then136_crit_edge, %for.body123.if.then136_crit_edge403, %for.body123.if.then136_crit_edge404, %for.body123.if.then136_crit_edge405, %for.body123.if.then136_crit_edge406
  %31 = and i8 %29, 127
  br label %for.inc152

for.inc152:                                       ; preds = %if.then136, %for.body123.for.inc152_crit_edge, %for.body123.for.inc152_crit_edge407, %for.body123.for.inc152_crit_edge408, %for.body123.for.inc152_crit_edge409, %for.body123.for.inc152_crit_edge410, %for.body123.for.inc152_crit_edge411, %for.body123.for.inc152_crit_edge412
  %.sink = phi i8 [ %31, %if.then136 ], [ %29, %for.body123.for.inc152_crit_edge ], [ %29, %for.body123.for.inc152_crit_edge407 ], [ %29, %for.body123.for.inc152_crit_edge408 ], [ %29, %for.body123.for.inc152_crit_edge409 ], [ %29, %for.body123.for.inc152_crit_edge410 ], [ %29, %for.body123.for.inc152_crit_edge411 ], [ %29, %for.body123.for.inc152_crit_edge412 ]
  %arrayidx144 = getelementptr [16 x i8], ptr %rate_octet, i32 0, i32 %i.1376
  %32 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %arrayidx144, align 1
  %inc153 = add nuw nsw i32 %i.1376, 1
  %exitcond.not = icmp eq i32 %inc153, %conv83
  br i1 %exitcond.not, label %for.inc152.if.end155_crit_edge, label %for.inc152.for.body123_crit_edge

for.inc152.for.body123_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body123

for.inc152.if.end155_crit_edge:                   ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.end155:                                        ; preds = %for.inc152.if.end155_crit_edge, %for.body123.if.end155_crit_edge, %if.end91.if.end155_crit_edge, %for.body.if.end155_crit_edge
  %i.2 = phi i32 [ %conv83, %if.end91.if.end155_crit_edge ], [ %i.0380, %for.body.if.end155_crit_edge ], [ %conv83, %for.inc152.if.end155_crit_edge ], [ %i.1376, %for.body123.if.end155_crit_edge ]
  %conv156 = trunc i32 %i.2 to i8
  %conv157 = and i32 %i.2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv157)
  %cmp158 = icmp eq i32 %conv157, 0
  br i1 %cmp158, label %if.end155.if.then160_crit_edge, label %if.end155.if.end171_crit_edge

if.end155.if.end171_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.end155.if.then160_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then160

if.then160:                                       ; preds = %if.end155.if.then160_crit_edge, %for.cond.preheader.if.then160_crit_edge, %for.cond116.preheader.if.then160_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp164 = icmp eq i16 %19, 1
  %. = select i1 %cmp164, i8 -116, i8 -124
  %33 = ptrtoint ptr %rate_octet to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %., ptr %rate_octet, align 1
  br label %if.end171

if.end171:                                        ; preds = %if.then160, %if.end155.if.end171_crit_edge
  %rate_size.0 = phi i8 [ 1, %if.then160 ], [ %conv156, %if.end155.if.end171_crit_edge ]
  %rate_set173 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3
  %34 = ptrtoint ptr %rate_set173 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %rate_size.0, ptr %rate_set173, align 1
  %body177 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1
  %conv180 = zext i8 %rate_size.0 to i32
  %35 = call ptr @memcpy(ptr %body177, ptr %rate_octet, i32 %conv180)
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg, align 4
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %37, label %if.end171.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb183
    i8 3, label %sw.bb200
  ]

if.end171.sw.epilog_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end171
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %40 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 7680, ptr %call7.i.i.i.i, align 8
  %event4.i.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %event4.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2016, ptr %event4.i.i, align 2
  %request.i = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, ptr %call7.i.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %phy_type75 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %phy_type75, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #11
  %45 = ptrtoint ptr %request.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %request.i, align 4
  %cts_mode.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 17
  %46 = ptrtoint ptr %cts_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cts_mode.i.i, align 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #11
  %cts_mode3.i.i = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %cts_mode3.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %cts_mode3.i.i, align 2
  %scan_type.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 8
  %50 = ptrtoint ptr %scan_type.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_type.i.i, align 4
  %conv.i.i = trunc i32 %51 to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  %scan_type5.i.i = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, ptr %call7.i.i.i.i, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %scan_type5.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %scan_type5.i.i, align 8
  %54 = ptrtoint ptr %rate_set173 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rate_set173, align 1
  %rate_set7.i.i = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, ptr %call7.i.i.i.i, i32 0, i32 1, i32 4
  %56 = ptrtoint ptr %rate_set7.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %rate_set7.i.i, align 4
  %preamble.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 6
  %57 = ptrtoint ptr %preamble.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %preamble.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp.i.i.i = icmp eq i8 %58, 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i16 32, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp8.not.i.i.i = icmp eq i16 %43, 0
  %59 = or i16 %spec.select.i.i.i, 1024
  %capability.1.i.i.i = select i1 %cmp8.not.i.i.i, i16 %spec.select.i.i.i, i16 %59
  %60 = tail call i16 @llvm.bswap.i16(i16 %capability.1.i.i.i) #11
  %capability.i.i = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, ptr %call7.i.i.i.i, i32 0, i32 1, i32 3
  %61 = ptrtoint ptr %capability.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %capability.i.i, align 2
  %body.i.i = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, ptr %call7.i.i.i.i, i32 0, i32 1, i32 4, i32 1
  %conv17.i.i = zext i8 %55 to i32
  %62 = call ptr @memcpy(ptr %body.i.i, ptr %body177, i32 %conv17.i.i)
  %channel.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 1
  %63 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %channel.i, align 1
  %conv.i = zext i8 %64 to i16
  %65 = shl nuw i16 %conv.i, 8
  %channel1.i = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, ptr %call7.i.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %channel1.i, align 2
  %psstatus.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i, i32 noundef 4) #11
  %67 = ptrtoint ptr %psstatus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %psstatus.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i.i8.i = icmp sgt i32 %68, 1
  br i1 %cmp.i.i8.i, label %if.then.i.i.i, label %if.end.i.send_request_to_device.exit.i_crit_edge

if.end.i.send_request_to_device.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i3.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i, i32 1, i32 3, i32 1) #11
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i, ptr %confirm_wait.i.i.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i) #11, !srcloc !177
  br label %send_request_to_device.exit.i

send_request_to_device.exit.i:                    ; preds = %if.then.i.i.i, %if.end.i.send_request_to_device.exit.i_crit_edge
  %call.i.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 32, ptr noundef null, ptr noundef null) #11
  br label %sw.epilog

sw.bb183:                                         ; preds = %if.end171
  %bssid = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 4
  %70 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bssid, align 4
  %72 = and i32 %71, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not.i = icmp eq i32 %72, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %sw.bb183.if.then186_crit_edge

sw.bb183.if.then186_crit_edge:                    ; preds = %sw.bb183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then186

is_valid_ether_addr.exit:                         ; preds = %sw.bb183
  %add.ptr.i.i = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 4, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i299 = zext i16 %74 to i32
  %or.i.i = or i32 %71, %conv.i.i299
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then186_crit_edge, label %if.else187

is_valid_ether_addr.exit.if.then186_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then186

if.then186:                                       ; preds = %is_valid_ether_addr.exit.if.then186_crit_edge, %sw.bb183.if.then186_crit_edge
  tail call fastcc void @hostif_infrastructure_set_request(ptr noundef %priv, i32 noundef 57352)
  br label %sw.epilog

if.else187:                                       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hostif_infrastructure_set_request(ptr noundef %priv, i32 noundef 57359)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_sme_mode_setup.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_sme_mode_setup, %if.then192)) #11
          to label %sw.epilog [label %if.then192], !srcloc !178

if.then192:                                       ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %75 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_sme_mode_setup.__UNIQUE_ID_ddebug356, ptr noundef %76, ptr noundef nonnull @.str.75, ptr noundef %bssid) #11
  br label %sw.epilog

sw.bb200:                                         ; preds = %if.end171
  %bssid202 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 4
  %77 = ptrtoint ptr %bssid202 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bssid202, align 4
  %79 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i300 = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i300, label %is_valid_ether_addr.exit306, label %sw.bb200.if.then205_crit_edge

sw.bb200.if.then205_crit_edge:                    ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then205

is_valid_ether_addr.exit306:                      ; preds = %sw.bb200
  %add.ptr.i.i301 = getelementptr %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 4, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i301 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i301, align 2
  %conv.i.i302 = zext i16 %81 to i32
  %or.i.i303 = or i32 %78, %conv.i.i302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i303)
  %cmp.i.i304.not = icmp eq i32 %or.i.i303, 0
  br i1 %cmp.i.i304.not, label %is_valid_ether_addr.exit306.if.then205_crit_edge, label %if.else206

is_valid_ether_addr.exit306.if.then205_crit_edge: ; preds = %is_valid_ether_addr.exit306
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then205

if.then205:                                       ; preds = %is_valid_ether_addr.exit306.if.then205_crit_edge, %sw.bb200.if.then205_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i307 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 2848, i32 noundef 96) #17
  %tobool.not.i.i308 = icmp eq ptr %call7.i.i.i.i307, null
  br i1 %tobool.not.i.i308, label %if.then205.sw.epilog_crit_edge, label %if.end.i333

if.then205.sw.epilog_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i333:                                      ; preds = %if.then205
  %83 = ptrtoint ptr %call7.i.i.i.i307 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 16384, ptr %call7.i.i.i.i307, align 8
  %event4.i.i309 = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i307, i32 0, i32 1
  %84 = ptrtoint ptr %event4.i.i309 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2528, ptr %event4.i.i309, align 2
  %request.i310 = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 1
  %85 = ptrtoint ptr %phy_type75 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %phy_type75, align 2
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #11
  %88 = ptrtoint ptr %request.i310 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %request.i310, align 4
  %cts_mode.i.i312 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 17
  %89 = ptrtoint ptr %cts_mode.i.i312 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %cts_mode.i.i312, align 4
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #11
  %cts_mode3.i.i313 = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %cts_mode3.i.i313 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %cts_mode3.i.i313, align 2
  %scan_type.i.i314 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 8
  %93 = ptrtoint ptr %scan_type.i.i314 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %scan_type.i.i314, align 4
  %conv.i.i315 = trunc i32 %94 to i16
  %95 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i315) #11
  %scan_type5.i.i316 = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %scan_type5.i.i316 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %scan_type5.i.i316, align 8
  %97 = ptrtoint ptr %rate_set173 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rate_set173, align 1
  %rate_set7.i.i318 = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 1, i32 4
  %99 = ptrtoint ptr %rate_set7.i.i318 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %rate_set7.i.i318, align 4
  %preamble.i.i.i319 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 6
  %100 = ptrtoint ptr %preamble.i.i.i319 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %preamble.i.i.i319, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp.i.i.i320 = icmp eq i8 %101, 1
  %spec.select.i.i.i321 = select i1 %cmp.i.i.i320, i16 32, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp8.not.i.i.i322 = icmp eq i16 %86, 0
  %102 = or i16 %spec.select.i.i.i321, 1024
  %capability.1.i.i.i323 = select i1 %cmp8.not.i.i.i322, i16 %spec.select.i.i.i321, i16 %102
  %103 = tail call i16 @llvm.bswap.i16(i16 %capability.1.i.i.i323) #11
  %capability.i.i324 = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %capability.i.i324 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %capability.i.i324, align 2
  %body.i.i325 = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 1, i32 4, i32 1
  %conv17.i.i327 = zext i8 %98 to i32
  %105 = call ptr @memcpy(ptr %body.i.i325, ptr %body177, i32 %conv17.i.i327)
  %channel.i328 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 1
  %106 = ptrtoint ptr %channel.i328 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %channel.i328, align 1
  %conv.i329 = zext i8 %107 to i16
  %108 = shl nuw i16 %conv.i329, 8
  %channel1.i330 = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 3
  %109 = ptrtoint ptr %channel1.i330 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %channel1.i330, align 8
  %ssid.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 5
  %110 = ptrtoint ptr %ssid.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %ssid.i, align 2
  %ssid3.i = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 2
  %112 = ptrtoint ptr %ssid3.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %ssid3.i, align 2
  %body.i = getelementptr inbounds %struct.hostif_adhoc_set_request, ptr %call7.i.i.i.i307, i32 0, i32 2, i32 1
  %body8.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 5, i32 1
  %conv13.i = zext i8 %111 to i32
  %113 = call ptr @memcpy(ptr %body.i, ptr %body8.i, i32 %conv13.i)
  %psstatus.i.i.i331 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i.i.i.i332 = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i331, i32 noundef 4) #11
  %114 = ptrtoint ptr %psstatus.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %psstatus.i.i.i331, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp.i.i25.i = icmp sgt i32 %115, 1
  br i1 %cmp.i.i25.i, label %if.then.i.i.i336, label %if.end.i333.send_request_to_device.exit.i338_crit_edge

if.end.i333.send_request_to_device.exit.i338_crit_edge: ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i338

if.then.i.i.i336:                                 ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i334 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i3.i.i.i335 = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i334, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i334, i32 1, i32 3, i32 1) #11
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i334, ptr %confirm_wait.i.i.i334, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i334) #11, !srcloc !177
  br label %send_request_to_device.exit.i338

send_request_to_device.exit.i338:                 ; preds = %if.then.i.i.i336, %if.end.i333.send_request_to_device.exit.i338_crit_edge
  %call.i.i337 = tail call i32 @ks_wlan_hw_tx(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i.i307, i32 noundef 96, ptr noundef null, ptr noundef null) #11
  br label %sw.epilog

if.else206:                                       ; preds = %is_valid_ether_addr.exit306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %117 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i339 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 2848, i32 noundef 96) #17
  %tobool.not.i.i340 = icmp eq ptr %call7.i.i.i.i339, null
  br i1 %tobool.not.i.i340, label %if.else206.hostif_adhoc_set2_request.exit_crit_edge, label %if.end.i366

if.else206.hostif_adhoc_set2_request.exit_crit_edge: ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #13
  br label %hostif_adhoc_set2_request.exit

if.end.i366:                                      ; preds = %if.else206
  %118 = ptrtoint ptr %call7.i.i.i.i339 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 22016, ptr %call7.i.i.i.i339, align 8
  %event4.i.i341 = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i.i339, i32 0, i32 1
  %119 = ptrtoint ptr %event4.i.i341 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 2528, ptr %event4.i.i341, align 2
  %request.i342 = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 1
  %120 = ptrtoint ptr %phy_type75 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %phy_type75, align 2
  %122 = tail call i16 @llvm.bswap.i16(i16 %121) #11
  %123 = ptrtoint ptr %request.i342 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %request.i342, align 4
  %cts_mode.i.i344 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 17
  %124 = ptrtoint ptr %cts_mode.i.i344 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %cts_mode.i.i344, align 4
  %126 = tail call i16 @llvm.bswap.i16(i16 %125) #11
  %cts_mode3.i.i345 = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %cts_mode3.i.i345 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %cts_mode3.i.i345, align 2
  %scan_type.i.i346 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 8
  %128 = ptrtoint ptr %scan_type.i.i346 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %scan_type.i.i346, align 4
  %conv.i.i347 = trunc i32 %129 to i16
  %130 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i347) #11
  %scan_type5.i.i348 = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 1, i32 2
  %131 = ptrtoint ptr %scan_type5.i.i348 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %scan_type5.i.i348, align 8
  %132 = ptrtoint ptr %rate_set173 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %rate_set173, align 1
  %rate_set7.i.i350 = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 1, i32 4
  %134 = ptrtoint ptr %rate_set7.i.i350 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %rate_set7.i.i350, align 4
  %preamble.i.i.i351 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 6
  %135 = ptrtoint ptr %preamble.i.i.i351 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %preamble.i.i.i351, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %136)
  %cmp.i.i.i352 = icmp eq i8 %136, 1
  %spec.select.i.i.i353 = select i1 %cmp.i.i.i352, i16 32, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %cmp8.not.i.i.i354 = icmp eq i16 %121, 0
  %137 = or i16 %spec.select.i.i.i353, 1024
  %capability.1.i.i.i355 = select i1 %cmp8.not.i.i.i354, i16 %spec.select.i.i.i353, i16 %137
  %138 = tail call i16 @llvm.bswap.i16(i16 %capability.1.i.i.i355) #11
  %capability.i.i356 = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %capability.i.i356 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %capability.i.i356, align 2
  %body.i.i357 = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 1, i32 4, i32 1
  %conv17.i.i359 = zext i8 %133 to i32
  %140 = call ptr @memcpy(ptr %body.i.i357, ptr %body177, i32 %conv17.i.i359)
  %ssid.i360 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 5
  %141 = ptrtoint ptr %ssid.i360 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %ssid.i360, align 2
  %ssid1.i = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 3
  %143 = ptrtoint ptr %ssid1.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %ssid1.i, align 8
  %body.i361 = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 3, i32 1
  %body6.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 5, i32 1
  %conv.i362 = zext i8 %142 to i32
  %144 = call ptr @memcpy(ptr %body.i361, ptr %body6.i, i32 %conv.i362)
  %channel.i363 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 1
  %145 = ptrtoint ptr %channel.i363 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %channel.i363, align 1
  %channel_list.i = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 4
  %body12.i = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %body12.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %body12.i, align 1
  %148 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %channel_list.i, align 2
  %bssid.i = getelementptr inbounds %struct.hostif_adhoc_set2_request, ptr %call7.i.i.i.i339, i32 0, i32 5
  %149 = call ptr @memcpy(ptr %bssid.i, ptr %bssid202, i32 6)
  %psstatus.i.i.i364 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i.i.i.i365 = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i.i364, i32 noundef 4) #11
  %150 = ptrtoint ptr %psstatus.i.i.i364 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %psstatus.i.i.i364, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp.i.i33.i = icmp sgt i32 %151, 1
  br i1 %cmp.i.i33.i, label %if.then.i.i.i369, label %if.end.i366.send_request_to_device.exit.i371_crit_edge

if.end.i366.send_request_to_device.exit.i371_crit_edge: ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit.i371

if.then.i.i.i369:                                 ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i.i367 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i3.i.i.i368 = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i.i367, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i.i367, i32 1, i32 3, i32 1) #11
  %152 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i.i367, ptr %confirm_wait.i.i.i367, i32 1, ptr elementtype(i32) %confirm_wait.i.i.i367) #11, !srcloc !177
  br label %send_request_to_device.exit.i371

send_request_to_device.exit.i371:                 ; preds = %if.then.i.i.i369, %if.end.i366.send_request_to_device.exit.i371_crit_edge
  %call.i.i370 = tail call i32 @ks_wlan_hw_tx(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i.i339, i32 noundef 96, ptr noundef null, ptr noundef null) #11
  br label %hostif_adhoc_set2_request.exit

hostif_adhoc_set2_request.exit:                   ; preds = %send_request_to_device.exit.i371, %if.else206.hostif_adhoc_set2_request.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hostif_sme_mode_setup.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hostif_sme_mode_setup, %if.then220)) #11
          to label %sw.epilog [label %if.then220], !srcloc !178

if.then220:                                       ; preds = %hostif_adhoc_set2_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev221 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %153 = ptrtoint ptr %net_dev221 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %net_dev221, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hostif_sme_mode_setup.__UNIQUE_ID_ddebug357, ptr noundef %154, ptr noundef nonnull @.str.76, ptr noundef %bssid202) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then220, %hostif_adhoc_set2_request.exit, %send_request_to_device.exit.i338, %if.then205.sw.epilog_crit_edge, %if.then192, %if.else187, %if.then186, %send_request_to_device.exit.i, %sw.bb.sw.epilog_crit_edge, %if.end171.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rate_octet) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_mib_set_request(ptr noundef %priv, i32 noundef %attr, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2560, ptr %call7.i.i.i, align 8
  %event4.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %event4.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 992, ptr %event4.i, align 2
  %5 = tail call i32 @llvm.bswap.i32(i32 %attr)
  %mib_attribute = getelementptr inbounds %struct.hostif_mib_set_request_t, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %mib_attribute to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mib_attribute, align 4
  %conv = trunc i32 %size to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %mib_value = getelementptr inbounds %struct.hostif_mib_set_request_t, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %mib_value to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %mib_value, align 8
  %conv4 = trunc i32 %type to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %type6 = getelementptr inbounds %struct.hostif_mib_set_request_t, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %type6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %type6, align 2
  %body = getelementptr inbounds %struct.hostif_mib_set_request_t, ptr %call7.i.i.i, i32 1
  %11 = call ptr @memcpy(ptr %body, ptr %data, i32 %size)
  %add.i = add i32 %size, 43
  %and.i = and i32 %add.i, -32
  %psstatus.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %psstatus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %psstatus.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp sgt i32 %13, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end2.send_request_to_device.exit_crit_edge

if.end2.send_request_to_device.exit_crit_edge:    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit

if.then.i.i:                                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i, ptr %confirm_wait.i.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i) #11, !srcloc !177
  br label %send_request_to_device.exit

send_request_to_device.exit:                      ; preds = %if.then.i.i, %if.end2.send_request_to_device.exit_crit_edge
  %call.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i, i32 noundef %and.i, ptr noundef null, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %send_request_to_device.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostif_infrastructure_set_request(ptr noundef %priv, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 96) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 22528, ptr %call7.i.i.i, align 8
  %conv3.i = trunc i32 %event to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #11
  %event4.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %event4.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %event4.i, align 2
  %request = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 1
  %phy_type.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 16
  %4 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phy_type.i, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #11
  %7 = ptrtoint ptr %request to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %request, align 4
  %cts_mode.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 17
  %8 = ptrtoint ptr %cts_mode.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cts_mode.i, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #11
  %cts_mode3.i = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %cts_mode3.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %cts_mode3.i, align 2
  %scan_type.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 8
  %12 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_type.i, align 4
  %conv.i = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #11
  %scan_type5.i = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %scan_type5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %scan_type5.i, align 8
  %rate_set.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3
  %16 = ptrtoint ptr %rate_set.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rate_set.i, align 1
  %rate_set7.i = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %rate_set7.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %rate_set7.i, align 4
  %preamble.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 6
  %19 = ptrtoint ptr %preamble.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %preamble.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 1
  %spec.select.i.i = select i1 %cmp.i.i, i16 32, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp8.not.i.i = icmp eq i16 %5, 0
  %21 = or i16 %spec.select.i.i, 1024
  %capability.1.i.i = select i1 %cmp8.not.i.i, i16 %spec.select.i.i, i16 %21
  %22 = tail call i16 @llvm.bswap.i16(i16 %capability.1.i.i) #11
  %capability.i = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %capability.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %capability.i, align 2
  %body.i = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 1, i32 4, i32 1
  %body12.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 3, i32 1
  %conv17.i = zext i8 %17 to i32
  %24 = call ptr @memcpy(ptr %body.i, ptr %body12.i, i32 %conv17.i)
  %ssid = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 5
  %25 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ssid, align 2
  %ssid1 = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %ssid1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %ssid1, align 2
  %body = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %body6 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 5, i32 1
  %conv = zext i8 %26 to i32
  %28 = call ptr @memcpy(ptr %body, ptr %body6, i32 %conv)
  %beacon_lost_count = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 9
  %29 = ptrtoint ptr %beacon_lost_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %beacon_lost_count, align 4
  %conv12 = trunc i32 %30 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %beacon_lost_count13 = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %beacon_lost_count13 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %beacon_lost_count13, align 8
  %authenticate_type = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 15
  %33 = ptrtoint ptr %authenticate_type to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %authenticate_type, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %auth_type = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %auth_type to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %auth_type, align 2
  %channel_list = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5
  %body15 = getelementptr inbounds %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %body15 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %body15, align 1
  %arrayidx19 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %arrayidx19, align 2
  %arrayidx22 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 2
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %arrayidx22, align 1
  %arrayidx25 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 3
  %40 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 9, ptr %arrayidx25, align 8
  %arrayidx28 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 4
  %41 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %arrayidx28, align 1
  %arrayidx31 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 5
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 10, ptr %arrayidx31, align 2
  %arrayidx34 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 6
  %43 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 4, ptr %arrayidx34, align 1
  %arrayidx37 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 7
  %44 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 11, ptr %arrayidx37, align 4
  %arrayidx40 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 8
  %45 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %arrayidx40, align 1
  %arrayidx43 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 9
  %46 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 12, ptr %arrayidx43, align 2
  %arrayidx46 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 10
  %47 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 6, ptr %arrayidx46, align 1
  %arrayidx49 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 11
  %48 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 13, ptr %arrayidx49, align 8
  %arrayidx52 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 12
  %49 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 7, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp eq i16 %5, 1
  br i1 %cmp, label %if.end.if.end64_crit_edge, label %if.else

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx61 = getelementptr %struct.hostif_infrastructure_set_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1, i32 13
  %50 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 14, ptr %arrayidx61, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.end.if.end64_crit_edge
  %storemerge = phi i8 [ 14, %if.else ], [ 13, %if.end.if.end64_crit_edge ]
  %51 = ptrtoint ptr %channel_list to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %storemerge, ptr %channel_list, align 4
  %psstatus.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus.i.i, i32 noundef 4) #11
  %52 = ptrtoint ptr %psstatus.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %psstatus.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i.i95 = icmp sgt i32 %53, 1
  br i1 %cmp.i.i95, label %if.then.i.i, label %if.end64.send_request_to_device.exit_crit_edge

if.end64.send_request_to_device.exit_crit_edge:   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_request_to_device.exit

if.then.i.i:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %confirm_wait.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %confirm_wait.i.i, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait.i.i, ptr %confirm_wait.i.i, i32 1, ptr elementtype(i32) %confirm_wait.i.i) #11, !srcloc !177
  br label %send_request_to_device.exit

send_request_to_device.exit:                      ; preds = %if.then.i.i, %if.end64.send_request_to_device.exit_crit_edge
  %call.i = tail call i32 @ks_wlan_hw_tx(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i, i32 noundef 96, ptr noundef null, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %send_request_to_device.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !121, !123, !124, !126, !127, !129, !130, !131, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !164, !165}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1072, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1110, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1211, i32 8}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 2229, i32 29}
!8 = !{ptr @hostif_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 2300, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hostif_init.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 2301, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hostif_init.__key.7, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 2302, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 204, i32 27}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1028, i32 29}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 440, i32 29}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 441, i32 29}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 467, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hostif_data_indication.__UNIQUE_ID_ddebug343, !26, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 487, i32 3}
!33 = !{ptr @hostif_data_indication.__UNIQUE_ID_ddebug344, !32, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 504, i32 29}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 365, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hostif_data_indication_wpa.__UNIQUE_ID_ddebug342, !37, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 385, i32 30}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 401, i32 5}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 403, i32 33}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 403, i32 43}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 534, i32 29}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 545, i32 20}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 551, i32 20}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 559, i32 3}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hostif_mib_get_confirm.__UNIQUE_ID_ddebug345, !55, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 567, i32 20}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 576, i32 29}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 593, i32 29}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 709, i32 2}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hostif_start_confirm.__UNIQUE_ID_ddebug346, !65, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 737, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hostif_connect_indication.__UNIQUE_ID_ddebug347, !69, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 760, i32 3}
!74 = !{ptr @hostif_connect_indication.__UNIQUE_ID_ddebug348, !73, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 158, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @get_current_ap.__UNIQUE_ID_ddebug340, !76, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 163, i32 2}
!81 = !{ptr @get_current_ap.__UNIQUE_ID_ddebug341, !80, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 820, i32 23}
!84 = !{ptr @hostif_associate_indication.associnfo_leader0, !85, !"associnfo_leader0", i1 false, i1 false}
!85 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 870, i32 20}
!86 = !{ptr @hostif_associate_indication.associnfo_leader1, !87, !"associnfo_leader1", i1 false, i1 false}
!87 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 871, i32 20}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 883, i32 25}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 895, i32 24}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 963, i32 2}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @hostif_mic_failure_confirm.__UNIQUE_ID_ddebug355, !93, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 909, i32 2}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @hostif_bss_scan_confirm.__UNIQUE_ID_ddebug352, !97, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 939, i32 2}
!102 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @hostif_phy_information_confirm.__UNIQUE_ID_ddebug353, !101, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 947, i32 2}
!106 = !{ptr @hostif_phy_information_confirm.__UNIQUE_ID_ddebug354, !105, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 773, i32 2}
!109 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @hostif_scan_indication.__UNIQUE_ID_ddebug349, !108, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 793, i32 3}
!113 = !{ptr @hostif_scan_indication.__UNIQUE_ID_ddebug350, !112, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 799, i32 3}
!116 = !{ptr @hostif_scan_indication.__UNIQUE_ID_ddebug351, !115, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 305, i32 23}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 321, i32 8}
!121 = !{ptr @hostif_power_save_init.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 2275, i32 2}
!123 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @init_completion.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../include/linux/completion.h", i32 87, i32 2}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 82, i32 4}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ks_wlan_hw_wakeup_task.__UNIQUE_ID_ddebug339, !128, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!131 = !{ptr @hostif_sme_init.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 2255, i32 2}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 2075, i32 8}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1682, i32 5}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1682, i32 27}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1686, i32 5}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1690, i32 5}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1690, i32 27}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1694, i32 5}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1694, i32 27}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1698, i32 5}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1698, i32 29}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1757, i32 5}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1758, i32 5}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1870, i32 4}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @hostif_sme_mode_setup.__UNIQUE_ID_ddebug356, !159, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1879, i32 4}
!164 = !{ptr @hostif_sme_mode_setup.__UNIQUE_ID_ddebug357, !163, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/ks7010/ks_hostif.c", i32 1505, i32 29}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{i8 0, i8 2}
!177 = !{i64 2148241622, i64 2148241648, i64 2148241677, i64 2148241711, i64 2148241742, i64 2148241765}
!178 = !{i64 2148814761, i64 2148814766, i64 2148814779, i64 2148814823, i64 2148814857, i64 2148814878}
!179 = !{i64 2155387970}
!180 = !{i64 2148244087, i64 2148244113, i64 2148244142, i64 2148244176, i64 2148244207, i64 2148244230}
