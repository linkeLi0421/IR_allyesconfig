; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/microchip/wilc1000/netdev.c_pt.bc'
source_filename = "../drivers/net/wireless/microchip/wilc1000/netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wilc_netdev_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_wilc_netdev_cleanup\09\09\09\09"
module asm "\09.long\09__crc_wilc_netdev_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wilc_netdev_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22wilc_netdev_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_wilc_netdev_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wilc = type { ptr, ptr, i32, i8, ptr, i8, i32, i8, i32, i32, i8, %struct.list_head, %struct.mutex, %struct.srcu_struct, i8, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, i32, %struct.mutex, %struct.wilc_cfg_frame, i32, i8, ptr, i32, ptr, [4 x %struct.txq_handle], i32, %struct.wilc_tx_queue_status, %struct.rxq_entry_t, ptr, ptr, i8, ptr, %struct.wilc_cfg, ptr, ptr, %struct.mutex, i8, i8, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [5 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wilc_cfg_frame = type { %struct.wilc_cfg_cmd_hdr, [1468 x i8] }
%struct.wilc_cfg_cmd_hdr = type { i8, i8, i16, i32 }
%struct.txq_handle = type { %struct.txq_entry_t, i16, %struct.txq_fw_recv_queue_stat }
%struct.txq_entry_t = type { %struct.list_head, i32, i8, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.txq_fw_recv_queue_stat = type { i8, i8 }
%struct.wilc_tx_queue_status = type { [1000 x i8], i16, [4 x i16], i16, i8 }
%struct.rxq_entry_t = type { %struct.list_head, ptr, i32 }
%struct.wilc_cfg = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.tx_complete_data = type { i32, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.wilc_vif = type { i8, i8, i32, i32, i32, %struct.net_device_stats, ptr, [6 x i8], ptr, ptr, i8, %struct.timer_list, %struct.timer_list, %struct.rf_info, %struct.tcp_ack_filter, i8, %struct.wilc_priv, %struct.list_head, ptr }
%struct.rf_info = type { i8, i8, i32, i32, i32 }
%struct.tcp_ack_filter = type { [50 x %struct.ack_session_info], [256 x %struct.pending_acks], i32, i32, i32, i8 }
%struct.ack_session_info = type { i32, i32, i16, i16, i16 }
%struct.pending_acks = type { i32, i32, ptr }
%struct.wilc_priv = type { %struct.wireless_dev, ptr, %struct.wilc_wfi_p2p_listen_params, i64, i8, [6 x i8], %struct.sta_info, ptr, ptr, ptr, %struct.wilc_pmkid_attr, [4 x [13 x i8]], [4 x i8], ptr, [9 x ptr], [9 x ptr], i8, %struct.mutex, i8, i32, i64 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.147, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.147 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.wilc_wfi_p2p_listen_params = type { ptr, i32, i64 }
%struct.sta_info = type { [9 x [6 x i8]] }
%struct.wilc_pmkid_attr = type { i8, [16 x %struct.wilc_pmkid] }
%struct.wilc_pmkid = type { [6 x i8], [16 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.152, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.152 = type { i64, i64, i8 }
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.wilc_hif_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@wilc_wlan_get_num_conn_ifcs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/microchip/wilc1000/netdev.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Packet not destined to this device\0A\00", [60 x i8] zeroinitializer }, align 32
@wilc_mac_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wilc_frmw_to_host.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wilc1000\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wilc_frmw_to_host\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"netif_rx ret value is: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wilc_wfi_mgmt_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wilc_netdev_cleanup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_wilc_netdev_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_wilc_netdev_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_wilc_netdev_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wilc_netdev_cleanup to i32), ptr @__kstrtab_wilc_netdev_cleanup, ptr @__kstrtabns_wilc_netdev_cleanup }, section "___ksymtab_gpl+wilc_netdev_cleanup", align 4
@wilc_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @mac_init_fn, ptr null, ptr @wilc_mac_open, ptr @wilc_mac_close, ptr @wilc_mac_xmit, ptr null, ptr null, ptr null, ptr @wilc_set_multicast_list, ptr @wilc_set_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mac_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-wq\00", [26 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file512 = internal constant [63 x i8] c"wilc1000.file=drivers/net/wireless/microchip/wilc1000/wilc1000\00", section ".modinfo", align 1
@__UNIQUE_ID_license513 = internal constant [21 x i8] c"wilc1000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware514 = internal constant [53 x i8] c"wilc1000.firmware=atmel/wilc1000_wifi_firmware-1.bin\00", section ".modinfo", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_if_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device not ready\0A\00", [46 x i8] zeroinitializer }, align 32
@wilc_mac_open.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wilc_mac_open\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MAC OPEN[%p]\0A\00", [18 x i8] zeroinitializer }, align 32
@wilc_mac_open.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str, ptr @.str.11, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mac address: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wrong MAC address\0A\00", [45 x i8] zeroinitializer }, align 32
@wilc_wlan_initialize.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str, ptr @.str.14, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wilc_wlan_initialize\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware Ver = %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to configure firmware\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WLAN initialization FAILED\0A\00", [36 x i8] zeroinitializer }, align 32
@wilc_wlan_initialize.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str, ptr @.str.17, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wilc1000 already initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-tx\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't create TXQ thread\0A\00", [36 x i8] zeroinitializer }, align 32
@wilc_txq_task.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request IRQ [%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@init_irq.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IRQ request succeeded IRQ-NUM= %d\0A\00", [61 x i8] zeroinitializer }, align 32
@isr_uh_routine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Can't handle UH interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isr_uh_routine\00", [17 x i8] zeroinitializer }, align 32
@isr_uh_routine._entry_ptr = internal global ptr @isr_uh_routine._entry, section ".printk_index", align 4
@isr_bh_routine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Can't handle BH interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isr_bh_routine\00", [17 x i8] zeroinitializer }, align 32
@isr_bh_routine._entry_ptr = internal global ptr @isr_bh_routine._entry, section ".printk_index", align 4
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ChipID [%x] loading firmware [%s]\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atmel/wilc1000_wifi_firmware-1.bin\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - firmware not available\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware buffer is NULL\0A\00", [39 x i8] zeroinitializer }, align 32
@wilc1000_firmware_download.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.31, ptr @.str, ptr @.str.32, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wilc1000_firmware_download\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Download Succeeded\0A\00", [44 x i8] zeroinitializer }, align 32
@wilc_init_fw_config.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str, ptr @.str.34, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wilc_init_fw_config\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Start configuring Firmware\0A\00", [36 x i8] zeroinitializer }, align 32
@wilc_init_fw_config.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str, ptr @.str.35, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Host = %p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wl is NULL\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Deinitializing wilc1000...\0A\00", [36 x i8] zeroinitializer }, align 32
@wilc_wlan_deinitialize.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.38, ptr @.str, ptr @.str.39, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wilc_wlan_deinitialize\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wilc1000 deinitialization Done\0A\00", [32 x i8] zeroinitializer }, align 32
@wilc_wlan_deinitialize.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.38, ptr @.str, ptr @.str.40, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wilc1000 is not initialized\0A\00", [35 x i8] zeroinitializer }, align 32
@wilc_mac_close.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str, ptr @.str.42, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wilc_mac_close\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mac close\0A\00", [21 x i8] zeroinitializer }, align 32
@wilc_mac_close.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str, ptr @.str.43, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Deinitializing wilc1000\0A\00", [39 x i8] zeroinitializer }, align 32
@wilc_set_multicast_list.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str, ptr @.str.45, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wilc_set_multicast_list\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Entry[%d]: %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@wilc_set_mac_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wilc_get_available_idx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 134, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 731, i32 20 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 833, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"wilc_netdev_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 857, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 968, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 189, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 580, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 584, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 606, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 609, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 531, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 536, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 556, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 558, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 470, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 473, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 61, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 64, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 30, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 41, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 188, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 189, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 194, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 227, i32 19 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 239, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 252, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 254, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 436, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 441, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 459, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 461, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 772, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 786, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [52 x i8] c"../drivers/net/wireless/microchip/wilc1000/netdev.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 706, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_file512, ptr @__UNIQUE_ID_firmware514, ptr @__UNIQUE_ID_license513, ptr @__ksymtab_wilc_netdev_cleanup, ptr @isr_bh_routine._entry, ptr @isr_bh_routine._entry_ptr, ptr @isr_uh_routine._entry, ptr @isr_uh_routine._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @wilc_netdev_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_uh_routine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_bh_routine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_mac_indicate(ptr noundef %wilc) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !131
  %call = call i32 @wilc_wlan_cfg_get_val(ptr noundef %wilc, i16 noundef zeroext 5, ptr noundef nonnull %status, i32 noundef 1) #11
  %mac_status = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 3
  %1 = ptrtoint ptr %mac_status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mac_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 1
  %5 = ptrtoint ptr %mac_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %mac_status, align 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sync_event = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 20
  call void @complete(ptr noundef %sync_event) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_cfg_get_val(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wilc_wlan_set_bssid(ptr nocapture noundef writeonly %wilc_netdev, ptr noundef readonly %bssid, i8 noundef zeroext %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bssid, null
  %bssid2 = getelementptr i8, ptr %wilc_netdev, i32 2416
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bssid, align 4
  %2 = ptrtoint ptr %bssid2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bssid2, align 4
  %add.ptr.i8 = getelementptr i8, ptr %bssid, i32 4
  %3 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i8, align 2
  %add.ptr1.i = getelementptr i8, ptr %wilc_netdev, i32 2420
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %add.ptr1.i, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = call ptr @memset(ptr %bssid2, i32 0, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mode4 = getelementptr i8, ptr %wilc_netdev, i32 2432
  %7 = ptrtoint ptr %mode4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %mode, ptr %mode4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_wlan_get_num_conn_ifcs(ptr noundef %wilc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #11
  %dep_map.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #11
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @wilc_wlan_get_num_conn_ifcs.__warned, align 1
  br i1 %.b30, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wilc_wlan_get_num_conn_ifcs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %vif_list = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 11
  %0 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn32 = load volatile ptr, ptr %vif_list, align 4
  %cmp.not33 = icmp eq ptr %.pn32, %vif_list
  br i1 %cmp.not33, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn35 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn32, %do.end.for.body_crit_edge ]
  %ret_val.034 = phi i8 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %bssid = getelementptr i8, ptr %.pn35, i32 -5696
  %1 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr i8, ptr %.pn35, i32 -5692
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %4 to i32
  %or.i = or i32 %2, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp ne i32 %or.i, 0
  %inc = zext i1 %cmp.i to i8
  %spec.select = add i8 %ret_val.034, %inc
  %5 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load volatile ptr, ptr %.pn35, align 4
  %cmp.not = icmp eq ptr %.pn, %vif_list
  br i1 %cmp.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = zext i8 %spec.select to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end.for.end_crit_edge
  %ret_val.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %for.end.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

for.end.srcu_read_unlock.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %for.end
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !132

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %for.end.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #11
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #11
  ret i32 %ret_val.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_mac_xmit(ptr noundef %skb, ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc1 = getelementptr i8, ptr %ndev, i32 2412
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  %2 = getelementptr inbounds %struct.anon.49, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %4, %ndev
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %7) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %buff = getelementptr inbounds %struct.tx_complete_data, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %buff, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call7.i, align 8
  %skb5 = getelementptr inbounds %struct.tx_complete_data, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %skb5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb, ptr %skb5, align 8
  %tx_packets = getelementptr i8, ptr %ndev, i32 2324
  %15 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr i8, ptr %ndev, i32 2332
  %17 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %18, %12
  store i32 %add, ptr %tx_bytes, align 4
  %call10 = tail call i32 @wilc_wlan_txq_add_net_pkt(ptr noundef %ndev, ptr noundef nonnull %call7.i, ptr noundef %9, i32 noundef %12, ptr noundef nonnull @wilc_tx_complete) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, 256
  br i1 %cmp11, label %if.then12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.end4
  %srcu = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #11
  %dep_map.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 13, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #11
  %call15 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.then12.do.end_crit_edge

if.then12.do.end_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.then12
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true19

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b70 = load i1, ptr @wilc_mac_xmit.__warned, align 1
  br i1 %.b70, label %land.lhs.true19.do.end_crit_edge, label %if.then21

land.lhs.true19.do.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wilc_mac_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 757, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then21, %land.lhs.true19.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then12.do.end_crit_edge
  %vif_list = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn73 = load volatile ptr, ptr %vif_list, align 4
  %cmp28.not74 = icmp eq ptr %.pn73, %vif_list
  br i1 %cmp28.not74, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn75 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn73, %do.end.for.body_crit_edge ]
  %mac_opened = getelementptr i8, ptr %.pn75, i32 -5800
  %20 = ptrtoint ptr %mac_opened to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.not = icmp eq i32 %21, 0
  br i1 %tobool29.not, label %for.body.for.inc_crit_edge, label %if.then30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %ndev31 = getelementptr i8, ptr %.pn75, i32 -5684
  %22 = ptrtoint ptr %ndev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev31, align 4
  %_tx.i.i71 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i71, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load volatile ptr, ptr %.pn75, align 4
  %cmp28.not = icmp eq ptr %.pn, %vif_list
  br i1 %cmp28.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %for.end.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

for.end.srcu_read_unlock.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %for.end
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !132

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %for.end.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #11
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_txq_add_net_pkt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_tx_complete(ptr noundef %priv, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.tx_complete_data, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_frmw_to_host(ptr noundef %wilc, ptr nocapture noundef readonly %buff, i32 noundef %size, i32 noundef %pkt_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wilc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b50.i = load i1, ptr @get_if_handler.__warned, align 1
  br i1 %.b50.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_if_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 98, ptr noundef nonnull @.str.1) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 11
  %0 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn61.i = load volatile ptr, ptr %vif_list.i, align 4
  %cmp.not62.i = icmp eq ptr %.pn61.i, %vif_list.i
  br i1 %cmp.not62.i, label %do.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %buff, i32 0, i32 2
  %add.ptr.i.i52.i = getelementptr %struct.ieee80211_hdr, ptr %buff, i32 0, i32 2, i32 4
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %buff, i32 0, i32 3
  %add.ptr.i.i.i = getelementptr %struct.ieee80211_hdr, ptr %buff, i32 0, i32 3, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn63.i = phi ptr [ %.pn61.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %mode.i = getelementptr i8, ptr %.pn63.i, i32 -5680
  %1 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mode.i, align 8
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %for.body.i.for.inc.i_crit_edge [
    i8 2, label %if.then12.i
    i8 1, label %if.then23.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  %bssid.i = getelementptr i8, ptr %.pn63.i, i32 -5696
  %4 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr2.i, align 4
  %6 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bssid.i, align 4
  %xor.i.i.i = xor i32 %7, %5
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %.pn63.i, i32 -5692
  %10 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %11, %9
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then12.i.get_if_handler.exit_crit_edge, label %if.then12.i.for.inc.i_crit_edge

if.then12.i.for.inc.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then12.i.get_if_handler.exit_crit_edge:        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_if_handler.exit

if.then23.i:                                      ; preds = %for.body.i
  %bssid25.i = getelementptr i8, ptr %.pn63.i, i32 -5696
  %12 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr1.i, align 4
  %14 = ptrtoint ptr %bssid25.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bssid25.i, align 4
  %xor.i.i51.i = xor i32 %15, %13
  %16 = ptrtoint ptr %add.ptr.i.i52.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i52.i, align 2
  %add.ptr1.i.i53.i = getelementptr i8, ptr %.pn63.i, i32 -5692
  %18 = ptrtoint ptr %add.ptr1.i.i53.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i.i53.i, align 2
  %xor37.i.i54.i = xor i16 %19, %17
  %xor3.i.i55.i = zext i16 %xor37.i.i54.i to i32
  %or.i.i56.i = or i32 %xor.i.i51.i, %xor3.i.i55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i56.i)
  %cmp.i.i57.i = icmp eq i32 %or.i.i56.i, 0
  br i1 %cmp.i.i57.i, label %if.then23.i.get_if_handler.exit_crit_edge, label %if.then23.i.for.inc.i_crit_edge

if.then23.i.for.inc.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then23.i.get_if_handler.exit_crit_edge:        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_if_handler.exit

for.inc.i:                                        ; preds = %if.then23.i.for.inc.i_crit_edge, %if.then12.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %20 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load volatile ptr, ptr %.pn63.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vif_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

get_if_handler.exit:                              ; preds = %if.then23.i.get_if_handler.exit_crit_edge, %if.then12.i.get_if_handler.exit_crit_edge
  %ndev29.i = getelementptr i8, ptr %.pn63.i, i32 -5684
  %21 = ptrtoint ptr %ndev29.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev29.i, align 4
  %tobool1.not = icmp eq ptr %22, null
  br i1 %tobool1.not, label %get_if_handler.exit.cleanup_crit_edge, label %if.end3

get_if_handler.exit.cleanup_crit_edge:            ; preds = %get_if_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %get_if_handler.exit
  %add.ptr = getelementptr i8, ptr %buff, i32 %pkt_offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %size, i32 noundef 2592) #11
  %tobool7.not = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %23 = getelementptr inbounds %struct.anon.49, ptr %call.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %23, align 8
  %call.i46 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %size) #11
  %25 = call ptr @memcpy(ptr %call.i46, ptr %add.ptr, i32 %size)
  %call11 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef nonnull %22) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %call11, ptr %protocol, align 8
  %netstats = getelementptr i8, ptr %22, i32 2320
  %27 = ptrtoint ptr %netstats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %netstats, align 8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %netstats, align 8
  %rx_bytes = getelementptr i8, ptr %22, i32 2328
  %29 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %30, %size
  store i32 %add, ptr %rx_bytes, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %31 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  %call13 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_frmw_to_host.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_frmw_to_host, %if.then19)) #11
          to label %cleanup [label %if.then19], !srcloc !133

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_frmw_to_host.__UNIQUE_ID_ddebug505, ptr noundef nonnull %22, ptr noundef nonnull @.str.5, i32 noundef %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end9, %if.then5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %get_if_handler.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_wfi_mgmt_rx(ptr noundef %wilc, ptr noundef %buff, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #11
  %dep_map.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #11
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @wilc_wfi_mgmt_rx.__warned, align 1
  br i1 %.b43, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wilc_wfi_mgmt_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 843, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %vif_list = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 11
  %0 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn45 = load volatile ptr, ptr %vif_list, align 4
  %cmp.not47 = icmp eq ptr %.pn45, %vif_list
  br i1 %cmp.not47, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %monitor_dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.lr.ph
  %.pn48 = phi ptr [ %.pn45, %for.body.lr.ph ], [ %.pn, %if.end20.for.body_crit_edge ]
  %vif.049 = getelementptr i8, ptr %.pn48, i32 -5808
  %p2p_listen_state = getelementptr i8, ptr %.pn48, i32 -20
  %1 = ptrtoint ptr %p2p_listen_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p2p_listen_state, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool12.not = icmp eq i8 %2, 0
  br i1 %tobool12.not, label %for.body.if.end17_crit_edge, label %land.lhs.true14

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true14:                                  ; preds = %for.body
  %3 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %buff, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #11
  %6 = lshr i16 %5, 4
  %7 = zext i16 %6 to i32
  %shl = shl nuw i32 1, %7
  %mgmt_reg_stypes = getelementptr i8, ptr %.pn48, i32 -5796
  %8 = ptrtoint ptr %mgmt_reg_stypes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mgmt_reg_stypes, align 4
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.lhs.true14.if.end17_crit_edge, label %if.then16

land.lhs.true14.if.end17_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wilc_wfi_p2p_rx(ptr noundef %vif.049, ptr noundef %buff, i32 noundef %size) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true14.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %monitor_flag = getelementptr i8, ptr %.pn48, i32 -5804
  %10 = ptrtoint ptr %monitor_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %monitor_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %monitor_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %monitor_dev, align 4
  tail call void @wilc_wfi_monitor_rx(ptr noundef %13, ptr noundef %buff, i32 noundef %size) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %14 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load volatile ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, %vif_list
  br i1 %cmp.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %for.end.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

for.end.srcu_read_unlock.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %for.end
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !132

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %for.end.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #11
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wfi_p2p_rx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wfi_monitor_rx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_netdev_cleanup(ptr noundef %wilc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wilc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %firmware = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 36
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_firmware(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %firmware, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %srcu = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #11
  %dep_map.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 13, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #11
  %call6 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.end5
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b77 = load i1, ptr @wilc_netdev_cleanup.__warned, align 1
  br i1 %.b77, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wilc_netdev_cleanup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 881, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end5.do.end_crit_edge
  %vif_list = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 11
  %3 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn79 = load volatile ptr, ptr %vif_list, align 4
  %cmp.not80 = icmp eq ptr %.pn79, %vif_list
  br i1 %cmp.not80, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn81 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn79, %do.end.for.body_crit_edge ]
  %ndev = getelementptr i8, ptr %.pn81, i32 -5684
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %if.then20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_netdev(ptr noundef nonnull %5) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn81, align 4
  %cmp.not = icmp eq ptr %.pn, %vif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %for.end.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

for.end.srcu_read_unlock.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %for.end
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !132

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %for.end.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #11
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #11
  tail call void @wilc_wfi_deinit_mon_interface(ptr noundef nonnull %wilc, i1 noundef zeroext false) #11
  %hif_workqueue = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 39
  %7 = ptrtoint ptr %hif_workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #11
  %vif_mutex = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 12
  %vif_num = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #11
  %9 = ptrtoint ptr %vif_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vif_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp34 = icmp eq i8 %10, 0
  br i1 %cmp34, label %srcu_read_unlock.exit.if.then36_crit_edge, label %if.end38

srcu_read_unlock.exit.if.then36_crit_edge:        ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then36:                                        ; preds = %if.end43.if.then36_crit_edge, %srcu_read_unlock.exit.if.then36_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #11
  br label %while.end

if.end38:                                         ; preds = %srcu_read_unlock.exit
  %call39 = tail call ptr @wilc_get_wl_to_vif(ptr noundef nonnull %wilc) #11
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  %list42 = getelementptr inbounds %struct.wilc_vif, ptr %call39, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list42) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then41.list_del_rcu.exit_crit_edge

if.then41.list_del_rcu.exit_crit_edge:            ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.wilc_vif, ptr %call39, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then41.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.wilc_vif, ptr %call39, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %list_del_rcu.exit, %if.end38.if.end43_crit_edge
  %18 = ptrtoint ptr %vif_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vif_num, align 4
  %dec = add i8 %19, -1
  store i8 %dec, ptr %vif_num, align 4
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #11
  tail call void @synchronize_srcu(ptr noundef %srcu) #11
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #11
  %20 = ptrtoint ptr %vif_num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vif_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp34.1 = icmp eq i8 %21, 0
  br i1 %cmp34.1, label %if.end43.if.then36_crit_edge, label %if.end38.1

if.end43.if.then36_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.end38.1:                                       ; preds = %if.end43
  %call39.1 = tail call ptr @wilc_get_wl_to_vif(ptr noundef nonnull %wilc) #11
  %cmp.i.1 = icmp ugt ptr %call39.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end38.1.if.end43.1_crit_edge, label %if.then41.1

if.end38.1.if.end43.1_crit_edge:                  ; preds = %if.end38.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.1

if.then41.1:                                      ; preds = %if.end38.1
  %list42.1 = getelementptr inbounds %struct.wilc_vif, ptr %call39.1, i32 0, i32 17
  %call.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list42.1) #11
  br i1 %call.i.i.1, label %if.end.i.i.1, label %if.then41.1.list_del_rcu.exit.1_crit_edge

if.then41.1.list_del_rcu.exit.1_crit_edge:        ; preds = %if.then41.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit.1

if.end.i.i.1:                                     ; preds = %if.then41.1
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.1 = getelementptr inbounds %struct.wilc_vif, ptr %call39.1, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.1, align 4
  %24 = ptrtoint ptr %list42.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list42.1, align 4
  %prev1.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.1, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_rcu.exit.1

list_del_rcu.exit.1:                              ; preds = %if.end.i.i.1, %if.then41.1.list_del_rcu.exit.1_crit_edge
  %prev.i.1 = getelementptr inbounds %struct.wilc_vif, ptr %call39.1, i32 0, i32 17, i32 1
  %28 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.1, align 4
  br label %if.end43.1

if.end43.1:                                       ; preds = %list_del_rcu.exit.1, %if.end38.1.if.end43.1_crit_edge
  %29 = ptrtoint ptr %vif_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vif_num, align 4
  %dec.1 = add i8 %30, -1
  store i8 %dec.1, ptr %vif_num, align 4
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #11
  tail call void @synchronize_srcu(ptr noundef %srcu) #11
  br label %while.end

while.end:                                        ; preds = %if.end43.1, %if.then36
  tail call void @wilc_wlan_cfg_deinit(ptr noundef nonnull %wilc) #11
  tail call void @wlan_deinit_locks(ptr noundef nonnull %wilc) #11
  %31 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wilc, align 4
  tail call void @wiphy_unregister(ptr noundef %32) #11
  %33 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wilc, align 4
  tail call void @wiphy_free(ptr noundef %34) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wfi_deinit_mon_interface(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wilc_get_wl_to_vif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wlan_cfg_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlan_deinit_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wilc_netdev_ifc_init(ptr noundef %wl, ptr nocapture noundef readonly %name, i32 noundef %vif_type, i32 noundef %type, i1 noundef zeroext %rtnl_locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 5824, i32 noundef 1, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %priv = getelementptr i8, ptr %call, i32 6440
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %ieee80211_ptr, align 16
  %call4 = tail call ptr @strcpy(ptr noundef nonnull %call, ptr noundef %name) #16
  %wilc = getelementptr i8, ptr %call, i32 2412
  %1 = ptrtoint ptr %wilc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wl, ptr %wilc, align 4
  %ndev5 = getelementptr i8, ptr %call, i32 2428
  %2 = ptrtoint ptr %ndev5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ndev5, align 4
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 128
  %3 = ptrtoint ptr %ml_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %ml_priv, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wilc_netdev_ops, ptr %netdev_ops, align 8
  %5 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wl, align 4
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %parent, align 8
  %10 = load ptr, ptr %wl, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %priv, align 8
  %netdev = getelementptr i8, ptr %call, i32 6456
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %netdev, align 8
  %iftype = getelementptr i8, ptr %call, i32 6444
  %13 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %type, ptr %iftype, align 4
  %dev16 = getelementptr i8, ptr %call, i32 7500
  %14 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %dev16, align 4
  br i1 %rtnl_locked, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 @cfg80211_register_netdevice(ptr noundef nonnull %call) #11
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @register_netdev(ptr noundef nonnull %call) #11
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ %call20, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.error_crit_edge

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end24:                                         ; preds = %if.end21
  %call27 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.6, i32 noundef 655370, i32 noundef 1, ptr noundef nonnull %call) #11
  %hif_workqueue = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 39
  %15 = ptrtoint ptr %hif_workqueue to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call27, ptr %hif_workqueue, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end24.error_crit_edge, label %if.end31

if.end24.error_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end31:                                         ; preds = %if.end24
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 124
  %16 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %needs_free_netdev, align 8
  %conv = trunc i32 %vif_type to i8
  %iftype32 = getelementptr i8, ptr %call, i32 2305
  %17 = ptrtoint ptr %iftype32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %iftype32, align 1
  %srcu.i = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 13
  %call.i.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu.i) #11
  %dep_map.i.i = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 13, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i.i) #11
  %call1.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end31.do.end.i_crit_edge

if.end31.do.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end31
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b32.i = load i1, ptr @wilc_get_available_idx.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wilc_get_available_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 920, ptr noundef nonnull @.str.1) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end31.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 11
  %18 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn34.i = load volatile ptr, ptr %vif_list.i, align 4
  %cmp.not35.i = icmp eq ptr %.pn34.i, %vif_list.i
  br i1 %cmp.not35.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn36.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn34.i, %do.end.i.for.body.i_crit_edge ]
  %vif.0.i = getelementptr i8, ptr %.pn36.i, i32 -5808
  %19 = ptrtoint ptr %vif.0.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vif.0.i, align 8
  %21 = ptrtoint ptr %.pn36.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load volatile ptr, ptr %.pn36.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vif_list.i
  br i1 %cmp.not.i, label %for.cond.for.end_crit_edge.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.for.end_crit_edge.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp12.le.i = icmp eq i8 %20, 0
  %..le.i = zext i1 %cmp12.le.i to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.for.end_crit_edge.i, %do.end.i.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i8 [ %..le.i, %for.cond.for.end_crit_edge.i ], [ 0, %do.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %for.end.i.wilc_get_available_idx.exit_crit_edge, label %land.rhs.i.i

for.end.i.wilc_get_available_idx.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wilc_get_available_idx.exit

land.rhs.i.i:                                     ; preds = %for.end.i
  %.b40.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.wilc_get_available_idx.exit_crit_edge, label %if.then.i.i, !prof !132

land.rhs.i.i.wilc_get_available_idx.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wilc_get_available_idx.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %wilc_get_available_idx.exit

wilc_get_available_idx.exit:                      ; preds = %if.then.i.i, %land.rhs.i.i.wilc_get_available_idx.exit_crit_edge, %for.end.i.wilc_get_available_idx.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i) #11
  tail call void @__srcu_read_unlock(ptr noundef %srcu.i, i32 noundef %call.i.i) #11
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %idx.0.lcssa.i, ptr %add.ptr.i, align 8
  %mac_opened = getelementptr i8, ptr %call, i32 2312
  %23 = ptrtoint ptr %mac_opened to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mac_opened, align 8
  %vif_mutex = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #11
  %list = getelementptr i8, ptr %call, i32 8112
  %prev.i = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %25, ptr noundef %vif_list.i) #11
  br i1 %call.i.i77, label %if.end.i.i, label %wilc_get_available_idx.exit.list_add_tail_rcu.exit_crit_edge

