; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/ipw2x00/libipw_rx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/ipw2x00/libipw_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+libipw_rx_any\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_rx_any\09\09\09\09"
module asm "\09.long\09__crc_libipw_rx_any\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_rx_any:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_rx_any\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_rx_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+libipw_rx_mgt\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_rx_mgt\09\09\09\09"
module asm "\09.long\09__crc_libipw_rx_mgt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_rx_mgt:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_rx_mgt\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_rx_mgt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+libipw_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_rx\09\09\09\09"
module asm "\09.long\09__crc_libipw_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_rx\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iw_quality = type { i8, i8, i8, i8 }
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
%struct.atomic_t = type { i32 }
%struct.libipw_hdr_4addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], [0 x i8] }
%struct.libipw_device = type { ptr, %struct.wireless_dev, %struct.libipw_security, %struct.libipw_stats, %struct.libipw_geo, %struct.ieee80211_supported_band, %struct.ieee80211_supported_band, %struct.list_head, %struct.list_head, [128 x ptr], i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.lib80211_crypt_info, i32, [4 x %struct.libipw_frag_entry], i32, i16, i16, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.145, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.libipw_security = type <{ i8, i8, [4 x i8], [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.libipw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.libipw_geo = type { [4 x i8], i8, i8, [14 x %struct.libipw_channel], [132 x %struct.libipw_channel] }
%struct.libipw_channel = type { i32, i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.libipw_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.libipw_rx_stats = type { i32, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.libipw_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8] }
%struct.libipw_network = type { [6 x i8], i8, [33 x i8], i8, %struct.libipw_qos_data, %struct.libipw_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, %struct.libipw_tim_parameters, i8, %struct.libipw_tpc_report, %struct.libipw_csa, %struct.libipw_quiet, %struct.list_head }
%struct.libipw_qos_data = type { %struct.libipw_qos_parameters, i32, i32, i8, i8 }
%struct.libipw_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.libipw_tim_parameters = type { i8, i8 }
%struct.libipw_tpc_report = type { i8, i8 }
%struct.libipw_csa = type { i8, i8, i8 }
%struct.libipw_quiet = type { i8, i8, i8, i8 }
%struct.libipw_assoc_response = type { %struct.libipw_hdr_3addr, i16, i16, i16, [0 x %struct.libipw_info_element] }
%struct.libipw_info_element = type { i8, i8, [0 x i8] }
%struct.libipw_probe_response = type { %struct.libipw_hdr_3addr, [2 x i32], i16, i16, [0 x %struct.libipw_info_element] }
%struct.libipw_qos_parameter_info = type { %struct.libipw_qos_information_element, i8, [4 x %struct.libipw_qos_ac_parameter] }
%struct.libipw_qos_information_element = type { i8, i8, [3 x i8], i8, i8, i8, i8 }
%struct.libipw_qos_ac_parameter = type { i8, i8, i16 }

@libipw_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: SKB length < 10\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"libipw_rx\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/ipw2x00/libipw_rx.c\00", [49 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr = internal global ptr @libipw_rx._entry, section ".printk_index", align 4
@libipw_rx._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: invalid SKB length %d\0A\00", [35 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.5 = internal global ptr @libipw_rx._entry.3, section ".printk_index", align 4
@libipw_debug_level = external dso_local local_unnamed_addr global i32, align 4
@libipw_rx._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017libipw: %s Decryption failed (not set) (SA=%pM)\0A\00", [45 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.8 = internal global ptr @libipw_rx._entry.6, section ".printk_index", align 4
@libipw_rx._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\017libipw: %s RX: dropped data frame with no data (type=0x%02x, subtype=0x%02x, len=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.11 = internal global ptr @libipw_rx._entry.9, section ".printk_index", align 4
@libipw_rx._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017libipw: %s Rx Fragment received (%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.14 = internal global ptr @libipw_rx._entry.12, section ".printk_index", align 4
@libipw_rx._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\017libipw: %s Rx cannot get skb from fragment cache (morefrag=%d seq=%u frag=%u)\0A\00", [47 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.17 = internal global ptr @libipw_rx._entry.15, section ".printk_index", align 4
@libipw_rx._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s: host decrypted and reassembled frame did not fit skb\0A\00", [36 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.20 = internal global ptr @libipw_rx._entry.18, section ".printk_index", align 4
@libipw_rx._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017libipw: %s encryption configured, but RX frame not encrypted (SA=%pM)\0A\00", [55 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.23 = internal global ptr @libipw_rx._entry.21, section ".printk_index", align 4
@libipw_rx._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017libipw: %s dropped unencrypted RX data frame from %pM (drop_unencrypted=1)\0A\00", [50 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.26 = internal global ptr @libipw_rx._entry.24, section ".printk_index", align 4
@libipw_rfc1042_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\00", [26 x i8] zeroinitializer }, align 32
@libipw_bridge_tunnel_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\F8", [26 x i8] zeroinitializer }, align 32
@libipw_rx._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017libipw: %s RX: netif_rx dropped the packet\0A\00", [50 x i8] zeroinitializer }, align 32
@libipw_rx._entry_ptr.29 = internal global ptr @libipw_rx._entry.27, section ".printk_index", align 4
@libipw_rx_mgt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libipw: %s received ASSOCIATION RESPONSE (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"libipw_rx_mgt\00", [18 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr = internal global ptr @libipw_rx_mgt._entry, section ".printk_index", align 4
@libipw_rx_mgt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017libipw: %s received REASSOCIATION RESPONSE (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.34 = internal global ptr @libipw_rx_mgt._entry.32, section ".printk_index", align 4
@libipw_rx_mgt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 1636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017libipw: %s received auth (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.37 = internal global ptr @libipw_rx_mgt._entry.35, section ".printk_index", align 4
@libipw_rx_mgt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017libipw: %s received PROBE RESPONSE (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.40 = internal global ptr @libipw_rx_mgt._entry.38, section ".printk_index", align 4
@libipw_rx_mgt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.2, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017libipw: %s Probe response\0A\00", [35 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.43 = internal global ptr @libipw_rx_mgt._entry.41, section ".printk_index", align 4
@libipw_rx_mgt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.31, ptr @.str.2, i32 1659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017libipw: %s received BEACON (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.46 = internal global ptr @libipw_rx_mgt._entry.44, section ".printk_index", align 4
@libipw_rx_mgt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.31, ptr @.str.2, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017libipw: %s Beacon\0A\00", [43 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.49 = internal global ptr @libipw_rx_mgt._entry.47, section ".printk_index", align 4
@libipw_rx_mgt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.51 = internal global ptr @libipw_rx_mgt._entry.50, section ".printk_index", align 4
@libipw_rx_mgt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.31, ptr @.str.2, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017libipw: %s ACTION\0A\00", [43 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.54 = internal global ptr @libipw_rx_mgt._entry.52, section ".printk_index", align 4
@libipw_rx_mgt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.31, ptr @.str.2, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libipw: %s received reassoc (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.57 = internal global ptr @libipw_rx_mgt._entry.55, section ".printk_index", align 4
@libipw_rx_mgt._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.31, ptr @.str.2, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017libipw: %s %s: LIBIPW_REASSOC_REQ received\0A\00", [50 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.60 = internal global ptr @libipw_rx_mgt._entry.58, section ".printk_index", align 4
@libipw_rx_mgt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.31, ptr @.str.2, i32 1708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017libipw: %s received assoc (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.63 = internal global ptr @libipw_rx_mgt._entry.61, section ".printk_index", align 4
@libipw_rx_mgt._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.31, ptr @.str.2, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libipw: %s %s: LIBIPW_ASSOC_REQ received\0A\00", [52 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.66 = internal global ptr @libipw_rx_mgt._entry.64, section ".printk_index", align 4
@libipw_rx_mgt._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.31, ptr @.str.2, i32 1717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017libipw: %s DEAUTH\0A\00", [43 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.69 = internal global ptr @libipw_rx_mgt._entry.67, section ".printk_index", align 4
@libipw_rx_mgt._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.31, ptr @.str.2, i32 1726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libipw: %s received UNKNOWN (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.72 = internal global ptr @libipw_rx_mgt._entry.70, section ".printk_index", align 4
@libipw_rx_mgt._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.31, ptr @.str.2, i32 1730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libipw: %s %s: Unknown management packet: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@libipw_rx_mgt._entry_ptr.75 = internal global ptr @libipw_rx_mgt._entry.73, section ".printk_index", align 4
@__kstrtab_libipw_rx_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_rx_any = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_rx_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_rx_any to i32), ptr @__kstrtab_libipw_rx_any, ptr @__kstrtabns_libipw_rx_any }, section "___ksymtab_gpl+libipw_rx_any", align 4
@__kstrtab_libipw_rx_mgt = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_rx_mgt = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_rx_mgt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_rx_mgt to i32), ptr @__kstrtab_libipw_rx_mgt, ptr @__kstrtabns_libipw_rx_mgt }, section "___ksymtab+libipw_rx_mgt", align 4
@__kstrtab_libipw_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_rx to i32), ptr @__kstrtab_libipw_rx, ptr @__kstrtabns_libipw_rx }, section "___ksymtab+libipw_rx", align 4
@libipw_rx_frame_decrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libipw: %s decryption failed (SA=%pM) res=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"libipw_rx_frame_decrypt\00", [40 x i8] zeroinitializer }, align 32
@libipw_rx_frame_decrypt._entry_ptr = internal global ptr @libipw_rx_frame_decrypt._entry, section ".printk_index", align 4
@libipw_rx_frame_decrypt._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017libipw: %s Decryption failed ICV mismatch (key %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@libipw_rx_frame_decrypt._entry_ptr.80 = internal global ptr @libipw_rx_frame_decrypt._entry.78, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@libipw_frag_cache_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017libipw: %s expiring fragment cache entry seq=%u last_frag=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"libipw_frag_cache_find\00", [41 x i8] zeroinitializer }, align 32
@libipw_frag_cache_find._entry_ptr = internal global ptr @libipw_frag_cache_find._entry, section ".printk_index", align 4
@libipw_frag_cache_invalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017libipw: %s could not invalidate fragment cache entry (seq=%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"libipw_frag_cache_invalidate\00", [35 x i8] zeroinitializer }, align 32
@libipw_frag_cache_invalidate._entry_ptr = internal global ptr @libipw_frag_cache_invalidate._entry, section ".printk_index", align 4
@libipw_rx_frame_decrypt_msdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: MSDU decryption/MIC verification failed (SA=%pM keyidx=%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"libipw_rx_frame_decrypt_msdu\00", [35 x i8] zeroinitializer }, align 32
@libipw_rx_frame_decrypt_msdu._entry_ptr = internal global ptr @libipw_rx_frame_decrypt_msdu._entry, section ".printk_index", align 4
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\017libipw: %s Info elem: parse failed: info_element->len + 2 > left : info_element->len+2=%zd left=%d, id=%d.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"libipw_parse_info_param\00", [40 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr = internal global ptr @libipw_parse_info_param._entry, section ".printk_index", align 4
@libipw_parse_info_param._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libipw: %s WLAN_EID_SSID: '%*pE' len=%d.\0A\00", [52 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.92 = internal global ptr @libipw_parse_info_param._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.89, ptr @.str.2, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libipw: %s WLAN_EID_SUPP_RATES: '%s' (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.96 = internal global ptr @libipw_parse_info_param._entry.94, section ".printk_index", align 4
@libipw_parse_info_param._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.89, ptr @.str.2, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libipw: %s WLAN_EID_EXT_SUPP_RATES: '%s' (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.99 = internal global ptr @libipw_parse_info_param._entry.97, section ".printk_index", align 4
@libipw_parse_info_param._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.89, ptr @.str.2, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017libipw: %s WLAN_EID_DS_PARAMS: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.102 = internal global ptr @libipw_parse_info_param._entry.100, section ".printk_index", align 4
@libipw_parse_info_param._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.89, ptr @.str.2, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libipw: %s WLAN_EID_FH_PARAMS: ignored\0A\00", [54 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.105 = internal global ptr @libipw_parse_info_param._entry.103, section ".printk_index", align 4
@libipw_parse_info_param._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.89, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libipw: %s WLAN_EID_CF_PARAMS: ignored\0A\00", [54 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.108 = internal global ptr @libipw_parse_info_param._entry.106, section ".printk_index", align 4
@libipw_parse_info_param._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.89, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017libipw: %s WLAN_EID_TIM: partially ignored\0A\00", [50 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.111 = internal global ptr @libipw_parse_info_param._entry.109, section ".printk_index", align 4
@libipw_parse_info_param._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.89, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libipw: %s MFIE_TYPE_ERP_SET: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.114 = internal global ptr @libipw_parse_info_param._entry.112, section ".printk_index", align 4
@libipw_parse_info_param._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.89, ptr @.str.2, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017libipw: %s WLAN_EID_IBSS_PARAMS: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.117 = internal global ptr @libipw_parse_info_param._entry.115, section ".printk_index", align 4
@libipw_parse_info_param._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.89, ptr @.str.2, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libipw: %s WLAN_EID_CHALLENGE: ignored\0A\00", [54 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.120 = internal global ptr @libipw_parse_info_param._entry.118, section ".printk_index", align 4
@libipw_parse_info_param._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.89, ptr @.str.2, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libipw: %s WLAN_EID_VENDOR_SPECIFIC: %d bytes\0A\00", [47 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.123 = internal global ptr @libipw_parse_info_param._entry.121, section ".printk_index", align 4
@libipw_parse_info_param._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.89, ptr @.str.2, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017libipw: %s WLAN_EID_RSN: %d bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.126 = internal global ptr @libipw_parse_info_param._entry.124, section ".printk_index", align 4
@libipw_parse_info_param._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.89, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013QoS Error need to parse QOS_PARAMETER IE\0A\00", [52 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.129 = internal global ptr @libipw_parse_info_param._entry.127, section ".printk_index", align 4
@libipw_parse_info_param._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.89, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libipw: %s Unsupported info element: %s (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@libipw_parse_info_param._entry_ptr.132 = internal global ptr @libipw_parse_info_param._entry.130, section ".printk_index", align 4
@libipw_parse_qos_info_param_IE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017libipw: %s QoS is supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"libipw_parse_qos_info_param_IE\00", [33 x i8] zeroinitializer }, align 32
@libipw_parse_qos_info_param_IE._entry_ptr = internal global ptr @libipw_parse_qos_info_param_IE._entry, section ".printk_index", align 4
@qos_oui = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00P\F2", [29 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DS_PARAMS\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CF_PARAMS\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TIM\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IBSS_PARAMS\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COUNTRY\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REQUEST\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHALLENGE\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PWR_CONSTRAINT\00", [17 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PWR_CAPABILITY\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TPC_REQUEST\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TPC_REPORT\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SUPPORTED_CHANNELS\00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CHANNEL_SWITCH\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MEASURE_REQUEST\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MEASURE_REPORT\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QUIET\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IBSS_DFS\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ERP_INFO\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RSN\00", [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXT_SUPP_RATES\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VENDOR_SPECIFIC\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QOS_PARAMETER\00", [18 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@libipw_process_probe_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 1535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017libipw: %s '%*pE' (%pM): %c%c%c%c %c%c%c%c-%c%c%c%c %c%c%c%c\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"libipw_process_probe_response\00", [34 x i8] zeroinitializer }, align 32
@libipw_process_probe_response._entry_ptr = internal global ptr @libipw_process_probe_response._entry, section ".printk_index", align 4
@libipw_process_probe_response._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017libipw: %s Dropped '%*pE' (%pM) via %s.\0A\00", [53 x i8] zeroinitializer }, align 32
@libipw_process_probe_response._entry_ptr.165 = internal global ptr @libipw_process_probe_response._entry.163, section ".printk_index", align 4
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BEACON\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROBE RESPONSE\00", [17 x i8] zeroinitializer }, align 32
@libipw_process_probe_response._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.162, ptr @.str.2, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017libipw: %s Expired '%*pE' (%pM) from network list.\0A\00", [42 x i8] zeroinitializer }, align 32
@libipw_process_probe_response._entry_ptr.170 = internal global ptr @libipw_process_probe_response._entry.168, section ".printk_index", align 4
@libipw_process_probe_response._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.162, ptr @.str.2, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libipw: %s Adding '%*pE' (%pM) via %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@libipw_process_probe_response._entry_ptr.173 = internal global ptr @libipw_process_probe_response._entry.171, section ".printk_index", align 4
@libipw_process_probe_response._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.162, ptr @.str.2, i32 1598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libipw: %s Updating '%*pE' (%pM) via %s.\0A\00", [52 x i8] zeroinitializer }, align 32
@libipw_process_probe_response._entry_ptr.176 = internal global ptr @libipw_process_probe_response._entry.174, section ".printk_index", align 4
@libipw_network_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.2, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libipw: %s Filtered out '%*pE (%pM)' network.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"libipw_network_init\00", [44 x i8] zeroinitializer }, align 32
@libipw_network_init._entry_ptr = internal global ptr @libipw_network_init._entry, section ".printk_index", align 4
@update_network._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017libipw: %s Network %pM info received off channel (%d vs. %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"update_network\00", [17 x i8] zeroinitializer }, align 32
@update_network._entry_ptr = internal global ptr @update_network._entry, section ".printk_index", align 4
@update_network._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.2, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017libipw: %s QoS the network %s is QoS supported\0A\00", [46 x i8] zeroinitializer }, align 32
@update_network._entry_ptr.183 = internal global ptr @update_network._entry.181, section ".printk_index", align 4
@update_network._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.180, ptr @.str.2, i32 1489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017libipw: %s QoS the network is QoS supported\0A\00", [49 x i8] zeroinitializer }, align 32
@update_network._entry_ptr.186 = internal global ptr @update_network._entry.184, section ".printk_index", align 4
@switch.table.libipw_rx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 8, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.libipw_rx.187 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 12, i32 8], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.190 = internal global [7 x i64] [i64 5, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 10, i64 256, i64 512]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.197 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.198 = internal global [20 x i64] [i64 18, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 16, i64 32, i64 35, i64 37, i64 40, i64 41, i64 42, i64 48, i64 50, i64 221, i64 222]
@__sancov_gen_cov_switch_values.199 = internal global [10 x i64] [i64 8, i64 32, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.200 = internal global [10 x i64] [i64 8, i64 32, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.201 = internal global [24 x i64] [i64 22, i64 8, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 16, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 48, i64 50, i64 221, i64 222]
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 354, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 366, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 457, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 560, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 581, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 584, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 597, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 644, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 653, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [22 x i8] c"libipw_rfc1042_header\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 218, i32 22 }
@___asan_gen_.265 = private unnamed_addr constant [28 x i8] c"libipw_bridge_tunnel_header\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 222, i32 22 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 807, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1619, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1628, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1634, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1646, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1649, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1657, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1660, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1668, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1685, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1693, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1697, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1706, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1710, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1717, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1724, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1727, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 284, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 287, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 67, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 150, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 316, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2789, i32 6 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1101, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1123, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1138, i32 29 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1151, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1178, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1183, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1189, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1193, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1199, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1205, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1211, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1216, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1220, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1239, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1248, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1282, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1046, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant [8 x i8] c"qos_oui\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 921, i32 11 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1061, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1062, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1063, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1064, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1065, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1066, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1067, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1068, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1069, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1070, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1071, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1072, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1073, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1074, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1075, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1076, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1077, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1078, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1079, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1080, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1081, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1082, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1084, i32 10 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1517, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1538, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1574, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1585, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1594, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1407, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1445, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1484, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.658 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.659 = private constant [50 x i8] c"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 1488, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant [23 x i8] c"switch.table.libipw_rx\00", align 1
@___asan_gen_.662 = private unnamed_addr constant [27 x i8] c"switch.table.libipw_rx.187\00", align 1
@llvm.compiler.used = appending global [214 x ptr] [ptr @__ksymtab_libipw_rx, ptr @__ksymtab_libipw_rx_any, ptr @__ksymtab_libipw_rx_mgt, ptr @libipw_frag_cache_find._entry, ptr @libipw_frag_cache_find._entry_ptr, ptr @libipw_frag_cache_invalidate._entry, ptr @libipw_frag_cache_invalidate._entry_ptr, ptr @libipw_network_init._entry, ptr @libipw_network_init._entry_ptr, ptr @libipw_parse_info_param._entry, ptr @libipw_parse_info_param._entry.100, ptr @libipw_parse_info_param._entry.103, ptr @libipw_parse_info_param._entry.106, ptr @libipw_parse_info_param._entry.109, ptr @libipw_parse_info_param._entry.112, ptr @libipw_parse_info_param._entry.115, ptr @libipw_parse_info_param._entry.118, ptr @libipw_parse_info_param._entry.121, ptr @libipw_parse_info_param._entry.124, ptr @libipw_parse_info_param._entry.127, ptr @libipw_parse_info_param._entry.130, ptr @libipw_parse_info_param._entry.90, ptr @libipw_parse_info_param._entry.94, ptr @libipw_parse_info_param._entry.97, ptr @libipw_parse_info_param._entry_ptr, ptr @libipw_parse_info_param._entry_ptr.102, ptr @libipw_parse_info_param._entry_ptr.105, ptr @libipw_parse_info_param._entry_ptr.108, ptr @libipw_parse_info_param._entry_ptr.111, ptr @libipw_parse_info_param._entry_ptr.114, ptr @libipw_parse_info_param._entry_ptr.117, ptr @libipw_parse_info_param._entry_ptr.120, ptr @libipw_parse_info_param._entry_ptr.123, ptr @libipw_parse_info_param._entry_ptr.126, ptr @libipw_parse_info_param._entry_ptr.129, ptr @libipw_parse_info_param._entry_ptr.132, ptr @libipw_parse_info_param._entry_ptr.92, ptr @libipw_parse_info_param._entry_ptr.96, ptr @libipw_parse_info_param._entry_ptr.99, ptr @libipw_parse_qos_info_param_IE._entry, ptr @libipw_parse_qos_info_param_IE._entry_ptr, ptr @libipw_process_probe_response._entry, ptr @libipw_process_probe_response._entry.163, ptr @libipw_process_probe_response._entry.168, ptr @libipw_process_probe_response._entry.171, ptr @libipw_process_probe_response._entry.174, ptr @libipw_process_probe_response._entry_ptr, ptr @libipw_process_probe_response._entry_ptr.165, ptr @libipw_process_probe_response._entry_ptr.170, ptr @libipw_process_probe_response._entry_ptr.173, ptr @libipw_process_probe_response._entry_ptr.176, ptr @libipw_rx._entry, ptr @libipw_rx._entry.12, ptr @libipw_rx._entry.15, ptr @libipw_rx._entry.18, ptr @libipw_rx._entry.21, ptr @libipw_rx._entry.24, ptr @libipw_rx._entry.27, ptr @libipw_rx._entry.3, ptr @libipw_rx._entry.6, ptr @libipw_rx._entry.9, ptr @libipw_rx._entry_ptr, ptr @libipw_rx._entry_ptr.11, ptr @libipw_rx._entry_ptr.14, ptr @libipw_rx._entry_ptr.17, ptr @libipw_rx._entry_ptr.20, ptr @libipw_rx._entry_ptr.23, ptr @libipw_rx._entry_ptr.26, ptr @libipw_rx._entry_ptr.29, ptr @libipw_rx._entry_ptr.5, ptr @libipw_rx._entry_ptr.8, ptr @libipw_rx_frame_decrypt._entry, ptr @libipw_rx_frame_decrypt._entry.78, ptr @libipw_rx_frame_decrypt._entry_ptr, ptr @libipw_rx_frame_decrypt._entry_ptr.80, ptr @libipw_rx_frame_decrypt_msdu._entry, ptr @libipw_rx_frame_decrypt_msdu._entry_ptr, ptr @libipw_rx_mgt._entry, ptr @libipw_rx_mgt._entry.32, ptr @libipw_rx_mgt._entry.35, ptr @libipw_rx_mgt._entry.38, ptr @libipw_rx_mgt._entry.41, ptr @libipw_rx_mgt._entry.44, ptr @libipw_rx_mgt._entry.47, ptr @libipw_rx_mgt._entry.50, ptr @libipw_rx_mgt._entry.52, ptr @libipw_rx_mgt._entry.55, ptr @libipw_rx_mgt._entry.58, ptr @libipw_rx_mgt._entry.61, ptr @libipw_rx_mgt._entry.64, ptr @libipw_rx_mgt._entry.67, ptr @libipw_rx_mgt._entry.70, ptr @libipw_rx_mgt._entry.73, ptr @libipw_rx_mgt._entry_ptr, ptr @libipw_rx_mgt._entry_ptr.34, ptr @libipw_rx_mgt._entry_ptr.37, ptr @libipw_rx_mgt._entry_ptr.40, ptr @libipw_rx_mgt._entry_ptr.43, ptr @libipw_rx_mgt._entry_ptr.46, ptr @libipw_rx_mgt._entry_ptr.49, ptr @libipw_rx_mgt._entry_ptr.51, ptr @libipw_rx_mgt._entry_ptr.54, ptr @libipw_rx_mgt._entry_ptr.57, ptr @libipw_rx_mgt._entry_ptr.60, ptr @libipw_rx_mgt._entry_ptr.63, ptr @libipw_rx_mgt._entry_ptr.66, ptr @libipw_rx_mgt._entry_ptr.69, ptr @libipw_rx_mgt._entry_ptr.72, ptr @libipw_rx_mgt._entry_ptr.75, ptr @update_network._entry, ptr @update_network._entry.181, ptr @update_network._entry.184, ptr @update_network._entry_ptr, ptr @update_network._entry_ptr.183, ptr @update_network._entry_ptr.186, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @libipw_rfc1042_header, ptr @libipw_bridge_tunnel_header, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @qos_oui, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.185, ptr @switch.table.libipw_rx, ptr @switch.table.libipw_rx.187], section "llvm.metadata"
@0 = internal global [155 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rfc1042_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_bridge_tunnel_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_mgt._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_frame_decrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_frame_decrypt._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_frag_cache_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_frag_cache_invalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_rx_frame_decrypt_msdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_info_param._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_parse_qos_info_param_IE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_oui to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_process_probe_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_process_probe_response._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_process_probe_response._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_process_probe_response._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_process_probe_response._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_network_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_network._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_network._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_network._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.libipw_rx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.libipw_rx.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @libipw_rx(ptr noundef %ieee, ptr noundef %skb, ptr nocapture noundef readonly %rx_stats) #0 align 64 {
entry:
  %wstats = alloca %struct.iw_quality, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp = icmp ult i32 %5, 10
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #11
  br label %rx_dropped487

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %3, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %and = and i16 %8, 12
  %seq_ctl = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %seq_ctl, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv6 = zext i16 %11 to i32
  %and7 = and i32 %conv6, 15
  %and3.i = and i32 %conv, 12
  %12 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and3.i, label %if.end.libipw_get_hdrlen.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb14.i
  ]

if.end.libipw_get_hdrlen.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_get_hdrlen.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %13)
  %.not.i = icmp eq i32 %13, 768
  %hdrlen.0.i = select i1 %.not.i, i32 30, i32 24
  %and10.i = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %add.i = add nuw nsw i32 %hdrlen.0.i, 2
  %spec.select.i = select i1 %tobool11.not.i, i32 %hdrlen.0.i, i32 %add.i
  br label %libipw_get_hdrlen.exit

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = and i16 %8, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %14)
  %switch.selectcmp.i = icmp eq i16 %14, 192
  %15 = select i1 %switch.selectcmp.i, i32 10, i32 16
  br label %libipw_get_hdrlen.exit

libipw_get_hdrlen.exit:                           ; preds = %sw.bb14.i, %sw.bb.i, %if.end.libipw_get_hdrlen.exit_crit_edge
  %hdrlen.1.i = phi i32 [ 24, %if.end.libipw_get_hdrlen.exit_crit_edge ], [ %15, %sw.bb14.i ], [ %spec.select.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %hdrlen.1.i)
  %cmp10 = icmp ult i32 %5, %hdrlen.1.i
  br i1 %cmp10, label %do.end15, label %if.end21

do.end15:                                         ; preds = %libipw_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %5) #11
  br label %rx_dropped487

if.end21:                                         ; preds = %libipw_get_hdrlen.exit
  %spy_data = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 13
  %16 = ptrtoint ptr %spy_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spy_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp22 = icmp sgt i32 %17, 0
  br i1 %cmp22, label %if.then24, label %if.end21.if.end70_crit_edge

if.end21.if.end70_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wstats) #8
  %18 = ptrtoint ptr %wstats to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %wstats, align 1, !annotation !314
  %19 = getelementptr inbounds %struct.iw_quality, ptr %wstats, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %19, align 1, !annotation !314
  %21 = getelementptr inbounds %struct.iw_quality, ptr %wstats, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %21, align 1, !annotation !314
  %23 = getelementptr inbounds %struct.iw_quality, ptr %wstats, i32 0, i32 3
  %mask = getelementptr inbounds %struct.libipw_rx_stats, ptr %rx_stats, i32 0, i32 7
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mask, align 4
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.then24.if.end35_crit_edge, label %if.then27

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %signal = getelementptr inbounds %struct.libipw_rx_stats, ptr %rx_stats, i32 0, i32 2
  %27 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %signal, align 1
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %19, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %if.then24.if.end35_crit_edge
  %storemerge = phi i8 [ 2, %if.then27 ], [ 32, %if.then24.if.end35_crit_edge ]
  %30 = and i8 %25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool39.not = icmp eq i8 %30, 0
  br i1 %tobool39.not, label %if.end35.if.end51_crit_edge, label %if.then40

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %noise = getelementptr inbounds %struct.libipw_rx_stats, ptr %rx_stats, i32 0, i32 3
  %31 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %noise, align 2
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %21, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then40, %if.end35.if.end51_crit_edge
  %.sink = phi i8 [ 4, %if.then40 ], [ 64, %if.end35.if.end51_crit_edge ]
  %34 = or i8 %storemerge, %.sink
  %35 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool55.not = icmp eq i8 %35, 0
  br i1 %tobool55.not, label %if.end51.if.end67_crit_edge, label %if.then56

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %signal57 = getelementptr inbounds %struct.libipw_rx_stats, ptr %rx_stats, i32 0, i32 2
  %36 = ptrtoint ptr %signal57 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %signal57, align 1
  %38 = ptrtoint ptr %wstats to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %wstats, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then56, %if.end51.if.end67_crit_edge
  %.sink794 = phi i8 [ 1, %if.then56 ], [ 16, %if.end51.if.end67_crit_edge ]
  %39 = or i8 %34, %.sink794
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %23, align 1
  %addr2 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3
  call void @wireless_spy_update(ptr noundef %1, ptr noundef %addr2, ptr noundef nonnull %wstats) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wstats) #8
  br label %if.end70

if.end70:                                         ; preds = %if.end67, %if.end21.if.end70_crit_edge
  %iw_mode = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 12
  %41 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp71 = icmp eq i32 %42, 6
  br i1 %cmp71, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end70
  %stats = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %43 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stats, align 8
  %inc = add i32 %44, 1
  store i32 %inc, ptr %stats, align 8
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %47 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %48, %46
  store i32 %add, ptr %rx_bytes, align 8
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %50, align 2
  %53 = call i16 @llvm.bswap.i16(i16 %52) #8
  %54 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ieee, align 4
  %56 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %56, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %60 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %conv.i1.i = zext i16 %53 to i32
  %and3.i.i = and i32 %conv.i1.i, 12
  %61 = zext i32 %and3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %and3.i.i, label %if.then73.libipw_monitor_rx.exit_crit_edge [
    i32 8, label %sw.bb.i.i
    i32 4, label %sw.bb14.i.i
  ]

if.then73.libipw_monitor_rx.exit_crit_edge:       ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_monitor_rx.exit

sw.bb.i.i:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %62 = and i32 %conv.i1.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %62)
  %.not.i.i = icmp eq i32 %62, 768
  %hdrlen.0.i.i = select i1 %.not.i.i, i32 30, i32 24
  %and10.i.i = and i32 %conv.i1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %add.i.i = add nuw nsw i32 %hdrlen.0.i.i, 2
  %spec.select.i.i = select i1 %tobool11.not.i.i, i32 %hdrlen.0.i.i, i32 %add.i.i
  br label %libipw_monitor_rx.exit

sw.bb14.i.i:                                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %63 = and i16 %53, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %63)
  %switch.selectcmp.i.i = icmp eq i16 %63, 192
  %64 = select i1 %switch.selectcmp.i.i, i32 10, i32 16
  br label %libipw_monitor_rx.exit

libipw_monitor_rx.exit:                           ; preds = %sw.bb14.i.i, %sw.bb.i.i, %if.then73.libipw_monitor_rx.exit_crit_edge
  %hdrlen.1.i.i = phi i32 [ 24, %if.then73.libipw_monitor_rx.exit_crit_edge ], [ %64, %sw.bb14.i.i ], [ %spec.select.i.i, %sw.bb.i.i ]
  %call1.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %hdrlen.1.i.i) #8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %65 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, 24576
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %66 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 25, ptr %protocol.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %67 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %call2.i = call i32 @netif_rx(ptr noundef %skb) #8
  br label %cleanup491

if.end76:                                         ; preds = %if.end70
  %addr1 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2
  %68 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr1, align 4
  %70 = and i32 %69, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not = icmp eq i32 %70, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end76.cond.true_crit_edge

if.end76.cond.true_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

lor.lhs.false:                                    ; preds = %if.end76
  %addr280 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3
  %71 = ptrtoint ptr %addr280 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %addr280, align 2
  %add.ptr1.i = getelementptr %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 2
  %73 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %74, %72
  %add.ptr3.i = getelementptr %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %76
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %lor.lhs.false.cond.true_crit_edge, label %cond.false

lor.lhs.false.cond.true_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false.cond.true_crit_edge, %if.end76.cond.true_crit_edge
  %host_mc_decrypt = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 21
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %host_decrypt = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %host_mc_decrypt, %cond.true ], [ %host_decrypt, %cond.false ]
  %77 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %77)
  %cond = load i32, ptr %cond.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool84.not = icmp eq i32 %cond, 0
  br i1 %tobool84.not, label %cond.end.if.end128_crit_edge, label %if.then85

cond.end.if.end128_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then85:                                        ; preds = %cond.end
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  %add87 = add nuw nsw i32 %hdrlen.1.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %add87)
  %cmp88.not = icmp ult i32 %79, %add87
  br i1 %cmp88.not, label %if.then85.if.end94_crit_edge, label %if.then90

