; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/ipw2x00/libipw_wx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/ipw2x00/libipw_wx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+libipw_wx_set_encodeext\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_wx_set_encodeext\09\09\09\09"
module asm "\09.long\09__crc_libipw_wx_set_encodeext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_wx_set_encodeext:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_wx_set_encodeext\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_wx_set_encodeext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+libipw_wx_get_encodeext\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_wx_get_encodeext\09\09\09\09"
module asm "\09.long\09__crc_libipw_wx_get_encodeext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_wx_get_encodeext:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_wx_get_encodeext\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_wx_get_encodeext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+libipw_wx_get_scan\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_wx_get_scan\09\09\09\09"
module asm "\09.long\09__crc_libipw_wx_get_scan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_wx_get_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_wx_get_scan\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_wx_get_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+libipw_wx_set_encode\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_wx_set_encode\09\09\09\09"
module asm "\09.long\09__crc_libipw_wx_set_encode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_wx_set_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_wx_set_encode\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_wx_set_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+libipw_wx_get_encode\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_wx_get_encode\09\09\09\09"
module asm "\09.long\09__crc_libipw_wx_get_encode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_wx_get_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_wx_get_encode\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_wx_get_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.libipw_device = type { ptr, %struct.wireless_dev, %struct.libipw_security, %struct.libipw_stats, %struct.libipw_geo, %struct.ieee80211_supported_band, %struct.ieee80211_supported_band, %struct.list_head, %struct.list_head, [128 x ptr], i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.lib80211_crypt_info, i32, [4 x %struct.libipw_frag_entry], i32, i16, i16, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.121, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.121 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.122 }
%union.anon.122 = type { %struct.cfg80211_bss_select_adjust }
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
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.libipw_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.libipw_network = type { [6 x i8], i8, [33 x i8], i8, %struct.libipw_qos_data, %struct.libipw_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, %struct.libipw_tim_parameters, i8, %struct.libipw_tpc_report, %struct.libipw_csa, %struct.libipw_quiet, %struct.list_head }
%struct.libipw_qos_data = type { %struct.libipw_qos_parameters, i32, i32, i8, i8 }
%struct.libipw_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.libipw_rx_stats = type { i32, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32 }
%struct.libipw_tim_parameters = type { i8, i8 }
%struct.libipw_tpc_report = type { i8, i8 }
%struct.libipw_csa = type { i8, i8, i8 }
%struct.libipw_quiet = type { i8, i8, i8, i8 }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }

@libipw_debug_level = external dso_local local_unnamed_addr global i32, align 4
@libipw_wx_get_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017libipw: %s Getting scan\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"libipw_wx_get_scan\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/ipw2x00/libipw_wx.c\00", [49 x i8] zeroinitializer }, align 32
@libipw_wx_get_scan._entry_ptr = internal global ptr @libipw_wx_get_scan._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@libipw_wx_get_scan._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017libipw: %s Not showing network '%*pE (%pM)' due to age (%ums).\0A\00", [62 x i8] zeroinitializer }, align 32
@libipw_wx_get_scan._entry_ptr.5 = internal global ptr @libipw_wx_get_scan._entry.3, section ".printk_index", align 4
@libipw_wx_get_scan._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libipw: %s exit: %d networks returned.\0A\00", [54 x i8] zeroinitializer }, align 32
@libipw_wx_get_scan._entry_ptr.8 = internal global ptr @libipw_wx_get_scan._entry.6, section ".printk_index", align 4
@libipw_wx_set_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017libipw: %s SET_ENCODE\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"libipw_wx_set_encode\00", [43 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr = internal global ptr @libipw_wx_set_encode._entry, section ".printk_index", align 4
@libipw_wx_set_encode._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017libipw: %s Key: %d [%s]\0A\00", [37 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr.13 = internal global ptr @libipw_wx_set_encode._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"provided\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017libipw: %s Disabling encryption on key %d.\0A\00", [50 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr.18 = internal global ptr @libipw_wx_set_encode._entry.16, section ".printk_index", align 4
@libipw_wx_set_encode._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libipw: %s Disabling encryption.\0A\00", [60 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr.21 = internal global ptr @libipw_wx_set_encode._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WEP\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib80211_crypt_wep\00", [45 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: could not initialize WEP: load module lib80211_crypt_wep\0A\00", [32 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr.26 = internal global ptr @libipw_wx_set_encode._entry.24, section ".printk_index", align 4
@libipw_wx_set_encode._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libipw: %s Setting key %d to '%*pE' (%d:%d bytes)\0A\00", [43 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr.29 = internal global ptr @libipw_wx_set_encode._entry.27, section ".printk_index", align 4
@libipw_wx_set_encode._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libipw: %s Setting key %d to all zero.\0A\00", [54 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr.32 = internal global ptr @libipw_wx_set_encode._entry.30, section ".printk_index", align 4
@libipw_wx_set_encode._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.10, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libipw: %s Setting key %d to default Tx key.\0A\00", [48 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr.35 = internal global ptr @libipw_wx_set_encode._entry.33, section ".printk_index", align 4
@libipw_wx_set_encode._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.10, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017libipw: %s Auth: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@libipw_wx_set_encode._entry_ptr.38 = internal global ptr @libipw_wx_set_encode._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OPEN\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SHARED KEY\00", [21 x i8] zeroinitializer }, align 32
@libipw_wx_get_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017libipw: %s GET_ENCODE\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"libipw_wx_get_encode\00", [43 x i8] zeroinitializer }, align 32
@libipw_wx_get_encode._entry_ptr = internal global ptr @libipw_wx_get_encode._entry, section ".printk_index", align 4
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib80211_crypt_tkip\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCMP\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib80211_crypt_ccmp\00", [44 x i8] zeroinitializer }, align 32
@libipw_wx_set_encodeext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017libipw: %s %s: unknown crypto alg %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"libipw_wx_set_encodeext\00", [40 x i8] zeroinitializer }, align 32
@libipw_wx_set_encodeext._entry_ptr = internal global ptr @libipw_wx_set_encodeext._entry, section ".printk_index", align 4
@libipw_wx_set_encodeext._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@libipw_wx_set_encodeext._entry_ptr.50 = internal global ptr @libipw_wx_set_encodeext._entry.49, section ".printk_index", align 4
@libipw_wx_set_encodeext._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.48, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017libipw: %s %s: key setting failed\0A\00", [59 x i8] zeroinitializer }, align 32
@libipw_wx_set_encodeext._entry_ptr.53 = internal global ptr @libipw_wx_set_encodeext._entry.51, section ".printk_index", align 4
@__kstrtab_libipw_wx_set_encodeext = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_wx_set_encodeext = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_wx_set_encodeext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_wx_set_encodeext to i32), ptr @__kstrtab_libipw_wx_set_encodeext, ptr @__kstrtabns_libipw_wx_set_encodeext }, section "___ksymtab+libipw_wx_set_encodeext", align 4
@__kstrtab_libipw_wx_get_encodeext = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_wx_get_encodeext = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_wx_get_encodeext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_wx_get_encodeext to i32), ptr @__kstrtab_libipw_wx_get_encodeext, ptr @__kstrtabns_libipw_wx_get_encodeext }, section "___ksymtab+libipw_wx_get_encodeext", align 4
@__kstrtab_libipw_wx_get_scan = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_wx_get_scan = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_wx_get_scan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_wx_get_scan to i32), ptr @__kstrtab_libipw_wx_get_scan, ptr @__kstrtabns_libipw_wx_get_scan }, section "___ksymtab+libipw_wx_get_scan", align 4
@__kstrtab_libipw_wx_set_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_wx_set_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_wx_set_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_wx_set_encode to i32), ptr @__kstrtab_libipw_wx_set_encode, ptr @__kstrtabns_libipw_wx_set_encode }, section "___ksymtab+libipw_wx_set_encode", align 4
@__kstrtab_libipw_wx_get_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_wx_get_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_wx_get_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_wx_get_encode to i32), ptr @__kstrtab_libipw_wx_get_encode, ptr @__kstrtabns_libipw_wx_get_encode }, section "___ksymtab+libipw_wx_get_encode", align 4
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IEEE 802.11%s\00", [18 x i8] zeroinitializer }, align 32
@libipw_modes = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" Last beacon: %ums ago\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" Channel flags: \00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INVALID \00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DFS \00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ab\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"g\00", [30 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ag\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bg\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"abg\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.libipw_wx_set_encodeext = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.43, ptr @.str.45], [20 x i8] zeroinitializer }, align 32
@switch.table.libipw_wx_set_encodeext.67 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.23, ptr @.str.44, ptr @.str.46], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 262, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 278, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 291, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 309, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 322, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 329, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 333, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 361, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 377, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 388, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 402, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 421, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 432, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 444, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 470, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 573, i32 9 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 574, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 577, i32 9 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 578, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 581, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 593, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 623, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 74, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant [13 x i8] c"libipw_modes\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 30, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 217, i32 9 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 226, i32 51 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 231, i32 52 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 237, i32 52 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 7 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 23 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 28 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private constant [50 x i8] c"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 40 }
@___asan_gen_.248 = private unnamed_addr constant [37 x i8] c"switch.table.libipw_wx_set_encodeext\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [40 x i8] c"switch.table.libipw_wx_set_encodeext.67\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @__ksymtab_libipw_wx_get_encode, ptr @__ksymtab_libipw_wx_get_encodeext, ptr @__ksymtab_libipw_wx_get_scan, ptr @__ksymtab_libipw_wx_set_encode, ptr @__ksymtab_libipw_wx_set_encodeext, ptr @libipw_wx_get_encode._entry, ptr @libipw_wx_get_encode._entry_ptr, ptr @libipw_wx_get_scan._entry, ptr @libipw_wx_get_scan._entry.3, ptr @libipw_wx_get_scan._entry.6, ptr @libipw_wx_get_scan._entry_ptr, ptr @libipw_wx_get_scan._entry_ptr.5, ptr @libipw_wx_get_scan._entry_ptr.8, ptr @libipw_wx_set_encode._entry, ptr @libipw_wx_set_encode._entry.11, ptr @libipw_wx_set_encode._entry.16, ptr @libipw_wx_set_encode._entry.19, ptr @libipw_wx_set_encode._entry.24, ptr @libipw_wx_set_encode._entry.27, ptr @libipw_wx_set_encode._entry.30, ptr @libipw_wx_set_encode._entry.33, ptr @libipw_wx_set_encode._entry.36, ptr @libipw_wx_set_encode._entry_ptr, ptr @libipw_wx_set_encode._entry_ptr.13, ptr @libipw_wx_set_encode._entry_ptr.18, ptr @libipw_wx_set_encode._entry_ptr.21, ptr @libipw_wx_set_encode._entry_ptr.26, ptr @libipw_wx_set_encode._entry_ptr.29, ptr @libipw_wx_set_encode._entry_ptr.32, ptr @libipw_wx_set_encode._entry_ptr.35, ptr @libipw_wx_set_encode._entry_ptr.38, ptr @libipw_wx_set_encodeext._entry, ptr @libipw_wx_set_encodeext._entry.49, ptr @libipw_wx_set_encodeext._entry.51, ptr @libipw_wx_set_encodeext._entry_ptr, ptr @libipw_wx_set_encodeext._entry_ptr.50, ptr @libipw_wx_set_encodeext._entry_ptr.53, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.52, ptr @.str.54, ptr @libipw_modes, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @switch.table.libipw_wx_set_encodeext, ptr @switch.table.libipw_wx_set_encodeext.67], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_get_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_get_scan._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_get_scan._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encode._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_get_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encodeext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encodeext._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wx_set_encodeext._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_modes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.libipw_wx_set_encodeext to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.libipw_wx_set_encodeext.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @libipw_wx_get_scan(ptr noundef %ieee, ptr noundef %info, ptr nocapture noundef %wrqu, ptr noundef %extra) #0 align 64 {
entry:
  %custom.i = alloca [64 x i8], align 1
  %iwe.i = alloca %struct.iw_event, align 4
  %buf.i = alloca [64 x i8], align 1
  %buf252.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %extra, i32 %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %2 = load i32, ptr @libipw_debug_level, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %lock = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 14
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %network_list = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 8
  %3 = ptrtoint ptr %network_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn94 = load ptr, ptr %network_list, align 4
  %cmp17.not96 = icmp eq ptr %.pn94, %network_list
  br i1 %cmp17.not96, label %do.body5.for.end_crit_edge, label %for.body.lr.ph