wilc_get_available_idx.exit.list_add_tail_rcu.exit_crit_edge: ; preds = %wilc_get_available_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %wilc_get_available_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vif_list.i, ptr %list, align 4
  %prev2.i.i = getelementptr i8, ptr %call, i32 8116
  %27 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !135
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list, ptr %25, align 4
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %wilc_get_available_idx.exit.list_add_tail_rcu.exit_crit_edge
  %vif_num = getelementptr inbounds %struct.wilc, ptr %wl, i32 0, i32 10
  %30 = ptrtoint ptr %vif_num to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vif_num, align 4
  %add = add i8 %31, 1
  store i8 %add, ptr %vif_num, align 4
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #11
  tail call void @synchronize_srcu(ptr noundef %srcu.i) #11
  br label %cleanup

error:                                            ; preds = %if.end24.error_crit_edge, %if.end21.error_crit_edge
  %ret.1 = phi ptr [ inttoptr (i32 -14 to ptr), %if.end21.error_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end24.error_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %list_add_tail_rcu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.1, %error ], [ %add.ptr.i, %list_add_tail_rcu.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_init_fn(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i3 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_mac_open(ptr noundef %ndev) #0 align 64 {
entry:
  %mgmt_regs = alloca %struct.mgmt_frame_regs, align 4
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %wilc = getelementptr i8, ptr %ndev, i32 2412
  %0 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mgmt_regs) #11
  %2 = call ptr @memset(ptr %mgmt_regs, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #11
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %tobool.not = icmp eq ptr %1, null
  %4 = call ptr @memset(ptr %addr, i32 255, i32 6)
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 37
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %do.body2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.8) #14
  br label %cleanup

do.body2:                                         ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_mac_open.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_mac_open, %if.then7)) #11
          to label %do.end10 [label %if.then7], !srcloc !133

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_mac_open.__UNIQUE_ID_ddebug496, ptr noundef %ndev, ptr noundef nonnull @.str.10, ptr noundef %ndev) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2
  %call11 = tail call i32 @wilc_init_host_int(ptr noundef %ndev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %call15 = tail call fastcc i32 @wilc_wlan_initialize(ptr noundef %ndev, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wilc_deinit_host_int(ptr noundef %ndev) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @wilc_get_vif_idx(ptr noundef %add.ptr.i) #11
  %iftype = getelementptr i8, ptr %ndev, i32 2305
  %7 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iftype, align 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i, align 8
  %call20 = tail call i32 @wilc_set_operation_mode(ptr noundef %add.ptr.i, i32 noundef %call19, i8 noundef zeroext %8, i8 noundef zeroext %10) #11
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr, align 64
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end18.if.else_crit_edge

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %if.end18
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %or.i.i = or i32 %14, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then22

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then22:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %addr, align 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %3, align 4
  %call25 = call i32 @wilc_set_mac_address(ptr noundef %add.ptr.i, ptr noundef nonnull %addr) #11
  br label %do.body31

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %if.end18.if.else_crit_edge
  %call27 = call i32 @wilc_get_mac_address(ptr noundef %add.ptr.i, ptr noundef nonnull %addr) #11
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #11
  br label %do.body31

do.body31:                                        ; preds = %if.else, %if.then22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_mac_open.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_mac_open, %if.then43)) #11
          to label %do.end49 [label %if.then43], !srcloc !133

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_mac_open.__UNIQUE_ID_ddebug497, ptr noundef %ndev, ptr noundef nonnull @.str.11, ptr noundef %23) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body31
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i99 = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i99, label %is_valid_ether_addr.exit105, label %do.end49.if.then52_crit_edge