if.then85.if.end94_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %81, i32 %add87
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx, align 1
  %84 = lshr i8 %83, 6
  %85 = zext i8 %84 to i32
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.then85.if.end94_crit_edge
  %keyidx.0 = phi i32 [ %85, %if.then90 ], [ 0, %if.then85.if.end94_crit_edge ]
  %arrayidx96 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 %keyidx.0
  %86 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx96, align 4
  %tobool97.not = icmp eq ptr %87, null
  br i1 %tobool97.not, label %if.end94.land.lhs.true107_crit_edge, label %land.lhs.true

if.end94.land.lhs.true107_crit_edge:              ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true107

land.lhs.true:                                    ; preds = %if.end94
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops, align 4
  %cmp98 = icmp eq ptr %89, null
  br i1 %cmp98, label %land.lhs.true.land.lhs.true107_crit_edge, label %lor.lhs.false100

land.lhs.true.land.lhs.true107_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true107

lor.lhs.false100:                                 ; preds = %land.lhs.true
  %decrypt_mpdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %decrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %decrypt_mpdu, align 4
  %cmp102 = icmp eq ptr %91, null
  br i1 %cmp102, label %lor.lhs.false100.land.lhs.true107_crit_edge, label %lor.lhs.false100.if.end128_crit_edge

lor.lhs.false100.if.end128_crit_edge:             ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

lor.lhs.false100.land.lhs.true107_crit_edge:      ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true107

land.lhs.true107:                                 ; preds = %lor.lhs.false100.land.lhs.true107_crit_edge, %land.lhs.true.land.lhs.true107_crit_edge, %if.end94.land.lhs.true107_crit_edge
  %and109 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %land.lhs.true107.if.end128_crit_edge, label %do.body112

land.lhs.true107.if.end128_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

do.body112:                                       ; preds = %land.lhs.true107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %92 = load i32, ptr @libipw_debug_level, align 4
  %and113 = and i32 %92, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.body112.do.end125_crit_edge, label %do.end118

do.body112.do.end125_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %addr2120 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %addr2120) #11
  br label %do.end125

do.end125:                                        ; preds = %do.end118, %do.body112.do.end125_crit_edge
  %rx_discards_undecryptable = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 3, i32 18
  %93 = ptrtoint ptr %rx_discards_undecryptable to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_discards_undecryptable, align 4
  %inc126 = add i32 %94, 1
  store i32 %inc126, ptr %rx_discards_undecryptable, align 4
  br label %rx_dropped487

if.end128:                                        ; preds = %land.lhs.true107.if.end128_crit_edge, %lor.lhs.false100.if.end128_crit_edge, %cond.end.if.end128_crit_edge
  %crypt.1 = phi ptr [ null, %land.lhs.true107.if.end128_crit_edge ], [ null, %cond.end.if.end128_crit_edge ], [ %87, %lor.lhs.false100.if.end128_crit_edge ]
  %keyidx.1 = phi i32 [ %keyidx.0, %land.lhs.true107.if.end128_crit_edge ], [ 0, %cond.end.if.end128_crit_edge ], [ %keyidx.0, %lor.lhs.false100.if.end128_crit_edge ]
  %prev_seq_ctl = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 44
  %95 = ptrtoint ptr %prev_seq_ctl to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %prev_seq_ctl, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %96)
  %cmp131 = icmp eq i16 %11, %96
  br i1 %cmp131, label %if.end128.rx_dropped487_crit_edge, label %if.else134

if.end128.rx_dropped487_crit_edge:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

if.else134:                                       ; preds = %if.end128
  %97 = ptrtoint ptr %prev_seq_ctl to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %11, ptr %prev_seq_ctl, align 4
  %98 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %99)
  %cmp138 = icmp ult i32 %99, 24
  br i1 %cmp138, label %if.else134.rx_dropped487_crit_edge, label %if.end141

if.else134.rx_dropped487_crit_edge:               ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

if.end141:                                        ; preds = %if.else134
  %and143 = and i32 %conv, 768
  %100 = zext i32 %and143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %and143, label %sw.default [
    i32 512, label %sw.bb
    i32 256, label %sw.bb149
    i32 768, label %sw.bb156
  ]

sw.bb:                                            ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %dst.sroa.9.0.arraydecay146.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 1
  %dst.sroa.10.0.arraydecay146.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 2
  %dst.sroa.11.0.arraydecay146.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 3
  %dst.sroa.12.0.arraydecay146.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 4
  %dst.sroa.13.0.arraydecay146.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 5
  %addr3 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4
  %src.sroa.9.0.arraydecay148.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 1
  %src.sroa.10.0.arraydecay148.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 2
  %src.sroa.11.0.arraydecay148.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 3
  %src.sroa.12.0.arraydecay148.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 4
  %src.sroa.13.0.arraydecay148.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 5
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %addr3151 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4
  %dst.sroa.9.0.arraydecay152.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 1
  %dst.sroa.10.0.arraydecay152.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 2
  %dst.sroa.11.0.arraydecay152.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 3
  %dst.sroa.12.0.arraydecay152.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 4
  %dst.sroa.13.0.arraydecay152.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 5
  %addr2154 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3
  %src.sroa.9.0.arraydecay155.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 1
  %src.sroa.10.0.arraydecay155.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 2
  %src.sroa.11.0.arraydecay155.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 3
  %src.sroa.12.0.arraydecay155.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 4
  %src.sroa.13.0.arraydecay155.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 5
  br label %sw.epilog

sw.bb156:                                         ; preds = %if.end141
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %99)
  %cmp158 = icmp ult i32 %99, 30
  br i1 %cmp158, label %sw.bb156.rx_dropped487_crit_edge, label %if.end161

sw.bb156.rx_dropped487_crit_edge:                 ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

if.end161:                                        ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #10
  %addr3163 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4
  %dst.sroa.9.0.arraydecay164.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 1
  %dst.sroa.10.0.arraydecay164.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 2
  %dst.sroa.11.0.arraydecay164.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 3
  %dst.sroa.12.0.arraydecay164.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 4
  %dst.sroa.13.0.arraydecay164.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 4, i32 5
  %addr4 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 6
  %src.sroa.9.0.arraydecay166.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 6, i32 1
  %src.sroa.10.0.arraydecay166.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 6, i32 2
  %src.sroa.11.0.arraydecay166.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 6, i32 3
  %src.sroa.12.0.arraydecay166.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 6, i32 4
  %src.sroa.13.0.arraydecay166.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 6, i32 5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %dst.sroa.9.0.arraydecay169.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 1
  %dst.sroa.10.0.arraydecay169.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 2
  %dst.sroa.11.0.arraydecay169.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 3
  %dst.sroa.12.0.arraydecay169.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 4
  %dst.sroa.13.0.arraydecay169.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 2, i32 5
  %addr2171 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3
  %src.sroa.9.0.arraydecay172.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 1
  %src.sroa.10.0.arraydecay172.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 2
  %src.sroa.11.0.arraydecay172.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 3
  %src.sroa.12.0.arraydecay172.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 4
  %src.sroa.13.0.arraydecay172.sroa_idx = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %3, i32 0, i32 3, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end161, %sw.bb149, %sw.bb
  %dst.sroa.13.0.in = phi ptr [ %dst.sroa.13.0.arraydecay169.sroa_idx, %sw.default ], [ %dst.sroa.13.0.arraydecay164.sroa_idx, %if.end161 ], [ %dst.sroa.13.0.arraydecay152.sroa_idx, %sw.bb149 ], [ %dst.sroa.13.0.arraydecay146.sroa_idx, %sw.bb ]
  %dst.sroa.12.0.in = phi ptr [ %dst.sroa.12.0.arraydecay169.sroa_idx, %sw.default ], [ %dst.sroa.12.0.arraydecay164.sroa_idx, %if.end161 ], [ %dst.sroa.12.0.arraydecay152.sroa_idx, %sw.bb149 ], [ %dst.sroa.12.0.arraydecay146.sroa_idx, %sw.bb ]
  %dst.sroa.11.0.in = phi ptr [ %dst.sroa.11.0.arraydecay169.sroa_idx, %sw.default ], [ %dst.sroa.11.0.arraydecay164.sroa_idx, %if.end161 ], [ %dst.sroa.11.0.arraydecay152.sroa_idx, %sw.bb149 ], [ %dst.sroa.11.0.arraydecay146.sroa_idx, %sw.bb ]
  %dst.sroa.10.0.in = phi ptr [ %dst.sroa.10.0.arraydecay169.sroa_idx, %sw.default ], [ %dst.sroa.10.0.arraydecay164.sroa_idx, %if.end161 ], [ %dst.sroa.10.0.arraydecay152.sroa_idx, %sw.bb149 ], [ %dst.sroa.10.0.arraydecay146.sroa_idx, %sw.bb ]
  %dst.sroa.9.0.in = phi ptr [ %dst.sroa.9.0.arraydecay169.sroa_idx, %sw.default ], [ %dst.sroa.9.0.arraydecay164.sroa_idx, %if.end161 ], [ %dst.sroa.9.0.arraydecay152.sroa_idx, %sw.bb149 ], [ %dst.sroa.9.0.arraydecay146.sroa_idx, %sw.bb ]
  %dst.sroa.0.0.in = phi ptr [ %addr1, %sw.default ], [ %addr3163, %if.end161 ], [ %addr3151, %sw.bb149 ], [ %addr1, %sw.bb ]
  %src.sroa.13.0.in = phi ptr [ %src.sroa.13.0.arraydecay172.sroa_idx, %sw.default ], [ %src.sroa.13.0.arraydecay166.sroa_idx, %if.end161 ], [ %src.sroa.13.0.arraydecay155.sroa_idx, %sw.bb149 ], [ %src.sroa.13.0.arraydecay148.sroa_idx, %sw.bb ]
  %src.sroa.12.0.in = phi ptr [ %src.sroa.12.0.arraydecay172.sroa_idx, %sw.default ], [ %src.sroa.12.0.arraydecay166.sroa_idx, %if.end161 ], [ %src.sroa.12.0.arraydecay155.sroa_idx, %sw.bb149 ], [ %src.sroa.12.0.arraydecay148.sroa_idx, %sw.bb ]
  %src.sroa.11.0.in = phi ptr [ %src.sroa.11.0.arraydecay172.sroa_idx, %sw.default ], [ %src.sroa.11.0.arraydecay166.sroa_idx, %if.end161 ], [ %src.sroa.11.0.arraydecay155.sroa_idx, %sw.bb149 ], [ %src.sroa.11.0.arraydecay148.sroa_idx, %sw.bb ]
  %src.sroa.10.0.in = phi ptr [ %src.sroa.10.0.arraydecay172.sroa_idx, %sw.default ], [ %src.sroa.10.0.arraydecay166.sroa_idx, %if.end161 ], [ %src.sroa.10.0.arraydecay155.sroa_idx, %sw.bb149 ], [ %src.sroa.10.0.arraydecay148.sroa_idx, %sw.bb ]
  %src.sroa.9.0.in = phi ptr [ %src.sroa.9.0.arraydecay172.sroa_idx, %sw.default ], [ %src.sroa.9.0.arraydecay166.sroa_idx, %if.end161 ], [ %src.sroa.9.0.arraydecay155.sroa_idx, %sw.bb149 ], [ %src.sroa.9.0.arraydecay148.sroa_idx, %sw.bb ]
  %src.sroa.0.0.in = phi ptr [ %addr2171, %sw.default ], [ %addr4, %if.end161 ], [ %addr2154, %sw.bb149 ], [ %addr3, %sw.bb ]
  %101 = ptrtoint ptr %src.sroa.0.0.in to i32
  call void @__asan_load1_noabort(i32 %101)
  %src.sroa.0.0 = load i8, ptr %src.sroa.0.0.in, align 1
  %102 = ptrtoint ptr %src.sroa.9.0.in to i32
  call void @__asan_load1_noabort(i32 %102)
  %src.sroa.9.0 = load i8, ptr %src.sroa.9.0.in, align 1
  %103 = ptrtoint ptr %src.sroa.10.0.in to i32
  call void @__asan_load1_noabort(i32 %103)
  %src.sroa.10.0 = load i8, ptr %src.sroa.10.0.in, align 1
  %104 = ptrtoint ptr %src.sroa.11.0.in to i32
  call void @__asan_load1_noabort(i32 %104)
  %src.sroa.11.0 = load i8, ptr %src.sroa.11.0.in, align 1
  %105 = ptrtoint ptr %src.sroa.12.0.in to i32
  call void @__asan_load1_noabort(i32 %105)
  %src.sroa.12.0 = load i8, ptr %src.sroa.12.0.in, align 1
  %106 = ptrtoint ptr %src.sroa.13.0.in to i32
  call void @__asan_load1_noabort(i32 %106)
  %src.sroa.13.0 = load i8, ptr %src.sroa.13.0.in, align 1
  %107 = ptrtoint ptr %dst.sroa.0.0.in to i32
  call void @__asan_load1_noabort(i32 %107)
  %dst.sroa.0.0 = load i8, ptr %dst.sroa.0.0.in, align 1
  %108 = ptrtoint ptr %dst.sroa.9.0.in to i32
  call void @__asan_load1_noabort(i32 %108)
  %dst.sroa.9.0 = load i8, ptr %dst.sroa.9.0.in, align 1
  %109 = ptrtoint ptr %dst.sroa.10.0.in to i32
  call void @__asan_load1_noabort(i32 %109)
  %dst.sroa.10.0 = load i8, ptr %dst.sroa.10.0.in, align 1
  %110 = ptrtoint ptr %dst.sroa.11.0.in to i32
  call void @__asan_load1_noabort(i32 %110)
  %dst.sroa.11.0 = load i8, ptr %dst.sroa.11.0.in, align 1
  %111 = ptrtoint ptr %dst.sroa.12.0.in to i32
  call void @__asan_load1_noabort(i32 %111)
  %dst.sroa.12.0 = load i8, ptr %dst.sroa.12.0.in, align 1
  %112 = ptrtoint ptr %dst.sroa.13.0.in to i32
  call void @__asan_load1_noabort(i32 %112)
  %dst.sroa.13.0 = load i8, ptr %dst.sroa.13.0.in, align 1
  %113 = and i16 %8, 112
  %conv176 = zext i16 %113 to i32
  %114 = lshr exact i16 %113, 4
  %trunc = trunc i16 %114 to i3
  %115 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.190)
  switch i3 %trunc, label %do.body196 [
    i3 0, label %sw.epilog.if.end212_crit_edge
    i3 1, label %sw.epilog.if.end212_crit_edge808
    i3 2, label %sw.epilog.if.end212_crit_edge809
    i3 3, label %sw.epilog.if.end212_crit_edge810
    i3 -4, label %sw.epilog.rx_dropped487_crit_edge
  ]