do.body5.for.end_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body5
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %scan_age = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 11
  %4 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2, i32 0, i32 2
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %5, i32 0, i32 1
  %disabled.i = getelementptr inbounds %struct.iw_param, ptr %5, i32 0, i32 2
  %updated.i = getelementptr inbounds %struct.iw_quality, ptr %5, i32 0, i32 3
  %perfect_rssi.i = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 42
  %worst_rssi.i = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 43
  %8 = getelementptr inbounds %struct.iw_quality, ptr %5, i32 0, i32 1
  %sub.ptr.lhs.cast224.i = ptrtoint ptr %custom.i to i32
  %sub.ptr.sub322.neg.i = add i32 %sub.ptr.lhs.cast224.i, 64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn99 = phi ptr [ %.pn94, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %ev.098 = phi ptr [ %extra, %for.body.lr.ph ], [ %ev.1, %for.inc.for.body_crit_edge ]
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %network.0100 = getelementptr i8, ptr %.pn99, i32 -332
  %inc = add i32 %i.097, 1
  %sub.ptr.rhs.cast = ptrtoint ptr %ev.098 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub.ptr.sub)
  %cmp19 = icmp slt i32 %sub.ptr.sub, 128
  br i1 %cmp19, label %for.body.for.end_crit_edge, label %if.end22

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end22:                                         ; preds = %for.body
  %9 = ptrtoint ptr %scan_age to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scan_age, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23 = icmp eq i32 %10, 0
  br i1 %cmp23, label %if.end22.if.then28_crit_edge, label %lor.lhs.false

if.end22.if.then28_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr i8, ptr %.pn99, i32 -180
  %12 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_scanned, align 8
  %14 = add i32 %10, %13
  %sub = sub i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26 = icmp slt i32 %sub, 0
  br i1 %cmp26, label %lor.lhs.false.if.then28_crit_edge, label %do.body30

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.end22.if.then28_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %custom.i) #9
  %15 = call ptr @memset(ptr %custom.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iwe.i) #9
  %16 = call ptr @memset(ptr %iwe.i, i32 255, i32 20)
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -29931, ptr %4, align 2
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %5, align 4
  %19 = call ptr @memcpy(ptr %sa_data.i, ptr %network.0100, i32 6)
  %call.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %ev.098, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 20) #9
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -29925, ptr %4, align 2
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %7, align 2
  %ssid_len.i = getelementptr i8, ptr %.pn99, i32 -292
  %22 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ssid_len.i, align 8
  %24 = call i8 @llvm.umin.i8(i8 %23, i8 32) #9
  %cond.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %cond.i, ptr %6, align 4
  %ssid.i = getelementptr i8, ptr %.pn99, i32 -325
  %call12.i = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef %ssid.i) #9
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -29951, ptr %4, align 2
  %mode.i = getelementptr i8, ptr %.pn99, i32 -176
  %27 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mode.i, align 4
  %idxprom.i = zext i8 %28 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @libipw_modes, i32 0, i32 %idxprom.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call16.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.54, ptr noundef %30) #9
  %call17.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call12.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 20) #9
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -29945, ptr %4, align 2
  %capability.i = getelementptr i8, ptr %.pn99, i32 -212
  %32 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %capability.i, align 8
  %conv19.i = zext i16 %33 to i32
  %and.i = and i32 %conv19.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then28.if.end28.i_crit_edge, label %if.then.i

if.then28.if.end28.i_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %and22.i = and i32 %conv19.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %..i = select i1 %tobool23.not.i, i32 1, i32 3
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %..i, ptr %5, align 4
  %call27.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call17.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 8) #9
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i, %if.then28.if.end28.i_crit_edge
  %start.addr.0.i = phi ptr [ %call27.i, %if.then.i ], [ %call17.i, %if.then28.if.end28.i_crit_edge ]
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -29947, ptr %4, align 2
  %channel.i = getelementptr i8, ptr %.pn99, i32 -326
  %36 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %channel.i, align 2
  %call30.i = call i32 @libipw_channel_to_freq(ptr noundef %ieee, i8 noundef zeroext %37) #9
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call30.i, ptr %5, align 4
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 6, ptr %6, align 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %7, align 2
  %call35.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %start.addr.0.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 12) #9
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -29909, ptr %4, align 2
  %42 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %capability.i, align 8
  %44 = and i16 %43, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool40.not.i = icmp eq i16 %44, 0
  %.466.i = select i1 %tobool40.not.i, i16 -32768, i16 2048
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %.466.i, ptr %7, align 2
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %6, align 4
  %call52.i = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call35.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef %ssid.i) #9
  %add.ptr.i = getelementptr i8, ptr %call52.i, i32 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -29919, ptr %4, align 2
  %48 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %disabled.i, align 1
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %6, align 4
  %rates_len.i = getelementptr i8, ptr %.pn99, i32 -198
  %50 = ptrtoint ptr %rates_len.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rates_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp58473.not.i = icmp eq i8 %51, 0
  br i1 %cmp58473.not.i, label %if.end28.i.for.cond89.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end28.i.for.cond89.preheader.i_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond89.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end28.i
  %rates_ex_len.i = getelementptr i8, ptr %.pn99, i32 -181
  br label %for.body.i

for.cond89.preheader.i:                           ; preds = %if.end84.i.for.cond89.preheader.i_crit_edge, %if.end28.i.for.cond89.preheader.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end28.i.for.cond89.preheader.i_crit_edge ], [ %j.1.i, %if.end84.i.for.cond89.preheader.i_crit_edge ]
  %current_val.0.lcssa.i = phi ptr [ %add.ptr.i, %if.end28.i.for.cond89.preheader.i_crit_edge ], [ %call88.i, %if.end84.i.for.cond89.preheader.i_crit_edge ]
  %rates_ex_len90.i = getelementptr i8, ptr %.pn99, i32 -181
  %52 = ptrtoint ptr %rates_ex_len90.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rates_ex_len90.i, align 1
  %conv91480.i = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %conv91480.i)
  %cmp92481.i = icmp slt i32 %j.0.lcssa.i, %conv91480.i
  br i1 %cmp92481.i, label %for.cond89.preheader.i.for.body94.i_crit_edge, label %for.cond89.preheader.i.for.end107.i_crit_edge

for.cond89.preheader.i.for.end107.i_crit_edge:    ; preds = %for.cond89.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end107.i

for.cond89.preheader.i.for.body94.i_crit_edge:    ; preds = %for.cond89.preheader.i
  br label %for.body94.i

for.body.i:                                       ; preds = %if.end84.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %current_val.0478.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %call88.i, %if.end84.i.for.body.i_crit_edge ]
  %j.0476.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %j.1.i, %if.end84.i.for.body.i_crit_edge ]
  %i.0474.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %if.end84.i.for.body.i_crit_edge ]
  %54 = ptrtoint ptr %rates_ex_len.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rates_ex_len.i, align 1
  %conv60.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0476.i, i32 %conv60.i)
  %cmp61.i = icmp slt i32 %j.0476.i, %conv60.i
  br i1 %cmp61.i, label %land.lhs.true.i, label %for.body.i.if.else77.i_crit_edge

for.body.i.if.else77.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else77.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx63.i = getelementptr %struct.libipw_network, ptr %network.0100, i32 0, i32 9, i32 %j.0476.i
  %56 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx63.i, align 1
  %58 = and i8 %57, 127
  %arrayidx66.i = getelementptr %struct.libipw_network, ptr %network.0100, i32 0, i32 7, i32 %i.0474.i
  %59 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx66.i, align 1
  %61 = and i8 %60, 127
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %61)
  %cmp69.i = icmp ult i8 %58, %61
  br i1 %cmp69.i, label %if.then71.i, label %land.lhs.true.i.if.else77.i_crit_edge

land.lhs.true.i.if.else77.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else77.i

if.then71.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nsw i32 %j.0476.i, 1
  br label %if.end84.i

if.else77.i:                                      ; preds = %land.lhs.true.i.if.else77.i_crit_edge, %for.body.i.if.else77.i_crit_edge
  %inc79.i = add nsw i32 %i.0474.i, 1
  %arrayidx80.i = getelementptr %struct.libipw_network, ptr %network.0100, i32 0, i32 7, i32 %i.0474.i
  %62 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx80.i, align 1
  %64 = and i8 %63, 127
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.else77.i, %if.then71.i
  %i.1.i = phi i32 [ %i.0474.i, %if.then71.i ], [ %inc79.i, %if.else77.i ]
  %j.1.i = phi i32 [ %inc.i, %if.then71.i ], [ %j.0476.i, %if.else77.i ]
  %rate.0.i = phi i8 [ %58, %if.then71.i ], [ %64, %if.else77.i ]
  %and86.i = zext i8 %rate.0.i to i32
  %mul.i = mul nuw nsw i32 %and86.i, 500000
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul.i, ptr %5, align 4
  %call88.i = call ptr @iwe_stream_add_value(ptr noundef %info, ptr noundef %call52.i, ptr noundef %current_val.0478.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 12) #9
  %66 = ptrtoint ptr %rates_len.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rates_len.i, align 2
  %conv57.i = zext i8 %67 to i32
  %cmp58.i = icmp slt i32 %i.1.i, %conv57.i
  br i1 %cmp58.i, label %if.end84.i.for.body.i_crit_edge, label %if.end84.i.for.cond89.preheader.i_crit_edge

if.end84.i.for.cond89.preheader.i_crit_edge:      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond89.preheader.i

if.end84.i.for.body.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body94.i:                                     ; preds = %for.body94.i.for.body94.i_crit_edge, %for.cond89.preheader.i.for.body94.i_crit_edge
  %current_val.1483.i = phi ptr [ %call105.i, %for.body94.i.for.body94.i_crit_edge ], [ %current_val.0.lcssa.i, %for.cond89.preheader.i.for.body94.i_crit_edge ]
  %j.2482.i = phi i32 [ %inc106.i, %for.body94.i.for.body94.i_crit_edge ], [ %j.0.lcssa.i, %for.cond89.preheader.i.for.body94.i_crit_edge ]
  %arrayidx96.i = getelementptr %struct.libipw_network, ptr %network.0100, i32 0, i32 9, i32 %j.2482.i
  %68 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx96.i, align 1
  %70 = and i8 %69, 127
  %and101.i = zext i8 %70 to i32
  %mul102.i = mul nuw nsw i32 %and101.i, 500000
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul102.i, ptr %5, align 4
  %call105.i = call ptr @iwe_stream_add_value(ptr noundef %info, ptr noundef %call52.i, ptr noundef %current_val.1483.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 12) #9
  %inc106.i = add nsw i32 %j.2482.i, 1
  %72 = ptrtoint ptr %rates_ex_len90.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rates_ex_len90.i, align 1
  %conv91.i = zext i8 %73 to i32
  %cmp92.i = icmp slt i32 %inc106.i, %conv91.i
  br i1 %cmp92.i, label %for.body94.i.for.body94.i_crit_edge, label %for.body94.i.for.end107.i_crit_edge