do.end49.if.then52_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52

is_valid_ether_addr.exit105:                      ; preds = %do.end49
  %add.ptr.i.i100 = getelementptr i8, ptr %25, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i100 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i100, align 2
  %conv.i.i101 = zext i16 %30 to i32
  %or.i.i102 = or i32 %27, %conv.i.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i102)
  %cmp.i.i103.not = icmp eq i32 %or.i.i102, 0
  br i1 %cmp.i.i103.not, label %is_valid_ether_addr.exit105.if.then52_crit_edge, label %if.end53

is_valid_ether_addr.exit105.if.then52_crit_edge:  ; preds = %is_valid_ether_addr.exit105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52

if.then52:                                        ; preds = %is_valid_ether_addr.exit105.if.then52_crit_edge, %do.end49.if.then52_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.12) #14
  call void @wilc_deinit_host_int(ptr noundef %ndev) #11
  call fastcc void @wilc_wlan_deinitialize(ptr noundef %ndev)
  br label %cleanup

if.end53:                                         ; preds = %is_valid_ether_addr.exit105
  call void @__sanitizer_cov_trace_pc() #13
  %mgmt_reg_stypes = getelementptr i8, ptr %ndev, i32 2316
  %31 = ptrtoint ptr %mgmt_reg_stypes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mgmt_reg_stypes, align 4
  %interface_stypes = getelementptr inbounds %struct.mgmt_frame_regs, ptr %mgmt_regs, i32 0, i32 1
  %33 = ptrtoint ptr %interface_stypes to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %interface_stypes, align 4
  store i32 0, ptr %mgmt_reg_stypes, align 4
  %ndev55 = getelementptr i8, ptr %ndev, i32 2428
  %34 = ptrtoint ptr %ndev55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev55, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 82
  %36 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ieee80211_ptr, align 16
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  call void @wilc_update_mgmt_frame_registrations(ptr noundef %39, ptr noundef %37, ptr noundef nonnull %mgmt_regs) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %41) #11
  %open_ifcs = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %open_ifcs to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %open_ifcs, align 4
  %inc = add i8 %43, 1
  store i8 %inc, ptr %open_ifcs, align 4
  %mac_opened = getelementptr i8, ptr %ndev, i32 2312
  %44 = ptrtoint ptr %mac_opened to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %mac_opened, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then52, %if.then17, %do.end10.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ 0, %if.end53 ], [ -22, %if.then52 ], [ -19, %if.then ], [ %call11, %do.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mgmt_regs) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_mac_close(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc = getelementptr i8, ptr %ndev, i32 2412
  %0 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_mac_close.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_mac_close, %if.then)) #11
          to label %do.end6 [label %if.then], !srcloc !133

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_mac_close.__UNIQUE_ID_ddebug503, ptr noundef %ndev, ptr noundef nonnull @.str.42) #11
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %open_ifcs = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %open_ifcs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %open_ifcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %do.end6.cleanup_crit_edge, label %if.then8

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %do.end6
  %dec = add i8 %3, -1
  %4 = ptrtoint ptr %open_ifcs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %dec, ptr %open_ifcs, align 4
  %ndev11 = getelementptr i8, ptr %ndev, i32 2428
  %5 = ptrtoint ptr %ndev11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev11, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.then8.if.end16_crit_edge, label %if.then13

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %9 = ptrtoint ptr %ndev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev11, align 4
  tail call void @wilc_deinit_host_int(ptr noundef %10) #11
  %11 = ptrtoint ptr %open_ifcs to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %open_ifcs, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then8.if.end16_crit_edge
  %12 = phi i8 [ %.pr, %if.then13 ], [ %dec, %if.then8.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp19 = icmp eq i8 %12, 0
  br i1 %cmp19, label %do.body23, label %if.end16.if.end41_crit_edge

if.end16.if.end41_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.body23:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_mac_close.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_mac_close, %if.then35)) #11
          to label %do.end40 [label %if.then35], !srcloc !133

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_mac_close.__UNIQUE_ID_ddebug504, ptr noundef %ndev, ptr noundef nonnull @.str.43) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body23
  %close = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %close, align 4
  tail call fastcc void @wilc_wlan_deinitialize(ptr noundef %ndev)
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %if.end16.if.end41_crit_edge
  %mac_opened = getelementptr i8, ptr %ndev, i32 2312
  %14 = ptrtoint ptr %mac_opened to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mac_opened, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end6.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_set_multicast_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %lor.lhs.false.if.then4_crit_edge, label %if.end6

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %call5 = tail call i32 @wilc_setup_multicast_filter(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9 = icmp eq i32 %3, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 @wilc_setup_multicast_filter(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 6) #11
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end12.cleanup_crit_edge, label %if.end7.i, !prof !136

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end12
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 2592) #17
  %tobool16.not = icmp eq ptr %call8.i, null
  br i1 %tobool16.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.074 = load ptr, ptr %mc, align 4
  %cmp23.not75 = icmp eq ptr %ha.074, %mc
  br i1 %cmp23.not75, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %do.end34.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.078 = phi ptr [ %ha.0, %do.end34.for.body_crit_edge ], [ %ha.074, %for.cond.preheader.for.body_crit_edge ]
  %i.077 = phi i32 [ %inc, %do.end34.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %cur_mc.076 = phi ptr [ %add.ptr35, %do.end34.for.body_crit_edge ], [ %call8.i, %for.cond.preheader.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.078, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %cur_mc.076, ptr %addr, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_set_multicast_list.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_set_multicast_list, %if.then31)) #11
          to label %do.end34 [label %if.then31], !srcloc !133

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_set_multicast_list.__UNIQUE_ID_ddebug500, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %i.077, ptr noundef %cur_mc.076) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %for.body
  %inc = add i32 %i.077, 1
  %add.ptr35 = getelementptr i8, ptr %cur_mc.076, i32 6
  %9 = ptrtoint ptr %ha.078 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.0 = load ptr, ptr %ha.078, align 4
  %cmp23.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp23.not, label %do.end34.for.end_crit_edge, label %do.end34.for.body_crit_edge