sw.epilog.rx_dropped487_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

sw.epilog.if.end212_crit_edge810:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

sw.epilog.if.end212_crit_edge809:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

sw.epilog.if.end212_crit_edge808:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

sw.epilog.if.end212_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

do.body196:                                       ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %116 = load i32, ptr @libipw_debug_level, align 4
  %and197 = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %do.body196.rx_dropped487_crit_edge, label %do.end202

do.body196.rx_dropped487_crit_edge:               ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

do.end202:                                        ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #10
  %conv204 = zext i16 %and to i32
  %call207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %conv204, i32 noundef %conv176, i32 noundef %99) #11
  br label %rx_dropped487

if.end212:                                        ; preds = %sw.epilog.if.end212_crit_edge, %sw.epilog.if.end212_crit_edge808, %sw.epilog.if.end212_crit_edge809, %sw.epilog.if.end212_crit_edge810
  %and214 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  %brmerge = select i1 %tobool215.not, i1 true, i1 %tobool84.not
  br i1 %brmerge, label %if.end212.if.end223_crit_edge, label %land.lhs.true218

if.end212.if.end223_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

land.lhs.true218:                                 ; preds = %if.end212
  %cmp.i746 = icmp eq ptr %crypt.1, null
  br i1 %cmp.i746, label %land.lhs.true218.if.end223_crit_edge, label %lor.lhs.false.i

land.lhs.true218.if.end223_crit_edge:             ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

lor.lhs.false.i:                                  ; preds = %land.lhs.true218
  %ops.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt.1, i32 0, i32 1
  %117 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i, align 4
  %decrypt_mpdu.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %decrypt_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %decrypt_mpdu.i, align 4
  %cmp1.i = icmp eq ptr %120, null
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end223_crit_edge, label %if.end.i

lor.lhs.false.i.if.end223_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

if.end.i:                                         ; preds = %lor.lhs.false.i
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %122, align 1
  %125 = call i16 @llvm.bswap.i16(i16 %124) #8
  %conv.i.i748 = zext i16 %125 to i32
  %and3.i.i749 = and i32 %conv.i.i748, 12
  %126 = zext i32 %and3.i.i749 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %and3.i.i749, label %if.end.i.libipw_get_hdrlen.exit.i_crit_edge [
    i32 8, label %sw.bb.i.i756
    i32 4, label %sw.bb14.i.i758
  ]

if.end.i.libipw_get_hdrlen.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_get_hdrlen.exit.i

sw.bb.i.i756:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = and i32 %conv.i.i748, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %127)
  %.not.i.i750 = icmp eq i32 %127, 768
  %hdrlen.0.i.i751 = select i1 %.not.i.i750, i32 30, i32 24
  %and10.i.i752 = and i32 %conv.i.i748, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i752)
  %tobool11.not.i.i753 = icmp eq i32 %and10.i.i752, 0
  %add.i.i754 = add nuw nsw i32 %hdrlen.0.i.i751, 2
  %spec.select.i.i755 = select i1 %tobool11.not.i.i753, i32 %hdrlen.0.i.i751, i32 %add.i.i754
  br label %libipw_get_hdrlen.exit.i

sw.bb14.i.i758:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %128 = and i16 %125, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %128)
  %switch.selectcmp.i.i757 = icmp eq i16 %128, 192
  %129 = select i1 %switch.selectcmp.i.i757, i32 10, i32 16
  br label %libipw_get_hdrlen.exit.i

libipw_get_hdrlen.exit.i:                         ; preds = %sw.bb14.i.i758, %sw.bb.i.i756, %if.end.i.libipw_get_hdrlen.exit.i_crit_edge
  %hdrlen.1.i.i759 = phi i32 [ 24, %if.end.i.libipw_get_hdrlen.exit.i_crit_edge ], [ %129, %sw.bb14.i.i758 ], [ %spec.select.i.i755, %sw.bb.i.i756 ]
  %refcnt.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt.1, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %130 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !315
  %131 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ops.i, align 4
  %decrypt_mpdu3.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %decrypt_mpdu3.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %decrypt_mpdu3.i, align 4
  %priv.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt.1, i32 0, i32 2
  %135 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %priv.i, align 4
  %call4.i = call i32 %134(ptr noundef %skb, i32 noundef %hdrlen.1.i.i759, ptr noundef %136) #8
  %call.i.i45.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %137 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !316
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp6.i = icmp slt i32 %call4.i, 0
  br i1 %cmp6.i, label %do.body.i, label %libipw_get_hdrlen.exit.i.if.end223_crit_edge

libipw_get_hdrlen.exit.i.if.end223_crit_edge:     ; preds = %libipw_get_hdrlen.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

do.body.i:                                        ; preds = %libipw_get_hdrlen.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %138 = load i32, ptr @libipw_debug_level, align 4
  %and.i = and i32 %138, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.end.i

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr2.i = getelementptr inbounds %struct.libipw_hdr_3addr, ptr %122, i32 0, i32 3
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef %addr2.i, i32 noundef %call4.i) #11
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %do.body.i.do.end13.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call4.i)
  %cmp14.i = icmp eq i32 %call4.i, -2
  br i1 %cmp14.i, label %do.body16.i, label %do.end13.i.libipw_rx_frame_decrypt.exit_crit_edge

do.end13.i.libipw_rx_frame_decrypt.exit_crit_edge: ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_rx_frame_decrypt.exit

do.body16.i:                                      ; preds = %do.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %139 = load i32, ptr @libipw_debug_level, align 4
  %and17.i = and i32 %139, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body16.i.libipw_rx_frame_decrypt.exit_crit_edge, label %do.end22.i

do.body16.i.libipw_rx_frame_decrypt.exit_crit_edge: ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_rx_frame_decrypt.exit

do.end22.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data, align 4
  %add.i760 = add nuw nsw i32 %hdrlen.1.i.i759, 3
  %arrayidx.i = getelementptr i8, ptr %141, i32 %add.i760
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i, align 1
  %144 = lshr i8 %143, 6
  %145 = zext i8 %144 to i32
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, i32 noundef %145) #11
  br label %libipw_rx_frame_decrypt.exit

libipw_rx_frame_decrypt.exit:                     ; preds = %do.end22.i, %do.body16.i.libipw_rx_frame_decrypt.exit_crit_edge, %do.end13.i.libipw_rx_frame_decrypt.exit_crit_edge
  %rx_discards_undecryptable.i = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 3, i32 18
  %146 = ptrtoint ptr %rx_discards_undecryptable.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rx_discards_undecryptable.i, align 4
  %inc.i = add i32 %147, 1
  store i32 %inc.i, ptr %rx_discards_undecryptable.i, align 4
  br label %rx_dropped487

if.end223:                                        ; preds = %libipw_get_hdrlen.exit.i.if.end223_crit_edge, %lor.lhs.false.i.if.end223_crit_edge, %land.lhs.true218.if.end223_crit_edge, %if.end212.if.end223_crit_edge
  %keyidx.2 = phi i32 [ %keyidx.1, %if.end212.if.end223_crit_edge ], [ %call4.i, %libipw_get_hdrlen.exit.i.if.end223_crit_edge ], [ 0, %land.lhs.true218.if.end223_crit_edge ], [ 0, %lor.lhs.false.i.if.end223_crit_edge ]
  %148 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp225.not = icmp eq i32 %and7, 0
  %and229 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  %150 = or i32 %and7, %and229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %if.end223.if.end299_crit_edge, label %if.then231

if.end223.if.end299_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

if.then231:                                       ; preds = %if.end223
  %seq_ctl.i = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %149, i32 0, i32 5
  %152 = ptrtoint ptr %seq_ctl.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %seq_ctl.i, align 1
  %154 = call i16 @llvm.bswap.i16(i16 %153) #8
  %conv.i761 = zext i16 %154 to i32
  %and.i762 = and i32 %conv.i761, 15
  %155 = lshr i32 %conv.i761, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i762)
  %cmp.i763 = icmp eq i32 %and.i762, 0
  br i1 %cmp.i763, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then231
  %156 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ieee, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 20
  %158 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mtu.i, align 4
  %add8.i = add i32 %159, 54
  %call.i.i.i764 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add8.i, i32 noundef 2592) #8
  %cmp9.i = icmp eq ptr %call.i.i.i764, null
  br i1 %cmp9.i, label %if.then.i.libipw_frag_cache_get.exit_crit_edge, label %if.end.i769

if.then.i.libipw_frag_cache_get.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_frag_cache_get.exit

if.end.i769:                                      ; preds = %if.then.i
  %frag_next_idx.i = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 33
  %160 = ptrtoint ptr %frag_next_idx.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %frag_next_idx.i, align 4
  %arrayidx.i765 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %161
  %inc.i766 = add i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i766)
  %cmp14.i767 = icmp ugt i32 %inc.i766, 3
  %spec.select.i768 = select i1 %cmp14.i767, i32 0, i32 %inc.i766
  %162 = ptrtoint ptr %frag_next_idx.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %spec.select.i768, ptr %frag_next_idx.i, align 4
  %skb19.i = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %161, i32 3
  %163 = ptrtoint ptr %skb19.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %skb19.i, align 4
  %cmp20.not.i = icmp eq ptr %164, null
  br i1 %cmp20.not.i, label %if.end.i769.if.end24.i_crit_edge, label %if.then22.i

if.end.i769.if.end24.i_crit_edge:                 ; preds = %if.end.i769
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end.i769
  call void @__sanitizer_cov_trace_pc() #10
  call void @__dev_kfree_skb_any(ptr noundef nonnull %164, i32 noundef 1) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end.i769.if.end24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %165 = load volatile i32, ptr @jiffies, align 128
  %166 = ptrtoint ptr %arrayidx.i765 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx.i765, align 4
  %seq25.i = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %161, i32 1
  %167 = ptrtoint ptr %seq25.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %155, ptr %seq25.i, align 4
  %last_frag.i = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %161, i32 2
  %168 = ptrtoint ptr %last_frag.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %last_frag.i, align 4
  %169 = ptrtoint ptr %skb19.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call.i.i.i764, ptr %skb19.i, align 4
  %src_addr.i = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %161, i32 4
  %addr2.i770 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %149, i32 0, i32 3
  %170 = call ptr @memcpy(ptr %src_addr.i, ptr %addr2.i770, i32 6)
  %dst_addr.i = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %161, i32 5
  %addr1.i = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %149, i32 0, i32 2
  %171 = call ptr @memcpy(ptr %dst_addr.i, ptr %addr1.i, i32 6)
  br label %libipw_frag_cache_get.exit

if.else.i:                                        ; preds = %if.then231
  %addr230.i = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %149, i32 0, i32 3
  %addr132.i = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %149, i32 0, i32 2
  %call34.i = call fastcc ptr @libipw_frag_cache_find(ptr noundef %ieee, i32 noundef %155, i32 noundef %and.i762, ptr noundef %addr230.i, ptr noundef %addr132.i) #8
  %cmp35.not.i = icmp eq ptr %call34.i, null
  br i1 %cmp35.not.i, label %if.else.i.libipw_frag_cache_get.exit_crit_edge, label %if.then37.i

if.else.i.libipw_frag_cache_get.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_frag_cache_get.exit

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_frag38.i = getelementptr inbounds %struct.libipw_frag_entry, ptr %call34.i, i32 0, i32 2
  %172 = ptrtoint ptr %last_frag38.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %and.i762, ptr %last_frag38.i, align 4
  %skb39.i = getelementptr inbounds %struct.libipw_frag_entry, ptr %call34.i, i32 0, i32 3
  %173 = ptrtoint ptr %skb39.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %skb39.i, align 4
  br label %libipw_frag_cache_get.exit

libipw_frag_cache_get.exit:                       ; preds = %if.then37.i, %if.else.i.libipw_frag_cache_get.exit_crit_edge, %if.end24.i, %if.then.i.libipw_frag_cache_get.exit_crit_edge
  %retval.0.i771 = phi ptr [ null, %if.then.i.libipw_frag_cache_get.exit_crit_edge ], [ %call.i.i.i764, %if.end24.i ], [ %174, %if.then37.i ], [ null, %if.else.i.libipw_frag_cache_get.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %175 = load i32, ptr @libipw_debug_level, align 4
  %and234 = and i32 %175, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %libipw_frag_cache_get.exit.do.end244_crit_edge, label %do.end239

libipw_frag_cache_get.exit.do.end244_crit_edge:   ; preds = %libipw_frag_cache_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end244

do.end239:                                        ; preds = %libipw_frag_cache_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef %and7) #11
  br label %do.end244

do.end244:                                        ; preds = %do.end239, %libipw_frag_cache_get.exit.do.end244_crit_edge
  %tobool245.not = icmp eq ptr %retval.0.i771, null
  br i1 %tobool245.not, label %do.body247, label %if.end266

do.body247:                                       ; preds = %do.end244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %176 = load i32, ptr @libipw_debug_level, align 4
  %and248 = and i32 %176, 544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %do.body247.rx_dropped487_crit_edge, label %do.end253

do.body247.rx_dropped487_crit_edge:               ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

do.end253:                                        ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #10
  %and256 = lshr i32 %conv, 10
  %and256.lobit = and i32 %and256, 1
  %177 = lshr i32 %conv6, 4
  %call262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef %and256.lobit, i32 noundef %177, i32 noundef %and7) #11
  br label %rx_dropped487

if.end266:                                        ; preds = %do.end244
  %178 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %len, align 4
  %sub = select i1 %cmp225.not, i32 0, i32 %hdrlen.1.i
  %spec.select = sub i32 %179, %sub
  %tail = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i771, i32 0, i32 16
  %180 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %181, i32 %spec.select
  %end = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i771, i32 0, i32 17
  %182 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %end, align 4
  %cmp272 = icmp ugt ptr %add.ptr, %183
  br i1 %cmp272, label %do.end277, label %if.end283

do.end277:                                        ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  %call281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %1) #11
  call fastcc void @libipw_frag_cache_invalidate(ptr noundef %ieee, ptr noundef %149)
  br label %rx_dropped487

if.end283:                                        ; preds = %if.end266
  %call287 = call ptr @skb_put(ptr noundef nonnull %retval.0.i771, i32 noundef %spec.select) #8
  %184 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %data, align 4
  %add.ptr.i.sink.idx = select i1 %cmp225.not, i32 0, i32 %hdrlen.1.i
  %add.ptr.i.sink = getelementptr i8, ptr %185, i32 %add.ptr.i.sink.idx
  %186 = call ptr @memcpy(ptr %call287, ptr %add.ptr.i.sink, i32 %spec.select)
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br i1 %tobool230.not, label %cleanup, label %if.end283.cleanup491_crit_edge

if.end283.cleanup491_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup491

cleanup:                                          ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  %data296 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i771, i32 0, i32 19
  %187 = ptrtoint ptr %data296 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %data296, align 4
  call fastcc void @libipw_frag_cache_invalidate(ptr noundef %ieee, ptr noundef %188)
  br label %if.end299

if.end299:                                        ; preds = %cleanup, %if.end223.if.end299_crit_edge
  %skb.addr.1 = phi ptr [ %retval.0.i771, %cleanup ], [ %skb, %if.end223.if.end299_crit_edge ]
  br i1 %brmerge, label %if.end299.if.end309_crit_edge, label %land.lhs.true305

if.end299.if.end309_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

land.lhs.true305:                                 ; preds = %if.end299
  %call306 = call fastcc i32 @libipw_rx_frame_decrypt_msdu(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %keyidx.2, ptr noundef %crypt.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %land.lhs.true305.if.end309_crit_edge, label %land.lhs.true305.rx_dropped487_crit_edge

land.lhs.true305.rx_dropped487_crit_edge:         ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

land.lhs.true305.if.end309_crit_edge:             ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end309

if.end309:                                        ; preds = %land.lhs.true305.if.end309_crit_edge, %if.end299.if.end309_crit_edge
  %data310 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %189 = ptrtoint ptr %data310 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %data310, align 4
  %tobool311.not = icmp ne ptr %crypt.1, null
  %191 = and i1 %tobool215.not, %tobool311.not
  br i1 %191, label %land.lhs.true316, label %if.end309.if.end365_crit_edge

if.end309.if.end365_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end365

land.lhs.true316:                                 ; preds = %if.end309
  %open_wep = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 17
  %192 = ptrtoint ptr %open_wep to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %open_wep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool317.not = icmp eq i32 %193, 0
  br i1 %tobool317.not, label %if.then318, label %land.lhs.true316.if.end365_crit_edge

land.lhs.true316.if.end365_crit_edge:             ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end365

if.then318:                                       ; preds = %land.lhs.true316
  %call319 = call fastcc i32 @libipw_is_eapol_frame(ptr noundef %ieee, ptr noundef %skb.addr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %do.body323, label %land.lhs.true347

do.body323:                                       ; preds = %if.then318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %194 = load i32, ptr @libipw_debug_level, align 4
  %and324 = and i32 %194, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %do.body323.rx_dropped487_crit_edge, label %do.end329

do.body323.rx_dropped487_crit_edge:               ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

do.end329:                                        ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #10
  %addr2331 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %190, i32 0, i32 3
  %call333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, ptr noundef %addr2331) #11
  br label %rx_dropped487

land.lhs.true347:                                 ; preds = %if.then318
  %call348 = call fastcc i32 @libipw_is_eapol_frame(ptr noundef %ieee, ptr noundef %skb.addr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348)
  %tobool349.not = icmp eq i32 %call348, 0
  br i1 %tobool349.not, label %do.body351, label %land.lhs.true347.if.end365_crit_edge

land.lhs.true347.if.end365_crit_edge:             ; preds = %land.lhs.true347
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end365

do.body351:                                       ; preds = %land.lhs.true347
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %195 = load i32, ptr @libipw_debug_level, align 4
  %and352 = and i32 %195, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and352)
  %tobool353.not = icmp eq i32 %and352, 0
  br i1 %tobool353.not, label %do.body351.rx_dropped487_crit_edge, label %do.end357

do.body351.rx_dropped487_crit_edge:               ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

do.end357:                                        ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #10
  %addr2359 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %190, i32 0, i32 3
  %call361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, ptr noundef %addr2359) #11
  br label %rx_dropped487

if.end365:                                        ; preds = %land.lhs.true347.if.end365_crit_edge, %land.lhs.true316.if.end365_crit_edge, %if.end309.if.end365_crit_edge
  %tobool84.not.not = xor i1 %tobool84.not, true
  %brmerge742 = or i1 %tobool215.not, %tobool84.not.not
  br i1 %brmerge742, label %if.end365.if.end409_crit_edge, label %land.lhs.true371

if.end365.if.end409_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end409

land.lhs.true371:                                 ; preds = %if.end365
  %host_strip_iv_icv = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 22
  %196 = ptrtoint ptr %host_strip_iv_icv to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %host_strip_iv_icv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool372.not = icmp eq i32 %197, 0
  br i1 %tobool372.not, label %land.lhs.true371.if.end409_crit_edge, label %if.then373

land.lhs.true371.if.end409_crit_edge:             ; preds = %land.lhs.true371
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end409

if.then373:                                       ; preds = %land.lhs.true371
  %len374 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %198 = ptrtoint ptr %len374 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %len374, align 4
  %add375 = add nuw nsw i32 %hdrlen.1.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %add375)
  %cmp376.not = icmp ult i32 %199, %add375
  br i1 %cmp376.not, label %if.then373.if.end384_crit_edge, label %if.then378

if.then373.if.end384_crit_edge:                   ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end384

if.then378:                                       ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx381 = getelementptr i8, ptr %190, i32 %add375
  %200 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx381, align 1
  %202 = lshr i8 %201, 6
  %203 = zext i8 %202 to i32
  br label %if.end384

if.end384:                                        ; preds = %if.then378, %if.then373.if.end384_crit_edge
  %keyidx.3 = phi i32 [ %203, %if.then378 ], [ %keyidx.2, %if.then373.if.end384_crit_edge ]
  %arrayidx385 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 2, i32 2, i32 %keyidx.3
  %204 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx385, align 1
  %switch.tableidx = add i8 %205, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %206 = icmp ult i8 %switch.tableidx, 3
  br i1 %206, label %switch.lookup, label %if.end384.if.end398_crit_edge

if.end384.if.end398_crit_edge:                    ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end398

switch.lookup:                                    ; preds = %if.end384
  %207 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.libipw_rx, i32 0, i32 %207
  %208 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %208)
  %switch.load = load i32, ptr %switch.gep, align 4
  %209 = sext i8 %switch.tableidx to i32
  %switch.gep806 = getelementptr inbounds [3 x i32], ptr @switch.table.libipw_rx.187, i32 0, i32 %209
  %210 = ptrtoint ptr %switch.gep806 to i32
  call void @__asan_load4_noabort(i32 %210)
  %switch.load807 = load i32, ptr %switch.gep806, align 4
  %add392 = add nuw nsw i32 %hdrlen.1.i, %switch.load
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %switch.load807)
  %cmp395 = icmp ult i32 %199, %switch.load807
  br i1 %cmp395, label %switch.lookup.rx_dropped487_crit_edge, label %switch.lookup.if.end398_crit_edge

switch.lookup.if.end398_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end398

switch.lookup.rx_dropped487_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

if.end398:                                        ; preds = %switch.lookup.if.end398_crit_edge, %if.end384.if.end398_crit_edge
  %trimlen.0788 = phi i32 [ %switch.load807, %switch.lookup.if.end398_crit_edge ], [ 0, %if.end384.if.end398_crit_edge ]
  %hdrlen.0786 = phi i32 [ %add392, %switch.lookup.if.end398_crit_edge ], [ %hdrlen.1.i, %if.end384.if.end398_crit_edge ]
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 7
  %211 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool.i.not.i.i = icmp eq i32 %212, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !317

do.end.i.i:                                       ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 2789, i32 noundef 9, ptr noundef null) #8
  br label %__skb_trim.exit

if.end21.critedge.i.i:                            ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #10
  %sub400 = sub i32 %199, %trimlen.0788
  %213 = ptrtoint ptr %len374 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %sub400, ptr %len374, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %190, i32 %sub400
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 16
  %214 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %__skb_trim.exit

__skb_trim.exit:                                  ; preds = %if.end21.critedge.i.i, %do.end.i.i
  %215 = ptrtoint ptr %len374 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %len374, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %hdrlen.0786)
  %cmp402 = icmp ult i32 %216, %hdrlen.0786
  br i1 %cmp402, label %__skb_trim.exit.rx_dropped487_crit_edge, label %__skb_trim.exit.if.end409_crit_edge

__skb_trim.exit.if.end409_crit_edge:              ; preds = %__skb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end409

__skb_trim.exit.rx_dropped487_crit_edge:          ; preds = %__skb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_dropped487

if.end409:                                        ; preds = %__skb_trim.exit.if.end409_crit_edge, %land.lhs.true371.if.end409_crit_edge, %if.end365.if.end409_crit_edge
  %hdrlen.1 = phi i32 [ %hdrlen.1.i, %if.end365.if.end409_crit_edge ], [ %hdrlen.1.i, %land.lhs.true371.if.end409_crit_edge ], [ %hdrlen.0786, %__skb_trim.exit.if.end409_crit_edge ]
  %217 = ptrtoint ptr %data310 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %data310, align 4
  %add.ptr411 = getelementptr i8, ptr %218, i32 %hdrlen.1
  %arrayidx412 = getelementptr i8, ptr %add.ptr411, i32 6
  %219 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx412, align 1
  %conv413 = zext i8 %220 to i16
  %shl = shl nuw i16 %conv413, 8
  %arrayidx414 = getelementptr i8, ptr %add.ptr411, i32 7
  %221 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx414, align 1
  %conv415 = zext i8 %222 to i16
  %or416 = or i16 %shl, %conv415
  %len418 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %223 = ptrtoint ptr %len418 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %len418, align 4
  %sub419 = sub i32 %224, %hdrlen.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub419)
  %cmp420 = icmp ugt i32 %sub419, 7
  br i1 %cmp420, label %land.lhs.true422, label %if.end409.if.else445_crit_edge

if.end409.if.else445_crit_edge:                   ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else445