for.body94.i.for.end107.i_crit_edge:              ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end107.i

for.body94.i.for.body94.i_crit_edge:              ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body94.i

for.end107.i:                                     ; preds = %for.body94.i.for.end107.i_crit_edge, %for.cond89.preheader.i.for.end107.i_crit_edge
  %current_val.1.lcssa.i = phi ptr [ %current_val.0.lcssa.i, %for.cond89.preheader.i.for.end107.i_crit_edge ], [ %call105.i, %for.body94.i.for.end107.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %current_val.1.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call52.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp109.i = icmp sgt i32 %sub.ptr.sub.i, 4
  %spec.select.i = select i1 %cmp109.i, ptr %current_val.1.lcssa.i, ptr %call52.i
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -29695, ptr %4, align 2
  %75 = ptrtoint ptr %updated.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 7, ptr %updated.i, align 1
  %mask.i = getelementptr i8, ptr %.pn99, i32 -232
  %76 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mask.i, align 4
  %78 = and i8 %77, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool117.not.i = icmp eq i8 %78, 0
  br i1 %tobool117.not.i, label %if.then118.i, label %if.else124.i

if.then118.i:                                     ; preds = %for.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %updated.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 55, ptr %updated.i, align 1
  br label %if.end184.sink.split.i

if.else124.i:                                     ; preds = %for.end107.i
  %80 = ptrtoint ptr %perfect_rssi.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %perfect_rssi.i, align 4
  %82 = ptrtoint ptr %worst_rssi.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %worst_rssi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp125.i = icmp eq i32 %81, %83
  br i1 %cmp125.i, label %if.else124.i.if.end184.sink.split.i_crit_edge, label %if.end164.i

if.else124.i.if.end184.sink.split.i_crit_edge:    ; preds = %if.else124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.sink.split.i

if.end164.i:                                      ; preds = %if.else124.i
  %sub.i = sub i32 %81, %83
  %mul133.i = mul i32 %sub.i, %sub.i
  %mul137.i = mul i32 %mul133.i, 100
  %rssi.i = getelementptr i8, ptr %.pn99, i32 -240
  %84 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rssi.i, align 4
  %conv140.i = sext i8 %85 to i32
  %sub141.i = sub i32 %81, %conv140.i
  %mul145.neg.i = mul i32 %sub.i, -15
  %mul151.neg.i = mul i32 %sub141.i, -62
  %add.neg.i = add i32 %mul151.neg.i, %mul145.neg.i
  %mul152.neg.i = mul i32 %add.neg.i, %sub141.i
  %sub153.i = add i32 %mul152.neg.i, %mul137.i
  %div.i = sdiv i32 %sub153.i, %mul133.i
  %conv161.i = trunc i32 %div.i to i8
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv161.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %conv161.i)
  %cmp168.i = icmp ugt i8 %conv161.i, 100
  br i1 %cmp168.i, label %if.end164.i.if.end184.sink.split.i_crit_edge, label %if.else173.i

if.end164.i.if.end184.sink.split.i_crit_edge:     ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.sink.split.i

if.else173.i:                                     ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv161.i)
  %cmp177.i = icmp eq i8 %conv161.i, 0
  br i1 %cmp177.i, label %if.else173.i.if.end184.sink.split.i_crit_edge, label %if.else173.i.if.end184.i_crit_edge

if.else173.i.if.end184.i_crit_edge:               ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.i

if.else173.i.if.end184.sink.split.i_crit_edge:    ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.sink.split.i

if.end184.sink.split.i:                           ; preds = %if.else173.i.if.end184.sink.split.i_crit_edge, %if.end164.i.if.end184.sink.split.i_crit_edge, %if.else124.i.if.end184.sink.split.i_crit_edge, %if.then118.i
  %.sink486.i = phi i8 [ 0, %if.then118.i ], [ 100, %if.else124.i.if.end184.sink.split.i_crit_edge ], [ 100, %if.end164.i.if.end184.sink.split.i_crit_edge ], [ 0, %if.else173.i.if.end184.sink.split.i_crit_edge ]
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.sink486.i, ptr %5, align 4
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.end184.sink.split.i, %if.else173.i.if.end184.i_crit_edge
  %88 = and i8 %77, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool189.not.i = icmp eq i8 %88, 0
  br i1 %tobool189.not.i, label %if.then190.i, label %if.else197.i

if.then190.i:                                     ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %updated.i, align 1
  %91 = or i8 %90, 64
  store i8 %91, ptr %updated.i, align 1
  br label %if.end202.i

if.else197.i:                                     ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #11
  %noise199.i = getelementptr i8, ptr %.pn99, i32 -238
  %92 = ptrtoint ptr %noise199.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %noise199.i, align 2
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.else197.i, %if.then190.i
  %.sink.i = phi i8 [ 0, %if.then190.i ], [ %93, %if.else197.i ]
  %94 = ptrtoint ptr %sa_data.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %.sink.i, ptr %sa_data.i, align 2
  %95 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool207.not.i = icmp eq i8 %95, 0
  br i1 %tobool207.not.i, label %if.then208.i, label %if.else215.i

if.then208.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %updated.i, align 1
  %98 = or i8 %97, 32
  store i8 %98, ptr %updated.i, align 1
  br label %if.end219.i

if.else215.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #11
  %signal.i = getelementptr i8, ptr %.pn99, i32 -239
  %99 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %signal.i, align 1
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.else215.i, %if.then208.i
  %.sink485.i = phi i8 [ 0, %if.then208.i ], [ %100, %if.else215.i ]
  %101 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %.sink485.i, ptr %8, align 1
  %call220.i = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %spec.select.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 8) #9
  %wpa_ie_len.i = getelementptr i8, ptr %.pn99, i32 -84
  %102 = call ptr @memset(ptr %iwe.i, i32 0, i32 20)
  %103 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %wpa_ie_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool237.not.i = icmp eq i32 %104, 0
  br i1 %tobool237.not.i, label %if.end219.i.if.end249.i_crit_edge, label %if.then238.i

if.end219.i.if.end249.i_crit_edge:                ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end249.i

if.then238.i:                                     ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #9
  %wpa_ie.i = getelementptr i8, ptr %.pn99, i32 -149
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %104)
  %105 = icmp ugt i32 %104, 63
  %106 = sub i32 64, %104
  %107 = select i1 %105, i32 0, i32 %106
  %108 = getelementptr i8, ptr %buf.i, i32 %104
  %109 = call ptr @memset(ptr %108, i32 255, i32 %107)
  %110 = call ptr @memcpy(ptr %buf.i, ptr %wpa_ie.i, i32 %104)
  %111 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -29691, ptr %4, align 2
  %conv244.i = trunc i32 %104 to i16
  %112 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv244.i, ptr %6, align 4
  %call248.i = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call220.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #9
  br label %if.end249.i

if.end249.i:                                      ; preds = %if.then238.i, %if.end219.i.if.end249.i_crit_edge
  %start.addr.3.i = phi ptr [ %call248.i, %if.then238.i ], [ %call220.i, %if.end219.i.if.end249.i_crit_edge ]
  %113 = call ptr @memset(ptr %iwe.i, i32 0, i32 20)
  %rsn_ie_len.i = getelementptr i8, ptr %.pn99, i32 -16
  %114 = ptrtoint ptr %rsn_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rsn_ie_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool250.not.i = icmp eq i32 %115, 0
  br i1 %tobool250.not.i, label %if.end249.i.if.end263.i_crit_edge, label %if.then251.i

if.end249.i.if.end263.i_crit_edge:                ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end263.i

if.then251.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf252.i) #9
  %rsn_ie.i = getelementptr i8, ptr %.pn99, i32 -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %115)
  %116 = icmp ugt i32 %115, 63
  %117 = sub i32 64, %115
  %118 = select i1 %116, i32 0, i32 %117
  %119 = getelementptr i8, ptr %buf252.i, i32 %115
  %120 = call ptr @memset(ptr %119, i32 255, i32 %118)
  %121 = call ptr @memcpy(ptr %buf252.i, ptr %rsn_ie.i, i32 %115)
  %122 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 -29691, ptr %4, align 2
  %conv258.i = trunc i32 %115 to i16
  %123 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv258.i, ptr %6, align 4
  %call262.i = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %start.addr.3.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef nonnull %buf252.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf252.i) #9
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.then251.i, %if.end249.i.if.end263.i_crit_edge
  %start.addr.4.i = phi ptr [ %call262.i, %if.then251.i ], [ %start.addr.3.i, %if.end249.i.if.end263.i_crit_edge ]
  %124 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -29694, ptr %4, align 2
  %last_scanned.i = getelementptr i8, ptr %.pn99, i32 -180
  %125 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %last_scanned.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %126)
  %cmp.not.i.i = icmp ult i32 %127, %126
  %add2.sink.p.v.i.i = select i1 %cmp.not.i.i, i32 1073741823, i32 0
  %add2.sink.p.i.i = sub i32 %127, %126
  %add2.sink.i.i = add i32 %add2.sink.p.i.i, %add2.sink.p.v.i.i
  %call3.i.i = call i32 @jiffies_to_msecs(i32 noundef %add2.sink.i.i) #9
  %call272.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %custom.i, i32 noundef 64, ptr noundef nonnull @.str.55, i32 noundef %call3.i.i) #9
  %conv278.i = trunc i32 %call272.i to i16
  %128 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv278.i, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv278.i)
  %tobool283.not.i = icmp eq i16 %conv278.i, 0
  br i1 %tobool283.not.i, label %if.end263.i.if.end287.i_crit_edge, label %if.then284.i

if.end263.i.if.end287.i_crit_edge:                ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end287.i

if.then284.i:                                     ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #11
  %call286.i = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %start.addr.4.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef nonnull %custom.i) #9
  br label %if.end287.i

if.end287.i:                                      ; preds = %if.then284.i, %if.end263.i.if.end287.i_crit_edge
  %start.addr.5.i = phi ptr [ %call286.i, %if.then284.i ], [ %start.addr.4.i, %if.end263.i.if.end287.i_crit_edge ]
  %129 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -1, ptr %4, align 2
  %call295.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %custom.i, i32 noundef 64, ptr noundef nonnull @.str.56) #9
  %add.ptr296.i = getelementptr i8, ptr %custom.i, i32 %call295.i
  %130 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %channel.i, align 2
  %call298.i = call zeroext i8 @libipw_get_channel_flags(ptr noundef %ieee, i8 noundef zeroext %131) #9
  %132 = and i8 %call298.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool301.not.i = icmp eq i8 %132, 0
  br i1 %tobool301.not.i, label %if.end287.i.if.end311.i_crit_edge, label %if.then302.i

if.end287.i.if.end311.i_crit_edge:                ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end311.i