do.end34.for.body_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end34.for.end_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %do.end34.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  %call43 = tail call i32 @wilc_setup_multicast_filter(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %11, ptr noundef nonnull %call8.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.end.cleanup_crit_edge, label %if.then45

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %for.end.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_set_mac_addr(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wilc1 = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #11
  %2 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %3 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %4 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sa_data, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %mac_opened = getelementptr i8, ptr %dev, i32 2312
  %9 = ptrtoint ptr %mac_opened to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @eth_commit_mac_addr_change(ptr noundef %dev, ptr noundef %p) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %srcu = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #11
  %dep_map.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 13, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #11
  %call6 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end4.do.end_crit_edge

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.end4
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @wilc_set_mac_addr.__warned, align 1
  br i1 %.b75, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wilc_set_mac_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end4.do.end_crit_edge
  %vif_list = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %vif_list, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %vif_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %tmp_vif.0 = getelementptr i8, ptr %.pn, i32 -5808
  %call20 = call i32 @wilc_get_mac_address(ptr noundef %tmp_vif.0, ptr noundef nonnull %mac_addr) #11
  %12 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sa_data, align 4
  %14 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %15, %13
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %2, align 4
  %xor37.i = xor i16 %19, %17
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then25, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then25:                                        ; preds = %for.body
  %cmp26.not = icmp eq ptr %add.ptr.i, %tmp_vif.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i79 = icmp ult i32 %call.i, 2
  br i1 %cmp26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then25
  br i1 %tobool.not.i79, label %if.then27.srcu_read_unlock.exit_crit_edge, label %land.rhs.i77

if.then27.srcu_read_unlock.exit_crit_edge:        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i77:                                     ; preds = %if.then27
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i77.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !132

land.rhs.i77.srcu_read_unlock.exit_crit_edge:     ; preds = %land.rhs.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i77
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i77.srcu_read_unlock.exit_crit_edge, %if.then27.srcu_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #11
  call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #11
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  br i1 %tobool.not.i79, label %if.end29.srcu_read_unlock.exit84_crit_edge, label %land.rhs.i81

if.end29.srcu_read_unlock.exit84_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit84

land.rhs.i81:                                     ; preds = %if.end29
  %.b40.i80 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i80, label %land.rhs.i81.srcu_read_unlock.exit84_crit_edge, label %if.then.i82, !prof !132

land.rhs.i81.srcu_read_unlock.exit84_crit_edge:   ; preds = %land.rhs.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit84

if.then.i82:                                      ; preds = %land.rhs.i81
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit84

srcu_read_unlock.exit84:                          ; preds = %if.then.i82, %land.rhs.i81.srcu_read_unlock.exit84_crit_edge, %if.end29.srcu_read_unlock.exit84_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #11
  call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i85 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i85, label %for.end.srcu_read_unlock.exit90_crit_edge, label %land.rhs.i87

for.end.srcu_read_unlock.exit90_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit90

land.rhs.i87:                                     ; preds = %for.end
  %.b40.i86 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i86, label %land.rhs.i87.srcu_read_unlock.exit90_crit_edge, label %if.then.i88, !prof !132

land.rhs.i87.srcu_read_unlock.exit90_crit_edge:   ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit90

if.then.i88:                                      ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit90

srcu_read_unlock.exit90:                          ; preds = %if.then.i88, %land.rhs.i87.srcu_read_unlock.exit90_crit_edge, %for.end.srcu_read_unlock.exit90_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #11
  call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #11
  %call44 = call i32 @wilc_set_mac_address(ptr noundef %add.ptr.i, ptr noundef %sa_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %srcu_read_unlock.exit90.cleanup_crit_edge

srcu_read_unlock.exit90.cleanup_crit_edge:        ; preds = %srcu_read_unlock.exit90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %srcu_read_unlock.exit90
  call void @__sanitizer_cov_trace_pc() #13
  call void @eth_commit_mac_addr_change(ptr noundef %dev, ptr noundef %p) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %srcu_read_unlock.exit90.cleanup_crit_edge, %srcu_read_unlock.exit84, %srcu_read_unlock.exit, %if.then3, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %srcu_read_unlock.exit ], [ 0, %srcu_read_unlock.exit84 ], [ 0, %if.end47 ], [ 0, %if.then3 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call44, %srcu_read_unlock.exit90.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mac_stats(ptr noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netstats = getelementptr i8, ptr %dev, i32 2320
  ret ptr %netstats
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_init_host_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_wlan_initialize(ptr noundef %dev, ptr noundef %vif) unnamed_addr #0 align 64 {
entry:
  %wilc_fw.i = alloca ptr, align 4
  %firmware_ver = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 6
  %0 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc, align 4
  %initialized = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %do.body70

if.then:                                          ; preds = %entry
  %mac_status = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mac_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %mac_status, align 4
  %close = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %close, align 4
  %call = tail call i32 @wilc_wlan_init(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %wilc1.i = getelementptr i8, ptr %dev, i32 2412
  %6 = ptrtoint ptr %wilc1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wilc1.i, align 4
  %call2.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @wilc_txq_task, ptr noundef %7, i32 noundef -1, ptr noundef nonnull @.str.18, ptr noundef %dev) #11
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %wlan_initialize_threads.exit, label %wlan_initialize_threads.exit.thread

wlan_initialize_threads.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 @wake_up_process(ptr noundef %call2.i) #11
  %txq_thread.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %txq_thread.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2.i, ptr %txq_thread.i, align 4
  %txq_thread_started.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 22
  tail call void @wait_for_completion(ptr noundef %txq_thread_started.i) #11
  br label %if.end6

wlan_initialize_threads.exit:                     ; preds = %if.end
  %txq_thread22.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 23
  %9 = ptrtoint ptr %txq_thread22.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2.i, ptr %txq_thread22.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #14
  %close.i = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %close.i, align 4
  %11 = ptrtoint ptr %txq_thread22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txq_thread22.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %wlan_initialize_threads.exit.if.end6_crit_edge, label %wlan_initialize_threads.exit.fail_wilc_wlan_crit_edge

wlan_initialize_threads.exit.fail_wilc_wlan_crit_edge: ; preds = %wlan_initialize_threads.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_wilc_wlan

wlan_initialize_threads.exit.if.end6_crit_edge:   ; preds = %wlan_initialize_threads.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %wlan_initialize_threads.exit.if.end6_crit_edge, %wlan_initialize_threads.exit.thread
  %dev_irq_num = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %dev_irq_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %land.lhs.true

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %16 = ptrtoint ptr %wilc1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wilc1.i, align 4
  %dev_irq_num.i = getelementptr inbounds %struct.wilc, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %dev_irq_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_irq_num.i, align 4
  %call1.i = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @isr_uh_routine, ptr noundef nonnull @isr_bh_routine, i32 noundef 8194, ptr noundef %dev, ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %init_irq.exit.thread167

init_irq.exit.thread167:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call1.i) #14
  br label %fail_threads

do.body2.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_irq.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_initialize, %init_irq.exit.thread)) #11
          to label %if.end11 [label %init_irq.exit.thread], !srcloc !133

init_irq.exit.thread:                             ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev_irq_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_irq_num.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @init_irq.__UNIQUE_ID_ddebug482, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %21) #11
  br label %if.end11