land.lhs.true422:                                 ; preds = %if.end409
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr411, ptr noundef nonnull dereferenceable(6) @libipw_rfc1042_header, i32 6) #12
  %bcmp.fr = freeze i32 %bcmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.fr)
  %cmp424.not = icmp eq i32 %bcmp.fr, 0
  br i1 %cmp424.not, label %switch.early.test, label %land.lhs.true422.lor.lhs.false434_crit_edge

land.lhs.true422.lor.lhs.false434_crit_edge:      ; preds = %land.lhs.true422
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false434

switch.early.test:                                ; preds = %land.lhs.true422
  %225 = zext i16 %or416 to i64
  call void @__sanitizer_cov_trace_switch(i64 %225, ptr @__sancov_gen_cov_switch_values.192)
  switch i16 %or416, label %switch.early.test.if.then438_crit_edge [
    i16 -32457, label %switch.early.test.lor.lhs.false434_crit_edge
    i16 -32525, label %switch.early.test.lor.lhs.false434_crit_edge811
  ]

switch.early.test.lor.lhs.false434_crit_edge811:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false434

switch.early.test.lor.lhs.false434_crit_edge:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false434

switch.early.test.if.then438_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then438

lor.lhs.false434:                                 ; preds = %switch.early.test.lor.lhs.false434_crit_edge, %switch.early.test.lor.lhs.false434_crit_edge811, %land.lhs.true422.lor.lhs.false434_crit_edge
  %bcmp735 = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr411, ptr noundef nonnull dereferenceable(6) @libipw_bridge_tunnel_header, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp735)
  %cmp436 = icmp eq i32 %bcmp735, 0
  br i1 %cmp436, label %lor.lhs.false434.if.then438_crit_edge, label %lor.lhs.false434.if.else445_crit_edge

lor.lhs.false434.if.else445_crit_edge:            ; preds = %lor.lhs.false434
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else445

lor.lhs.false434.if.then438_crit_edge:            ; preds = %lor.lhs.false434
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then438

if.then438:                                       ; preds = %lor.lhs.false434.if.then438_crit_edge, %switch.early.test.if.then438_crit_edge
  %add439 = add nuw nsw i32 %hdrlen.1, 6
  %call440 = call ptr @skb_pull(ptr noundef %skb.addr.1, i32 noundef %add439) #8
  br label %if.end455

if.else445:                                       ; preds = %lor.lhs.false434.if.else445_crit_edge, %if.end409.if.else445_crit_edge
  %call447 = call ptr @skb_pull(ptr noundef %skb.addr.1, i32 noundef %hdrlen.1) #8
  %226 = ptrtoint ptr %len418 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %len418, align 4
  %conv449 = trunc i32 %227 to i16
  %call450 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 2) #8
  %228 = ptrtoint ptr %call450 to i32
  call void @__asan_storeN_noabort(i32 %228, i32 2)
  store i16 %conv449, ptr %call450, align 1
  br label %if.end455

if.end455:                                        ; preds = %if.else445, %if.then438
  %call451 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 6) #8
  %229 = ptrtoint ptr %call451 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %src.sroa.0.0, ptr %call451, align 1
  %src.sroa.9.0.call451.sroa_idx = getelementptr inbounds i8, ptr %call451, i32 1
  %230 = ptrtoint ptr %src.sroa.9.0.call451.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %src.sroa.9.0, ptr %src.sroa.9.0.call451.sroa_idx, align 1
  %src.sroa.10.0.call451.sroa_idx = getelementptr inbounds i8, ptr %call451, i32 2
  %231 = ptrtoint ptr %src.sroa.10.0.call451.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %src.sroa.10.0, ptr %src.sroa.10.0.call451.sroa_idx, align 1
  %src.sroa.11.0.call451.sroa_idx = getelementptr inbounds i8, ptr %call451, i32 3
  %232 = ptrtoint ptr %src.sroa.11.0.call451.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %src.sroa.11.0, ptr %src.sroa.11.0.call451.sroa_idx, align 1
  %src.sroa.12.0.call451.sroa_idx = getelementptr inbounds i8, ptr %call451, i32 4
  %233 = ptrtoint ptr %src.sroa.12.0.call451.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %src.sroa.12.0, ptr %src.sroa.12.0.call451.sroa_idx, align 1
  %src.sroa.13.0.call451.sroa_idx = getelementptr inbounds i8, ptr %call451, i32 5
  %234 = ptrtoint ptr %src.sroa.13.0.call451.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %src.sroa.13.0, ptr %src.sroa.13.0.call451.sroa_idx, align 1
  %call453 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 6) #8
  %235 = ptrtoint ptr %call453 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %dst.sroa.0.0, ptr %call453, align 1
  %dst.sroa.9.0.call453.sroa_idx = getelementptr inbounds i8, ptr %call453, i32 1
  %236 = ptrtoint ptr %dst.sroa.9.0.call453.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %dst.sroa.9.0, ptr %dst.sroa.9.0.call453.sroa_idx, align 1
  %dst.sroa.10.0.call453.sroa_idx = getelementptr inbounds i8, ptr %call453, i32 2
  %237 = ptrtoint ptr %dst.sroa.10.0.call453.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %dst.sroa.10.0, ptr %dst.sroa.10.0.call453.sroa_idx, align 1
  %dst.sroa.11.0.call453.sroa_idx = getelementptr inbounds i8, ptr %call453, i32 3
  %238 = ptrtoint ptr %dst.sroa.11.0.call453.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %dst.sroa.11.0, ptr %dst.sroa.11.0.call453.sroa_idx, align 1
  %dst.sroa.12.0.call453.sroa_idx = getelementptr inbounds i8, ptr %call453, i32 4
  %239 = ptrtoint ptr %dst.sroa.12.0.call453.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %dst.sroa.12.0, ptr %dst.sroa.12.0.call453.sroa_idx, align 1
  %dst.sroa.13.0.call453.sroa_idx = getelementptr inbounds i8, ptr %call453, i32 5
  %240 = ptrtoint ptr %dst.sroa.13.0.call453.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %dst.sroa.13.0, ptr %dst.sroa.13.0.call453.sroa_idx, align 1
  %stats456 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %241 = ptrtoint ptr %stats456 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %stats456, align 8
  %inc458 = add i32 %242, 1
  store i32 %inc458, ptr %stats456, align 8
  %243 = ptrtoint ptr %len418 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %len418, align 4
  %rx_bytes461 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %245 = ptrtoint ptr %rx_bytes461 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %rx_bytes461, align 8
  %add462 = add i32 %246, %244
  store i32 %add462, ptr %rx_bytes461, align 8
  %tobool463.not = icmp eq ptr %skb.addr.1, null
  br i1 %tobool463.not, label %if.end455.cleanup491_crit_edge, label %if.then464

if.end455.cleanup491_crit_edge:                   ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup491

if.then464:                                       ; preds = %if.end455
  %call465 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.addr.1, ptr noundef %1) #8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 18
  %247 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %call465, ptr %protocol, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3
  %248 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15
  %249 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %249)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call467 = call i32 @netif_rx(ptr noundef nonnull %skb.addr.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call467)
  %cmp468 = icmp eq i32 %call467, 1
  br i1 %cmp468, label %do.body471, label %if.then464.cleanup491_crit_edge

if.then464.cleanup491_crit_edge:                  ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup491

do.body471:                                       ; preds = %if.then464
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %250 = load i32, ptr @libipw_debug_level, align 4
  %and472 = and i32 %250, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and472)
  %tobool473.not = icmp eq i32 %and472, 0
  br i1 %tobool473.not, label %do.body471.do.end482_crit_edge, label %do.end477

do.body471.do.end482_crit_edge:                   ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end482

do.end477:                                        ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #10
  %call479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1) #11
  br label %do.end482

do.end482:                                        ; preds = %do.end477, %do.body471.do.end482_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %251 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %rx_dropped, align 8
  %inc484 = add i32 %252, 1
  store i32 %inc484, ptr %rx_dropped, align 8
  br label %cleanup491

rx_dropped487:                                    ; preds = %__skb_trim.exit.rx_dropped487_crit_edge, %switch.lookup.rx_dropped487_crit_edge, %do.end357, %do.body351.rx_dropped487_crit_edge, %do.end329, %do.body323.rx_dropped487_crit_edge, %land.lhs.true305.rx_dropped487_crit_edge, %do.end277, %do.end253, %do.body247.rx_dropped487_crit_edge, %libipw_rx_frame_decrypt.exit, %do.end202, %do.body196.rx_dropped487_crit_edge, %sw.epilog.rx_dropped487_crit_edge, %sw.bb156.rx_dropped487_crit_edge, %if.else134.rx_dropped487_crit_edge, %if.end128.rx_dropped487_crit_edge, %do.end125, %do.end15, %do.end
  %rx_dropped489 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %253 = ptrtoint ptr %rx_dropped489 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %rx_dropped489, align 8
  %inc490 = add i32 %254, 1
  store i32 %inc490, ptr %rx_dropped489, align 8
  br label %cleanup491

cleanup491:                                       ; preds = %rx_dropped487, %do.end482, %if.then464.cleanup491_crit_edge, %if.end455.cleanup491_crit_edge, %if.end283.cleanup491_crit_edge, %libipw_monitor_rx.exit
  %retval.0 = phi i32 [ 0, %rx_dropped487 ], [ 1, %libipw_monitor_rx.exit ], [ 1, %if.end455.cleanup491_crit_edge ], [ 1, %do.end482 ], [ 1, %if.then464.cleanup491_crit_edge ], [ 1, %if.end283.cleanup491_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_spy_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @libipw_frag_cache_invalidate(ptr noundef %ieee, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_ctl = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %hdr, i32 0, i32 5
  %0 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %seq_ctl, align 1
  %2 = and i16 %1, -3841
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = lshr exact i16 %3, 4
  %5 = zext i16 %4 to i32
  %addr2 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %hdr, i32 0, i32 3
  %addr1 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %hdr, i32 0, i32 2
  %call = tail call fastcc ptr @libipw_frag_cache_find(ptr noundef %ieee, i32 noundef %5, i32 noundef -1, ptr noundef %addr2, ptr noundef %addr1)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %6 = load i32, ptr @libipw_debug_level, align 4
  %and4 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %5) #11
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %skb = getelementptr inbounds %struct.libipw_frag_entry, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @libipw_rx_frame_decrypt_msdu(ptr nocapture noundef readonly %ieee, ptr noundef %skb, i32 noundef %keyidx, ptr noundef %crypt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %crypt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %decrypt_msdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %decrypt_msdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decrypt_msdu, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv.i = zext i16 %8 to i32
  %and3.i = and i32 %conv.i, 12
  %9 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %and3.i, label %if.end.libipw_get_hdrlen.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb14.i
  ]

if.end.libipw_get_hdrlen.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_get_hdrlen.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = and i32 %conv.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %10)
  %.not.i = icmp eq i32 %10, 768
  %hdrlen.0.i = select i1 %.not.i, i32 30, i32 24
  %and10.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %add.i = add nuw nsw i32 %hdrlen.0.i, 2
  %spec.select.i = select i1 %tobool11.not.i, i32 %hdrlen.0.i, i32 %add.i
  br label %libipw_get_hdrlen.exit

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = and i16 %8, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %11)
  %switch.selectcmp.i = icmp eq i16 %11, 192
  %12 = select i1 %switch.selectcmp.i, i32 10, i32 16
  br label %libipw_get_hdrlen.exit

libipw_get_hdrlen.exit:                           ; preds = %sw.bb14.i, %sw.bb.i, %if.end.libipw_get_hdrlen.exit_crit_edge
  %hdrlen.1.i = phi i32 [ 24, %if.end.libipw_get_hdrlen.exit_crit_edge ], [ %12, %sw.bb14.i ], [ %spec.select.i, %sw.bb.i ]
  %refcnt = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !315
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %decrypt_msdu3 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %decrypt_msdu3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %decrypt_msdu3, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 2
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %call4 = tail call i32 %17(ptr noundef %skb, i32 noundef %keyidx, i32 noundef %hdrlen.1.i, ptr noundef %19) #8
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !316
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %do.end, label %libipw_get_hdrlen.exit.cleanup_crit_edge

libipw_get_hdrlen.exit.cleanup_crit_edge:         ; preds = %libipw_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %libipw_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ieee, align 4
  %addr2 = getelementptr inbounds %struct.libipw_hdr_3addr, ptr %5, i32 0, i32 3
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %22, ptr noundef %addr2, i32 noundef %keyidx) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %libipw_get_hdrlen.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %libipw_get_hdrlen.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @libipw_is_eapol_frame(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp = icmp ult i32 %3, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %.tr = trunc i16 %7 to i10
  %trunc = shl i10 %.tr, 8
  %8 = zext i10 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.194)
  switch i10 %trunc, label %if.end.cleanup_crit_edge [
    i10 256, label %land.lhs.true
    i10 -512, label %land.lhs.true15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %addr1 = getelementptr inbounds %struct.libipw_hdr_3addr, ptr %5, i32 0, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr1, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %xor.i = xor i32 %14, %12
  %add.ptr.i = getelementptr %struct.libipw_hdr_3addr, ptr %5, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %10, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %addr3 = getelementptr inbounds %struct.libipw_hdr_3addr, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr3, align 4
  %xor.i54 = xor i32 %20, %14
  %add.ptr.i55 = getelementptr %struct.libipw_hdr_3addr, ptr %5, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i55, align 2
  %xor37.i57 = xor i16 %22, %18
  %xor3.i58 = zext i16 %xor37.i57 to i32
  %or.i59 = or i32 %xor.i54, %xor3.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i59)
  %cmp.i60 = icmp ne i32 %or.i59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp26.old = icmp ult i32 %3, 32
  %or.cond68 = select i1 %cmp.i60, i1 true, i1 %cmp26.old
  br i1 %or.cond68, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end29_crit_edge

land.lhs.true5.if.end29_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end
  %addr116 = getelementptr inbounds %struct.libipw_hdr_3addr, ptr %5, i32 0, i32 2
  %dev_addr18 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr18, align 64
  %25 = ptrtoint ptr %addr116 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr116, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %xor.i61 = xor i32 %28, %26
  %add.ptr.i62 = getelementptr %struct.libipw_hdr_3addr, ptr %5, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i62, align 2
  %add.ptr1.i63 = getelementptr i8, ptr %24, i32 4
  %31 = ptrtoint ptr %add.ptr1.i63 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i63, align 2
  %xor37.i64 = xor i16 %32, %30
  %xor3.i65 = zext i16 %xor37.i64 to i32
  %or.i66 = or i32 %xor.i61, %xor3.i65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i66)
  %cmp.i67 = icmp ne i32 %or.i66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp26 = icmp ult i32 %3, 32
  %or.cond = select i1 %cmp.i67, i1 true, i1 %cmp26
  br i1 %or.cond, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end29_crit_edge

land.lhs.true15.if.end29_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true15.if.end29_crit_edge, %land.lhs.true5.if.end29_crit_edge
  %arrayidx = getelementptr i8, ptr %5, i32 30
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %conv31 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv31, 8
  %arrayidx32 = getelementptr i8, ptr %5, i32 31
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %36 to i32
  %or = or i32 %shl, %conv33
  call void @__sanitizer_cov_trace_const_cmp4(i32 34958, i32 %or)
  %cmp36 = icmp eq i32 %or, 34958
  %. = zext i1 %cmp36 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ %., %if.end29 ], [ 0, %land.lhs.true5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @libipw_rx_any(ptr noundef %ieee, ptr noundef %skb, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iw_mode = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call i32 @libipw_rx(ptr noundef %ieee, ptr noundef %skb, ptr noundef %stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %3)
  %cmp3 = icmp ult i32 %3, 30
  br i1 %cmp3, label %if.end2.drop_free_crit_edge, label %if.end5

if.end2.drop_free_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_free

if.end5:                                          ; preds = %if.end2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %if.end9, label %if.end5.drop_free_crit_edge

if.end5.drop_free_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_free

if.end9:                                          ; preds = %if.end5
  %and11 = and i32 %conv, 12
  %9 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %and11, label %if.end9.cleanup_crit_edge [
    i32 0, label %if.end16
    i32 8, label %sw.epilog
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @libipw_rx_mgt(ptr noundef %ieee, ptr noundef %5, ptr noundef %stats)
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end9
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %1, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb19
    i32 2, label %sw.bb45
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb19:                                          ; preds = %sw.epilog
  %addr3 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 4
  %bssid = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 36
  %11 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr3, align 4
  %13 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bssid, align 4
  %xor.i = xor i32 %14, %12
  %add.ptr.i = getelementptr %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 36, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %and24 = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 0
  %or.cond = select i1 %cmp.i, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then27, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %sw.bb19
  %19 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ieee, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and28 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else, label %if.then27.if.then88_crit_edge

if.then27.if.then88_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then88

if.else:                                          ; preds = %if.then27
  %addr1 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %25 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr1, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %xor.i140 = xor i32 %28, %26
  %add.ptr.i141 = getelementptr %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %add.ptr.i141 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i141, align 2
  %add.ptr1.i142 = getelementptr i8, ptr %24, i32 4
  %31 = ptrtoint ptr %add.ptr1.i142 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i142, align 2
  %xor37.i143 = xor i16 %32, %30
  %xor3.i144 = zext i16 %xor37.i143 to i32
  %or.i145 = or i32 %xor.i140, %xor3.i144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i145)
  %cmp.i146 = icmp ne i32 %or.i145, 0
  %33 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not = icmp eq i32 %33, 0
  %or.cond169 = select i1 %cmp.i146, i1 %tobool.i.not, i1 false
  br i1 %or.cond169, label %if.else.cleanup_crit_edge, label %if.else.if.then88_crit_edge

if.else.if.then88_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then88

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb45:                                          ; preds = %sw.epilog
  %addr2 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 3
  %bssid47 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 36
  %34 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr2, align 4
  %36 = ptrtoint ptr %bssid47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bssid47, align 4
  %xor.i147 = xor i32 %37, %35
  %add.ptr.i148 = getelementptr %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %add.ptr.i148 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i148, align 2
  %add.ptr1.i149 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 36, i32 4
  %40 = ptrtoint ptr %add.ptr1.i149 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr1.i149, align 2
  %xor37.i150 = xor i16 %41, %39
  %xor3.i151 = zext i16 %xor37.i150 to i32
  %or.i152 = or i32 %xor.i147, %xor3.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i152)
  %cmp.i153 = icmp eq i32 %or.i152, 0
  %and52 = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 512
  %or.cond132 = select i1 %cmp.i153, i1 %cmp53, i1 false
  br i1 %or.cond132, label %if.then55, label %sw.bb45.cleanup_crit_edge

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %sw.bb45
  %42 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ieee, align 4
  %flags57 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %flags57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags57, align 8
  %and58 = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else61, label %if.then55.if.then88_crit_edge

if.then55.if.then88_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then88

if.else61:                                        ; preds = %if.then55
  %addr162 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 2
  %dev_addr65 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr65, align 64
  %48 = ptrtoint ptr %addr162 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr162, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 4
  %xor.i154 = xor i32 %51, %49
  %add.ptr.i155 = getelementptr %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %add.ptr.i155 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i155, align 2
  %add.ptr1.i156 = getelementptr i8, ptr %47, i32 4
  %54 = ptrtoint ptr %add.ptr1.i156 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr1.i156, align 2
  %xor37.i157 = xor i16 %55, %53
  %xor3.i158 = zext i16 %xor37.i157 to i32
  %or.i159 = or i32 %xor.i154, %xor3.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i159)
  %cmp.i160 = icmp eq i32 %or.i159, 0
  br i1 %cmp.i160, label %if.else61.if.then88_crit_edge, label %if.else68

if.else61.if.then88_crit_edge:                    ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then88

if.else68:                                        ; preds = %if.else61
  %56 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i161.not = icmp eq i32 %56, 0
  br i1 %tobool.i161.not, label %if.else68.cleanup_crit_edge, label %sw.epilog86

if.else68.cleanup_crit_edge:                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog86:                                      ; preds = %if.else68
  %addr373 = getelementptr inbounds %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 4
  %57 = ptrtoint ptr %addr373 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr373, align 4
  %xor.i162 = xor i32 %58, %51
  %add.ptr.i163 = getelementptr %struct.libipw_hdr_4addr, ptr %5, i32 0, i32 4, i32 4
  %59 = ptrtoint ptr %add.ptr.i163 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i163, align 2
  %xor37.i165 = xor i16 %60, %55
  %xor3.i166 = zext i16 %xor37.i165 to i32
  %or.i167 = or i32 %xor.i162, %xor3.i166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i167)
  %cmp.i168 = icmp eq i32 %or.i167, 0
  br i1 %cmp.i168, label %sw.epilog86.cleanup_crit_edge, label %sw.epilog86.if.then88_crit_edge

sw.epilog86.if.then88_crit_edge:                  ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then88

sw.epilog86.cleanup_crit_edge:                    ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then88:                                        ; preds = %sw.epilog86.if.then88_crit_edge, %if.else61.if.then88_crit_edge, %if.then55.if.then88_crit_edge, %if.else.if.then88_crit_edge, %if.then27.if.then88_crit_edge
  %call89 = tail call i32 @libipw_rx(ptr noundef %ieee, ptr noundef %skb, ptr noundef %stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.then88.cleanup_crit_edge

if.then88.cleanup_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then91:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

drop_free:                                        ; preds = %if.end5.drop_free_crit_edge, %if.end2.drop_free_crit_edge
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #8
  %61 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ieee, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 6
  %63 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %64, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

cleanup:                                          ; preds = %drop_free, %if.then91, %if.then88.cleanup_crit_edge, %sw.epilog86.cleanup_crit_edge, %if.else68.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end16, %if.end9.cleanup_crit_edge, %if.then1, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @libipw_rx_mgt(ptr noundef %ieee, ptr noundef %header, ptr noundef %stats) #0 align 64 {
entry:
  %network_resp.i = alloca %struct.libipw_network, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %header to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %header, align 1
  %2 = lshr i16 %1, 8
  %3 = and i16 %2, 240
  %and = zext i16 %3 to i32
  %4 = lshr exact i32 %and, 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %4, label %do.body219 [
    i32 1, label %do.body
    i32 3, label %do.body9
    i32 4, label %do.body23
    i32 5, label %do.body42
    i32 8, label %do.body66
    i32 11, label %do.body90
    i32 10, label %sw.bb110
    i32 13, label %do.body119
    i32 2, label %do.body136
    i32 0, label %do.body168
    i32 12, label %do.body202
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %6 = load i32, ptr @libipw_debug_level, align 4
  %and1 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 344, ptr nonnull %network_resp.i) #8
  %7 = call ptr @memset(ptr %network_resp.i, i32 0, i32 344)
  %8 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ieee, align 4
  %flags.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 13
  %active.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 4, i32 1
  %aid.i = getelementptr inbounds %struct.libipw_assoc_response, ptr %header, i32 0, i32 3
  %10 = call ptr @memset(ptr %active.i, i32 0, i32 10)
  %11 = ptrtoint ptr %aid.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %aid.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %atim_window.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 18
  %14 = ptrtoint ptr %atim_window.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %atim_window.i, align 4
  %status.i = getelementptr inbounds %struct.libipw_assoc_response, ptr %header, i32 0, i32 2
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %status.i, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #8
  %listen_interval.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 17
  %18 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %listen_interval.i, align 2
  %addr3.i = getelementptr inbounds %struct.libipw_hdr_3addr, ptr %header, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %network_resp.i, ptr %addr3.i, i32 6)
  %capability.i = getelementptr inbounds %struct.libipw_assoc_response, ptr %header, i32 0, i32 1
  %20 = ptrtoint ptr %capability.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %capability.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  %capability6.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 6
  %23 = ptrtoint ptr %capability6.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %capability6.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 11
  %25 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last_scanned.i, align 8
  %rates_ex_len.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 10
  %26 = ptrtoint ptr %rates_ex_len.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %rates_ex_len.i, align 1
  %rates_len.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 8
  %27 = ptrtoint ptr %rates_len.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %rates_len.i, align 2
  %last_associate.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 14
  %28 = ptrtoint ptr %last_associate.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %last_associate.i, align 4
  %ssid_len.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 3
  %29 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %ssid_len.i, align 8
  %30 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i = icmp eq i16 %30, 0
  %conv8.i = select i1 %tobool.not.i, i8 0, i8 3
  %erp_value.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 19
  %31 = ptrtoint ptr %erp_value.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv8.i, ptr %erp_value.i, align 2
  %freq.i = getelementptr inbounds %struct.libipw_rx_stats, ptr %stats, i32 0, i32 8
  %32 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i = icmp eq i8 %33, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %received_channel.i = getelementptr inbounds %struct.libipw_rx_stats, ptr %stats, i32 0, i32 5
  %34 = ptrtoint ptr %received_channel.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %received_channel.i, align 2
  %channel.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 1
  %36 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %channel.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %flags.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %wpa_ie_len.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 21
  %38 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wpa_ie_len.i, align 8
  %rsn_ie_len.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 23
  %39 = ptrtoint ptr %rsn_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rsn_ie_len.i, align 4
  %info_element.i = getelementptr inbounds %struct.libipw_assoc_response, ptr %header, i32 0, i32 4
  %len.i = getelementptr inbounds %struct.libipw_rx_stats, ptr %stats, i32 0, i32 9
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len.i, align 2
  %sub.i = add i16 %41, -30
  call fastcc void @libipw_parse_info_param(ptr noundef %info_element.i, i16 noundef zeroext %sub.i, ptr noundef nonnull %network_resp.i) #8
  %mode.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 12
  %42 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %mode.i, align 4
  %43 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp20.i = icmp eq i8 %44, 2
  br i1 %cmp20.i, label %if.end.i.if.end43.sink.split.i_crit_edge, label %if.else24.i