if.then302.i:                                     ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 -29694, ptr %4, align 2
  %sub308.i = sub i32 64, %call295.i
  %call309.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr296.i, i32 noundef %sub308.i, ptr noundef nonnull @.str.57) #9
  %add.ptr310.i = getelementptr i8, ptr %add.ptr296.i, i32 %call309.i
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.then302.i, %if.end287.i.if.end311.i_crit_edge
  %p.0.i = phi ptr [ %add.ptr310.i, %if.then302.i ], [ %add.ptr296.i, %if.end287.i.if.end311.i_crit_edge ]
  %134 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %channel.i, align 2
  %call313.i = call zeroext i8 @libipw_get_channel_flags(ptr noundef %ieee, i8 noundef zeroext %135) #9
  %136 = and i8 %call313.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool316.not.i = icmp eq i8 %136, 0
  br i1 %tobool316.not.i, label %if.end311.i.if.end326.i_crit_edge, label %if.then317.i

if.end311.i.if.end326.i_crit_edge:                ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end326.i

if.then317.i:                                     ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -29694, ptr %4, align 2
  %sub.ptr.lhs.cast320.i = ptrtoint ptr %p.0.i to i32
  %sub323.i = sub i32 %sub.ptr.sub322.neg.i, %sub.ptr.lhs.cast320.i
  %call324.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0.i, i32 noundef %sub323.i, ptr noundef nonnull @.str.58) #9
  %add.ptr325.i = getelementptr i8, ptr %p.0.i, i32 %call324.i
  br label %if.end326.i

if.end326.i:                                      ; preds = %if.then317.i, %if.end311.i.if.end326.i_crit_edge
  %p.1.i = phi ptr [ %add.ptr325.i, %if.then317.i ], [ %p.0.i, %if.end311.i.if.end326.i_crit_edge ]
  %138 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -29694, i16 %139)
  %cmp329.i = icmp eq i16 %139, -29694
  br i1 %cmp329.i, label %if.then331.i, label %if.end326.i.libipw_translate_scan.exit_crit_edge

if.end326.i.libipw_translate_scan.exit_crit_edge: ; preds = %if.end326.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %libipw_translate_scan.exit

if.then331.i:                                     ; preds = %if.end326.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast333.i = ptrtoint ptr %p.1.i to i32
  %sub.ptr.sub335.i = sub i32 %sub.ptr.lhs.cast333.i, %sub.ptr.lhs.cast224.i
  %conv336.i = trunc i32 %sub.ptr.sub335.i to i16
  %140 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv336.i, ptr %6, align 4
  %call340.i = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %start.addr.5.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef nonnull %custom.i) #9
  br label %libipw_translate_scan.exit

libipw_translate_scan.exit:                       ; preds = %if.then331.i, %if.end326.i.libipw_translate_scan.exit_crit_edge
  %start.addr.6.i = phi ptr [ %call340.i, %if.then331.i ], [ %start.addr.5.i, %if.end326.i.libipw_translate_scan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iwe.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %custom.i) #9
  br label %for.inc

do.body30:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %141 = load i32, ptr @libipw_debug_level, align 4
  %and31 = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.for.inc_crit_edge, label %do.end36

do.body30.for.inc_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %ssid_len = getelementptr i8, ptr %.pn99, i32 -292
  %142 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ssid_len, align 8
  %conv38 = zext i8 %143 to i32
  %ssid = getelementptr i8, ptr %.pn99, i32 -325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %13)
  %cmp.not.i = icmp ult i32 %144, %13
  %add2.sink.p.v.i = select i1 %cmp.not.i, i32 1073741823, i32 0
  %add2.sink.p.i = sub i32 %144, %13
  %add2.sink.i = add i32 %add2.sink.p.i, %add2.sink.p.v.i
  %call3.i = call i32 @jiffies_to_msecs(i32 noundef %add2.sink.i) #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv38, ptr noundef %ssid, ptr noundef %network.0100, i32 noundef %call3.i) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end36, %do.body30.for.inc_crit_edge, %libipw_translate_scan.exit
  %ev.1 = phi ptr [ %start.addr.6.i, %libipw_translate_scan.exit ], [ %ev.098, %do.end36 ], [ %ev.098, %do.body30.for.inc_crit_edge ]
  %145 = ptrtoint ptr %.pn99 to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pn = load ptr, ptr %.pn99, align 4
  %cmp17.not = icmp eq ptr %.pn, %network_list
  br i1 %cmp17.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %do.body5.for.end_crit_edge
  %ev.0.lcssa = phi ptr [ %extra, %do.body5.for.end_crit_edge ], [ %ev.098, %for.body.for.end_crit_edge ], [ %ev.1, %for.inc.for.end_crit_edge ]
  %i.1 = phi i32 [ 0, %do.body5.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %err.0 = phi i32 [ 0, %do.body5.for.end_crit_edge ], [ -7, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  %sub.ptr.lhs.cast53 = ptrtoint ptr %ev.0.lcssa to i32
  %sub.ptr.rhs.cast54 = ptrtoint ptr %extra to i32
  %sub.ptr.sub55 = sub i32 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54
  %conv56 = trunc i32 %sub.ptr.sub55 to i16
  %146 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv56, ptr %length, align 4
  %flags58 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %147 = ptrtoint ptr %flags58 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %flags58, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %148 = load i32, ptr @libipw_debug_level, align 4
  %and60 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %for.end.do.end70_crit_edge, label %do.end65

for.end.do.end70_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

do.end65:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %i.1) #12
  br label %do.end70

do.end70:                                         ; preds = %do.end65, %for.end.do.end70_crit_edge
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @libipw_wx_set_encode(ptr noundef %ieee, ptr nocapture readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %keybuf) #0 align 64 {
entry:
  %sec = alloca %struct.libipw_security, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee, align 4
  call void @llvm.lifetime.start.p0(i64 141, ptr nonnull %sec) #9
  %2 = call ptr @memset(ptr %sec, i32 0, i32 141)
  %host_encrypt = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 18
  %3 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host_decrypt = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 20
  %5 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2 = icmp ne i32 %6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %7 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %8 = load i32, ptr @libipw_debug_level, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.end.do.end6_crit_edge, label %do.end

lor.end.do.end6_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %lor.end.do.end6_crit_edge
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 2
  %11 = and i16 %10, 255
  %and7 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp = icmp ugt i16 %11, 4
  br i1 %cmp, label %if.then9.cleanup338_crit_edge, label %if.end12

if.then9.cleanup338_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup338

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %and7, -1
  br label %do.body14

if.else:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %tx_keyidx = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 3
  %12 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_keyidx, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.else, %if.end12
  %key.0 = phi i32 [ %dec, %if.end12 ], [ %13, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %14 = load i32, ptr @libipw_debug_level, align 4
  %and15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.end26_crit_edge, label %do.end20

do.body14.do.end26_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %tobool8.not, ptr @.str.15, ptr @.str.14
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %key.0, ptr noundef nonnull %cond) #12
  br label %do.end26

do.end26:                                         ; preds = %do.end20, %do.body14.do.end26_crit_edge
  %crypt_info27 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30
  %arrayidx = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 %key.0
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool32.not = icmp sgt i16 %16, -1
  br i1 %tobool32.not, label %if.end90, label %if.then33

if.then33:                                        ; preds = %do.end26
  br i1 %tobool8.not, label %if.then33.do.body51_crit_edge, label %land.lhs.true

if.then33.do.body51_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

land.lhs.true:                                    ; preds = %if.then33
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool35.not = icmp eq ptr %18, null
  br i1 %tobool35.not, label %land.lhs.true.do.body51_crit_edge, label %do.body37

land.lhs.true.do.body51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

do.body37:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %19 = load i32, ptr @libipw_debug_level, align 4
  %and38 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.if.end63.thread_crit_edge, label %do.end43

do.body37.if.end63.thread_crit_edge:              ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.thread

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10, i32 noundef %key.0) #12
  br label %if.end63.thread

do.body51:                                        ; preds = %land.lhs.true.do.body51_crit_edge, %if.then33.do.body51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %20 = load i32, ptr @libipw_debug_level, align 4
  %and52 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.if.end63_crit_edge, label %do.end57

do.body51.if.end63_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.10) #12
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %do.body51.if.end63_crit_edge
  %arrayidx68 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 0
  %21 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx68, align 4
  %cmp69.not = icmp eq ptr %22, null
  br i1 %cmp69.not, label %for.inc, label %if.then71

if.end63.thread:                                  ; preds = %do.end43, %do.body37.if.end63.thread_crit_edge
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info27, ptr noundef %arrayidx) #9
  %arrayidx68448 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx68448 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx68448, align 4
  %cmp69.not449 = icmp eq ptr %24, null
  br i1 %cmp69.not449, label %for.inc.thread, label %if.end63.thread.done_crit_edge

if.end63.thread.done_crit_edge:                   ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then71:                                        ; preds = %if.end63
  br i1 %tobool8.not, label %for.inc.thread456, label %if.then71.done_crit_edge

if.then71.done_crit_edge:                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.inc:                                          ; preds = %if.end63
  %arrayidx68.1 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx68.1, align 4
  %cmp69.not.1 = icmp eq ptr %26, null
  br i1 %cmp69.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then71.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.thread456:                                ; preds = %if.then71
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info27, ptr noundef %arrayidx68) #9
  %arrayidx68.1457 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx68.1457 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx68.1457, align 4
  %cmp69.not.1458 = icmp eq ptr %28, null
  br i1 %cmp69.not.1458, label %for.inc.thread456.for.inc.1_crit_edge, label %for.inc.thread456.if.end74.1_crit_edge

for.inc.thread456.if.end74.1_crit_edge:           ; preds = %for.inc.thread456
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.1

for.inc.thread456.for.inc.1_crit_edge:            ; preds = %for.inc.thread456
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.thread:                                   ; preds = %if.end63.thread
  %arrayidx68.1452 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx68.1452 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx68.1452, align 4
  %cmp69.not.1453 = icmp eq ptr %30, null
  br i1 %cmp69.not.1453, label %for.inc.1.thread, label %for.inc.thread.done_crit_edge

for.inc.thread.done_crit_edge:                    ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then71.1:                                      ; preds = %for.inc
  br i1 %tobool8.not, label %if.then71.1.if.end74.1_crit_edge, label %if.then71.1.done_crit_edge

if.then71.1.done_crit_edge:                       ; preds = %if.then71.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then71.1.if.end74.1_crit_edge:                 ; preds = %if.then71.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.1

if.end74.1:                                       ; preds = %if.then71.1.if.end74.1_crit_edge, %for.inc.thread456.if.end74.1_crit_edge
  %arrayidx68.1454461 = phi ptr [ %arrayidx68.1, %if.then71.1.if.end74.1_crit_edge ], [ %arrayidx68.1457, %for.inc.thread456.if.end74.1_crit_edge ]
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info27, ptr noundef %arrayidx68.1454461) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end74.1, %for.inc.thread456.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx68.2 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx68.2, align 4
  %cmp69.not.2 = icmp eq ptr %32, null
  br i1 %cmp69.not.2, label %for.inc.2, label %if.then71.2

for.inc.1.thread:                                 ; preds = %for.inc.thread
  %arrayidx68.2462 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx68.2462 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx68.2462, align 4
  %cmp69.not.2463 = icmp eq ptr %34, null
  br i1 %cmp69.not.2463, label %for.inc.2.thread, label %for.inc.1.thread.done_crit_edge