if.end11:                                         ; preds = %init_irq.exit.thread, %do.body2.i, %if.end6.if.end11_crit_edge
  %22 = ptrtoint ptr %dev_irq_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true14:                                  ; preds = %if.end11
  %hif_func = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hif_func, align 4
  %enable_interrupt = getelementptr inbounds %struct.wilc_hif_func, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %enable_interrupt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enable_interrupt, align 4
  %tobool15.not = icmp eq ptr %27, null
  br i1 %tobool15.not, label %land.lhs.true14.if.end22_crit_edge, label %land.lhs.true16

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %call19 = tail call i32 %27(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true16.if.end22_crit_edge, label %land.lhs.true16.fail_irq_init_crit_edge

land.lhs.true16.fail_irq_init_crit_edge:          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_irq_init

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true16.if.end22_crit_edge, %land.lhs.true14.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %28 = ptrtoint ptr %wilc1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wilc1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wilc_fw.i) #11
  %30 = ptrtoint ptr %wilc_fw.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %wilc_fw.i, align 4, !annotation !131
  %call2.i135 = tail call i32 @wilc_get_chipid(ptr noundef %29, i1 noundef zeroext false) #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call2.i135, ptr noundef nonnull @.str.28) #14
  %dev3.i = getelementptr inbounds %struct.wilc, ptr %29, i32 0, i32 37
  %31 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev3.i, align 4
  %call4.i136 = call i32 @request_firmware(ptr noundef nonnull %wilc_fw.i, ptr noundef nonnull @.str.28, ptr noundef %32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i136)
  %cmp.not.i = icmp eq i32 %call4.i136, 0
  br i1 %cmp.not.i, label %if.end26, label %wilc_wlan_get_firmware.exit

wilc_wlan_get_firmware.exit:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wilc_fw.i) #11
  br label %fail_irq_enable

if.end26:                                         ; preds = %if.end22
  %33 = ptrtoint ptr %wilc_fw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wilc_fw.i, align 4
  %firmware.i = getelementptr inbounds %struct.wilc, ptr %29, i32 0, i32 36
  %35 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %firmware.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wilc_fw.i) #11
  %36 = ptrtoint ptr %wilc1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wilc1.i, align 4
  %firmware.i140 = getelementptr inbounds %struct.wilc, ptr %37, i32 0, i32 36
  %38 = ptrtoint ptr %firmware.i140 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %firmware.i140, align 4
  %tobool.not.i141 = icmp eq ptr %39, null
  br i1 %tobool.not.i141, label %if.then.i142, label %if.end.i144

if.then.i142:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #14
  br label %fail_irq_enable

if.end.i144:                                      ; preds = %if.end26
  %data.i = getelementptr inbounds %struct.firmware, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  %call4.i143 = call i32 @wilc_wlan_firmware_download(ptr noundef %37, ptr noundef %41, i32 noundef %43) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i143)
  %tobool5.not.i = icmp eq i32 %call4.i143, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i144.fail_irq_enable_crit_edge

if.end.i144.fail_irq_enable_crit_edge:            ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_irq_enable