if.end.i.if.end43.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.sink.split.i

if.else24.i:                                      ; preds = %if.end.i
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 8
  %and26.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else24.i.if.end33.i_crit_edge, label %if.then28.i

if.else24.i.if.end33.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %mode.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.else24.i.if.end33.i_crit_edge
  %and35.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.if.end43.i_crit_edge, label %if.then37.i

if.end33.i.if.end43.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mode.i, align 4
  %50 = or i8 %49, 2
  br label %if.end43.sink.split.i

if.end43.sink.split.i:                            ; preds = %if.then37.i, %if.end.i.if.end43.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %50, %if.then37.i ], [ 1, %if.end.i.if.end43.sink.split.i_crit_edge ]
  %51 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink.i, ptr %mode.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end43.sink.split.i, %if.end33.i.if.end43.i_crit_edge
  %stats44.i = getelementptr inbounds %struct.libipw_network, ptr %network_resp.i, i32 0, i32 5
  %52 = call ptr @memcpy(ptr %stats44.i, ptr %stats, i32 32)
  %handle_assoc_response.i = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 57
  %53 = ptrtoint ptr %handle_assoc_response.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %handle_assoc_response.i, align 4
  %cmp45.not.i = icmp eq ptr %54, null
  br i1 %cmp45.not.i, label %if.end43.i.libipw_handle_assoc_resp.exit_crit_edge, label %if.then47.i

if.end43.i.libipw_handle_assoc_resp.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_handle_assoc_resp.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %call49.i = call i32 %54(ptr noundef %9, ptr noundef %header, ptr noundef nonnull %network_resp.i) #8
  br label %libipw_handle_assoc_resp.exit

libipw_handle_assoc_resp.exit:                    ; preds = %if.then47.i, %if.end43.i.libipw_handle_assoc_resp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 344, ptr nonnull %network_resp.i) #8
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %55 = load i32, ptr @libipw_debug_level, align 4
  %and10 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.sw.epilog_crit_edge, label %do.end14

do.body9.sw.epilog_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %sw.epilog

do.body23:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %56 = load i32, ptr @libipw_debug_level, align 4
  %and24 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end35_crit_edge, label %do.end28

do.body23.do.end35_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end28:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %do.end35

do.end35:                                         ; preds = %do.end28, %do.body23.do.end35_crit_edge
  %handle_probe_request = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 56
  %57 = ptrtoint ptr %handle_probe_request to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %handle_probe_request, align 4
  %cmp.not = icmp eq ptr %58, null
  br i1 %cmp.not, label %do.end35.sw.epilog_crit_edge, label %if.then37

do.end35.sw.epilog_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then37:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ieee, align 4
  %call39 = tail call i32 %58(ptr noundef %60, ptr noundef %header, ptr noundef %stats) #8
  br label %sw.epilog

do.body42:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %61 = load i32, ptr @libipw_debug_level, align 4
  %and43 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.body55_crit_edge, label %do.end47

do.body42.do.body55_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

do.end47:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %do.body55

do.body55:                                        ; preds = %do.end47, %do.body42.do.body55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %62 = load i32, ptr @libipw_debug_level, align 4
  %and56 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.do.end64_crit_edge, label %do.end60

do.body55.do.end64_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

do.end60:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.31) #11
  br label %do.end64

do.end64:                                         ; preds = %do.end60, %do.body55.do.end64_crit_edge
  tail call fastcc void @libipw_process_probe_response(ptr noundef %ieee, ptr noundef %header, ptr noundef %stats)
  br label %sw.epilog

do.body66:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %63 = load i32, ptr @libipw_debug_level, align 4
  %and67 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body66.do.body79_crit_edge, label %do.end71

do.body66.do.body79_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body79

do.end71:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %do.body79

do.body79:                                        ; preds = %do.end71, %do.body66.do.body79_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %64 = load i32, ptr @libipw_debug_level, align 4
  %and80 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.do.end88_crit_edge, label %do.end84

do.body79.do.end88_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end88

do.end84:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.31) #11
  br label %do.end88

do.end88:                                         ; preds = %do.end84, %do.body79.do.end88_crit_edge
  tail call fastcc void @libipw_process_probe_response(ptr noundef %ieee, ptr noundef %header, ptr noundef %stats)
  br label %sw.epilog

do.body90:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %65 = load i32, ptr @libipw_debug_level, align 4
  %and91 = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body90.do.end102_crit_edge, label %do.end95

do.body90.do.end102_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102

do.end95:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %do.end102

do.end102:                                        ; preds = %do.end95, %do.body90.do.end102_crit_edge
  %handle_auth = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 50
  %66 = ptrtoint ptr %handle_auth to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handle_auth, align 4
  %cmp103.not = icmp eq ptr %67, null
  br i1 %cmp103.not, label %do.end102.sw.epilog_crit_edge, label %if.then105

do.end102.sw.epilog_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then105:                                       ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ieee, align 4
  %call108 = tail call i32 %67(ptr noundef %69, ptr noundef %header) #8
  br label %sw.epilog

sw.bb110:                                         ; preds = %entry
  %handle_disassoc = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 53
  %70 = ptrtoint ptr %handle_disassoc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %handle_disassoc, align 4
  %cmp111.not = icmp eq ptr %71, null
  br i1 %cmp111.not, label %sw.bb110.sw.epilog_crit_edge, label %if.then113

sw.bb110.sw.epilog_crit_edge:                     ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then113:                                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ieee, align 4
  %call116 = tail call i32 %71(ptr noundef %73, ptr noundef %header) #8
  br label %sw.epilog

do.body119:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %74 = load i32, ptr @libipw_debug_level, align 4
  %and120 = and i32 %74, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body119.do.end128_crit_edge, label %do.end124

do.body119.do.end128_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end128

do.end124:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.31) #11
  br label %do.end128

do.end128:                                        ; preds = %do.end124, %do.body119.do.end128_crit_edge
  %handle_action = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 52
  %75 = ptrtoint ptr %handle_action to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %handle_action, align 4
  %tobool129.not = icmp eq ptr %76, null
  br i1 %tobool129.not, label %do.end128.sw.epilog_crit_edge, label %if.then130

do.end128.sw.epilog_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then130:                                       ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ieee, align 4
  %call133 = tail call i32 %76(ptr noundef %78, ptr noundef %header, ptr noundef %stats) #8
  br label %sw.epilog

do.body136:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %79 = load i32, ptr @libipw_debug_level, align 4
  %and137 = and i32 %79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %do.body136.do.body149_crit_edge, label %do.end141

do.body136.do.body149_crit_edge:                  ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body149

do.end141:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #10
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %do.body149

do.body149:                                       ; preds = %do.end141, %do.body136.do.body149_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %80 = load i32, ptr @libipw_debug_level, align 4
  %and150 = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body149.do.end159_crit_edge, label %do.end154

do.body149.do.end159_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end159

do.end154:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ieee, align 4
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.31, ptr noundef %82) #11
  br label %do.end159

do.end159:                                        ; preds = %do.end154, %do.body149.do.end159_crit_edge
  %handle_reassoc_request = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 59
  %83 = ptrtoint ptr %handle_reassoc_request to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handle_reassoc_request, align 4
  %cmp160.not = icmp eq ptr %84, null
  br i1 %cmp160.not, label %do.end159.sw.epilog_crit_edge, label %if.then162

do.end159.sw.epilog_crit_edge:                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then162:                                       ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ieee, align 4
  %call165 = tail call i32 %84(ptr noundef %86, ptr noundef %header) #8
  br label %sw.epilog

do.body168:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %87 = load i32, ptr @libipw_debug_level, align 4
  %and169 = and i32 %87, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %do.body168.do.body181_crit_edge, label %do.end173

do.body168.do.body181_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body181

do.end173:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #10
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %do.body181

do.body181:                                       ; preds = %do.end173, %do.body168.do.body181_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %88 = load i32, ptr @libipw_debug_level, align 4
  %and182 = and i32 %88, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body181.do.end193_crit_edge, label %do.end186

do.body181.do.end193_crit_edge:                   ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end193

do.end186:                                        ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ieee, align 4
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.31, ptr noundef %90) #11
  br label %do.end193

do.end193:                                        ; preds = %do.end186, %do.body181.do.end193_crit_edge
  %handle_assoc_request = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 58
  %91 = ptrtoint ptr %handle_assoc_request to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %handle_assoc_request, align 4
  %cmp194.not = icmp eq ptr %92, null
  br i1 %cmp194.not, label %do.end193.sw.epilog_crit_edge, label %if.then196

do.end193.sw.epilog_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then196:                                       ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ieee, align 4
  %call199 = tail call i32 %92(ptr noundef %94) #8
  br label %sw.epilog

do.body202:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %95 = load i32, ptr @libipw_debug_level, align 4
  %and203 = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.body202.do.end211_crit_edge, label %do.end207

do.body202.do.end211_crit_edge:                   ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end211

do.end207:                                        ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #10
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.31) #11
  br label %do.end211

do.end211:                                        ; preds = %do.end207, %do.body202.do.end211_crit_edge
  %handle_deauth = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 51
  %96 = ptrtoint ptr %handle_deauth to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %handle_deauth, align 4
  %cmp212.not = icmp eq ptr %97, null
  br i1 %cmp212.not, label %do.end211.sw.epilog_crit_edge, label %if.then214

do.end211.sw.epilog_crit_edge:                    ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then214:                                       ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ieee, align 4
  %call217 = tail call i32 %97(ptr noundef %99, ptr noundef %header) #8
  br label %sw.epilog

do.body219:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %100 = load i32, ptr @libipw_debug_level, align 4
  %and220 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %do.body219.do.body232_crit_edge, label %do.end224

do.body219.do.body232_crit_edge:                  ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body232

do.end224:                                        ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  %call229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  br label %do.body232

do.body232:                                       ; preds = %do.end224, %do.body219.do.body232_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %101 = load i32, ptr @libipw_debug_level, align 4
  %and233 = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %do.body232.sw.epilog_crit_edge, label %do.end237

do.body232.sw.epilog_crit_edge:                   ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end237:                                        ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ieee, align 4
  %104 = ptrtoint ptr %header to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %header, align 1
  %106 = lshr i16 %105, 8
  %107 = and i16 %106, 240
  %and244 = zext i16 %107 to i32
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, ptr noundef %103, i32 noundef %and244) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end237, %do.body232.sw.epilog_crit_edge, %if.then214, %do.end211.sw.epilog_crit_edge, %if.then196, %do.end193.sw.epilog_crit_edge, %if.then162, %do.end159.sw.epilog_crit_edge, %if.then130, %do.end128.sw.epilog_crit_edge, %if.then113, %sw.bb110.sw.epilog_crit_edge, %if.then105, %do.end102.sw.epilog_crit_edge, %do.end88, %do.end64, %if.then37, %do.end35.sw.epilog_crit_edge, %do.end14, %do.body9.sw.epilog_crit_edge, %libipw_handle_assoc_resp.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @libipw_process_probe_response(ptr noundef %ieee, ptr noundef %beacon, ptr nocapture noundef readonly %stats) unnamed_addr #0 align 64 {
entry:
  %network = alloca %struct.libipw_network, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee, align 4
  call void @llvm.lifetime.start.p0(i64 344, ptr nonnull %network) #8
  %2 = call ptr @memset(ptr %network, i32 0, i32 344)
  %info_element2 = getelementptr inbounds %struct.libipw_probe_response, ptr %beacon, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %3 = load i32, ptr @libipw_debug_level, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end85_crit_edge, label %do.end

entry.do.end85_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.libipw_info_element, ptr %info_element2, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv = zext i8 %5 to i32
  %data = getelementptr inbounds %struct.libipw_probe_response, ptr %beacon, i32 1, i32 0, i32 1
  %addr3 = getelementptr inbounds %struct.libipw_hdr_3addr, ptr %beacon, i32 0, i32 4
  %capability = getelementptr inbounds %struct.libipw_probe_response, ptr %beacon, i32 0, i32 3
  %6 = ptrtoint ptr %capability to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %capability, align 1
  %conv6 = zext i16 %7 to i32
  %and7 = and i32 %conv6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool8.not, i32 48, i32 49
  %and11 = and i32 %conv6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, i32 48, i32 49
  %and16 = and i32 %conv6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, i32 48, i32 49
  %and21 = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, i32 48, i32 49
  %and26 = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, i32 48, i32 49
  %and31 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, i32 48, i32 49
  %and36 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond38 = select i1 %tobool37.not, i32 48, i32 49
  %and41 = and i32 %conv6, 1
  %8 = or i32 %and41, 48
  %and46 = and i32 %conv6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, i32 48, i32 49
  %and51 = and i32 %conv6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, i32 48, i32 49
  %and56 = and i32 %conv6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %cond58 = select i1 %tobool57.not, i32 48, i32 49
  %and61 = and i32 %conv6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %cond63 = select i1 %tobool62.not, i32 48, i32 49
  %and66 = and i32 %conv6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %cond68 = select i1 %tobool67.not, i32 48, i32 49
  %and71 = and i32 %conv6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %cond73 = select i1 %tobool72.not, i32 48, i32 49
  %and76 = and i32 %conv6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %cond78 = select i1 %tobool77.not, i32 48, i32 49
  %and81 = and i32 %conv6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %cond83 = select i1 %tobool82.not, i32 48, i32 49
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162, i32 noundef %conv, ptr noundef %data, ptr noundef %addr3, i32 noundef %cond, i32 noundef %cond13, i32 noundef %cond18, i32 noundef %cond23, i32 noundef %cond28, i32 noundef %cond33, i32 noundef %cond38, i32 noundef %8, i32 noundef %cond48, i32 noundef %cond53, i32 noundef %cond58, i32 noundef %cond63, i32 noundef %cond68, i32 noundef %cond73, i32 noundef %cond78, i32 noundef %cond83) #11
  br label %do.end85

do.end85:                                         ; preds = %do.end, %entry.do.end85_crit_edge
  %active.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 4, i32 1
  %addr3.i = getelementptr inbounds %struct.libipw_hdr_3addr, ptr %beacon, i32 0, i32 4
  %9 = call ptr @memset(ptr %active.i, i32 0, i32 10)
  %10 = call ptr @memcpy(ptr %network, ptr %addr3.i, i32 6)
  %capability.i = getelementptr inbounds %struct.libipw_probe_response, ptr %beacon, i32 0, i32 3
  %11 = ptrtoint ptr %capability.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %capability.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  %capability5.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 6
  %14 = ptrtoint ptr %capability5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %capability5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 11
  %16 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_scanned.i, align 8
  %time_stamp.i = getelementptr inbounds %struct.libipw_probe_response, ptr %beacon, i32 0, i32 1
  %17 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %time_stamp.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %time_stamp6.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 15
  %20 = ptrtoint ptr %time_stamp6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %time_stamp6.i, align 8
  %arrayidx9.i = getelementptr %struct.libipw_probe_response, ptr %beacon, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx9.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %arrayidx11.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx11.i, align 4
  %beacon_interval.i = getelementptr inbounds %struct.libipw_probe_response, ptr %beacon, i32 0, i32 2
  %25 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %beacon_interval.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #8
  %beacon_interval12.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 16
  %28 = ptrtoint ptr %beacon_interval12.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %beacon_interval12.i, align 8
  %listen_interval.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 17
  %29 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 10, ptr %listen_interval.i, align 2
  %rates_ex_len.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 10
  %30 = ptrtoint ptr %rates_ex_len.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %rates_ex_len.i, align 1
  %rates_len.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 8
  %31 = ptrtoint ptr %rates_len.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %rates_len.i, align 2
  %last_associate.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 14
  %32 = ptrtoint ptr %last_associate.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %last_associate.i, align 4
  %ssid_len.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 3
  %33 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %ssid_len.i, align 8
  %flags.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 13
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %flags.i, align 8
  %atim_window.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 18
  %35 = ptrtoint ptr %atim_window.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %atim_window.i, align 4
  %36 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i = icmp eq i16 %36, 0
  %conv14.i = select i1 %tobool.not.i, i8 0, i8 3
  %erp_value.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 19
  %37 = ptrtoint ptr %erp_value.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv14.i, ptr %erp_value.i, align 2
  %freq.i = getelementptr inbounds %struct.libipw_rx_stats, ptr %stats, i32 0, i32 8
  %38 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp.i = icmp eq i8 %39, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  %received_channel.i = getelementptr inbounds %struct.libipw_rx_stats, ptr %stats, i32 0, i32 5
  %40 = ptrtoint ptr %received_channel.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %received_channel.i, align 2
  %channel.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 1
  %42 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %channel.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %flags.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %wpa_ie_len.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 21
  %44 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %wpa_ie_len.i, align 8
  %rsn_ie_len.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 23
  %45 = ptrtoint ptr %rsn_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %rsn_ie_len.i, align 4
  %len.i = getelementptr inbounds %struct.libipw_rx_stats, ptr %stats, i32 0, i32 9
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %len.i, align 2
  %sub.i = add i16 %47, -36
  call fastcc void @libipw_parse_info_param(ptr noundef %info_element2, i16 noundef zeroext %sub.i, ptr noundef nonnull %network) #8
  %mode.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 12
  %48 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %mode.i, align 4
  %49 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp26.i = icmp eq i8 %50, 2
  br i1 %cmp26.i, label %if.end.i.if.end67.sink.split.i_crit_edge, label %if.else30.i

if.end.i.if.end67.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.sink.split.i

if.else30.i:                                      ; preds = %if.end.i
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 8
  %and32.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end39.i, label %if.end39.i.thread

if.end39.i:                                       ; preds = %if.else30.i
  %53 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr.i.pr = load i8, ptr %mode.i, align 4
  %and41.i = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end49.i, label %if.end39.i.if.then43.i_crit_edge

if.end39.i.if.then43.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.end39.i.thread:                                ; preds = %if.else30.i
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %mode.i, align 4
  %and41.i361 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i361)
  %tobool42.not.i362 = icmp eq i32 %and41.i361, 0
  br i1 %tobool42.not.i362, label %if.end39.i.thread.do.body114_crit_edge, label %if.end39.i.thread.if.then43.i_crit_edge

if.end39.i.thread.if.then43.i_crit_edge:          ; preds = %if.end39.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.end39.i.thread.do.body114_crit_edge:           ; preds = %if.end39.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body114

if.then43.i:                                      ; preds = %if.end39.i.thread.if.then43.i_crit_edge, %if.end39.i.if.then43.i_crit_edge
  %.pr.i364 = phi i8 [ 4, %if.end39.i.thread.if.then43.i_crit_edge ], [ %.pr.i.pr, %if.end39.i.if.then43.i_crit_edge ]
  %55 = or i8 %.pr.i364, 2
  br label %if.end67.sink.split.i

if.end49.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.pr)
  %cmp52.i = icmp eq i8 %.pr.i.pr, 0
  br i1 %cmp52.i, label %do.body.i, label %if.end49.i.do.body114_crit_edge

if.end49.i.do.body114_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body114

do.body.i:                                        ; preds = %if.end49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %56 = load i32, ptr @libipw_debug_level, align 4
  %and55.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.body.i.do.body89_crit_edge, label %do.end.i

do.body.i.do.body89_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ssid_len.i, align 8
  %conv60.i = zext i8 %58 to i32
  %ssid.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 2
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, i32 noundef %conv60.i, ptr noundef %ssid.i, ptr noundef nonnull %network) #11
  br label %do.body89

if.end67.sink.split.i:                            ; preds = %if.then43.i, %if.end.i.if.end67.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %55, %if.then43.i ], [ 1, %if.end.i.if.end67.sink.split.i_crit_edge ]
  %59 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink.i, ptr %mode.i, align 4
  br label %do.body114

do.body89:                                        ; preds = %do.end.i, %do.body.i.do.body89_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %60 = load i32, ptr @libipw_debug_level, align 4
  %and90 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.cleanup_crit_edge, label %do.end95

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end95:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %len97 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element2, i32 0, i32 1
  %61 = ptrtoint ptr %len97 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %len97, align 1
  %conv98 = zext i8 %62 to i32
  %data99 = getelementptr inbounds %struct.libipw_probe_response, ptr %beacon, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %beacon, align 1
  %65 = and i16 %64, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %65)
  %cmp.i313.not = icmp eq i16 %65, -32768
  %cond107 = select i1 %cmp.i313.not, ptr @.str.166, ptr @.str.167
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.162, i32 noundef %conv98, ptr noundef %data99, ptr noundef %addr3.i, ptr noundef nonnull %cond107) #11
  br label %cleanup

do.body114:                                       ; preds = %if.end67.sink.split.i, %if.end49.i.do.body114_crit_edge, %if.end39.i.thread.do.body114_crit_edge
  %stats68.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 5
  %66 = call ptr @memcpy(ptr %stats68.i, ptr %stats, i32 32)
  %lock = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 14
  %call118 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %network_list = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 8
  %67 = ptrtoint ptr %network_list to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn377 = load ptr, ptr %network_list, align 4
  %cmp125379 = icmp eq ptr %.pn377, %network_list
  br i1 %cmp125379, label %do.body114.if.then147.critedge_crit_edge, label %for.body.lr.ph

do.body114.if.then147.critedge_crit_edge:         ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then147.critedge

for.body.lr.ph:                                   ; preds = %do.body114
  %68 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ssid_len.i, align 8
  %channel5.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 1
  %add.ptr1.i.i.i = getelementptr inbounds i8, ptr %network, i32 4
  %ssid14.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 2
  %conv17.i = zext i8 %69 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn381 = phi ptr [ %.pn377, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %oldest.0380 = phi ptr [ null, %for.body.lr.ph ], [ %oldest.1, %for.inc.for.body_crit_edge ]
  %target.0382 = getelementptr i8, ptr %.pn381, i32 -332
  %ssid_len.i314 = getelementptr i8, ptr %.pn381, i32 -292
  %70 = ptrtoint ptr %ssid_len.i314 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ssid_len.i314, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %69)
  %cmp.i315 = icmp eq i8 %71, %69
  br i1 %cmp.i315, label %land.lhs.true.i, label %for.body.if.end130_crit_edge

for.body.if.end130_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

land.lhs.true.i:                                  ; preds = %for.body
  %channel.i316 = getelementptr i8, ptr %.pn381, i32 -326
  %72 = ptrtoint ptr %channel.i316 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %channel.i316, align 2
  %74 = ptrtoint ptr %channel5.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %channel5.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp7.i = icmp eq i8 %73, %75
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end130_crit_edge

land.lhs.true.i.if.end130_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %76 = ptrtoint ptr %target.0382 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %target.0382, align 4
  %78 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %network, align 8
  %xor.i.i.i = xor i32 %79, %77
  %add.ptr.i.i.i = getelementptr i8, ptr %.pn381, i32 -328
  %80 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i.i, align 2
  %82 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %add.ptr1.i.i.i, align 4
  %xor37.i.i.i = xor i16 %83, %81
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %is_same_network.exit, label %land.lhs.true9.i.if.end130_crit_edge

land.lhs.true9.i.if.end130_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