for.inc.1.thread.done_crit_edge:                  ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then71.2:                                      ; preds = %for.inc.1
  br i1 %tobool8.not, label %for.inc.2.thread470, label %if.then71.2.done_crit_edge

if.then71.2.done_crit_edge:                       ; preds = %if.then71.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx68.3 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 3
  %35 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx68.3, align 4
  %cmp69.not.3 = icmp eq ptr %36, null
  br i1 %cmp69.not.3, label %for.inc.2.if.then82_crit_edge, label %if.then71.3

for.inc.2.if.then82_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

for.inc.2.thread470:                              ; preds = %if.then71.2
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info27, ptr noundef %arrayidx68.2) #9
  %arrayidx68.3471 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 3
  %37 = ptrtoint ptr %arrayidx68.3471 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx68.3471, align 4
  %cmp69.not.3472 = icmp eq ptr %38, null
  br i1 %cmp69.not.3472, label %for.inc.2.thread470.if.then82_crit_edge, label %for.inc.2.thread470.if.end74.3_crit_edge

for.inc.2.thread470.if.end74.3_crit_edge:         ; preds = %for.inc.2.thread470
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.3

for.inc.2.thread470.if.then82_crit_edge:          ; preds = %for.inc.2.thread470
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

for.inc.2.thread:                                 ; preds = %for.inc.1.thread
  %arrayidx68.3466 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 3
  %39 = ptrtoint ptr %arrayidx68.3466 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx68.3466, align 4
  %cmp69.not.3467 = icmp eq ptr %40, null
  br i1 %cmp69.not.3467, label %for.inc.2.thread.if.then82_crit_edge, label %for.inc.2.thread.done_crit_edge

for.inc.2.thread.done_crit_edge:                  ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.inc.2.thread.if.then82_crit_edge:             ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.then71.3:                                      ; preds = %for.inc.2
  br i1 %tobool8.not, label %if.then71.3.if.end74.3_crit_edge, label %if.then71.3.done_crit_edge

if.then71.3.done_crit_edge:                       ; preds = %if.then71.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then71.3.if.end74.3_crit_edge:                 ; preds = %if.then71.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.3

if.end74.3:                                       ; preds = %if.then71.3.if.end74.3_crit_edge, %for.inc.2.thread470.if.end74.3_crit_edge
  %arrayidx68.3468475 = phi ptr [ %arrayidx68.3, %if.then71.3.if.end74.3_crit_edge ], [ %arrayidx68.3471, %for.inc.2.thread470.if.end74.3_crit_edge ]
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info27, ptr noundef %arrayidx68.3468475) #9
  br label %if.then82

if.then82:                                        ; preds = %if.end74.3, %for.inc.2.thread.if.then82_crit_edge, %for.inc.2.thread470.if.then82_crit_edge, %for.inc.2.if.then82_crit_edge
  %41 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %sec, align 1
  %bf.clear84 = and i8 %bf.load, -41
  store i8 %bf.clear84, ptr %sec, align 1
  %level = getelementptr inbounds %struct.libipw_security, ptr %sec, i32 0, i32 5
  %42 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %level, align 1
  %flags86 = getelementptr inbounds %struct.libipw_security, ptr %sec, i32 0, i32 6
  %43 = ptrtoint ptr %flags86 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %flags86, align 1
  %45 = or i16 %44, 896
  store i16 %45, ptr %flags86, align 1
  br label %done

if.end90:                                         ; preds = %do.end26
  %46 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load91 = load i8, ptr %sec, align 1
  %bf.set96 = or i8 %bf.load91, 40
  store i8 %bf.set96, ptr %sec, align 1
  %flags97 = getelementptr inbounds %struct.libipw_security, ptr %sec, i32 0, i32 6
  %47 = ptrtoint ptr %flags97 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %flags97, align 1
  %49 = or i16 %48, 768
  store i16 %49, ptr %flags97, align 1
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %cmp101.not = icmp eq ptr %51, null
  br i1 %cmp101.not, label %if.end90.if.end113_crit_edge, label %land.lhs.true103

if.end90.if.end113_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

land.lhs.true103:                                 ; preds = %if.end90
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %cmp104.not = icmp eq ptr %53, null
  br i1 %cmp104.not, label %land.lhs.true103.if.end113_crit_edge, label %land.lhs.true106

land.lhs.true103.if.end113_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

land.lhs.true106:                                 ; preds = %land.lhs.true103
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %call108 = tail call i32 @strcmp(ptr noundef %55, ptr noundef nonnull dereferenceable(4) @.str.22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109.not = icmp eq i32 %call108, 0
  br i1 %cmp109.not, label %land.lhs.true106.if.end113_crit_edge, label %if.then111

land.lhs.true106.if.end113_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then111:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info27, ptr noundef %arrayidx) #9
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %land.lhs.true106.if.end113_crit_edge, %land.lhs.true103.if.end113_crit_edge, %if.end90.if.end113_crit_edge
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %cmp114 = icmp ne ptr %57, null
  %.not = xor i1 %7, true
  %brmerge = select i1 %cmp114, i1 true, i1 %.not
  br i1 %brmerge, label %if.end113.if.end155_crit_edge, label %if.then118

if.end113.if.end155_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then118:                                       ; preds = %if.end113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 20) #14
  %cmp120 = icmp eq ptr %call7.i.i, null
  br i1 %cmp120, label %if.then118.cleanup338_crit_edge, label %if.end123

if.then118.cleanup338_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup338

if.end123:                                        ; preds = %if.then118
  %call124 = tail call ptr @lib80211_get_crypto_ops(ptr noundef nonnull @.str.22) #9
  %ops125 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %ops125 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call124, ptr %ops125, align 8
  %tobool127.not = icmp eq ptr %call124, null
  br i1 %tobool127.not, label %if.end132, label %if.end123.land.lhs.true135_crit_edge

if.end123.land.lhs.true135_crit_edge:             ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true135

if.end132:                                        ; preds = %if.end123
  %call129 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #9
  %call130 = tail call ptr @lib80211_get_crypto_ops(ptr noundef nonnull @.str.22) #9
  %60 = ptrtoint ptr %ops125 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call130, ptr %ops125, align 8
  %tobool134.not = icmp eq ptr %call130, null
  br i1 %tobool134.not, label %if.end132.if.then147_crit_edge, label %if.end132.land.lhs.true135_crit_edge

if.end132.land.lhs.true135_crit_edge:             ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true135

if.end132.if.then147_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then147

land.lhs.true135:                                 ; preds = %if.end132.land.lhs.true135_crit_edge, %if.end123.land.lhs.true135_crit_edge
  %61 = phi ptr [ %call130, %if.end132.land.lhs.true135_crit_edge ], [ %call124, %if.end123.land.lhs.true135_crit_edge ]
  %owner = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %owner, align 4
  %call137 = tail call zeroext i1 @try_module_get(ptr noundef %63) #9
  br i1 %call137, label %if.then139, label %land.lhs.true135.if.end142_crit_edge

land.lhs.true135.if.end142_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then139:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %ops125 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops125, align 8
  %init = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init, align 4
  %call141 = tail call ptr %67(i32 noundef %key.0) #9
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call141, ptr %priv, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %land.lhs.true135.if.end142_crit_edge
  %69 = ptrtoint ptr %ops125 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr = load ptr, ptr %ops125, align 8
  %tobool144.not = icmp eq ptr %.pr, null
  br i1 %tobool144.not, label %if.end142.if.then147_crit_edge, label %lor.lhs.false

if.end142.if.then147_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then147

lor.lhs.false:                                    ; preds = %if.end142
  %priv145 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %priv145 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv145, align 4
  %tobool146.not = icmp eq ptr %71, null
  br i1 %tobool146.not, label %lor.lhs.false.if.then147_crit_edge, label %cleanup

lor.lhs.false.if.then147_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then147

if.then147:                                       ; preds = %lor.lhs.false.if.then147_crit_edge, %if.end142.if.then147_crit_edge, %if.end132.if.then147_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %1) #12
  br label %cleanup338

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %if.end155

if.end155:                                        ; preds = %cleanup, %if.end113.if.end155_crit_edge
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %73 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp157.not = icmp eq i16 %74, 0
  br i1 %cmp157.not, label %if.else224, label %if.then159

if.then159:                                       ; preds = %if.end155
  %conv156 = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %74)
  %cmp162 = icmp ult i16 %74, 6
  %cond164 = select i1 %cmp162, i32 5, i32 13
  %arrayidx165 = getelementptr %struct.libipw_security, ptr %sec, i32 0, i32 4, i32 %key.0
  %75 = call ptr @memcpy(ptr %arrayidx165, ptr %keybuf, i32 %conv156)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond164, i32 %conv156)
  %cmp171 = icmp ugt i32 %cond164, %conv156
  br i1 %cmp171, label %if.then173, label %if.then159.do.body182_crit_edge

if.then159.do.body182_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body182

if.then173:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %arrayidx165, i32 %conv156
  %sub = sub nsw i32 %cond164, %conv156
  %76 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %do.body182

do.body182:                                       ; preds = %if.then173, %if.then159.do.body182_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %77 = load i32, ptr @libipw_debug_level, align 4
  %and183 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %do.body182.do.end198_crit_edge, label %do.end188

do.body182.do.end198_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end198

do.end188:                                        ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #11
  %call195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.10, i32 noundef %key.0, i32 noundef %cond164, ptr noundef %arrayidx165, i32 noundef %conv156, i32 noundef %cond164) #12
  br label %do.end198

do.end198:                                        ; preds = %do.end188, %do.body182.do.end198_crit_edge
  %conv199 = trunc i32 %cond164 to i8
  %arrayidx200 = getelementptr %struct.libipw_security, ptr %sec, i32 0, i32 3, i32 %key.0
  %78 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv199, ptr %arrayidx200, align 1
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx, align 4
  %tobool201.not = icmp eq ptr %80, null
  br i1 %tobool201.not, label %do.end198.if.end209_crit_edge, label %if.then202

do.end198.if.end209_crit_edge:                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then202:                                       ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #11
  %ops203 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %ops203 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops203, align 4
  %set_key = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %set_key to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_key, align 4
  %priv207 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %80, i32 0, i32 2
  %85 = ptrtoint ptr %priv207 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv207, align 4
  %call208 = call i32 %84(ptr noundef %arrayidx165, i32 noundef %cond164, ptr noundef null, ptr noundef %86) #9
  br label %if.end209

if.end209:                                        ; preds = %if.then202, %do.end198.if.end209_crit_edge
  %shl = shl nuw i32 1, %key.0
  %87 = ptrtoint ptr %flags97 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %flags97, align 1
  %89 = trunc i32 %shl to i16
  %conv213 = or i16 %88, %89
  store i16 %conv213, ptr %flags97, align 1
  %90 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load214 = load i8, ptr %sec, align 1
  %bf.lshr = lshr i8 %bf.load214, 6
  %conv215 = zext i8 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %key.0, i32 %conv215)
  %cmp216 = icmp eq i32 %key.0, %conv215
  br i1 %cmp216, label %if.end209.if.end292.sink.split_crit_edge, label %if.end209.if.end292_crit_edge

if.end209.if.end292_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end292

if.end209.if.end292.sink.split_crit_edge:         ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end292.sink.split

if.else224:                                       ; preds = %if.end155
  br i1 %7, label %if.then226, label %if.else224.if.end266_crit_edge

if.else224.if.end266_crit_edge:                   ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end266