if.end7.i:                                        ; preds = %if.end.i144
  %44 = ptrtoint ptr %firmware.i140 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %firmware.i140, align 4
  call void @release_firmware(ptr noundef %45) #11
  %46 = ptrtoint ptr %firmware.i140 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %firmware.i140, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc1000_firmware_download.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_initialize, %if.then15.i)) #11
          to label %if.end30 [label %if.then15.i], !srcloc !133

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc1000_firmware_download.__UNIQUE_ID_ddebug489, ptr noundef %dev, ptr noundef nonnull @.str.32) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then15.i, %if.end7.i
  %47 = ptrtoint ptr %wilc1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wilc1.i, align 4
  %call2.i147 = call i32 @wilc_wlan_start(ptr noundef %48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i147)
  %tobool.not.i148 = icmp eq i32 %call2.i147, 0
  br i1 %tobool.not.i148, label %if.end.i151, label %if.end30.fail_irq_enable_crit_edge

if.end30.fail_irq_enable_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_irq_enable

if.end.i151:                                      ; preds = %if.end30
  %sync_event.i = getelementptr inbounds %struct.wilc, ptr %48, i32 0, i32 20
  %call4.i149 = call i32 @wait_for_completion_timeout(ptr noundef %sync_event.i, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i149)
  %tobool5.not.i150 = icmp eq i32 %call4.i149, 0
  br i1 %tobool5.not.i150, label %if.end.i151.fail_irq_enable_crit_edge, label %if.end34

if.end.i151.fail_irq_enable_crit_edge:            ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_irq_enable

if.end34:                                         ; preds = %if.end.i151
  %call35 = call i32 @wilc_wlan_cfg_get(ptr noundef %vif, i32 noundef 1, i16 noundef zeroext 12289, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.if.end49_crit_edge, label %if.then37

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then37:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %firmware_ver) #11
  %49 = call ptr @memset(ptr %firmware_ver, i32 255, i32 20)
  %call38 = call i32 @wilc_wlan_cfg_get_val(ptr noundef %1, i16 noundef zeroext 12289, ptr noundef nonnull %firmware_ver, i32 noundef 20) #11
  %arrayidx = getelementptr [20 x i8], ptr %firmware_ver, i32 0, i32 %call38
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_initialize.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_initialize, %if.then44)) #11
          to label %do.end48 [label %if.then44], !srcloc !133

if.then44:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_initialize.__UNIQUE_ID_ddebug494, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %firmware_ver) #11
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %if.then37
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %firmware_ver) #11
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %if.end34.if.end49_crit_edge
  %call50 = call fastcc i32 @wilc_init_fw_config(ptr noundef %dev, ptr noundef %vif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #14
  %call55 = call i32 @wilc_wlan_stop(ptr noundef %1, ptr noundef %vif) #11
  br label %fail_irq_enable

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %initialized, align 4
  br label %cleanup

fail_irq_enable:                                  ; preds = %if.then52, %if.end.i151.fail_irq_enable_crit_edge, %if.end30.fail_irq_enable_crit_edge, %if.end.i144.fail_irq_enable_crit_edge, %if.then.i142, %wilc_wlan_get_firmware.exit
  %ret.0 = phi i32 [ -22, %wilc_wlan_get_firmware.exit ], [ %call50, %if.then52 ], [ %call4.i143, %if.end.i144.fail_irq_enable_crit_edge ], [ -105, %if.then.i142 ], [ %call2.i147, %if.end30.fail_irq_enable_crit_edge ], [ -62, %if.end.i151.fail_irq_enable_crit_edge ]
  %52 = ptrtoint ptr %dev_irq_num to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dev_irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool57.not = icmp eq i32 %53, 0
  br i1 %tobool57.not, label %land.lhs.true58, label %fail_irq_enable.if.then67_crit_edge

fail_irq_enable.if.then67_crit_edge:              ; preds = %fail_irq_enable
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

land.lhs.true58:                                  ; preds = %fail_irq_enable
  %hif_func59 = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %hif_func59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hif_func59, align 4
  %disable_interrupt = getelementptr inbounds %struct.wilc_hif_func, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %disable_interrupt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %disable_interrupt, align 4
  %tobool60.not = icmp eq ptr %57, null
  br i1 %tobool60.not, label %land.lhs.true58.fail_irq_init_crit_edge, label %if.then61

land.lhs.true58.fail_irq_init_crit_edge:          ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_irq_init

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  call void %57(ptr noundef %1) #11
  br label %fail_irq_init

fail_irq_init:                                    ; preds = %if.then61, %land.lhs.true58.fail_irq_init_crit_edge, %land.lhs.true16.fail_irq_init_crit_edge
  %ret.1.ph = phi i32 [ -5, %land.lhs.true16.fail_irq_init_crit_edge ], [ %ret.0, %land.lhs.true58.fail_irq_init_crit_edge ], [ %ret.0, %if.then61 ]
  %58 = ptrtoint ptr %dev_irq_num to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load i32, ptr %dev_irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool66.not = icmp eq i32 %.pr, 0
  br i1 %tobool66.not, label %fail_irq_init.fail_threads_crit_edge, label %fail_irq_init.if.then67_crit_edge

fail_irq_init.if.then67_crit_edge:                ; preds = %fail_irq_init
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

fail_irq_init.fail_threads_crit_edge:             ; preds = %fail_irq_init
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_threads

if.then67:                                        ; preds = %fail_irq_init.if.then67_crit_edge, %fail_irq_enable.if.then67_crit_edge
  %ret.1177 = phi i32 [ %ret.1.ph, %fail_irq_init.if.then67_crit_edge ], [ %ret.0, %fail_irq_enable.if.then67_crit_edge ]
  %59 = ptrtoint ptr %wilc1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wilc1.i, align 4
  %dev_irq_num.i154 = getelementptr inbounds %struct.wilc, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %dev_irq_num.i154 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dev_irq_num.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i155 = icmp eq i32 %62, 0
  br i1 %tobool.not.i155, label %if.then67.fail_threads_crit_edge, label %if.then.i156

if.then67.fail_threads_crit_edge:                 ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_threads

if.then.i156:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = call ptr @free_irq(i32 noundef %62, ptr noundef %60) #11
  br label %fail_threads

fail_threads:                                     ; preds = %if.then.i156, %if.then67.fail_threads_crit_edge, %fail_irq_init.fail_threads_crit_edge, %init_irq.exit.thread167
  %ret.2 = phi i32 [ %ret.1.ph, %fail_irq_init.fail_threads_crit_edge ], [ -5, %init_irq.exit.thread167 ], [ %ret.1177, %if.then67.fail_threads_crit_edge ], [ %ret.1177, %if.then.i156 ]
  %63 = ptrtoint ptr %wilc1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wilc1.i, align 4
  %close.i159 = getelementptr inbounds %struct.wilc, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %close.i159 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %close.i159, align 4
  %txq_event.i = getelementptr inbounds %struct.wilc, ptr %64, i32 0, i32 21
  call void @complete(ptr noundef %txq_event.i) #11
  %txq_thread.i160 = getelementptr inbounds %struct.wilc, ptr %64, i32 0, i32 23
  %66 = ptrtoint ptr %txq_thread.i160 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %txq_thread.i160, align 4
  %tobool.not.i161 = icmp eq ptr %67, null
  br i1 %tobool.not.i161, label %fail_threads.fail_wilc_wlan_crit_edge, label %if.then.i163

fail_threads.fail_wilc_wlan_crit_edge:            ; preds = %fail_threads
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_wilc_wlan

if.then.i163:                                     ; preds = %fail_threads
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i162 = call i32 @kthread_stop(ptr noundef nonnull %67) #11
  %68 = ptrtoint ptr %txq_thread.i160 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %txq_thread.i160, align 4
  br label %fail_wilc_wlan

fail_wilc_wlan:                                   ; preds = %if.then.i163, %fail_threads.fail_wilc_wlan_crit_edge, %wlan_initialize_threads.exit.fail_wilc_wlan_crit_edge
  %ret.3 = phi i32 [ %13, %wlan_initialize_threads.exit.fail_wilc_wlan_crit_edge ], [ %ret.2, %fail_threads.fail_wilc_wlan_crit_edge ], [ %ret.2, %if.then.i163 ]
  call void @wilc_wlan_cleanup(ptr noundef %dev) #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  br label %cleanup

do.body70:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_initialize.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_initialize, %if.then82)) #11
          to label %cleanup [label %if.then82], !srcloc !133

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_initialize.__UNIQUE_ID_ddebug495, ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %do.body70, %fail_wilc_wlan, %if.end53, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.then82 ], [ %ret.3, %fail_wilc_wlan ], [ 0, %do.body70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_deinit_host_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_operation_mode(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_vif_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_set_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wilc_wlan_deinitialize(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wilc = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %initialized = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %do.body22, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #14
  %dev_irq_num = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dev_irq_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then2
  %hif_func = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hif_func, align 4
  %disable_interrupt = getelementptr inbounds %struct.wilc_hif_func, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %disable_interrupt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_interrupt, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %hif_cs = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %hif_cs, i32 noundef 0) #11
  %10 = ptrtoint ptr %hif_func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_func, align 4
  %disable_interrupt7 = getelementptr inbounds %struct.wilc_hif_func, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %disable_interrupt7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable_interrupt7, align 4
  tail call void %13(ptr noundef nonnull %1) #11
  tail call void @mutex_unlock(ptr noundef %hif_cs) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %land.lhs.true.if.end9_crit_edge, %if.then2.if.end9_crit_edge
  %txq_event = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 21
  tail call void @complete(ptr noundef %txq_event) #11
  %14 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wilc, align 4
  %close.i = getelementptr inbounds %struct.wilc, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %close.i, align 4
  %txq_event.i = getelementptr inbounds %struct.wilc, ptr %15, i32 0, i32 21
  tail call void @complete(ptr noundef %txq_event.i) #11
  %txq_thread.i = getelementptr inbounds %struct.wilc, ptr %15, i32 0, i32 23
  %17 = ptrtoint ptr %txq_thread.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %txq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end9.wlan_deinitialize_threads.exit_crit_edge, label %if.then.i

if.end9.wlan_deinitialize_threads.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %wlan_deinitialize_threads.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @kthread_stop(ptr noundef nonnull %18) #11
  %19 = ptrtoint ptr %txq_thread.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %txq_thread.i, align 4
  br label %wlan_deinitialize_threads.exit

wlan_deinitialize_threads.exit:                   ; preds = %if.then.i, %if.end9.wlan_deinitialize_threads.exit_crit_edge
  %20 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wilc, align 4
  %dev_irq_num.i = getelementptr inbounds %struct.wilc, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %dev_irq_num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_irq_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i63 = icmp eq i32 %23, 0
  br i1 %tobool.not.i63, label %wlan_deinitialize_threads.exit.deinit_irq.exit_crit_edge, label %if.then.i64

wlan_deinitialize_threads.exit.deinit_irq.exit_crit_edge: ; preds = %wlan_deinitialize_threads.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %deinit_irq.exit

if.then.i64:                                      ; preds = %wlan_deinitialize_threads.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call ptr @free_irq(i32 noundef %23, ptr noundef %21) #11
  br label %deinit_irq.exit

deinit_irq.exit:                                  ; preds = %if.then.i64, %wlan_deinitialize_threads.exit.deinit_irq.exit_crit_edge
  %call10 = tail call i32 @wilc_wlan_stop(ptr noundef nonnull %1, ptr noundef %add.ptr.i) #11
  tail call void @wilc_wlan_cleanup(ptr noundef %dev) #11
  %24 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %initialized, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_deinitialize.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_deinitialize, %if.then17)) #11
          to label %cleanup [label %if.then17], !srcloc !133