is_same_network.exit:                             ; preds = %land.lhs.true9.i
  %ssid.i317 = getelementptr i8, ptr %.pn381, i32 -325
  %bcmp.i = call i32 @bcmp(ptr %ssid.i317, ptr %ssid14.i, i32 %conv17.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i318.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i318.not, label %do.body201, label %is_same_network.exit.if.end130_crit_edge

is_same_network.exit.if.end130_crit_edge:         ; preds = %is_same_network.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.end130:                                        ; preds = %is_same_network.exit.if.end130_crit_edge, %land.lhs.true9.i.if.end130_crit_edge, %land.lhs.true.i.if.end130_crit_edge, %for.body.if.end130_crit_edge
  %cmp131 = icmp eq ptr %oldest.0380, null
  br i1 %cmp131, label %if.end130.if.then136_crit_edge, label %lor.lhs.false

if.end130.if.then136_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136

lor.lhs.false:                                    ; preds = %if.end130
  %last_scanned = getelementptr i8, ptr %.pn381, i32 -180
  %84 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %last_scanned, align 8
  %last_scanned133 = getelementptr inbounds %struct.libipw_network, ptr %oldest.0380, i32 0, i32 11
  %86 = ptrtoint ptr %last_scanned133 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %last_scanned133, align 8
  %sub = sub i32 %85, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp134 = icmp slt i32 %sub, 0
  br i1 %cmp134, label %lor.lhs.false.if.then136_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then136_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136

if.then136:                                       ; preds = %lor.lhs.false.if.then136_crit_edge, %if.end130.if.then136_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then136, %lor.lhs.false.for.inc_crit_edge
  %oldest.1 = phi ptr [ %target.0382, %if.then136 ], [ %oldest.0380, %lor.lhs.false.for.inc_crit_edge ]
  %88 = ptrtoint ptr %.pn381 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn = load ptr, ptr %.pn381, align 4
  %cmp125 = icmp eq ptr %.pn, %network_list
  br i1 %cmp125, label %for.inc.if.then147.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then147.critedge_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then147.critedge

if.then147.critedge:                              ; preds = %for.inc.if.then147.critedge_crit_edge, %do.body114.if.then147.critedge_crit_edge
  %oldest.0.lcssa = phi ptr [ null, %do.body114.if.then147.critedge_crit_edge ], [ %oldest.1, %for.inc.if.then147.critedge_crit_edge ]
  %network_free_list = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 7
  %89 = ptrtoint ptr %network_free_list to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %network_free_list, align 4
  %cmp.i319.not = icmp eq ptr %90, %network_free_list
  br i1 %cmp.i319.not, label %if.then150, label %if.else

if.then150:                                       ; preds = %if.then147.critedge
  %list151 = getelementptr inbounds %struct.libipw_network, ptr %oldest.0.lcssa, i32 0, i32 29
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list151) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then150.list_del.exit_crit_edge

if.then150.list_del.exit_crit_edge:               ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.libipw_network, ptr %oldest.0.lcssa, i32 0, i32 29, i32 1
  %91 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %list151 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %list151, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then150.list_del.exit_crit_edge
  %97 = ptrtoint ptr %list151 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 256 to ptr), ptr %list151, align 4
  %prev.i = getelementptr inbounds %struct.libipw_network, ptr %oldest.0.lcssa, i32 0, i32 29, i32 1
  %98 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %99 = load i32, ptr @libipw_debug_level, align 4
  %and153 = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %list_del.exit.do.body175_crit_edge, label %do.end158

list_del.exit.do.body175_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body175

do.end158:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ssid_len = getelementptr inbounds %struct.libipw_network, ptr %oldest.0.lcssa, i32 0, i32 3
  %100 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ssid_len, align 8
  %conv160 = zext i8 %101 to i32
  %ssid = getelementptr inbounds %struct.libipw_network, ptr %oldest.0.lcssa, i32 0, i32 2
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.162, i32 noundef %conv160, ptr noundef %ssid, ptr noundef %oldest.0.lcssa) #11
  br label %do.body175

if.else:                                          ; preds = %if.then147.critedge
  %add.ptr171 = getelementptr i8, ptr %90, i32 -332
  %call.i.i320 = call zeroext i1 @__list_del_entry_valid(ptr noundef %90) #8
  br i1 %call.i.i320, label %if.end.i.i323, label %if.else.list_del.exit325_crit_edge

if.else.list_del.exit325_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit325

if.end.i.i323:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i321 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i321 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i321, align 4
  %104 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %90, align 4
  %prev1.i.i.i322 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i322 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i322, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %list_del.exit325

list_del.exit325:                                 ; preds = %if.end.i.i323, %if.else.list_del.exit325_crit_edge
  %108 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 256 to ptr), ptr %90, align 4
  %prev.i324 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i324 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i324, align 4
  br label %do.body175

do.body175:                                       ; preds = %list_del.exit325, %do.end158, %list_del.exit.do.body175_crit_edge
  %target.1 = phi ptr [ %oldest.0.lcssa, %do.end158 ], [ %oldest.0.lcssa, %list_del.exit.do.body175_crit_edge ], [ %add.ptr171, %list_del.exit325 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %110 = load i32, ptr @libipw_debug_level, align 4
  %and176 = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %do.body175.do.end197_crit_edge, label %do.end181

do.body175.do.end197_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

do.end181:                                        ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ssid_len.i, align 8
  %conv184 = zext i8 %112 to i32
  %ssid185 = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 2
  %113 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %beacon, align 1
  %115 = and i16 %114, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %115)
  %cmp.i326.not = icmp eq i16 %115, -32768
  %cond193 = select i1 %cmp.i326.not, ptr @.str.166, ptr @.str.167
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.162, i32 noundef %conv184, ptr noundef %ssid185, ptr noundef nonnull %network, ptr noundef nonnull %cond193) #11
  br label %do.end197

do.end197:                                        ; preds = %do.end181, %do.body175.do.end197_crit_edge
  %116 = call ptr @memcpy(ptr %target.1, ptr %network, i32 344)
  %list198 = getelementptr inbounds %struct.libipw_network, ptr %target.1, i32 0, i32 29
  %prev.i328 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 8, i32 1
  %117 = ptrtoint ptr %prev.i328 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i328, align 4
  %call.i.i329 = call zeroext i1 @__list_add_valid(ptr noundef %list198, ptr noundef %118, ptr noundef %network_list) #8
  br i1 %call.i.i329, label %if.end.i.i330, label %do.end197.if.end224_crit_edge

do.end197.if.end224_crit_edge:                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.end.i.i330:                                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %prev.i328 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %list198, ptr %prev.i328, align 4
  %120 = ptrtoint ptr %list198 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %network_list, ptr %list198, align 4
  %prev3.i.i = getelementptr inbounds %struct.libipw_network, ptr %target.1, i32 0, i32 29, i32 1
  %121 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev3.i.i, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %list198, ptr %118, align 4
  br label %if.end224

do.body201:                                       ; preds = %is_same_network.exit
  %ssid_len.i314.le = getelementptr i8, ptr %.pn381, i32 -292
  %channel.i316.le = getelementptr i8, ptr %.pn381, i32 -326
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %123 = load i32, ptr @libipw_debug_level, align 4
  %and202 = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %do.body201.do.end223_crit_edge, label %do.end207

do.body201.do.end223_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end223

do.end207:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %ssid_len.i314.le to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ssid_len.i314.le, align 8
  %conv210 = zext i8 %125 to i32
  %126 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %beacon, align 1
  %128 = and i16 %127, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %128)
  %cmp.i331.not = icmp eq i16 %128, -32768
  %cond219 = select i1 %cmp.i331.not, ptr @.str.166, ptr @.str.167
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.162, i32 noundef %conv210, ptr noundef %ssid.i317, ptr noundef %target.0382, ptr noundef nonnull %cond219) #11
  br label %do.end223

do.end223:                                        ; preds = %do.end207, %do.body201.do.end223_crit_edge
  %129 = ptrtoint ptr %channel.i316.le to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %channel.i316.le, align 2
  %conv.i334 = zext i8 %130 to i32
  %received_channel.i335 = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 5, i32 5
  %131 = ptrtoint ptr %received_channel.i335 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %received_channel.i335, align 2
  %conv1.i336 = zext i8 %132 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %130, i8 %132)
  %cmp.i337 = icmp eq i8 %130, %132
  br i1 %cmp.i337, label %if.then.i338, label %do.body.i340

if.then.i338:                                     ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #10
  %stats3.i = getelementptr i8, ptr %.pn381, i32 -244
  %133 = call ptr @memcpy(ptr %stats3.i, ptr %stats68.i, i32 32)
  br label %if.end14.i

do.body.i340:                                     ; preds = %do.end223
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %134 = load i32, ptr @libipw_debug_level, align 4
  %and.i = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i339 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i339, label %do.body.i340.if.end14.i_crit_edge, label %do.end.i341

do.body.i340.if.end14.i_crit_edge:                ; preds = %do.body.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

do.end.i341:                                      ; preds = %do.body.i340
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, ptr noundef nonnull %network, i32 noundef %conv.i334, i32 noundef %conv1.i336) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i341, %do.body.i340.if.end14.i_crit_edge, %if.then.i338
  %135 = ptrtoint ptr %capability5.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %capability5.i, align 8
  %capability15.i = getelementptr i8, ptr %.pn381, i32 -212
  %137 = ptrtoint ptr %capability15.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %capability15.i, align 8
  %rates.i = getelementptr i8, ptr %.pn381, i32 -210
  %rates17.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 7
  %138 = ptrtoint ptr %rates_len.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %rates_len.i, align 2
  %conv19.i = zext i8 %139 to i32
  %140 = call ptr @memcpy(ptr %rates.i, ptr %rates17.i, i32 %conv19.i)
  %141 = load i8, ptr %rates_len.i, align 2
  %rates_len21.i = getelementptr i8, ptr %.pn381, i32 -198
  %142 = ptrtoint ptr %rates_len21.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %rates_len21.i, align 2
  %rates_ex.i = getelementptr i8, ptr %.pn381, i32 -197
  %rates_ex23.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 9
  %143 = ptrtoint ptr %rates_ex_len.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %rates_ex_len.i, align 1
  %conv25.i = zext i8 %144 to i32
  %145 = call ptr @memcpy(ptr %rates_ex.i, ptr %rates_ex23.i, i32 %conv25.i)
  %146 = load i8, ptr %rates_ex_len.i, align 1
  %rates_ex_len27.i = getelementptr i8, ptr %.pn381, i32 -181
  %147 = ptrtoint ptr %rates_ex_len27.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %rates_ex_len27.i, align 1
  %148 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %mode.i, align 4
  %mode28.i = getelementptr i8, ptr %.pn381, i32 -176
  %150 = ptrtoint ptr %mode28.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %mode28.i, align 4
  %151 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags.i, align 8
  %flags29.i = getelementptr i8, ptr %.pn381, i32 -172
  %153 = ptrtoint ptr %flags29.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %flags29.i, align 8
  %154 = ptrtoint ptr %time_stamp6.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %time_stamp6.i, align 8
  %time_stamp30.i = getelementptr i8, ptr %.pn381, i32 -164
  %156 = ptrtoint ptr %time_stamp30.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %time_stamp30.i, align 8
  %157 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx35.i = getelementptr i8, ptr %.pn381, i32 -160
  %159 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %arrayidx35.i, align 4
  %160 = ptrtoint ptr %beacon_interval12.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %beacon_interval12.i, align 8
  %beacon_interval36.i = getelementptr i8, ptr %.pn381, i32 -156
  %162 = ptrtoint ptr %beacon_interval36.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %beacon_interval36.i, align 8
  %163 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %listen_interval.i, align 2
  %listen_interval37.i = getelementptr i8, ptr %.pn381, i32 -154
  %165 = ptrtoint ptr %listen_interval37.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %listen_interval37.i, align 2
  %166 = ptrtoint ptr %atim_window.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %atim_window.i, align 4
  %atim_window38.i = getelementptr i8, ptr %.pn381, i32 -152
  %168 = ptrtoint ptr %atim_window38.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %atim_window38.i, align 4
  %169 = ptrtoint ptr %erp_value.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %erp_value.i, align 2
  %erp_value39.i = getelementptr i8, ptr %.pn381, i32 -150
  %171 = ptrtoint ptr %erp_value39.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %erp_value39.i, align 2
  %tim.i = getelementptr i8, ptr %.pn381, i32 -12
  %tim40.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 24
  %172 = ptrtoint ptr %tim40.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %tim40.i, align 8
  %174 = ptrtoint ptr %tim.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %tim.i, align 8
  %wpa_ie.i = getelementptr i8, ptr %.pn381, i32 -149
  %wpa_ie42.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 20
  %175 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %wpa_ie_len.i, align 8
  %177 = call ptr @memcpy(ptr %wpa_ie.i, ptr %wpa_ie42.i, i32 %176)
  %178 = load i32, ptr %wpa_ie_len.i, align 8
  %wpa_ie_len45.i = getelementptr i8, ptr %.pn381, i32 -84
  %179 = ptrtoint ptr %wpa_ie_len45.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %wpa_ie_len45.i, align 8
  %rsn_ie.i = getelementptr i8, ptr %.pn381, i32 -80
  %rsn_ie47.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 22
  %180 = ptrtoint ptr %rsn_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %rsn_ie_len.i, align 4
  %182 = call ptr @memcpy(ptr %rsn_ie.i, ptr %rsn_ie47.i, i32 %181)
  %183 = load i32, ptr %rsn_ie_len.i, align 4
  %rsn_ie_len50.i = getelementptr i8, ptr %.pn381, i32 -16
  %184 = ptrtoint ptr %rsn_ie_len50.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %rsn_ie_len50.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %185 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i354 = getelementptr i8, ptr %.pn381, i32 -180
  %186 = ptrtoint ptr %last_scanned.i354 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %last_scanned.i354, align 8
  %187 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %active.i, align 4
  %old_param_count.i = getelementptr i8, ptr %.pn381, i32 -247
  %189 = ptrtoint ptr %old_param_count.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %old_param_count.i, align 1
  %and53.i = and i32 %152, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.else58.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %qos_data51.i = getelementptr i8, ptr %.pn381, i32 -288
  %qos_data.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 4
  %191 = call ptr @memcpy(ptr %qos_data51.i, ptr %qos_data.i, i32 44)
  br label %if.end65.i

if.else58.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %supported.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 4, i32 2
  %192 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %supported.i, align 8
  %supported61.i = getelementptr i8, ptr %.pn381, i32 -252
  %194 = ptrtoint ptr %supported61.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %supported61.i, align 4
  %param_count.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 4, i32 3
  %195 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %param_count.i, align 4
  %param_count64.i = getelementptr i8, ptr %.pn381, i32 -248
  %197 = ptrtoint ptr %param_count64.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %param_count64.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else58.i, %if.then55.i
  %supported67.i = getelementptr i8, ptr %.pn381, i32 -252
  %198 = ptrtoint ptr %supported67.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %supported67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %199)
  %cmp68.i = icmp eq i32 %199, 1
  br i1 %cmp68.i, label %if.then70.i, label %if.end65.i.update_network.exit_crit_edge

if.end65.i.update_network.exit_crit_edge:         ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_network.exit

if.then70.i:                                      ; preds = %if.end65.i
  %200 = ptrtoint ptr %ssid_len.i314.le to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %ssid_len.i314.le, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool71.not.i = icmp eq i8 %201, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %202 = load i32, ptr @libipw_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %202)
  %tobool89.not.i = icmp sgt i32 %202, -1
  br i1 %tobool71.not.i, label %do.body87.i, label %do.body73.i

do.body73.i:                                      ; preds = %if.then70.i
  br i1 %tobool89.not.i, label %do.body73.i.update_network.exit_crit_edge, label %do.end79.i

do.body73.i.update_network.exit_crit_edge:        ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_network.exit

do.end79.i:                                       ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #10
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.180, ptr noundef %ssid.i317) #11
  br label %update_network.exit

do.body87.i:                                      ; preds = %if.then70.i
  br i1 %tobool89.not.i, label %do.body87.i.update_network.exit_crit_edge, label %do.end93.i

do.body87.i.update_network.exit_crit_edge:        ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_network.exit

do.end93.i:                                       ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #10
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.180) #11
  br label %update_network.exit

update_network.exit:                              ; preds = %do.end93.i, %do.body87.i.update_network.exit_crit_edge, %do.end79.i, %do.body73.i.update_network.exit_crit_edge, %if.end65.i.update_network.exit_crit_edge
  %active102.i = getelementptr i8, ptr %.pn381, i32 -256
  %203 = ptrtoint ptr %active102.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %188, ptr %active102.i, align 4
  %204 = ptrtoint ptr %old_param_count.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %190, ptr %old_param_count.i, align 1
  br label %if.end224

if.end224:                                        ; preds = %update_network.exit, %if.end.i.i330, %do.end197.if.end224_crit_edge
  %target.2 = phi ptr [ %target.0382, %update_network.exit ], [ %target.1, %do.end197.if.end224_crit_edge ], [ %target.1, %if.end.i.i330 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call118) #8
  %205 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %206 = load i16, ptr %beacon, align 1
  %207 = and i16 %206, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %207)
  %cmp.i358.not = icmp eq i16 %207, -32768
  br i1 %cmp.i358.not, label %if.then230, label %if.else237

if.then230:                                       ; preds = %if.end224
  %handle_beacon = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 54
  %208 = ptrtoint ptr %handle_beacon to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %handle_beacon, align 4
  %cmp231.not = icmp eq ptr %209, null
  br i1 %cmp231.not, label %if.then230.cleanup_crit_edge, label %if.then233

if.then230.cleanup_crit_edge:                     ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then233:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #10
  %call235 = call i32 %209(ptr noundef %1, ptr noundef %beacon, ptr noundef %target.2) #8
  br label %cleanup

if.else237:                                       ; preds = %if.end224
  %handle_probe_response = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 55
  %210 = ptrtoint ptr %handle_probe_response to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %handle_probe_response, align 4
  %cmp238.not = icmp eq ptr %211, null
  br i1 %cmp238.not, label %if.else237.cleanup_crit_edge, label %if.then240

if.else237.cleanup_crit_edge:                     ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then240:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #10
  %call242 = call i32 %211(ptr noundef %1, ptr noundef %beacon, ptr noundef %target.2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then240, %if.else237.cleanup_crit_edge, %if.then233, %if.then230.cleanup_crit_edge, %do.end95, %do.body89.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 344, ptr nonnull %network) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @libipw_frag_cache_find(ptr noundef %ieee, i32 noundef %seq, i32 noundef %frag, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %frag)
  %cmp21 = icmp eq i32 %frag, -1
  %add.ptr1.i = getelementptr i8, ptr %src, i32 4
  %add.ptr1.i46 = getelementptr i8, ptr %dst, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.052 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %i.052
  %skb = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %i.052, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %do.body, label %if.end11

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %5 = load i32, ptr @libipw_debug_level, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %seq6 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %i.052, i32 1
  %6 = ptrtoint ptr %seq6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq6, align 4
  %last_frag = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %i.052, i32 2
  %8 = ptrtoint ptr %last_frag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_frag, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %7, i32 noundef %9) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %11, i32 noundef 1) #8
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %skb, align 4
  br label %for.inc

if.end11:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %skb, align 4
  %cmp13.not = icmp eq ptr %.pr, null
  br i1 %cmp13.not, label %if.end11.for.inc_crit_edge, label %land.lhs.true14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true14:                                  ; preds = %if.end11
  %seq15 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %i.052, i32 1
  %14 = ptrtoint ptr %seq15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %seq)
  %cmp16 = icmp eq i32 %15, %seq
  br i1 %cmp16, label %land.lhs.true17, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %last_frag18 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %i.052, i32 2
  %16 = ptrtoint ptr %last_frag18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_frag18, align 4
  %add19 = add i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %frag)
  %cmp20 = icmp eq i32 %add19, %frag
  %or.cond = or i1 %cmp21, %cmp20
  br i1 %or.cond, label %land.lhs.true22, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %src_addr = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %i.052, i32 4
  %18 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_addr, align 4
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src, align 4
  %xor.i = xor i32 %21, %19
  %add.ptr.i = getelementptr i8, ptr %src_addr, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %25, %23
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true24, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %dst_addr = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 32, i32 %i.052, i32 5
  %26 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_addr, align 4
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst, align 4
  %xor.i44 = xor i32 %29, %27
  %add.ptr.i45 = getelementptr i8, ptr %dst_addr, i32 4
  %30 = ptrtoint ptr %add.ptr.i45 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i45, align 2
  %32 = ptrtoint ptr %add.ptr1.i46 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr1.i46, align 2
  %xor37.i47 = xor i16 %33, %31
  %xor3.i48 = zext i16 %xor37.i47 to i32
  %or.i49 = or i32 %xor.i44, %xor3.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i49)
  %cmp.i50 = icmp eq i32 %or.i49, 0
  br i1 %cmp.i50, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.for.inc_crit_edge

land.lhs.true24.for.inc_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true24.for.inc_crit_edge, %land.lhs.true22.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %do.end8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %land.lhs.true24.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @libipw_parse_info_param(ptr noundef readonly %info_element, i16 noundef zeroext %length, ptr noundef %network) unnamed_addr #0 align 64 {
entry:
  %param_element.i = alloca %struct.libipw_qos_parameter_info, align 1
  %rates_str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rates_str) #8
  %0 = call ptr @memset(ptr %rates_str, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %length)
  %cmp26 = icmp ugt i16 %length, 1
  br i1 %cmp26, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tpc_report = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 26
  %link_margin = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 26, i32 1
  %flags437 = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 13
  %quiet = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 28
  %period = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 28, i32 1
  %duration = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 28, i32 2
  %offset = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 28, i32 3
  %power_constraint411 = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 25
  %rsn_ie_len = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 23
  %rsn_ie = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 22
  %1 = getelementptr inbounds %struct.libipw_qos_information_element, ptr %param_element.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.libipw_qos_information_element, ptr %param_element.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.libipw_qos_information_element, ptr %param_element.i, i32 0, i32 4
  %4 = getelementptr inbounds %struct.libipw_qos_information_element, ptr %param_element.i, i32 0, i32 5
  %5 = getelementptr inbounds %struct.libipw_qos_information_element, ptr %param_element.i, i32 0, i32 6
  %6 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 1
  %10 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 1, i32 1
  %11 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 1, i32 2
  %12 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 2
  %13 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 2, i32 1
  %14 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 2, i32 2
  %15 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 3, i32 1
  %17 = getelementptr inbounds %struct.libipw_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 3, i32 2
  %qos_data6.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 4
  %arrayidx2.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 2
  %arrayidx29.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 1
  %arrayidx35.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 3
  %arrayidx39.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 4
  %arrayidx2.1.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 2, i32 1
  %arrayidx19.1.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 0, i32 1
  %arrayidx29.1.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 1, i32 1
  %arrayidx35.1.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 3, i32 1
  %arrayidx39.1.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 4, i32 1
  %arrayidx2.2.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 2, i32 2
  %arrayidx19.2.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 0, i32 2
  %arrayidx29.2.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 1, i32 2
  %arrayidx35.2.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 3, i32 2
  %arrayidx39.2.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 4, i32 2
  %arrayidx2.3.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 2, i32 3
  %arrayidx19.3.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 0, i32 3
  %arrayidx29.3.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 1, i32 3
  %arrayidx35.3.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 3, i32 3
  %arrayidx39.3.i.i = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 4, i32 0, i32 4, i32 3
  %param_count15.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 4, i32 3
  %supported.i = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 4, i32 2
  %wpa_ie_len = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 21
  %wpa_ie = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 20
  %atim_window = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 18
  %erp_value = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 19
  %tim = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 24
  %tim_period = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 24, i32 1
  %channel = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 1
  %rates_ex_len = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 10
  %sub.ptr.rhs.cast152 = ptrtoint ptr %rates_str to i32
  %sub.ptr.sub153.neg = add i32 %sub.ptr.rhs.cast152, 64
  %rates_len = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 8
  %ssid_len = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 3
  %ssid = getelementptr inbounds %struct.libipw_network, ptr %network, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %info_element.addr.028 = phi ptr [ %info_element, %while.body.lr.ph ], [ %arrayidx465, %sw.epilog.while.body_crit_edge ]
  %length.addr.027 = phi i16 [ %length, %while.body.lr.ph ], [ %conv461, %sw.epilog.while.body_crit_edge ]
  %conv34 = zext i16 %length.addr.027 to i32
  %len = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len, align 1
  %conv2 = zext i8 %19 to i32
  %add = add nuw nsw i32 %conv2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv34)
  %cmp4 = icmp ugt i32 %add, %conv34
  br i1 %cmp4, label %do.body, label %if.end15