if.then226:                                       ; preds = %if.else224
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx, align 4
  %ops227 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %ops227 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops227, align 4
  %get_key = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %get_key to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %get_key, align 4
  %arrayidx229 = getelementptr %struct.libipw_security, ptr %sec, i32 0, i32 4, i32 %key.0
  %priv231 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %92, i32 0, i32 2
  %97 = ptrtoint ptr %priv231 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %priv231, align 4
  %call232 = call i32 %96(ptr noundef %arrayidx229, i32 noundef 13, ptr noundef null, ptr noundef %98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %cmp233 = icmp eq i32 %call232, 0
  br i1 %cmp233, label %do.body236, label %if.then226.if.end266_crit_edge

if.then226.if.end266_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end266

do.body236:                                       ; preds = %if.then226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %99 = load i32, ptr @libipw_debug_level, align 4
  %and237 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %do.body236.do.end247_crit_edge, label %do.end242

do.body236.do.end247_crit_edge:                   ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end247

do.end242:                                        ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.10, i32 noundef %key.0) #12
  br label %do.end247

do.end247:                                        ; preds = %do.end242, %do.body236.do.end247_crit_edge
  %100 = call ptr @memset(ptr %arrayidx229, i32 0, i32 13)
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx, align 4
  %ops251 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %ops251 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops251, align 4
  %set_key252 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %104, i32 0, i32 8
  %105 = ptrtoint ptr %set_key252 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_key252, align 4
  %priv256 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %102, i32 0, i32 2
  %107 = ptrtoint ptr %priv256 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv256, align 4
  %call257 = call i32 %106(ptr noundef %arrayidx229, i32 noundef 13, ptr noundef null, ptr noundef %108) #9
  %arrayidx259 = getelementptr %struct.libipw_security, ptr %sec, i32 0, i32 3, i32 %key.0
  %109 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 13, ptr %arrayidx259, align 1
  %shl260 = shl nuw i32 1, %key.0
  %110 = ptrtoint ptr %flags97 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %flags97, align 1
  %112 = trunc i32 %shl260 to i16
  %conv264 = or i16 %111, %112
  store i16 %conv264, ptr %flags97, align 1
  br label %if.end266

if.end266:                                        ; preds = %do.end247, %if.then226.if.end266_crit_edge, %if.else224.if.end266_crit_edge
  br i1 %tobool8.not, label %if.end266.if.end292_crit_edge, label %do.body269

if.end266.if.end292_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end292

do.body269:                                       ; preds = %if.end266
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %113 = load i32, ptr @libipw_debug_level, align 4
  %and270 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %do.body269.do.end280_crit_edge, label %do.end275

do.body269.do.end280_crit_edge:                   ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end280

do.end275:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #11
  %call277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.10, i32 noundef %key.0) #12
  br label %do.end280

do.end280:                                        ; preds = %do.end275, %do.body269.do.end280_crit_edge
  %tx_keyidx282 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 3
  %114 = ptrtoint ptr %tx_keyidx282 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %key.0, ptr %tx_keyidx282, align 4
  %115 = trunc i32 %key.0 to i8
  %116 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load284 = load i8, ptr %sec, align 1
  %bf.shl = shl i8 %115, 6
  %bf.clear285 = and i8 %bf.load284, 63
  %bf.set286 = or i8 %bf.clear285, %bf.shl
  store i8 %bf.set286, ptr %sec, align 1
  %117 = ptrtoint ptr %flags97 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %flags97, align 1
  br label %if.end292.sink.split

if.end292.sink.split:                             ; preds = %do.end280, %if.end209.if.end292.sink.split_crit_edge
  %.sink476 = phi i16 [ %118, %do.end280 ], [ %conv213, %if.end209.if.end292.sink.split_crit_edge ]
  %119 = or i16 %.sink476, 16
  %120 = ptrtoint ptr %flags97 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %flags97, align 1
  br label %if.end292

if.end292:                                        ; preds = %if.end292.sink.split, %if.end266.if.end292_crit_edge, %if.end209.if.end292_crit_edge
  %121 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %flags, align 2
  %conv294 = zext i16 %122 to i32
  %and295 = and i32 %conv294, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %if.end292.if.end327_crit_edge, label %if.then297

if.end292.if.end327_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end327

if.then297:                                       ; preds = %if.end292
  %and300 = lshr i32 %conv294, 14
  %and300.lobit = and i32 %and300, 1
  %123 = xor i32 %and300.lobit, 1
  %open_wep = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 17
  %124 = ptrtoint ptr %open_wep to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %open_wep, align 4
  %125 = trunc i32 %and300.lobit to i8
  %auth_mode = getelementptr inbounds %struct.libipw_security, ptr %sec, i32 0, i32 1
  %126 = ptrtoint ptr %auth_mode to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %auth_mode, align 1
  %127 = ptrtoint ptr %flags97 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %flags97, align 1
  %129 = or i16 %128, 32
  store i16 %129, ptr %flags97, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %130 = load i32, ptr @libipw_debug_level, align 4
  %and311 = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311)
  %tobool312.not = icmp eq i32 %and311, 0
  br i1 %tobool312.not, label %if.then297.if.end327_crit_edge, label %do.end316

if.then297.if.end327_crit_edge:                   ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end327

do.end316:                                        ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp320 = icmp eq i8 %125, 0
  %cond322 = select i1 %cmp320, ptr @.str.39, ptr @.str.40
  %call323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond322) #12
  br label %if.end327

if.end327:                                        ; preds = %do.end316, %if.then297.if.end327_crit_edge, %if.end292.if.end327_crit_edge
  %131 = ptrtoint ptr %flags97 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %flags97, align 1
  %133 = or i16 %132, 128
  store i16 %133, ptr %flags97, align 1
  %level332 = getelementptr inbounds %struct.libipw_security, ptr %sec, i32 0, i32 5
  %134 = ptrtoint ptr %level332 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %level332, align 1
  %arrayidx333 = getelementptr %struct.libipw_security, ptr %sec, i32 0, i32 2, i32 %key.0
  %135 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %arrayidx333, align 1
  br label %done

done:                                             ; preds = %if.end327, %if.then82, %if.then71.3.done_crit_edge, %for.inc.2.thread.done_crit_edge, %if.then71.2.done_crit_edge, %for.inc.1.thread.done_crit_edge, %if.then71.1.done_crit_edge, %for.inc.thread.done_crit_edge, %if.then71.done_crit_edge, %if.end63.thread.done_crit_edge
  %set_security = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 45
  %136 = ptrtoint ptr %set_security to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %set_security, align 4
  %tobool334.not = icmp eq ptr %137, null
  br i1 %tobool334.not, label %done.cleanup338_crit_edge, label %if.then335

done.cleanup338_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup338

if.then335:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  call void %137(ptr noundef %1, ptr noundef nonnull %sec) #9
  br label %cleanup338

cleanup338:                                       ; preds = %if.then335, %done.cleanup338_crit_edge, %if.then147, %if.then118.cleanup338_crit_edge, %if.then9.cleanup338_crit_edge
  %retval.1 = phi i32 [ -22, %if.then9.cleanup338_crit_edge ], [ 0, %if.then335 ], [ 0, %done.cleanup338_crit_edge ], [ -12, %if.then118.cleanup338_crit_edge ], [ -95, %if.then147 ]
  call void @llvm.lifetime.end.p0(i64 141, ptr nonnull %sec) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lib80211_crypt_delayed_deinit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lib80211_get_crypto_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @libipw_wx_get_encode(ptr nocapture noundef readonly %ieee, ptr nocapture readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef writeonly %keybuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sec1 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %0 = load i32, ptr @libipw_debug_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 2
  %3 = and i16 %2, 255
  %and5 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool6.not = icmp eq i16 %3, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp = icmp ugt i16 %3, 4
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %if.end10

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %and5, -1
  br label %if.end11

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %tx_keyidx = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 3
  %4 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_keyidx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end10
  %key.0 = phi i32 [ %dec, %if.end10 ], [ %5, %if.else ]
  %6 = trunc i32 %key.0 to i16
  %conv12 = add i16 %6, 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv12, ptr %flags, align 2
  %8 = ptrtoint ptr %sec1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %sec1, align 1
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %length, align 4
  %11 = or i16 %conv12, -32768
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 2, i32 3, i32 %key.0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %13 to i32
  %arrayidx21 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 2, i32 4, i32 %key.0
  %14 = call ptr @memcpy(ptr %keybuf, ptr %arrayidx21, i32 %conv20)
  %conv22 = zext i8 %13 to i16
  %length23 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %15 = ptrtoint ptr %length23 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv22, ptr %length23, align 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %open_wep = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 17
  %18 = ptrtoint ptr %open_wep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %open_wep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  %storemerge.v = select i1 %tobool28.not, i16 16384, i16 8192
  %storemerge = or i16 %storemerge.v, %17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end19, %if.then15
  %storemerge.sink = phi i16 [ %storemerge, %if.end19 ], [ %11, %if.then15 ]
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %storemerge.sink, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @libipw_wx_set_encodeext(ptr noundef %ieee, ptr nocapture readnone %info, ptr nocapture noundef readonly %wrqu, ptr noundef %extra) #0 align 64 {
entry:
  %sec = alloca %struct.libipw_security, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee, align 4
  call void @llvm.lifetime.start.p0(i64 141, ptr nonnull %sec) #9
  %2 = call ptr @memset(ptr %sec, i32 0, i32 141)
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 255
  %and = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp3 = icmp ugt i16 %5, 4
  br i1 %cmp3, label %lor.lhs.false.cleanup291_crit_edge, label %if.end

lor.lhs.false.cleanup291_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup291

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %and, -1
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_keyidx = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 3
  %6 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_keyidx, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %idx.0 = phi i32 [ %dec, %if.end ], [ %7, %if.else ]
  %8 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extra, align 4
  %and7 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else12, label %if.end6.if.end29_crit_edge

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0)
  %cmp13.not = icmp eq i32 %idx.0, 0
  br i1 %cmp13.not, label %if.else12.if.end20_crit_edge, label %land.lhs.true

if.else12.if.end20_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else12
  %alg15 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %10 = ptrtoint ptr %alg15 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %alg15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp17.not = icmp eq i16 %11, 1
  br i1 %cmp17.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup291_crit_edge

land.lhs.true.cleanup291_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup291

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.else12.if.end20_crit_edge
  %iw_mode = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 12
  %12 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp21 = icmp eq i32 %13, 2
  br i1 %cmp21, label %if.end20.if.end29_crit_edge, label %if.end20.cleanup291_crit_edge

if.end20.cleanup291_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup291

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end29:                                         ; preds = %if.end20.if.end29_crit_edge, %if.end6.if.end29_crit_edge
  %crypt.0 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 %idx.0
  %flags30 = getelementptr inbounds %struct.libipw_security, ptr %sec, i32 0, i32 6
  %14 = ptrtoint ptr %flags30 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %flags30, align 1
  %16 = or i16 %15, 768
  store i16 %16, ptr %flags30, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool36.not = icmp sgt i16 %4, -1
  br i1 %tobool36.not, label %lor.lhs.false37, label %if.end29.if.then42_crit_edge

if.end29.if.then42_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false37:                                  ; preds = %if.end29
  %alg38 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %17 = ptrtoint ptr %alg38 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %alg38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp40 = icmp eq i16 %18, 0
  br i1 %cmp40, label %lor.lhs.false37.if.then42_crit_edge, label %if.end67