if.then17:                                        ; preds = %deinit_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_deinitialize.__UNIQUE_ID_ddebug492, ptr noundef %dev, ptr noundef nonnull @.str.39) #11
  br label %cleanup

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_wlan_deinitialize.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_wlan_deinitialize, %if.then34)) #11
          to label %cleanup [label %if.then34], !srcloc !133

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_wlan_deinitialize.__UNIQUE_ID_ddebug493, ptr noundef %dev, ptr noundef nonnull @.str.40) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body22, %if.then17, %deinit_irq.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_update_mgmt_frame_registrations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_cfg_get(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_init_fw_config(ptr noundef %dev, ptr noundef %vif) unnamed_addr #0 align 64 {
entry:
  %b = alloca i8, align 1
  %hw = alloca i16, align 2
  %w = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #11
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !131
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hw) #11
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %hw, align 2, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w) #11
  %2 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %w, align 4, !annotation !131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_init_fw_config.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_init_fw_config, %if.then)) #11
          to label %do.end6 [label %if.then], !srcloc !133

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_init_fw_config.__UNIQUE_ID_ddebug490, ptr noundef %dev, ptr noundef nonnull @.str.34) #11
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %hif_drv7 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 16, i32 9
  %3 = ptrtoint ptr %hif_drv7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_drv7, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_init_fw_config.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_init_fw_config, %if.then21)) #11
          to label %do.end26 [label %if.then21], !srcloc !133

if.then21:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_init_fw_config.__UNIQUE_ID_ddebug491, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %4) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.end6
  %iftype = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iftype, align 1
  %conv = zext i8 %6 to i32
  %7 = shl nuw i32 %conv, 24
  %8 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %w, align 4
  %call27 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 1, i16 noundef zeroext 12409, ptr noundef nonnull %w, i32 noundef 4, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end26.fail_crit_edge, label %if.end30

do.end26.fail_crit_edge:                          ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end30:                                         ; preds = %do.end26
  %9 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %b, align 1
  %call31 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 0, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.fail_crit_edge, label %if.end34

if.end30.fail_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end34:                                         ; preds = %if.end30
  %10 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %b, align 1
  %call35 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 1, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.fail_crit_edge, label %if.end38

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end38:                                         ; preds = %if.end34
  %11 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %b, align 1
  %call39 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end38.fail_crit_edge, label %if.end42

if.end38.fail_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end42:                                         ; preds = %if.end38
  %12 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %b, align 1
  %call43 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 3, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.fail_crit_edge, label %if.end46

if.end42.fail_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end46:                                         ; preds = %if.end42
  %13 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %b, align 1
  %call47 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 128, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.fail_crit_edge, label %if.end50

if.end46.fail_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end50:                                         ; preds = %if.end46
  %14 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %b, align 1
  %call51 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 7, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.fail_crit_edge, label %if.end54

if.end50.fail_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end54:                                         ; preds = %if.end50
  %15 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %b, align 1
  %call55 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 14, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end54.fail_crit_edge, label %if.end58

if.end54.fail_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end58:                                         ; preds = %if.end54
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %hw, align 2
  %call59 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 4096, ptr noundef nonnull %hw, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.fail_crit_edge, label %if.end62

if.end58.fail_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end62:                                         ; preds = %if.end58
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 10761, ptr %hw, align 2
  %call63 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 4097, ptr noundef nonnull %hw, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end62.fail_crit_edge, label %if.end66

if.end62.fail_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end66:                                         ; preds = %if.end62
  %18 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %b, align 1
  %call67 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 21, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.fail_crit_edge, label %if.end70

if.end66.fail_crit_edge:                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end70:                                         ; preds = %if.end66
  %19 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %b, align 1
  %call71 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 10, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end70.fail_crit_edge, label %if.end74

if.end70.fail_crit_edge:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end74:                                         ; preds = %if.end70
  %20 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %b, align 1
  %call75 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 11, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end74.fail_crit_edge, label %if.end78

if.end74.fail_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end78:                                         ; preds = %if.end74
  %21 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %b, align 1
  %call79 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end78.fail_crit_edge, label %if.end82

if.end78.fail_crit_edge:                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end82:                                         ; preds = %if.end78
  %22 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %b, align 1
  %call83 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 13, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end82.fail_crit_edge, label %if.end86

if.end82.fail_crit_edge:                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end86:                                         ; preds = %if.end82
  %23 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %b, align 1
  %call87 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 15, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end86.fail_crit_edge, label %if.end90

if.end86.fail_crit_edge:                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end90:                                         ; preds = %if.end86
  %24 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %b, align 1
  %call91 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 16, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.fail_crit_edge, label %if.end94

if.end90.fail_crit_edge:                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end94:                                         ; preds = %if.end90
  %25 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b, align 1
  %call95 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 17, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end94.fail_crit_edge, label %if.end98

if.end94.fail_crit_edge:                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end98:                                         ; preds = %if.end94
  %26 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %b, align 1
  %call99 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 39, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end98.fail_crit_edge, label %if.end102

if.end98.fail_crit_edge:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end102:                                        ; preds = %if.end98
  %27 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 48, ptr %b, align 1
  %call103 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 24, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end102.fail_crit_edge, label %if.end106

if.end102.fail_crit_edge:                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end106:                                        ; preds = %if.end102
  %28 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 28, ptr %b, align 1
  %call107 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 29, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end106.fail_crit_edge, label %if.end110

if.end106.fail_crit_edge:                         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end110:                                        ; preds = %if.end106
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 25600, ptr %hw, align 2
  %call111 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 4102, ptr noundef nonnull %hw, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end110.fail_crit_edge, label %if.end114

if.end110.fail_crit_edge:                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end114:                                        ; preds = %if.end110
  %30 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %b, align 1
  %call115 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 25, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end114.fail_crit_edge, label %if.end118

if.end114.fail_crit_edge:                         ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end118:                                        ; preds = %if.end114
  %31 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2018115840, ptr %w, align 4
  %call119 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 8208, ptr noundef nonnull %w, i32 noundef 4, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end118.fail_crit_edge, label %if.end122

if.end118.fail_crit_edge:                         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end122:                                        ; preds = %if.end118
  %32 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -201261056, ptr %w, align 4
  %call123 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 8209, ptr noundef nonnull %w, i32 noundef 4, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end122.fail_crit_edge, label %if.end126

if.end122.fail_crit_edge:                         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end126:                                        ; preds = %if.end122
  %33 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %b, align 1
  %call127 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 26, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end126.fail_crit_edge, label %if.end130

if.end126.fail_crit_edge:                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end130:                                        ; preds = %if.end126
  %34 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %b, align 1
  %call131 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 129, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end130.fail_crit_edge, label %if.end134

if.end130.fail_crit_edge:                         ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end134:                                        ; preds = %if.end130
  %35 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %b, align 1
  %call135 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 130, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end134.fail_crit_edge, label %if.end138

if.end134.fail_crit_edge:                         ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end138:                                        ; preds = %if.end134
  %36 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %b, align 1
  %call139 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 131, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end138.fail_crit_edge, label %if.end142

if.end138.fail_crit_edge:                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end142:                                        ; preds = %if.end138
  %37 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %b, align 1
  %call143 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 176, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end142.fail_crit_edge, label %if.end146

if.end142.fail_crit_edge:                         ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end146:                                        ; preds = %if.end142
  %38 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %b, align 1
  %call147 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 132, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end146.fail_crit_edge, label %if.end150

if.end146.fail_crit_edge:                         ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end150:                                        ; preds = %if.end146
  %39 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b, align 1
  %call151 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 133, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end150.fail_crit_edge, label %if.end154

if.end150.fail_crit_edge:                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end154:                                        ; preds = %if.end150
  %40 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %b, align 1
  %call155 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 134, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end154.fail_crit_edge, label %if.end158

if.end154.fail_crit_edge:                         ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end158:                                        ; preds = %if.end154
  %41 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 7, ptr %b, align 1
  %call159 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 136, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end158.fail_crit_edge, label %if.end162