do.body:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %20 = load i32, ptr @libipw_debug_level, align 4
  %and = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.while.end_crit_edge, label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %info_element.addr.028 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %info_element.addr.028, align 1
  %conv12 = zext i8 %22 to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef %add, i32 noundef %conv34, i32 noundef %conv12) #11
  br label %while.end

if.end15:                                         ; preds = %while.body
  %23 = ptrtoint ptr %info_element.addr.028 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %info_element.addr.028, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %24, label %do.body439 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb60
    i8 50, label %sw.bb123
    i8 3, label %do.body199
    i8 2, label %do.body217
    i8 4, label %do.body230
    i8 5, label %sw.bb242
    i8 42, label %sw.bb260
    i8 6, label %sw.bb279
    i8 16, label %do.body298
    i8 -35, label %do.body311
    i8 48, label %do.body371
    i8 -34, label %do.end400
    i8 32, label %sw.bb403
    i8 37, label %sw.bb408
    i8 40, label %sw.bb414
    i8 41, label %sw.bb428
    i8 35, label %sw.bb431
  ]

sw.bb:                                            ; preds = %if.end15
  %26 = call i8 @llvm.umin.i8(i8 %19, i8 32)
  %27 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %ssid_len, align 8
  %data = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %conv29 = zext i8 %26 to i32
  %28 = call ptr @memcpy(ptr %ssid, ptr %data, i32 %conv29)
  %29 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %29)
  %cmp32 = icmp ult i8 %29, 32
  br i1 %cmp32, label %if.then34, label %sw.bb.do.body42_crit_edge

sw.bb.do.body42_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then34:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv31 = zext i8 %29 to i32
  %add.ptr = getelementptr i8, ptr %ssid, i32 %conv31
  %sub = sub nuw nsw i32 32, %conv31
  %30 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %do.body42

do.body42:                                        ; preds = %if.then34, %sw.bb.do.body42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %31 = load i32, ptr @libipw_debug_level, align 4
  %and43 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.sw.epilog_crit_edge, label %do.end48

do.body42.sw.epilog_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ssid_len, align 8
  %conv51 = zext i8 %33 to i32
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89, i32 noundef %conv51, ptr noundef %ssid, i32 noundef %conv51) #11
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end15
  %34 = call i8 @llvm.umin.i8(i8 %19, i8 12)
  %35 = ptrtoint ptr %rates_len to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %rates_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp7821.not = icmp eq i8 %34, 0
  br i1 %cmp7821.not, label %sw.bb60.do.body108_crit_edge, label %sw.bb60.for.body_crit_edge

sw.bb60.for.body_crit_edge:                       ; preds = %sw.bb60
  br label %for.body

sw.bb60.do.body108_crit_edge:                     ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb60.for.body_crit_edge
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %for.inc.for.body_crit_edge ], [ 0, %sw.bb60.for.body_crit_edge ]
  %p.022 = phi ptr [ %add.ptr90, %for.inc.for.body_crit_edge ], [ %rates_str, %sw.bb60.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2, i32 %indvars.iv40
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %arrayidx82 = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 7, i32 %indvars.iv40
  %38 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx82, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %p.022 to i32
  %sub84 = sub i32 %sub.ptr.sub153.neg, %sub.ptr.lhs.cast
  %conv88 = zext i8 %37 to i32
  %call89 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.022, i32 noundef %sub84, ptr noundef nonnull @.str.93, i32 noundef %conv88) #8
  %add.ptr90 = getelementptr i8, ptr %p.022, i32 %call89
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %41 = and i8 %40, 127
  %and.i = zext i8 %41 to i32
  %42 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %and.i, label %for.body.for.inc_crit_edge [
    i32 12, label %for.body.if.then96_crit_edge
    i32 18, label %for.body.if.then96_crit_edge62
    i32 24, label %for.body.if.then96_crit_edge63
    i32 36, label %for.body.if.then96_crit_edge64
    i32 48, label %for.body.if.then96_crit_edge65
    i32 72, label %for.body.if.then96_crit_edge66
    i32 96, label %for.body.if.then96_crit_edge67
    i32 108, label %for.body.if.then96_crit_edge68
  ]

for.body.if.then96_crit_edge68:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

for.body.if.then96_crit_edge67:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

for.body.if.then96_crit_edge66:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

for.body.if.then96_crit_edge65:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

for.body.if.then96_crit_edge64:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

for.body.if.then96_crit_edge63:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

for.body.if.then96_crit_edge62:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

for.body.if.then96_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then96:                                        ; preds = %for.body.if.then96_crit_edge, %for.body.if.then96_crit_edge62, %for.body.if.then96_crit_edge63, %for.body.if.then96_crit_edge64, %for.body.if.then96_crit_edge65, %for.body.if.then96_crit_edge66, %for.body.if.then96_crit_edge67, %for.body.if.then96_crit_edge68
  %43 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags437, align 8
  %or = or i32 %44, 2
  store i32 %or, ptr %flags437, align 8
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %tobool102.not = icmp sgt i8 %46, -1
  br i1 %tobool102.not, label %if.then96.for.inc_crit_edge, label %if.then103

if.then96.for.inc_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then103:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %and105 = and i32 %or, -5
  %47 = ptrtoint ptr %flags437 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and105, ptr %flags437, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then103, %if.then96.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next41 = add nuw nsw i32 %indvars.iv40, 1
  %48 = ptrtoint ptr %rates_len to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rates_len, align 2
  %50 = zext i8 %49 to i32
  %cmp78 = icmp ult i32 %indvars.iv.next41, %50
  br i1 %cmp78, label %for.inc.for.body_crit_edge, label %for.inc.do.body108_crit_edge

for.inc.do.body108_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body108:                                       ; preds = %for.inc.do.body108_crit_edge, %sw.bb60.do.body108_crit_edge
  %.lcssa20 = phi i8 [ 0, %sw.bb60.do.body108_crit_edge ], [ %49, %for.inc.do.body108_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %51 = load i32, ptr @libipw_debug_level, align 4
  %and109 = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body108.sw.epilog_crit_edge, label %do.end114

do.body108.sw.epilog_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  %conv77.le = zext i8 %.lcssa20 to i32
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.89, ptr noundef nonnull %rates_str, i32 noundef %conv77.le) #11
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.end15
  %52 = call i8 @llvm.umin.i8(i8 %19, i8 16)
  %53 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %rates_ex_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp14217.not = icmp eq i8 %52, 0
  br i1 %cmp14217.not, label %sw.bb123.do.body183_crit_edge, label %sw.bb123.for.body144_crit_edge

sw.bb123.for.body144_crit_edge:                   ; preds = %sw.bb123
  br label %for.body144

sw.bb123.do.body183_crit_edge:                    ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body183

for.body144:                                      ; preds = %for.inc180.for.body144_crit_edge, %sw.bb123.for.body144_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc180.for.body144_crit_edge ], [ 0, %sw.bb123.for.body144_crit_edge ]
  %p.118 = phi ptr [ %add.ptr160, %for.inc180.for.body144_crit_edge ], [ %rates_str, %sw.bb123.for.body144_crit_edge ]
  %arrayidx147 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2, i32 %indvars.iv
  %54 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx147, align 1
  %arrayidx149 = getelementptr %struct.libipw_network, ptr %network, i32 0, i32 9, i32 %indvars.iv
  %56 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx149, align 1
  %sub.ptr.lhs.cast151 = ptrtoint ptr %p.118 to i32
  %sub154 = sub i32 %sub.ptr.sub153.neg, %sub.ptr.lhs.cast151
  %conv158 = zext i8 %55 to i32
  %call159 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.118, i32 noundef %sub154, ptr noundef nonnull @.str.93, i32 noundef %conv158) #8
  %add.ptr160 = getelementptr i8, ptr %p.118, i32 %call159
  %57 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx147, align 1
  %59 = and i8 %58, 127
  %and.i3 = zext i8 %59 to i32
  %60 = zext i32 %and.i3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %and.i3, label %for.body144.for.inc180_crit_edge [
    i32 12, label %for.body144.if.then166_crit_edge
    i32 18, label %for.body144.if.then166_crit_edge69
    i32 24, label %for.body144.if.then166_crit_edge70
    i32 36, label %for.body144.if.then166_crit_edge71
    i32 48, label %for.body144.if.then166_crit_edge72
    i32 72, label %for.body144.if.then166_crit_edge73
    i32 96, label %for.body144.if.then166_crit_edge74
    i32 108, label %for.body144.if.then166_crit_edge75
  ]

for.body144.if.then166_crit_edge75:               ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then166

for.body144.if.then166_crit_edge74:               ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then166

for.body144.if.then166_crit_edge73:               ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then166

for.body144.if.then166_crit_edge72:               ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then166

for.body144.if.then166_crit_edge71:               ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then166

for.body144.if.then166_crit_edge70:               ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then166

for.body144.if.then166_crit_edge69:               ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then166

for.body144.if.then166_crit_edge:                 ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then166

for.body144.for.inc180_crit_edge:                 ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc180

if.then166:                                       ; preds = %for.body144.if.then166_crit_edge, %for.body144.if.then166_crit_edge69, %for.body144.if.then166_crit_edge70, %for.body144.if.then166_crit_edge71, %for.body144.if.then166_crit_edge72, %for.body144.if.then166_crit_edge73, %for.body144.if.then166_crit_edge74, %for.body144.if.then166_crit_edge75
  %61 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags437, align 8
  %or168 = or i32 %62, 2
  store i32 %or168, ptr %flags437, align 8
  %63 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx147, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %tobool174.not = icmp sgt i8 %64, -1
  br i1 %tobool174.not, label %if.then166.for.inc180_crit_edge, label %if.then175

if.then166.for.inc180_crit_edge:                  ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc180

if.then175:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  %and177 = and i32 %or168, -5
  %65 = ptrtoint ptr %flags437 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and177, ptr %flags437, align 8
  br label %for.inc180

for.inc180:                                       ; preds = %if.then175, %if.then166.for.inc180_crit_edge, %for.body144.for.inc180_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %66 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rates_ex_len, align 1
  %68 = zext i8 %67 to i32
  %cmp142 = icmp ult i32 %indvars.iv.next, %68
  br i1 %cmp142, label %for.inc180.for.body144_crit_edge, label %for.inc180.do.body183_crit_edge

for.inc180.do.body183_crit_edge:                  ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body183

for.inc180.for.body144_crit_edge:                 ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body144

do.body183:                                       ; preds = %for.inc180.do.body183_crit_edge, %sw.bb123.do.body183_crit_edge
  %.lcssa = phi i8 [ 0, %sw.bb123.do.body183_crit_edge ], [ %67, %for.inc180.do.body183_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %69 = load i32, ptr @libipw_debug_level, align 4
  %and184 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %do.body183.sw.epilog_crit_edge, label %do.end189

do.body183.sw.epilog_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end189:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  %conv141.le = zext i8 %.lcssa to i32
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.89, ptr noundef nonnull %rates_str, i32 noundef %conv141.le) #11
  br label %sw.epilog

do.body199:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %70 = load i32, ptr @libipw_debug_level, align 4
  %and200 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %do.body199.do.end213_crit_edge, label %do.end205

do.body199.do.end213_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end213

do.end205:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #10
  %data207 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %71 = ptrtoint ptr %data207 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data207, align 1
  %conv209 = zext i8 %72 to i32
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.89, i32 noundef %conv209) #11
  br label %do.end213

do.end213:                                        ; preds = %do.end205, %do.body199.do.end213_crit_edge
  %data214 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %73 = ptrtoint ptr %data214 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %data214, align 1
  %75 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %channel, align 2
  br label %sw.epilog

do.body217:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %76 = load i32, ptr @libipw_debug_level, align 4
  %and218 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %do.body217.sw.epilog_crit_edge, label %do.end223

do.body217.sw.epilog_crit_edge:                   ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end223:                                        ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #10
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.89) #11
  br label %sw.epilog

do.body230:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %77 = load i32, ptr @libipw_debug_level, align 4
  %and231 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %do.body230.sw.epilog_crit_edge, label %do.end236

do.body230.sw.epilog_crit_edge:                   ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end236:                                        ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #10
  %call238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.89) #11
  br label %sw.epilog

sw.bb242:                                         ; preds = %if.end15
  %data243 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %78 = ptrtoint ptr %data243 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %data243, align 1
  %80 = ptrtoint ptr %tim to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %tim, align 8
  %arrayidx246 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 1, i32 1
  %81 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx246, align 1
  %83 = ptrtoint ptr %tim_period to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %tim_period, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %84 = load i32, ptr @libipw_debug_level, align 4
  %and249 = and i32 %84, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %sw.bb242.sw.epilog_crit_edge, label %do.end254

sw.bb242.sw.epilog_crit_edge:                     ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end254:                                        ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #10
  %call256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.89) #11
  br label %sw.epilog

sw.bb260:                                         ; preds = %if.end15
  %data261 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %85 = ptrtoint ptr %data261 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %data261, align 1
  %87 = ptrtoint ptr %erp_value to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %erp_value, align 2
  %88 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags437, align 8
  %or264 = or i32 %89, 1024
  store i32 %or264, ptr %flags437, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %90 = load i32, ptr @libipw_debug_level, align 4
  %and266 = and i32 %90, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %sw.bb260.sw.epilog_crit_edge, label %do.end271

sw.bb260.sw.epilog_crit_edge:                     ; preds = %sw.bb260
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end271:                                        ; preds = %sw.bb260
  call void @__sanitizer_cov_trace_pc() #10
  %conv274 = zext i8 %86 to i32
  %call275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.89, i32 noundef %conv274) #11
  br label %sw.epilog

sw.bb279:                                         ; preds = %if.end15
  %data280 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %91 = ptrtoint ptr %data280 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %data280, align 1
  %conv282 = zext i8 %92 to i16
  %93 = ptrtoint ptr %atim_window to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv282, ptr %atim_window, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %94 = load i32, ptr @libipw_debug_level, align 4
  %and284 = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284)
  %tobool285.not = icmp eq i32 %and284, 0
  br i1 %tobool285.not, label %sw.bb279.sw.epilog_crit_edge, label %do.end289

sw.bb279.sw.epilog_crit_edge:                     ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end289:                                        ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #10
  %conv292 = zext i8 %92 to i32
  %call293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.89, i32 noundef %conv292) #11
  br label %sw.epilog

do.body298:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %95 = load i32, ptr @libipw_debug_level, align 4
  %and299 = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %do.body298.sw.epilog_crit_edge, label %do.end304

do.body298.sw.epilog_crit_edge:                   ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end304:                                        ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #10
  %call306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.89) #11
  br label %sw.epilog

do.body311:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %96 = load i32, ptr @libipw_debug_level, align 4
  %and312 = and i32 %96, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %do.body311.do.end324_crit_edge, label %do.end317

do.body311.do.end324_crit_edge:                   ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end324

do.end317:                                        ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #10
  %call321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.89, i32 noundef %conv2) #11
  br label %do.end324

do.end324:                                        ; preds = %do.end317, %do.body311.do.end324_crit_edge
  %tobool1.not.i.i = icmp eq ptr %info_element.addr.028, null
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %param_element.i) #8
  br i1 %tobool1.not.i.i, label %do.end324.if.end328thread-pre-split_crit_edge, label %lor.lhs.false2.i41.i

do.end324.if.end328thread-pre-split_crit_edge:    ; preds = %do.end324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328thread-pre-split

lor.lhs.false2.i41.i:                             ; preds = %do.end324
  %97 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %98)
  %cmp.not.i40.i = icmp eq i8 %98, 24
  br i1 %cmp.not.i40.i, label %if.end.i43.i, label %lor.lhs.false2.i41.i.if.end328_crit_edge

lor.lhs.false2.i41.i.if.end328_crit_edge:         ; preds = %lor.lhs.false2.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328

if.end.i43.i:                                     ; preds = %lor.lhs.false2.i41.i
  %99 = call ptr @memcpy(ptr %param_element.i, ptr %info_element.addr.028, i32 26)
  %100 = ptrtoint ptr %param_element.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %param_element.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %101)
  %cmp.not.i.i42.i = icmp eq i8 %101, -35
  br i1 %cmp.not.i.i42.i, label %if.end.i.i46.i, label %if.end.i43.i.if.end328thread-pre-split_crit_edge

if.end.i43.i.if.end328thread-pre-split_crit_edge: ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328thread-pre-split

if.end.i.i46.i:                                   ; preds = %if.end.i43.i
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %103)
  %cmp3.not.i.i45.i = icmp eq i8 %103, 1
  br i1 %cmp3.not.i.i45.i, label %if.end6.i.i50.i, label %if.end.i.i46.i.if.end328thread-pre-split_crit_edge

if.end.i.i46.i.if.end328thread-pre-split_crit_edge: ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328thread-pre-split

if.end6.i.i50.i:                                  ; preds = %if.end.i.i46.i
  %bcmp.i.i48.i = call i32 @bcmp(ptr noundef dereferenceable(3) %1, ptr noundef nonnull dereferenceable(3) @qos_oui, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i48.i)
  %tobool.not.i.i49.i = icmp eq i32 %bcmp.i.i48.i, 0
  br i1 %tobool.not.i.i49.i, label %if.end8.i.i53.i, label %if.end6.i.i50.i.if.end328thread-pre-split_crit_edge

if.end6.i.i50.i.if.end328thread-pre-split_crit_edge: ; preds = %if.end6.i.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328thread-pre-split

if.end8.i.i53.i:                                  ; preds = %if.end6.i.i50.i
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %105)
  %cmp10.not.i.i52.i = icmp eq i8 %105, 2
  br i1 %cmp10.not.i.i52.i, label %libipw_read_qos_param_element.exit.i, label %if.end8.i.i53.i.if.end328thread-pre-split_crit_edge

if.end8.i.i53.i.if.end328thread-pre-split_crit_edge: ; preds = %if.end8.i.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328thread-pre-split

libipw_read_qos_param_element.exit.i:             ; preds = %if.end8.i.i53.i
  %106 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp15.not.i.i55.not.i = icmp eq i8 %107, 1
  br i1 %cmp15.not.i.i55.not.i, label %do.body.i, label %libipw_read_qos_param_element.exit.i.if.end328thread-pre-split_crit_edge

libipw_read_qos_param_element.exit.i.if.end328thread-pre-split_crit_edge: ; preds = %libipw_read_qos_param_element.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328thread-pre-split

do.body.i:                                        ; preds = %libipw_read_qos_param_element.exit.i
  %108 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %6, align 1
  %110 = and i8 %109, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %110)
  %cmp6.i.i = icmp ult i8 %110, 2
  %cond.neg.i.i = select i1 %cmp6.i.i, i8 0, i8 -2
  %sub.i.i = add nsw i8 %cond.neg.i.i, %110
  %111 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %sub.i.i, ptr %arrayidx2.i.i, align 1
  %112 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %7, align 1
  %114 = and i8 %113, 15
  %conv15.i.i = zext i8 %114 to i16
  %notmask.i.i = shl nsw i16 -1, %conv15.i.i
  %sub16.i.i = xor i16 %notmask.i.i, -1
  %115 = call i16 @llvm.bswap.i16(i16 %sub16.i.i) #8
  %116 = ptrtoint ptr %qos_data6.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 %115, ptr %qos_data6.i, align 1
  %117 = lshr i8 %113, 4
  %conv24.i.i = zext i8 %117 to i16
  %notmask59.i.i = shl nsw i16 -1, %conv24.i.i
  %sub26.i.i = xor i16 %notmask59.i.i, -1
  %118 = call i16 @llvm.bswap.i16(i16 %sub26.i.i) #8
  %119 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 %118, ptr %arrayidx29.i.i, align 1
  %120 = lshr i8 %109, 4
  %.lobit.i.i = and i8 %120, 1
  %121 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %.lobit.i.i, ptr %arrayidx35.i.i, align 1
  %122 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %8, align 1
  %124 = call i16 @llvm.bswap.i16(i16 %123) #8
  %mul.i.i = shl i16 %124, 5
  %125 = call i16 @llvm.bswap.i16(i16 %mul.i.i) #8
  %126 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %125, ptr %arrayidx39.i.i, align 1
  %127 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %9, align 1
  %129 = and i8 %128, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %129)
  %cmp6.1.i.i = icmp ult i8 %129, 2
  %cond.neg.1.i.i = select i1 %cmp6.1.i.i, i8 0, i8 -2
  %sub.1.i.i = add nsw i8 %cond.neg.1.i.i, %129
  %130 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %sub.1.i.i, ptr %arrayidx2.1.i.i, align 1
  %131 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %10, align 1
  %133 = and i8 %132, 15
  %conv15.1.i.i = zext i8 %133 to i16
  %notmask.1.i.i = shl nsw i16 -1, %conv15.1.i.i
  %sub16.1.i.i = xor i16 %notmask.1.i.i, -1
  %134 = call i16 @llvm.bswap.i16(i16 %sub16.1.i.i) #8
  %135 = ptrtoint ptr %arrayidx19.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 %134, ptr %arrayidx19.1.i.i, align 1
  %136 = lshr i8 %132, 4
  %conv24.1.i.i = zext i8 %136 to i16
  %notmask59.1.i.i = shl nsw i16 -1, %conv24.1.i.i
  %sub26.1.i.i = xor i16 %notmask59.1.i.i, -1
  %137 = call i16 @llvm.bswap.i16(i16 %sub26.1.i.i) #8
  %138 = ptrtoint ptr %arrayidx29.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %137, ptr %arrayidx29.1.i.i, align 1
  %139 = lshr i8 %128, 4
  %.lobit.1.i.i = and i8 %139, 1
  %140 = ptrtoint ptr %arrayidx35.1.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %.lobit.1.i.i, ptr %arrayidx35.1.i.i, align 1
  %141 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %11, align 1
  %143 = call i16 @llvm.bswap.i16(i16 %142) #8
  %mul.1.i.i = shl i16 %143, 5
  %144 = call i16 @llvm.bswap.i16(i16 %mul.1.i.i) #8
  %145 = ptrtoint ptr %arrayidx39.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 %144, ptr %arrayidx39.1.i.i, align 1
  %146 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %12, align 1
  %148 = and i8 %147, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %148)
  %cmp6.2.i.i = icmp ult i8 %148, 2
  %cond.neg.2.i.i = select i1 %cmp6.2.i.i, i8 0, i8 -2
  %sub.2.i.i = add nsw i8 %cond.neg.2.i.i, %148
  %149 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %sub.2.i.i, ptr %arrayidx2.2.i.i, align 1
  %150 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %13, align 1
  %152 = and i8 %151, 15
  %conv15.2.i.i = zext i8 %152 to i16
  %notmask.2.i.i = shl nsw i16 -1, %conv15.2.i.i
  %sub16.2.i.i = xor i16 %notmask.2.i.i, -1
  %153 = call i16 @llvm.bswap.i16(i16 %sub16.2.i.i) #8
  %154 = ptrtoint ptr %arrayidx19.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %153, ptr %arrayidx19.2.i.i, align 1
  %155 = lshr i8 %151, 4
  %conv24.2.i.i = zext i8 %155 to i16
  %notmask59.2.i.i = shl nsw i16 -1, %conv24.2.i.i
  %sub26.2.i.i = xor i16 %notmask59.2.i.i, -1
  %156 = call i16 @llvm.bswap.i16(i16 %sub26.2.i.i) #8
  %157 = ptrtoint ptr %arrayidx29.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 2)
  store i16 %156, ptr %arrayidx29.2.i.i, align 1
  %158 = lshr i8 %147, 4
  %.lobit.2.i.i = and i8 %158, 1
  %159 = ptrtoint ptr %arrayidx35.2.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %.lobit.2.i.i, ptr %arrayidx35.2.i.i, align 1
  %160 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %14, align 1
  %162 = call i16 @llvm.bswap.i16(i16 %161) #8
  %mul.2.i.i = shl i16 %162, 5
  %163 = call i16 @llvm.bswap.i16(i16 %mul.2.i.i) #8
  %164 = ptrtoint ptr %arrayidx39.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 %163, ptr %arrayidx39.2.i.i, align 1
  %165 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %15, align 1
  %167 = and i8 %166, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %167)
  %cmp6.3.i.i = icmp ult i8 %167, 2
  %cond.neg.3.i.i = select i1 %cmp6.3.i.i, i8 0, i8 -2
  %sub.3.i.i = add nsw i8 %cond.neg.3.i.i, %167
  %168 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %sub.3.i.i, ptr %arrayidx2.3.i.i, align 1
  %169 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %16, align 1
  %171 = and i8 %170, 15
  %conv15.3.i.i = zext i8 %171 to i16
  %notmask.3.i.i = shl nsw i16 -1, %conv15.3.i.i
  %sub16.3.i.i = xor i16 %notmask.3.i.i, -1
  %172 = call i16 @llvm.bswap.i16(i16 %sub16.3.i.i) #8
  %173 = ptrtoint ptr %arrayidx19.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 2)
  store i16 %172, ptr %arrayidx19.3.i.i, align 1
  %174 = lshr i8 %170, 4
  %conv24.3.i.i = zext i8 %174 to i16
  %notmask59.3.i.i = shl nsw i16 -1, %conv24.3.i.i
  %sub26.3.i.i = xor i16 %notmask59.3.i.i, -1
  %175 = call i16 @llvm.bswap.i16(i16 %sub26.3.i.i) #8
  %176 = ptrtoint ptr %arrayidx29.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 %175, ptr %arrayidx29.3.i.i, align 1
  %177 = lshr i8 %166, 4
  %.lobit.3.i.i = and i8 %177, 1
  %178 = ptrtoint ptr %arrayidx35.3.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %.lobit.3.i.i, ptr %arrayidx35.3.i.i, align 1
  %179 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 2)
  %180 = load i16, ptr %17, align 1
  %181 = call i16 @llvm.bswap.i16(i16 %180) #8
  %mul.3.i.i = shl i16 %181, 5
  %182 = call i16 @llvm.bswap.i16(i16 %mul.3.i.i) #8
  %183 = ptrtoint ptr %arrayidx39.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %183, i32 2)
  store i16 %182, ptr %arrayidx39.3.i.i, align 1
  %184 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %flags437, align 8
  %or8.i = or i32 %185, 8
  store i32 %or8.i, ptr %flags437, align 8
  %186 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %5, align 1
  %188 = and i8 %187, 15
  %189 = ptrtoint ptr %param_count15.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %param_count15.i, align 4
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %param_element.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %190 = load i32, ptr @libipw_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %190)
  %tobool.not.i = icmp sgt i32 %190, -1
  br i1 %tobool.not.i, label %do.body.i.libipw_parse_qos_info_param_IE.exit.thread_crit_edge, label %do.end.i