lor.lhs.false37.if.then42_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false37.if.then42_crit_edge, %if.end29.if.then42_crit_edge
  %19 = ptrtoint ptr %crypt.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crypt.0, align 4
  %tobool43.not = icmp eq ptr %20, null
  br i1 %tobool43.not, label %if.then42.if.end46_crit_edge, label %if.then44

if.then42.if.end46_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %crypt_info45 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info45, ptr noundef %crypt.0) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then42.if.end46_crit_edge
  %arrayidx51 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 0
  %21 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx51, align 4
  %cmp52.not = icmp eq ptr %22, null
  br i1 %cmp52.not, label %for.inc, label %if.end46.done_crit_edge

if.end46.done_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.inc:                                          ; preds = %if.end46
  %arrayidx51.1 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx51.1, align 4
  %cmp52.not.1 = icmp eq ptr %24, null
  br i1 %cmp52.not.1, label %for.inc.1, label %for.inc.done_crit_edge

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.inc.1:                                        ; preds = %for.inc
  %arrayidx51.2 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx51.2, align 4
  %cmp52.not.2 = icmp eq ptr %26, null
  br i1 %cmp52.not.2, label %for.inc.2, label %for.inc.1.done_crit_edge

for.inc.1.done_crit_edge:                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx51.3 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 2, i32 3
  %27 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx51.3, align 4
  %cmp52.not.3 = icmp eq ptr %28, null
  br i1 %cmp52.not.3, label %if.then58, label %for.inc.2.done_crit_edge

for.inc.2.done_crit_edge:                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then58:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %sec, align 1
  %bf.clear60 = and i8 %bf.load, -41
  store i8 %bf.clear60, ptr %sec, align 1
  %level = getelementptr inbounds %struct.libipw_security, ptr %sec, i32 0, i32 5
  %30 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %level, align 1
  %31 = ptrtoint ptr %flags30 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %flags30, align 1
  %33 = or i16 %32, 128
  store i16 %33, ptr %flags30, align 1
  br label %done

if.end67:                                         ; preds = %lor.lhs.false37
  %34 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load68 = load i8, ptr %sec, align 1
  %bf.set73 = or i8 %bf.load68, 40
  store i8 %bf.set73, ptr %sec, align 1
  br i1 %tobool8.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end67
  %host_mc_decrypt = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 21
  %35 = ptrtoint ptr %host_mc_decrypt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %host_mc_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool75.not = icmp eq i32 %36, 0
  br i1 %tobool75.not, label %cond.true.skip_host_crypt_crit_edge, label %cond.true.if.end82_crit_edge

cond.true.if.end82_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

cond.true.skip_host_crypt_crit_edge:              ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_host_crypt

cond.false:                                       ; preds = %if.end67
  %host_encrypt = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 18
  %37 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %host_encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool76.not = icmp eq i32 %38, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %cond.false.if.end82_crit_edge

cond.false.if.end82_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

lor.lhs.false77:                                  ; preds = %cond.false
  %host_decrypt = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 20
  %39 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %host_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool78.not = icmp eq i32 %40, 0
  br i1 %tobool78.not, label %lor.lhs.false79, label %lor.lhs.false77.if.end82_crit_edge

lor.lhs.false77.if.end82_crit_edge:               ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

lor.lhs.false79:                                  ; preds = %lor.lhs.false77
  %host_encrypt_msdu = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 19
  %41 = ptrtoint ptr %host_encrypt_msdu to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %host_encrypt_msdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool80.not = icmp eq i32 %42, 0
  br i1 %tobool80.not, label %lor.lhs.false79.skip_host_crypt_crit_edge, label %lor.lhs.false79.if.end82_crit_edge

lor.lhs.false79.if.end82_crit_edge:               ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

lor.lhs.false79.skip_host_crypt_crit_edge:        ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_host_crypt

if.end82:                                         ; preds = %lor.lhs.false79.if.end82_crit_edge, %lor.lhs.false77.if.end82_crit_edge, %cond.false.if.end82_crit_edge, %cond.true.if.end82_crit_edge
  %conv84 = zext i16 %18 to i32
  %switch.tableidx = add i16 %18, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %43 = icmp ult i16 %switch.tableidx, 3
  br i1 %43, label %switch.lookup, label %do.body

do.body:                                          ; preds = %if.end82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %44 = load i32, ptr @libipw_debug_level, align 4
  %and87 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body.done_crit_edge, label %do.end

do.body.done_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef %1, i32 noundef %conv84) #12
  br label %done

switch.lookup:                                    ; preds = %if.end82
  %45 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.libipw_wx_set_encodeext, i32 0, i32 %45
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %47 = sext i16 %switch.tableidx to i32
  %switch.gep395 = getelementptr inbounds [3 x ptr], ptr @switch.table.libipw_wx_set_encodeext.67, i32 0, i32 %47
  %48 = ptrtoint ptr %switch.gep395 to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load396 = load ptr, ptr %switch.gep395, align 4
  %call96 = tail call ptr @lib80211_get_crypto_ops(ptr noundef nonnull %switch.load) #9
  %cmp97 = icmp eq ptr %call96, null
  br i1 %cmp97, label %if.end102, label %switch.lookup.if.end122_crit_edge

switch.lookup.if.end122_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end102:                                        ; preds = %switch.lookup
  %call100 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %switch.load396) #9
  %call101 = tail call ptr @lib80211_get_crypto_ops(ptr noundef nonnull %switch.load) #9
  %cmp103 = icmp eq ptr %call101, null
  br i1 %cmp103, label %do.body106, label %if.end102.if.end122_crit_edge

if.end102.if.end122_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

do.body106:                                       ; preds = %if.end102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %49 = load i32, ptr @libipw_debug_level, align 4
  %and107 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body106.done_crit_edge, label %do.end112

do.body106.done_crit_edge:                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.end112:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %alg38 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %alg38, align 4
  %conv117 = zext i16 %51 to i32
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef %1, i32 noundef %conv117) #12
  br label %done

if.end122:                                        ; preds = %if.end102.if.end122_crit_edge, %switch.lookup.if.end122_crit_edge
  %ops.0386 = phi ptr [ %call101, %if.end102.if.end122_crit_edge ], [ %call96, %switch.lookup.if.end122_crit_edge ]
  %52 = ptrtoint ptr %crypt.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %crypt.0, align 4
  %cmp123 = icmp eq ptr %53, null
  br i1 %cmp123, label %if.end122.if.then129_crit_edge, label %lor.lhs.false125

if.end122.if.then129_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then129

lor.lhs.false125:                                 ; preds = %if.end122
  %ops126 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ops126 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops126, align 4
  %cmp127.not = icmp eq ptr %55, %ops.0386
  br i1 %cmp127.not, label %lor.lhs.false125.if.end152_crit_edge, label %lor.lhs.false125.if.then129_crit_edge

lor.lhs.false125.if.then129_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then129

lor.lhs.false125.if.end152_crit_edge:             ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then129:                                       ; preds = %lor.lhs.false125.if.then129_crit_edge, %if.end122.if.then129_crit_edge
  %crypt_info130 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info130, ptr noundef %crypt.0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 20) #14
  %cmp132 = icmp eq ptr %call7.i.i, null
  br i1 %cmp132, label %if.then129.done_crit_edge, label %if.end135

if.then129.done_crit_edge:                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end135:                                        ; preds = %if.then129
  %ops136 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %ops136 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ops.0386, ptr %ops136, align 8
  %owner = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %ops.0386, i32 0, i32 17
  %58 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %owner, align 4
  %call141 = tail call zeroext i1 @try_module_get(ptr noundef %59) #9
  br i1 %call141, label %if.then143, label %if.end135.if.end146_crit_edge

if.end135.if.end146_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.then143:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %ops136 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops136, align 8
  %init = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init, align 4
  %call145 = tail call ptr %63(i32 noundef %idx.0) #9
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call145, ptr %priv, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.end135.if.end146_crit_edge
  %priv147 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %priv147 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv147, align 4
  %cmp148 = icmp eq ptr %66, null
  br i1 %cmp148, label %if.then150, label %cleanup

if.then150:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %done

cleanup:                                          ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %crypt.0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %crypt.0, align 4
  br label %if.end152

if.end152:                                        ; preds = %cleanup, %lor.lhs.false125.if.end152_crit_edge
  %key_len = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %68 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %key_len, align 2
  %conv153 = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp154.not = icmp eq i16 %69, 0
  br i1 %cmp154.not, label %if.end152.skip_host_crypt_crit_edge, label %land.lhs.true156

if.end152.skip_host_crypt_crit_edge:              ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_host_crypt

land.lhs.true156:                                 ; preds = %if.end152
  %70 = ptrtoint ptr %crypt.0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %crypt.0, align 4
  %ops157 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %ops157 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops157, align 4
  %set_key = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %set_key to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_key, align 4
  %tobool158.not = icmp eq ptr %75, null
  br i1 %tobool158.not, label %land.lhs.true156.skip_host_crypt_crit_edge, label %land.lhs.true159

land.lhs.true156.skip_host_crypt_crit_edge:       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_host_crypt

land.lhs.true159:                                 ; preds = %land.lhs.true156
  %key = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %rx_seq = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 2
  %priv166 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %71, i32 0, i32 2
  %76 = ptrtoint ptr %priv166 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv166, align 4
  %call167 = tail call i32 %75(ptr noundef %key, i32 noundef %conv153, ptr noundef %rx_seq, ptr noundef %77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %do.body171, label %land.lhs.true159.skip_host_crypt_crit_edge

land.lhs.true159.skip_host_crypt_crit_edge:       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_host_crypt

do.body171:                                       ; preds = %land.lhs.true159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libipw_debug_level to i32))
  %78 = load i32, ptr @libipw_debug_level, align 4
  %and172 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.body171.done_crit_edge, label %do.end177

do.body171.done_crit_edge:                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.end177:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #11
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, ptr noundef %1) #12
  br label %done

skip_host_crypt:                                  ; preds = %land.lhs.true159.skip_host_crypt_crit_edge, %land.lhs.true156.skip_host_crypt_crit_edge, %if.end152.skip_host_crypt_crit_edge, %lor.lhs.false79.skip_host_crypt_crit_edge, %cond.true.skip_host_crypt_crit_edge
  %79 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %extra, align 4
  %and187 = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %skip_host_crypt.if.end200_crit_edge, label %if.then189

skip_host_crypt.if.end200_crit_edge:              ; preds = %skip_host_crypt
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

if.then189:                                       ; preds = %skip_host_crypt
  call void @__sanitizer_cov_trace_pc() #11
  %tx_keyidx191 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 3
  %81 = ptrtoint ptr %tx_keyidx191 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %idx.0, ptr %tx_keyidx191, align 4
  %82 = trunc i32 %idx.0 to i8
  %83 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load193 = load i8, ptr %sec, align 1
  %bf.shl = shl i8 %82, 6
  %bf.clear194 = and i8 %bf.load193, 63
  %bf.set195 = or i8 %bf.clear194, %bf.shl
  store i8 %bf.set195, ptr %sec, align 1
  %84 = ptrtoint ptr %flags30 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %flags30, align 1
  %86 = or i16 %85, 16
  store i16 %86, ptr %flags30, align 1
  br label %if.end200

if.end200:                                        ; preds = %if.then189, %skip_host_crypt.if.end200_crit_edge
  %87 = ptrtoint ptr %alg38 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %alg38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp203.not = icmp eq i16 %88, 0
  br i1 %cmp203.not, label %if.end200.done_crit_edge, label %if.then205