if.end158.fail_crit_edge:                         ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end162:                                        ; preds = %if.end158
  %42 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %b, align 1
  %call163 = call i32 @wilc_wlan_cfg_set(ptr noundef %vif, i32 noundef 0, i16 noundef zeroext 175, ptr noundef nonnull %b, i32 noundef 1, i32 noundef 1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end162.fail_crit_edge, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end162.fail_crit_edge:                         ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

fail:                                             ; preds = %if.end162.fail_crit_edge, %if.end158.fail_crit_edge, %if.end154.fail_crit_edge, %if.end150.fail_crit_edge, %if.end146.fail_crit_edge, %if.end142.fail_crit_edge, %if.end138.fail_crit_edge, %if.end134.fail_crit_edge, %if.end130.fail_crit_edge, %if.end126.fail_crit_edge, %if.end122.fail_crit_edge, %if.end118.fail_crit_edge, %if.end114.fail_crit_edge, %if.end110.fail_crit_edge, %if.end106.fail_crit_edge, %if.end102.fail_crit_edge, %if.end98.fail_crit_edge, %if.end94.fail_crit_edge, %if.end90.fail_crit_edge, %if.end86.fail_crit_edge, %if.end82.fail_crit_edge, %if.end78.fail_crit_edge, %if.end74.fail_crit_edge, %if.end70.fail_crit_edge, %if.end66.fail_crit_edge, %if.end62.fail_crit_edge, %if.end58.fail_crit_edge, %if.end54.fail_crit_edge, %if.end50.fail_crit_edge, %if.end46.fail_crit_edge, %if.end42.fail_crit_edge, %if.end38.fail_crit_edge, %if.end34.fail_crit_edge, %if.end30.fail_crit_edge, %do.end26.fail_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end162.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %fail ], [ 0, %if.end162.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hw) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_wlan_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_txq_task(ptr noundef %vp) #0 align 64 {
entry:
  %txq_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txq_count) #11
  %0 = ptrtoint ptr %txq_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %txq_count, align 4, !annotation !131
  %txq_thread_started = getelementptr inbounds %struct.wilc, ptr %vp, i32 0, i32 22
  tail call void @complete(ptr noundef %txq_thread_started) #11
  %txq_event = getelementptr inbounds %struct.wilc, ptr %vp, i32 0, i32 21
  call void @wait_for_completion(ptr noundef %txq_event) #11
  %close = getelementptr inbounds %struct.wilc, ptr %vp, i32 0, i32 9
  %1 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not64 = icmp eq i32 %2, 0
  br i1 %tobool.not64, label %do.body.preheader.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

do.body.preheader.lr.ph:                          ; preds = %entry
  %srcu = getelementptr inbounds %struct.wilc, ptr %vp, i32 0, i32 13
  %dep_map.i = getelementptr inbounds %struct.wilc, ptr %vp, i32 0, i32 13, i32 16
  %vif_list = getelementptr inbounds %struct.wilc, ptr %vp, i32 0, i32 11
  br label %do.body

if.then:                                          ; preds = %do.end44.if.then_crit_edge, %entry.if.then_crit_edge
  call void @complete(ptr noundef %txq_thread_started) #11
  %call65 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call65, label %if.then.while.end45_crit_edge, label %if.then.while.body3_crit_edge

if.then.while.body3_crit_edge:                    ; preds = %if.then
  br label %while.body3

if.then.while.end45_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end45

while.body3:                                      ; preds = %while.body3.while.body3_crit_edge, %if.then.while.body3_crit_edge
  call void @schedule() #11
  %call = call zeroext i1 @kthread_should_stop() #11
  br i1 %call, label %while.body3.while.end45_crit_edge, label %while.body3.while.body3_crit_edge

while.body3.while.body3_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body3

while.body3.while.end45_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end45

do.body:                                          ; preds = %do.body.backedge, %do.body.preheader.lr.ph
  %call4 = call i32 @wilc_wlan_handle_txq(ptr noundef %vp, ptr noundef nonnull %txq_count) #11
  %3 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %4)
  %cmp = icmp ult i32 %4, 128
  br i1 %cmp, label %if.then5, label %do.body.do.cond39_crit_edge

do.body.do.cond39_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond39

if.then5:                                         ; preds = %do.body
  %call.i = call i32 @__srcu_read_lock(ptr noundef %srcu) #11
  call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #11
  %call8 = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.then5.do.end_crit_edge

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.then5
  %call10 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b59 = load i1, ptr @wilc_txq_task.__warned, align 1
  br i1 %.b59, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @wilc_txq_task.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then5.do.end_crit_edge
  %5 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn61 = load volatile ptr, ptr %vif_list, align 4
  %cmp21.not62 = icmp eq ptr %.pn61, %vif_list
  br i1 %cmp21.not62, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn63 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn61, %do.end.for.body_crit_edge ]
  %mac_opened = getelementptr i8, ptr %.pn63, i32 -5800
  %6 = ptrtoint ptr %mac_opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool22.not = icmp eq i32 %7, 0
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %land.lhs.true23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true23:                                  ; preds = %for.body
  %ndev = getelementptr i8, ptr %.pn63, i32 -5684
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %tobool24.not = icmp eq ptr %9, null
  br i1 %tobool24.not, label %land.lhs.true23.for.inc_crit_edge, label %if.then25

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %11) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %land.lhs.true23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn63 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load volatile ptr, ptr %.pn63, align 4
  %cmp21.not = icmp eq ptr %.pn, %vif_list
  br i1 %cmp21.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %for.end.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

for.end.srcu_read_unlock.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %for.end
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !132

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %for.end.srcu_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #11
  call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #11
  br label %do.cond39

do.cond39:                                        ; preds = %srcu_read_unlock.exit, %do.body.do.cond39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp40 = icmp eq i32 %call4, 1
  br i1 %cmp40, label %land.rhs, label %do.cond39.do.end44_crit_edge

do.cond39.do.end44_crit_edge:                     ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

land.rhs:                                         ; preds = %do.cond39
  %13 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool42.not = icmp eq i32 %14, 0
  br i1 %tobool42.not, label %land.rhs.do.body.backedge_crit_edge, label %land.rhs.do.end44_crit_edge

land.rhs.do.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

land.rhs.do.body.backedge_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.end44.do.body.backedge_crit_edge, %land.rhs.do.body.backedge_crit_edge
  br label %do.body

do.end44:                                         ; preds = %land.rhs.do.end44_crit_edge, %do.cond39.do.end44_crit_edge
  call void @wait_for_completion(ptr noundef %txq_event) #11
  %15 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.end44.do.body.backedge_crit_edge, label %do.end44.if.then_crit_edge

do.end44.if.then_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

do.end44.do.body.backedge_crit_edge:              ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

while.end45:                                      ; preds = %while.body3.while.end45_crit_edge, %if.then.while.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txq_count) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_handle_txq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_uh_routine(i32 noundef %irq, ptr nocapture noundef readonly %user_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %close = getelementptr inbounds %struct.wilc, ptr %user_data, i32 0, i32 9
  %0 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_bh_routine(i32 noundef %irq, ptr noundef %userdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %close = getelementptr inbounds %struct.wilc, ptr %userdata, i32 0, i32 9
  %0 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wilc_handle_isr(ptr noundef %userdata) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_handle_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_get_chipid(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_firmware_download(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_wlan_cfg_set(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_setup_multicast_filter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_commit_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !31, !33, !35, !37, !38, !39, !41, !42, !44, !46, !47, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 134, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 731, i32 20}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 757, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 833, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @wilc_frmw_to_host.__UNIQUE_ID_ddebug505, !9, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 843, i32 2}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 881, i32 2}
!17 = !{ptr @__ksymtab_wilc_netdev_cleanup, !18, !"__ksymtab_wilc_netdev_cleanup", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 911, i32 1}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 968, i32 22}
!21 = !{ptr @__UNIQUE_ID_file512, !22, !"__UNIQUE_ID_file512", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 992, i32 1}
!23 = !{ptr @__UNIQUE_ID_license513, !22, !"__UNIQUE_ID_license513", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_firmware514, !25, !"__UNIQUE_ID_firmware514", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 993, i32 1}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 98, i32 2}
!31 = !{ptr @wilc_netdev_ops, !32, !"wilc_netdev_ops", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 857, i32 36}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 580, i32 20}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 584, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wilc_mac_open.__UNIQUE_ID_ddebug496, !36, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 606, i32 2}
!41 = !{ptr @wilc_mac_open.__UNIQUE_ID_ddebug497, !40, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 609, i32 20}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 531, i32 4}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @wilc_wlan_initialize.__UNIQUE_ID_ddebug494, !45, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 536, i32 20}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 556, i32 19}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 558, i32 3}
!54 = !{ptr @wilc_wlan_initialize.__UNIQUE_ID_ddebug495, !53, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 470, i32 21}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 473, i32 19}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 166, i32 5}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 61, i32 19}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 64, i32 2}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @init_irq.__UNIQUE_ID_ddebug482, !64, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 30, i32 3}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @isr_uh_routine._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @isr_uh_routine._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 41, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @isr_bh_routine._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @isr_bh_routine._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 188, i32 19}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 189, i32 7}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 194, i32 19}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 227, i32 19}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 239, i32 2}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @wilc1000_firmware_download.__UNIQUE_ID_ddebug489, !86, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 252, i32 2}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @wilc_init_fw_config.__UNIQUE_ID_ddebug490, !90, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 254, i32 2}
!95 = !{ptr @wilc_init_fw_config.__UNIQUE_ID_ddebug491, !94, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 436, i32 19}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 441, i32 20}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 459, i32 3}
!102 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @wilc_wlan_deinitialize.__UNIQUE_ID_ddebug492, !101, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 461, i32 3}
!106 = !{ptr @wilc_wlan_deinitialize.__UNIQUE_ID_ddebug493, !105, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 772, i32 2}
!109 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @wilc_mac_close.__UNIQUE_ID_ddebug503, !108, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 786, i32 3}
!113 = !{ptr @wilc_mac_close.__UNIQUE_ID_ddebug504, !112, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 706, i32 3}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @wilc_set_multicast_list.__UNIQUE_ID_ddebug500, !115, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 655, i32 2}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/microchip/wilc1000/netdev.c", i32 920, i32 2}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2148364669, i64 2148364674, i64 2148364687, i64 2148364731, i64 2148364765, i64 2148364786}
!134 = !{i8 0, i8 2}
!135 = !{i64 2151571359}
!136 = !{!"branch_weights", i32 1, i32 2000}