do.body.i.libipw_parse_qos_info_param_IE.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %libipw_parse_qos_info_param_IE.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134) #11
  br label %libipw_parse_qos_info_param_IE.exit.thread

libipw_parse_qos_info_param_IE.exit.thread:       ; preds = %do.end.i, %do.body.i.libipw_parse_qos_info_param_IE.exit.thread_crit_edge
  %191 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %supported.i, align 4
  br label %sw.epilog

if.end328thread-pre-split:                        ; preds = %libipw_read_qos_param_element.exit.i.if.end328thread-pre-split_crit_edge, %if.end8.i.i53.i.if.end328thread-pre-split_crit_edge, %if.end6.i.i50.i.if.end328thread-pre-split_crit_edge, %if.end.i.i46.i.if.end328thread-pre-split_crit_edge, %if.end.i43.i.if.end328thread-pre-split_crit_edge, %do.end324.if.end328thread-pre-split_crit_edge
  %192 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %192)
  %.pr = load i8, ptr %len, align 1
  br label %if.end328

if.end328:                                        ; preds = %if.end328thread-pre-split, %lor.lhs.false2.i41.i.if.end328_crit_edge
  %193 = phi i8 [ %.pr, %if.end328thread-pre-split ], [ %98, %lor.lhs.false2.i41.i.if.end328_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %param_element.i) #8
  %conv330 = zext i8 %193 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %193)
  %cmp331 = icmp ugt i8 %193, 3
  br i1 %cmp331, label %land.lhs.true, label %if.end328.sw.epilog_crit_edge

if.end328.sw.epilog_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end328
  %data333 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %194 = ptrtoint ptr %data333 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %data333, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %cmp336 = icmp eq i8 %195, 0
  br i1 %cmp336, label %land.lhs.true338, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true338:                                 ; preds = %land.lhs.true
  %arrayidx340 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 1, i32 1
  %196 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx340, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %197)
  %cmp342 = icmp eq i8 %197, 80
  br i1 %cmp342, label %land.lhs.true344, label %land.lhs.true338.sw.epilog_crit_edge

land.lhs.true338.sw.epilog_crit_edge:             ; preds = %land.lhs.true338
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true344:                                 ; preds = %land.lhs.true338
  %arrayidx346 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 2
  %198 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx346, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %199)
  %cmp348 = icmp eq i8 %199, -14
  br i1 %cmp348, label %land.lhs.true350, label %land.lhs.true344.sw.epilog_crit_edge

land.lhs.true344.sw.epilog_crit_edge:             ; preds = %land.lhs.true344
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true350:                                 ; preds = %land.lhs.true344
  %arrayidx352 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 2, i32 1
  %200 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx352, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %201)
  %cmp354 = icmp eq i8 %201, 1
  br i1 %cmp354, label %if.then356, label %land.lhs.true350.sw.epilog_crit_edge

land.lhs.true350.sw.epilog_crit_edge:             ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then356:                                       ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %193)
  %cmp361 = icmp ult i8 %193, 62
  %add359 = add nuw nsw i32 %conv330, 2
  %cond366 = select i1 %cmp361, i32 %add359, i32 64
  %202 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %cond366, ptr %wpa_ie_len, align 8
  %203 = call ptr @memcpy(ptr %wpa_ie, ptr %info_element.addr.028, i32 %cond366)
  br label %sw.epilog

do.body371:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %204 = load i32, ptr @libipw_debug_level, align 4
  %and372 = and i32 %204, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and372)
  %tobool373.not = icmp eq i32 %and372, 0
  br i1 %tobool373.not, label %do.body371.do.end384_crit_edge, label %do.end377

do.body371.do.end384_crit_edge:                   ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end384

do.end377:                                        ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #10
  %call381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.89, i32 noundef %conv2) #11
  br label %do.end384

do.end384:                                        ; preds = %do.end377, %do.body371.do.end384_crit_edge
  %205 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %206)
  %cmp389 = icmp ult i8 %206, 62
  %conv386 = zext i8 %206 to i32
  %add387 = add nuw nsw i32 %conv386, 2
  %cond394 = select i1 %cmp389, i32 %add387, i32 64
  %207 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %cond394, ptr %rsn_ie_len, align 4
  %208 = call ptr @memcpy(ptr %rsn_ie, ptr %info_element.addr.028, i32 %cond394)
  br label %sw.epilog

do.end400:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #11
  br label %sw.epilog

sw.bb403:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %data404 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %209 = ptrtoint ptr %data404 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %data404, align 1
  %211 = ptrtoint ptr %power_constraint411 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %power_constraint411, align 2
  %212 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %flags437, align 8
  %or407 = or i32 %213, 32
  store i32 %or407, ptr %flags437, align 8
  br label %sw.epilog

sw.bb408:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %data409 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %214 = ptrtoint ptr %data409 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %data409, align 1
  %216 = ptrtoint ptr %power_constraint411 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %power_constraint411, align 2
  %217 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %flags437, align 8
  %or413 = or i32 %218, 64
  store i32 %or413, ptr %flags437, align 8
  br label %sw.epilog

sw.bb414:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %data415 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %219 = ptrtoint ptr %data415 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %data415, align 1
  %221 = ptrtoint ptr %quiet to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %quiet, align 8
  %arrayidx418 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 1, i32 1
  %222 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx418, align 1
  %224 = ptrtoint ptr %period to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %period, align 1
  %arrayidx421 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 2
  %225 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx421, align 1
  %227 = ptrtoint ptr %duration to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %duration, align 2
  %arrayidx424 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 2, i32 1
  %228 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx424, align 1
  %230 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %offset, align 1
  %231 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %flags437, align 8
  %or427 = or i32 %232, 128
  store i32 %or427, ptr %flags437, align 8
  br label %sw.epilog

sw.bb428:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %flags437, align 8
  %or430 = or i32 %234, 256
  store i32 %or430, ptr %flags437, align 8
  br label %sw.epilog

sw.bb431:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %data432 = getelementptr inbounds %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2
  %235 = ptrtoint ptr %data432 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %data432, align 1
  %237 = ptrtoint ptr %tpc_report to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %tpc_report, align 1
  %arrayidx435 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 1, i32 1
  %238 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx435, align 1
  %240 = ptrtoint ptr %link_margin to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %link_margin, align 1
  %241 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %flags437, align 8
  %or438 = or i32 %242, 512
  store i32 %or438, ptr %flags437, align 8
  br label %sw.epilog

do.body439:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %243 = load i32, ptr @libipw_debug_level, align 4
  %and440 = and i32 %243, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and440)
  %tobool441.not = icmp eq i32 %and440, 0
  br i1 %tobool441.not, label %do.body439.sw.epilog_crit_edge, label %do.end445

do.body439.sw.epilog_crit_edge:                   ; preds = %do.body439
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end445:                                        ; preds = %do.body439
  %244 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %244, ptr @__sancov_gen_cov_switch_values.201)
  switch i8 %24, label %sw.default.i [
    i8 -34, label %sw.bb24.i
    i8 -35, label %sw.bb23.i
    i8 50, label %sw.bb22.i
    i8 3, label %do.end445.get_info_element_string.exit_crit_edge
    i8 4, label %sw.bb4.i
    i8 5, label %sw.bb5.i
    i8 6, label %sw.bb6.i
    i8 7, label %sw.bb7.i
    i8 10, label %sw.bb8.i
    i8 16, label %sw.bb9.i
    i8 32, label %sw.bb10.i
    i8 33, label %sw.bb11.i
    i8 34, label %sw.bb12.i
    i8 35, label %sw.bb13.i
    i8 36, label %sw.bb14.i
    i8 37, label %sw.bb15.i
    i8 38, label %sw.bb16.i
    i8 39, label %sw.bb17.i
    i8 40, label %sw.bb18.i
    i8 41, label %sw.bb19.i
    i8 42, label %sw.bb20.i
    i8 48, label %sw.bb21.i
  ]

do.end445.get_info_element_string.exit_crit_edge: ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb4.i:                                         ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb5.i:                                         ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb6.i:                                         ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb7.i:                                         ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb8.i:                                         ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb9.i:                                         ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb10.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb11.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb12.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb13.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb14.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb15.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb16.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb17.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb18.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb19.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb20.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb21.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb22.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb23.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.bb24.i:                                        ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

sw.default.i:                                     ; preds = %do.end445
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_info_element_string.exit

get_info_element_string.exit:                     ; preds = %sw.default.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %do.end445.get_info_element_string.exit_crit_edge
  %retval.0.i7 = phi ptr [ @.str.160, %sw.default.i ], [ @.str.159, %sw.bb24.i ], [ @.str.158, %sw.bb23.i ], [ @.str.157, %sw.bb22.i ], [ @.str.156, %sw.bb21.i ], [ @.str.155, %sw.bb20.i ], [ @.str.154, %sw.bb19.i ], [ @.str.153, %sw.bb18.i ], [ @.str.152, %sw.bb17.i ], [ @.str.151, %sw.bb16.i ], [ @.str.150, %sw.bb15.i ], [ @.str.149, %sw.bb14.i ], [ @.str.148, %sw.bb13.i ], [ @.str.147, %sw.bb12.i ], [ @.str.146, %sw.bb11.i ], [ @.str.145, %sw.bb10.i ], [ @.str.144, %sw.bb9.i ], [ @.str.143, %sw.bb8.i ], [ @.str.142, %sw.bb7.i ], [ @.str.141, %sw.bb6.i ], [ @.str.140, %sw.bb5.i ], [ @.str.139, %sw.bb4.i ], [ @.str.138, %do.end445.get_info_element_string.exit_crit_edge ]
  %conv451 = zext i8 %24 to i32
  %call452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.89, ptr noundef nonnull %retval.0.i7, i32 noundef %conv451) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %get_info_element_string.exit, %do.body439.sw.epilog_crit_edge, %sw.bb431, %sw.bb428, %sw.bb414, %sw.bb408, %sw.bb403, %do.end400, %do.end384, %if.then356, %land.lhs.true350.sw.epilog_crit_edge, %land.lhs.true344.sw.epilog_crit_edge, %land.lhs.true338.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.end328.sw.epilog_crit_edge, %libipw_parse_qos_info_param_IE.exit.thread, %do.end304, %do.body298.sw.epilog_crit_edge, %do.end289, %sw.bb279.sw.epilog_crit_edge, %do.end271, %sw.bb260.sw.epilog_crit_edge, %do.end254, %sw.bb242.sw.epilog_crit_edge, %do.end236, %do.body230.sw.epilog_crit_edge, %do.end223, %do.body217.sw.epilog_crit_edge, %do.end213, %do.end189, %do.body183.sw.epilog_crit_edge, %do.end114, %do.body108.sw.epilog_crit_edge, %do.end48, %do.body42.sw.epilog_crit_edge
  %245 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %len, align 1
  %conv457 = zext i8 %246 to i32
  %247 = zext i8 %246 to i16
  %.neg14 = add i16 %length.addr.027, -2
  %conv461 = sub i16 %.neg14, %247
  %arrayidx465 = getelementptr %struct.libipw_info_element, ptr %info_element.addr.028, i32 0, i32 2, i32 %conv457
  %cmp = icmp ugt i16 %conv461, 1
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %do.end, %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rates_str) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !267, !268, !269, !271, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !297, !299, !300, !301, !303, !304}
!llvm.module.flags = !{!305, !306, !307, !308, !309, !310, !311, !312}
!llvm.ident = !{!313}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 354, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @libipw_rx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @libipw_rx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 366, i32 3}
!8 = !{ptr @libipw_rx._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @libipw_rx._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 457, i32 4}
!12 = !{ptr @libipw_rx._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @libipw_rx._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 560, i32 4}
!16 = !{ptr @libipw_rx._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @libipw_rx._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 581, i32 3}
!20 = !{ptr @libipw_rx._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @libipw_rx._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 584, i32 4}
!24 = !{ptr @libipw_rx._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @libipw_rx._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 597, i32 4}
!28 = !{ptr @libipw_rx._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @libipw_rx._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 644, i32 4}
!32 = !{ptr @libipw_rx._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @libipw_rx._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 653, i32 3}
!36 = !{ptr @libipw_rx._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @libipw_rx._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 807, i32 4}
!40 = !{ptr @libipw_rx._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @libipw_rx._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1619, i32 3}
!44 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @libipw_rx_mgt._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @libipw_rx_mgt._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1628, i32 3}
!49 = !{ptr @libipw_rx_mgt._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @libipw_rx_mgt._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1634, i32 3}
!53 = !{ptr @libipw_rx_mgt._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @libipw_rx_mgt._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1646, i32 3}
!57 = !{ptr @libipw_rx_mgt._entry.38, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @libipw_rx_mgt._entry_ptr.40, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.42, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1649, i32 3}
!61 = !{ptr @libipw_rx_mgt._entry.41, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @libipw_rx_mgt._entry_ptr.43, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.45, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1657, i32 3}
!65 = !{ptr @libipw_rx_mgt._entry.44, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @libipw_rx_mgt._entry_ptr.46, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.48, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1660, i32 3}
!69 = !{ptr @libipw_rx_mgt._entry.47, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @libipw_rx_mgt._entry_ptr.49, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @libipw_rx_mgt._entry.50, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1668, i32 3}
!73 = !{ptr @libipw_rx_mgt._entry_ptr.51, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.53, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1685, i32 3}
!76 = !{ptr @libipw_rx_mgt._entry.52, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @libipw_rx_mgt._entry_ptr.54, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.56, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1693, i32 3}
!80 = !{ptr @libipw_rx_mgt._entry.55, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @libipw_rx_mgt._entry_ptr.57, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.59, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1697, i32 3}
!84 = !{ptr @libipw_rx_mgt._entry.58, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @libipw_rx_mgt._entry_ptr.60, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.62, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1706, i32 3}
!88 = !{ptr @libipw_rx_mgt._entry.61, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @libipw_rx_mgt._entry_ptr.63, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.65, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1710, i32 3}
!92 = !{ptr @libipw_rx_mgt._entry.64, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @libipw_rx_mgt._entry_ptr.66, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.68, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1717, i32 3}
!96 = !{ptr @libipw_rx_mgt._entry.67, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @libipw_rx_mgt._entry_ptr.69, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.71, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1724, i32 3}
!100 = !{ptr @libipw_rx_mgt._entry.70, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @libipw_rx_mgt._entry_ptr.72, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.74, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1727, i32 3}
!104 = !{ptr @libipw_rx_mgt._entry.73, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @libipw_rx_mgt._entry_ptr.75, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @__ksymtab_libipw_rx_any, !107, !"__ksymtab_libipw_rx_any", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1735, i32 1}
!108 = !{ptr @__ksymtab_libipw_rx_mgt, !109, !"__ksymtab_libipw_rx_mgt", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1736, i32 1}
!110 = !{ptr @__ksymtab_libipw_rx, !111, !"__ksymtab_libipw_rx", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1737, i32 1}
!112 = !{ptr @.str.76, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 284, i32 3}
!114 = !{ptr @.str.77, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @libipw_rx_frame_decrypt._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @libipw_rx_frame_decrypt._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.79, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 287, i32 4}
!119 = !{ptr @libipw_rx_frame_decrypt._entry.78, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @libipw_rx_frame_decrypt._entry_ptr.80, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.81, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 67, i32 4}
!123 = !{ptr @.str.82, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @libipw_frag_cache_find._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @libipw_frag_cache_find._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.83, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 150, i32 3}
!128 = !{ptr @.str.84, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @libipw_frag_cache_invalidate._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @libipw_frag_cache_invalidate._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.85, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 316, i32 3}
!133 = !{ptr @.str.86, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @libipw_rx_frame_decrypt_msdu._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @libipw_rx_frame_decrypt_msdu._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.87, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!138 = !{ptr @libipw_rfc1042_header, !139, !"libipw_rfc1042_header", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 218, i32 22}
!140 = !{ptr @libipw_bridge_tunnel_header, !141, !"libipw_bridge_tunnel_header", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 222, i32 22}
!142 = !{ptr @.str.88, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1101, i32 4}
!144 = !{ptr @.str.89, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @libipw_parse_info_param._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @libipw_parse_info_param._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.91, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1123, i32 4}
!149 = !{ptr @libipw_parse_info_param._entry.90, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @libipw_parse_info_param._entry_ptr.92, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.93, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1138, i32 29}
!153 = !{ptr @.str.95, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1151, i32 4}
!155 = !{ptr @libipw_parse_info_param._entry.94, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @libipw_parse_info_param._entry_ptr.96, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.98, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1178, i32 4}
!159 = !{ptr @libipw_parse_info_param._entry.97, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @libipw_parse_info_param._entry_ptr.99, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.101, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1183, i32 4}
!163 = !{ptr @libipw_parse_info_param._entry.100, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @libipw_parse_info_param._entry_ptr.102, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.104, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1189, i32 4}
!167 = !{ptr @libipw_parse_info_param._entry.103, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @libipw_parse_info_param._entry_ptr.105, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.107, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1193, i32 4}
!171 = !{ptr @libipw_parse_info_param._entry.106, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @libipw_parse_info_param._entry_ptr.108, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.110, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1199, i32 4}
!175 = !{ptr @libipw_parse_info_param._entry.109, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @libipw_parse_info_param._entry_ptr.111, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.113, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1205, i32 4}
!179 = !{ptr @libipw_parse_info_param._entry.112, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @libipw_parse_info_param._entry_ptr.114, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.116, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1211, i32 4}
!183 = !{ptr @libipw_parse_info_param._entry.115, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @libipw_parse_info_param._entry_ptr.117, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.119, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1216, i32 4}
!187 = !{ptr @libipw_parse_info_param._entry.118, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @libipw_parse_info_param._entry_ptr.120, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.122, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1220, i32 4}
!191 = !{ptr @libipw_parse_info_param._entry.121, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @libipw_parse_info_param._entry_ptr.123, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.125, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1239, i32 4}
!195 = !{ptr @libipw_parse_info_param._entry.124, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @libipw_parse_info_param._entry_ptr.126, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.128, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1248, i32 4}
!199 = !{ptr @libipw_parse_info_param._entry.127, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @libipw_parse_info_param._entry_ptr.129, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.131, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1282, i32 4}
!203 = !{ptr @libipw_parse_info_param._entry.130, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @libipw_parse_info_param._entry_ptr.132, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.133, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1046, i32 3}
!207 = !{ptr @.str.134, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @libipw_parse_qos_info_param_IE._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @libipw_parse_qos_info_param_IE._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @qos_oui, !211, !"qos_oui", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 921, i32 11}
!212 = distinct !{null, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1058, i32 3}
!214 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1059, i32 3}
!216 = distinct !{null, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1060, i32 3}
!218 = !{ptr @.str.138, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1061, i32 3}
!220 = !{ptr @.str.139, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1062, i32 3}
!222 = !{ptr @.str.140, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1063, i32 3}
!224 = !{ptr @.str.141, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1064, i32 3}
!226 = !{ptr @.str.142, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1065, i32 3}
!228 = !{ptr @.str.143, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1066, i32 3}
!230 = !{ptr @.str.144, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1067, i32 3}
!232 = !{ptr @.str.145, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1068, i32 3}
!234 = !{ptr @.str.146, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1069, i32 3}
!236 = !{ptr @.str.147, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1070, i32 3}
!238 = !{ptr @.str.148, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1071, i32 3}
!240 = !{ptr @.str.149, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1072, i32 3}
!242 = !{ptr @.str.150, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1073, i32 3}
!244 = !{ptr @.str.151, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1074, i32 3}
!246 = !{ptr @.str.152, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1075, i32 3}
!248 = !{ptr @.str.153, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1076, i32 3}
!250 = !{ptr @.str.154, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1077, i32 3}
!252 = !{ptr @.str.155, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1078, i32 3}
!254 = !{ptr @.str.156, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1079, i32 3}
!256 = !{ptr @.str.157, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1080, i32 3}
!258 = !{ptr @.str.158, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1081, i32 3}
!260 = !{ptr @.str.159, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1082, i32 3}
!262 = !{ptr @.str.160, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1084, i32 10}
!264 = !{ptr @.str.161, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1517, i32 2}
!266 = !{ptr @.str.162, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @libipw_process_probe_response._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @libipw_process_probe_response._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.164, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1538, i32 3}
!271 = !{ptr @libipw_process_probe_response._entry.163, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @libipw_process_probe_response._entry_ptr.165, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.166, !270, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.167, !270, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.169, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1574, i32 4}
!277 = !{ptr @libipw_process_probe_response._entry.168, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @libipw_process_probe_response._entry_ptr.170, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.172, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1585, i32 3}
!281 = !{ptr @libipw_process_probe_response._entry.171, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @libipw_process_probe_response._entry_ptr.173, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.175, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1594, i32 3}
!285 = !{ptr @libipw_process_probe_response._entry.174, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @libipw_process_probe_response._entry_ptr.176, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.177, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1407, i32 3}
!289 = !{ptr @.str.178, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @libipw_network_init._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @libipw_network_init._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.179, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1445, i32 3}
!294 = !{ptr @.str.180, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @update_network._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @update_network._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.182, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1484, i32 4}
!299 = !{ptr @update_network._entry.181, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @update_network._entry_ptr.183, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.185, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_rx.c", i32 1488, i32 4}
!303 = !{ptr @update_network._entry.184, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @update_network._entry_ptr.186, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{i32 1, !"wchar_size", i32 2}
!306 = !{i32 1, !"min_enum_size", i32 4}
!307 = !{i32 8, !"branch-target-enforcement", i32 0}
!308 = !{i32 8, !"sign-return-address", i32 0}
!309 = !{i32 8, !"sign-return-address-all", i32 0}
!310 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"uwtable", i32 1}
!312 = !{i32 7, !"frame-pointer", i32 2}
!313 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!314 = !{!"auto-init"}
!315 = !{i64 2148400108, i64 2148400134, i64 2148400163, i64 2148400197, i64 2148400228, i64 2148400251}
!316 = !{i64 2148402573, i64 2148402599, i64 2148402628, i64 2148402662, i64 2148402693, i64 2148402716}
!317 = !{!"branch_weights", i32 2000, i32 1}