if.end200.done_crit_edge:                         ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then205:                                       ; preds = %if.end200
  %key_len207 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %89 = ptrtoint ptr %key_len207 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %key_len207, align 2
  %91 = tail call i16 @llvm.umin.i16(i16 %90, i16 32)
  %92 = zext i16 %91 to i32
  %arrayidx229 = getelementptr %struct.libipw_security, ptr %sec, i32 0, i32 4, i32 %idx.0
  %key231 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %93 = call ptr @memcpy(ptr %arrayidx229, ptr %key231, i32 %92)
  %conv233 = trunc i16 %91 to i8
  %arrayidx234 = getelementptr %struct.libipw_security, ptr %sec, i32 0, i32 3, i32 %idx.0
  %94 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv233, ptr %arrayidx234, align 1
  %shl = shl nuw i32 1, %idx.0
  %95 = ptrtoint ptr %flags30 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %flags30, align 1
  %97 = trunc i32 %shl to i16
  %conv238 = or i16 %96, %97
  store i16 %conv238, ptr %flags30, align 1
  %switch.tableidx398 = add i16 %88, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx398)
  %98 = icmp ult i16 %switch.tableidx398, 3
  br i1 %98, label %switch.lookup397, label %if.then205.if.end278_crit_edge

if.then205.if.end278_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

switch.lookup397:                                 ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  %switch.idx.cast = trunc i16 %switch.tableidx398 to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %switch.cast = zext i16 %switch.tableidx398 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 262657, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %arrayidx257 = getelementptr %struct.libipw_security, ptr %sec, i32 0, i32 2, i32 %idx.0
  %99 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %switch.offset, ptr %arrayidx257, align 1
  %100 = ptrtoint ptr %flags30 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %flags30, align 1
  %102 = or i16 %101, 128
  store i16 %102, ptr %flags30, align 1
  %level262 = getelementptr inbounds %struct.libipw_security, ptr %sec, i32 0, i32 5
  %103 = ptrtoint ptr %level262 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %switch.masked, ptr %level262, align 1
  br label %if.end278

if.end278:                                        ; preds = %switch.lookup397, %if.then205.if.end278_crit_edge
  br i1 %tobool8.not, label %if.end278.done_crit_edge, label %if.then280

if.end278.done_crit_edge:                         ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then280:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %flags30 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %flags30, align 1
  %106 = and i16 %105, -129
  store i16 %106, ptr %flags30, align 1
  br label %done

done:                                             ; preds = %if.then280, %if.end278.done_crit_edge, %if.end200.done_crit_edge, %do.end177, %do.body171.done_crit_edge, %if.then150, %if.then129.done_crit_edge, %do.end112, %do.body106.done_crit_edge, %do.end, %do.body.done_crit_edge, %if.then58, %for.inc.2.done_crit_edge, %for.inc.1.done_crit_edge, %for.inc.done_crit_edge, %if.end46.done_crit_edge
  %ret.3 = phi i32 [ 0, %if.then58 ], [ 0, %if.end200.done_crit_edge ], [ -22, %do.end ], [ -22, %do.body.done_crit_edge ], [ -22, %do.end112 ], [ -22, %do.body106.done_crit_edge ], [ -22, %do.end177 ], [ -22, %do.body171.done_crit_edge ], [ 0, %if.then280 ], [ 0, %if.end278.done_crit_edge ], [ -12, %if.then129.done_crit_edge ], [ -22, %if.then150 ], [ 0, %for.inc.2.done_crit_edge ], [ 0, %for.inc.1.done_crit_edge ], [ 0, %for.inc.done_crit_edge ], [ 0, %if.end46.done_crit_edge ]
  %set_security = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 45
  %107 = ptrtoint ptr %set_security to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_security, align 4
  %tobool287.not = icmp eq ptr %108, null
  br i1 %tobool287.not, label %done.cleanup291_crit_edge, label %if.then288

done.cleanup291_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup291

if.then288:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  call void %108(ptr noundef %1, ptr noundef nonnull %sec) #9
  br label %cleanup291

cleanup291:                                       ; preds = %if.then288, %done.cleanup291_crit_edge, %if.end20.cleanup291_crit_edge, %land.lhs.true.cleanup291_crit_edge, %lor.lhs.false.cleanup291_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup291_crit_edge ], [ -22, %land.lhs.true.cleanup291_crit_edge ], [ -22, %if.end20.cleanup291_crit_edge ], [ %ret.3, %if.then288 ], [ %ret.3, %done.cleanup291_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 141, ptr nonnull %sec) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @libipw_wx_get_encodeext(ptr nocapture noundef readonly %ieee, ptr nocapture readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sec1 = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 2
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %1)
  %cmp = icmp ult i16 %1, 40
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 255
  %and = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp7 = icmp ugt i16 %4, 4
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %and, -1
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tx_keyidx = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 30, i32 3
  %5 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_keyidx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end10
  %idx.0 = phi i32 [ %dec, %if.end10 ], [ %6, %if.else ]
  %7 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extra, align 4
  %and12 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end11
  %alg = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %alg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp15.not = icmp eq i16 %10, 1
  br i1 %cmp15.not, label %land.lhs.true.if.end25_crit_edge, label %if.then17

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0)
  %cmp18.not = icmp eq i32 %idx.0, 0
  br i1 %cmp18.not, label %lor.lhs.false20, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.then17
  %iw_mode = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 12
  %11 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp21.not = icmp eq i32 %12, 2
  br i1 %cmp21.not, label %lor.lhs.false20.if.end25_crit_edge, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false20.if.end25_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %lor.lhs.false20.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  %13 = trunc i32 %idx.0 to i16
  %conv26 = add i16 %13, 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv26, ptr %flags, align 2
  %15 = call ptr @memset(ptr %extra, i32 0, i32 40)
  %16 = ptrtoint ptr %sec1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %sec1, align 1
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %if.then29, label %if.else34

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 2
  %20 = or i16 %19, -32768
  store i16 %20, ptr %flags, align 2
  br label %cleanup

if.else34:                                        ; preds = %if.end25
  %arrayidx = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 2, i32 2, i32 %idx.0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %switch.tableidx = add i8 %22, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %23 = icmp ult i8 %switch.tableidx, 3
  br i1 %23, label %switch.lookup, label %if.else34.cleanup_crit_edge

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.else34
  %switch.idx.cast = zext i8 %switch.tableidx to i16
  %switch.offset = add nuw nsw i16 %switch.idx.cast, 1
  %alg47 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %24 = ptrtoint ptr %alg47 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %switch.offset, ptr %alg47, align 4
  %arrayidx60 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 2, i32 3, i32 %idx.0
  %25 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %26 to i16
  %key_len62 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %27 = ptrtoint ptr %key_len62 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv61, ptr %key_len62, align 2
  %key = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %arrayidx63 = getelementptr %struct.libipw_device, ptr %ieee, i32 0, i32 2, i32 4, i32 %idx.0
  %conv66 = zext i8 %26 to i32
  %28 = call ptr @memcpy(ptr %key, ptr %arrayidx63, i32 %conv66)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool73.not = icmp eq i8 %26, 0
  br i1 %tobool73.not, label %switch.lookup.cleanup_crit_edge, label %land.lhs.true74

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true74:                                  ; preds = %switch.lookup
  %alg75 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %29 = ptrtoint ptr %alg75 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %alg75, align 4
  %31 = and i16 %30, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %31)
  %switch = icmp eq i16 %31, 2
  br i1 %switch, label %if.then84, label %land.lhs.true74.cleanup_crit_edge

land.lhs.true74.cleanup_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then84:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %extra, align 4
  %or86 = or i32 %33, 1
  store i32 %or86, ptr %extra, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %land.lhs.true74.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.else34.cleanup_crit_edge, %if.then29, %lor.lhs.false20.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %if.then17.cleanup_crit_edge ], [ -22, %if.else34.cleanup_crit_edge ], [ 0, %land.lhs.true74.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ], [ 0, %if.then84 ], [ 0, %if.then29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @libipw_channel_to_freq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @libipw_get_channel_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 262, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @libipw_wx_get_scan._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @libipw_wx_get_scan._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 278, i32 4}
!8 = !{ptr @libipw_wx_get_scan._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @libipw_wx_get_scan._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 291, i32 2}
!12 = !{ptr @libipw_wx_get_scan._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @libipw_wx_get_scan._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 309, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @libipw_wx_set_encode._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @libipw_wx_set_encode._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 322, i32 2}
!21 = !{ptr @libipw_wx_set_encode._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @libipw_wx_set_encode._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 329, i32 4}
!27 = !{ptr @libipw_wx_set_encode._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @libipw_wx_set_encode._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 333, i32 4}
!31 = !{ptr @libipw_wx_set_encode._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @libipw_wx_set_encode._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 361, i32 34}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 377, i32 4}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 388, i32 4}
!39 = !{ptr @libipw_wx_set_encode._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @libipw_wx_set_encode._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 402, i32 3}
!43 = !{ptr @libipw_wx_set_encode._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @libipw_wx_set_encode._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 421, i32 5}
!47 = !{ptr @libipw_wx_set_encode._entry.30, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @libipw_wx_set_encode._entry_ptr.32, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 432, i32 4}
!51 = !{ptr @libipw_wx_set_encode._entry.33, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @libipw_wx_set_encode._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 444, i32 3}
!55 = !{ptr @libipw_wx_set_encode._entry.36, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @libipw_wx_set_encode._entry_ptr.38, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.39, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.40, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.41, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 470, i32 2}
!61 = !{ptr @.str.42, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @libipw_wx_get_encode._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @libipw_wx_get_encode._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.43, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 573, i32 9}
!66 = !{ptr @.str.44, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 574, i32 12}
!68 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 577, i32 9}
!70 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 578, i32 12}
!72 = !{ptr @.str.47, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 581, i32 3}
!74 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @libipw_wx_set_encodeext._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @libipw_wx_set_encodeext._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @libipw_wx_set_encodeext._entry.49, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 593, i32 3}
!79 = !{ptr @libipw_wx_set_encodeext._entry_ptr.50, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.52, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 623, i32 3}
!82 = !{ptr @libipw_wx_set_encodeext._entry.51, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @libipw_wx_set_encodeext._entry_ptr.53, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__ksymtab_libipw_wx_set_encodeext, !85, !"__ksymtab_libipw_wx_set_encodeext", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 721, i32 1}
!86 = !{ptr @__ksymtab_libipw_wx_get_encodeext, !87, !"__ksymtab_libipw_wx_get_encodeext", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 722, i32 1}
!88 = !{ptr @__ksymtab_libipw_wx_get_scan, !89, !"__ksymtab_libipw_wx_get_scan", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 724, i32 1}
!90 = !{ptr @__ksymtab_libipw_wx_set_encode, !91, !"__ksymtab_libipw_wx_set_encode", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 725, i32 1}
!92 = !{ptr @__ksymtab_libipw_wx_get_encode, !93, !"__ksymtab_libipw_wx_get_encode", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 726, i32 1}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 74, i32 33}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 217, i32 9}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 226, i32 51}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 231, i32 52}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 237, i32 52}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 31, i32 2}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 31, i32 7}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 31, i32 12}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 31, i32 17}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 31, i32 23}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 31, i32 28}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 31, i32 34}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 31, i32 40}
!120 = !{ptr @libipw_modes, !121, !"libipw_modes", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_wx.c", i32 30, i32 20}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
