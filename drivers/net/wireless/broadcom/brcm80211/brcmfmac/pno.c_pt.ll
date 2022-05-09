; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.brcmf_pno_info = type { i32, [16 x ptr], %struct.mutex }
%struct.brcmf_pno_bssid_le = type { [6 x i8], i16 }
%struct.brcmf_pno_net_param_le = type { %struct.brcmf_ssid_le, i32, i32, i32, i32, i32 }
%struct.brcmf_ssid_le = type { i32, [32 x i8] }
%struct.brcmf_pno_macaddr_le = type { i8, i8, [6 x i8] }
%struct.brcmf_pno_param_le = type { i32, i32, i32, i16, i16, i8, i8, i8, i8, i32 }
%struct.brcmf_pno_config_le = type { i32, i32, [64 x i16], i32 }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.brcmf_gscan_bucket_config = type { i8, i8, i8, i8, i16, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.brcmf_gscan_config = type { i16, i8, i8, i8, i8, i8, i8, i16, [1 x %struct.brcmf_gscan_bucket_config] }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.brcmf_pno_net_info_le = type { [6 x i8], i8, i8, [32 x i8], i16, i16 }

@__func__.brcmf_pno_start_sched_scan = private unnamed_addr constant [27 x i8] c"brcmf_pno_start_sched_scan\00", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reqid=%llu\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.brcmf_pno_stop_sched_scan = private unnamed_addr constant [26 x i8] c"brcmf_pno_stop_sched_scan\00", align 1
@__func__.brcmf_pno_attach = private unnamed_addr constant [17 x i8] c"brcmf_pno_attach\00", align 1
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enter\0A\00", [25 x i8] zeroinitializer }, align 32
@brcmf_pno_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pi->req_lock\00", [18 x i8] zeroinitializer }, align 32
@__func__.brcmf_pno_detach = private unnamed_addr constant [17 x i8] c"brcmf_pno_detach\00", align 1
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pno request storage full\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_pno_store_request = private unnamed_addr constant [24 x i8] c"brcmf_pno_store_request\00", align 1
@brcmf_pno_config_sched_scans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 418, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: failed error=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"brcmf_pno_config_sched_scans\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_pno_config_sched_scans._entry_ptr = internal global ptr @brcmf_pno_config_sched_scans._entry, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pfn_gscan_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pfn\00", [28 x i8] zeroinitializer }, align 32
@__func__.brcmf_pno_prep_fwconfig = private unnamed_addr constant [24 x i8] c"brcmf_pno_prep_fwconfig\00", align 1
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"n_reqs=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scan period too small, using minimum\0A\00", [58 x i8] zeroinitializer }, align 32
@brcmf_msg_level = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"base period=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%d] period %u max %u repeat %u flag %x idx %u\0A\00", [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.brcmf_pno_get_bucket_channels = private unnamed_addr constant [30 x i8] c"brcmf_pno_get_bucket_channels\00", align 1
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%d] Chan : %u\0A\00", [16 x i8] zeroinitializer }, align 32
@brcmf_pno_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 129, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed to set pfnmem\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmf_pno_config\00", [47 x i8] zeroinitializer }, align 32
@brcmf_pno_config._entry_ptr = internal global ptr @brcmf_pno_config._entry, section ".printk_index", align 4
@brcmf_pno_config._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 135, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed to get pfnmem\0A\00", [38 x i8] zeroinitializer }, align 32
@brcmf_pno_config._entry_ptr.21 = internal global ptr @brcmf_pno_config._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pfn_set\00", [24 x i8] zeroinitializer }, align 32
@brcmf_pno_config._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.3, i32 149, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: pfn_set failed, err=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_pno_config._entry_ptr.26 = internal global ptr @brcmf_pno_config._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pfn_cfg\00", [24 x i8] zeroinitializer }, align 32
@__func__.brcmf_pno_set_random = private unnamed_addr constant [21 x i8] c"brcmf_pno_set_random\00", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"enabling random mac: reqid=%llu mac=%pM\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pfn_macaddr\00", [20 x i8] zeroinitializer }, align 32
@brcmf_pno_set_random._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.brcmf_pno_set_random, ptr @.str.3, i32 192, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: pfn_macaddr failed, err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmf_pno_set_random._entry_ptr = internal global ptr @brcmf_pno_set_random._entry, section ".printk_index", align 4
@__func__.brcmf_pno_add_ssid = private unnamed_addr constant [19 x i8] c"brcmf_pno_add_ssid\00", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adding ssid=%.32s (active=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pfn_add\00", [24 x i8] zeroinitializer }, align 32
@brcmf_pno_add_ssid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.brcmf_pno_add_ssid, ptr @.str.3, i32 217, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: adding failed: err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@brcmf_pno_add_ssid._entry_ptr = internal global ptr @brcmf_pno_add_ssid._entry, section ".printk_index", align 4
@__func__.brcmf_pno_add_bssid = private unnamed_addr constant [20 x i8] c"brcmf_pno_add_bssid\00", align 1
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adding bssid=%pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pfn_add_bssid\00", [18 x i8] zeroinitializer }, align 32
@brcmf_pno_add_bssid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.brcmf_pno_add_bssid, ptr @.str.3, i32 234, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@brcmf_pno_add_bssid._entry_ptr = internal global ptr @brcmf_pno_add_bssid._entry, section ".printk_index", align 4
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reqid not found\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.brcmf_pno_remove_request = private unnamed_addr constant [25 x i8] c"brcmf_pno_remove_request\00", align 1
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pfnclear\00", [23 x i8] zeroinitializer }, align 32
@brcmf_pno_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 268, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: failed code %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmf_pno_clean\00", [16 x i8] zeroinitializer }, align 32
@brcmf_pno_clean._entry_ptr = internal global ptr @brcmf_pno_clean._entry, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 473, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 519, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 525, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 537, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 43, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 418, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 440, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 455, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 305, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 319, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 346, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 348, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 286, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 129, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 135, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 146, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 149, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 99, i32 39 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 187, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 189, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 192, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 214, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 215, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 217, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 230, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 231, i32 38 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 234, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 70, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 265, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [58 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 268, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @brcmf_pno_add_bssid._entry, ptr @brcmf_pno_add_bssid._entry_ptr, ptr @brcmf_pno_add_ssid._entry, ptr @brcmf_pno_add_ssid._entry_ptr, ptr @brcmf_pno_clean._entry, ptr @brcmf_pno_clean._entry_ptr, ptr @brcmf_pno_config._entry, ptr @brcmf_pno_config._entry.19, ptr @brcmf_pno_config._entry.24, ptr @brcmf_pno_config._entry_ptr, ptr @brcmf_pno_config._entry_ptr.21, ptr @brcmf_pno_config._entry_ptr.26, ptr @brcmf_pno_config_sched_scans._entry, ptr @brcmf_pno_config_sched_scans._entry_ptr, ptr @brcmf_pno_set_random._entry, ptr @brcmf_pno_set_random._entry_ptr, ptr @.str, ptr @.str.1, ptr @brcmf_pno_attach.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_config_sched_scans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_config._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_config._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_set_random._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_add_ssid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_add_bssid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pno_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_pno_start_sched_scan(ptr noundef %ifp, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %req, align 8
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_pno_start_sched_scan, ptr noundef nonnull @.str, i64 noundef %1) #11
  %2 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ifp, align 4
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %pno = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %pno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pno, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp.i = icmp eq i32 %9, 16
  br i1 %cmp.i, label %brcmf_pno_store_request.exit.thread, label %if.end, !prof !109

brcmf_pno_store_request.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %req, align 8
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_pno_store_request, ptr noundef nonnull @.str, i64 noundef %11) #11
  %req_lock.i = getelementptr inbounds %struct.brcmf_pno_info, ptr %7, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #11
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %7, align 4
  %arrayidx.i = getelementptr %struct.brcmf_pno_info, ptr %7, i32 0, i32 1, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %req, ptr %arrayidx.i, align 4
  tail call void @mutex_unlock(ptr noundef %req_lock.i) #11
  %call1 = tail call fastcc i32 @brcmf_pno_config_sched_scans(ptr noundef %ifp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %req, align 8
  %call5 = tail call fastcc i32 @brcmf_pno_remove_request(ptr noundef %7, i64 noundef %16)
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then3.cleanup_crit_edge, label %if.then6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call fastcc i32 @brcmf_pno_config_sched_scans(ptr noundef %ifp)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %brcmf_pno_store_request.exit.thread
  %retval.0 = phi i32 [ %call1, %if.then6 ], [ %call1, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -28, %brcmf_pno_store_request.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_pno_config_sched_scans(ptr noundef %ifp) unnamed_addr #0 align 64 {
entry:
  %bssid_cfg.i.i = alloca %struct.brcmf_pno_bssid_le, align 2
  %pfn.i.i = alloca %struct.brcmf_pno_net_param_le, align 4
  %pfn_mac.i = alloca %struct.brcmf_pno_macaddr_le, align 1
  %pfn_param.i = alloca %struct.brcmf_pno_param_le, align 4
  %pno_cfg = alloca %struct.brcmf_pno_config_le, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %pno_cfg) #11
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %pno = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %pno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pno, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_pno_prep_fwconfig, ptr noundef nonnull @.str.11, i32 noundef %7) #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end13.i, label %if.end27.i, !prof !109

do.end13.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 306, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end27.i:                                       ; preds = %entry
  %reqs.i = getelementptr inbounds %struct.brcmf_pno_info, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %reqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reqs.i, align 4
  %scan_plans.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scan_plans.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp173.i = icmp sgt i32 %9, 1
  br i1 %cmp173.i, label %if.end27.i.for.body.i_crit_edge, label %if.end27.i.for.end.i_crit_edge

if.end27.i.for.end.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end27.i.for.body.i_crit_edge
  %scan_freq.0 = phi i32 [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %15, %if.end27.i.for.body.i_crit_edge ]
  %i.0174.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end27.i.for.body.i_crit_edge ]
  %arrayidx31.i = getelementptr %struct.brcmf_pno_info, ptr %5, i32 0, i32 1, i32 %i.0174.i
  %16 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx31.i, align 4
  %scan_plans32.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %scan_plans32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scan_plans32.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %call.i = tail call i32 @gcd(i32 noundef %21, i32 noundef %scan_freq.0) #14
  %inc.i = add nuw nsw i32 %i.0174.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end27.i.for.end.i_crit_edge
  %scan_freq.1 = phi i32 [ %15, %if.end27.i.for.end.i_crit_edge ], [ %call.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %scan_freq.1)
  %cmp35.i = icmp ult i32 %scan_freq.1, 10
  br i1 %cmp35.i, label %do.body37.i, label %for.end.i.if.end40.i_crit_edge

for.end.i.if.end40.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

do.body37.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_pno_prep_fwconfig, ptr noundef nonnull @.str.12) #11
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.body37.i, %for.end.i.if.end40.i_crit_edge
  %scan_freq.2 = phi i32 [ 10, %do.body37.i ], [ %scan_freq.1, %for.end.i.if.end40.i_crit_edge ]
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %5, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 8) #11
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %if.end40.i.cleanup_crit_edge, label %if.end7.i.i.i, !prof !109

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end40.i
  %26 = extractvalue { i32, i1 } %24, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #15
  %tobool43.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool43.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end45.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45.i:                                       ; preds = %if.end7.i.i.i
  %27 = call ptr @memset(ptr %pno_cfg, i32 0, i32 140)
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp48175.i = icmp sgt i32 %29, 0
  br i1 %cmp48175.i, label %for.body49.lr.ph.i, label %if.end45.i.for.end72.i_crit_edge

if.end45.i.for.end72.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72.i

for.body49.lr.ph.i:                               ; preds = %if.end45.i
  %channel_num.i.i = getelementptr inbounds %struct.brcmf_pno_config_le, ptr %pno_cfg, i32 0, i32 1
  br label %for.body49.i

for.body49.i:                                     ; preds = %if.end55.i.for.body49.i_crit_edge, %for.body49.lr.ph.i
  %i.1176.i = phi i32 [ 0, %for.body49.lr.ph.i ], [ %inc71.i, %if.end55.i.for.body49.i_crit_edge ]
  %arrayidx51.i = getelementptr %struct.brcmf_pno_info, ptr %5, i32 0, i32 1, i32 %i.1176.i
  %30 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx51.i, align 4
  %32 = ptrtoint ptr %channel_num.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel_num.i.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  %n_channels.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %31, i32 0, i32 3
  %35 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_channels.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp15.not.i.i = icmp eq i32 %36, 0
  br i1 %cmp15.not.i.i, label %for.body49.i.brcmf_pno_get_bucket_channels.exit.i_crit_edge, label %for.body.preheader.i.i

for.body49.i.brcmf_pno_get_bucket_channels.exit.i_crit_edge: ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_get_bucket_channels.exit.i

for.body.preheader.i.i:                           ; preds = %for.body49.i
  %37 = tail call i32 @llvm.usub.sat.i32(i32 64, i32 %34) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.017.i.i = phi i32 [ %inc3.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %n_chan.016.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %34, %for.body.preheader.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.017.i.i, i32 %37)
  %exitcond.i.i = icmp eq i32 %i.017.i.i, %37
  br i1 %exitcond.i.i, label %brcmf_pno_get_bucket_channels.exit.thread.i, label %if.end.i.i

brcmf_pno_get_bucket_channels.exit.thread.i:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = tail call i32 @llvm.bswap.i32(i32 %n_chan.016.i.i) #11
  %39 = ptrtoint ptr %channel_num.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %channel_num.i.i, align 4
  br label %if.then54.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.cfg80211_sched_scan_request, ptr %31, i32 0, i32 27, i32 %i.017.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hw_value.i.i, align 2
  %conv.i.i = zext i16 %43 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_pno_get_bucket_channels, ptr noundef nonnull @.str.15, i32 noundef %n_chan.016.i.i, i32 noundef %conv.i.i) #11
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #11
  %inc.i.i = add nuw nsw i32 %n_chan.016.i.i, 1
  %arrayidx2.i.i = getelementptr %struct.brcmf_pno_config_le, ptr %pno_cfg, i32 0, i32 2, i32 %n_chan.016.i.i
  %45 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx2.i.i, align 2
  %inc3.i.i = add nuw nsw i32 %i.017.i.i, 1
  %46 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_channels.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc3.i.i, %47
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.brcmf_pno_get_bucket_channels.exit.i_crit_edge

if.end.i.i.brcmf_pno_get_bucket_channels.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_get_bucket_channels.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

brcmf_pno_get_bucket_channels.exit.i:             ; preds = %if.end.i.i.brcmf_pno_get_bucket_channels.exit.i_crit_edge, %for.body49.i.brcmf_pno_get_bucket_channels.exit.i_crit_edge
  %n_chan.0.lcssa.i.i = phi i32 [ %34, %for.body49.i.brcmf_pno_get_bucket_channels.exit.i_crit_edge ], [ %inc.i.i, %if.end.i.i.brcmf_pno_get_bucket_channels.exit.i_crit_edge ]
  %48 = tail call i32 @llvm.bswap.i32(i32 %n_chan.0.lcssa.i.i) #11
  %49 = ptrtoint ptr %channel_num.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %channel_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_chan.0.lcssa.i.i)
  %cmp53.i = icmp slt i32 %n_chan.0.lcssa.i.i, 0
  br i1 %cmp53.i, label %brcmf_pno_get_bucket_channels.exit.i.if.then54.i_crit_edge, label %if.end55.i

brcmf_pno_get_bucket_channels.exit.i.if.then54.i_crit_edge: ; preds = %brcmf_pno_get_bucket_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54.i

if.then54.i:                                      ; preds = %brcmf_pno_get_bucket_channels.exit.i.if.then54.i_crit_edge, %brcmf_pno_get_bucket_channels.exit.thread.i
  %err.0.i170.i = phi i32 [ -28, %brcmf_pno_get_bucket_channels.exit.thread.i ], [ %n_chan.0.lcssa.i.i, %brcmf_pno_get_bucket_channels.exit.i.if.then54.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %cleanup

if.end55.i:                                       ; preds = %brcmf_pno_get_bucket_channels.exit.i
  %50 = trunc i32 %n_chan.0.lcssa.i.i to i8
  %conv.i = add i8 %50, -1
  %arrayidx56.i = getelementptr %struct.brcmf_gscan_bucket_config, ptr %call8.i.i.i, i32 %i.1176.i
  %51 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i, ptr %arrayidx56.i, align 8
  %scan_plans57.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %31, i32 0, i32 12
  %52 = ptrtoint ptr %scan_plans57.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %scan_plans57.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %div.i = udiv i32 %55, %scan_freq.2
  %conv60.i = trunc i32 %div.i to i8
  %bucket_freq_multiple.i = getelementptr %struct.brcmf_gscan_bucket_config, ptr %call8.i.i.i, i32 %i.1176.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv60.i)
  %tobool64.not.i = icmp eq i8 %conv60.i, 0
  %spec.select.i = select i1 %tobool64.not.i, i8 1, i8 %conv60.i
  %56 = ptrtoint ptr %bucket_freq_multiple.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %spec.select.i, ptr %bucket_freq_multiple.i, align 1
  %flag.i = getelementptr %struct.brcmf_gscan_bucket_config, ptr %call8.i.i.i, i32 %i.1176.i, i32 2
  %57 = ptrtoint ptr %flag.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %flag.i, align 2
  %inc71.i = add nuw nsw i32 %i.1176.i, 1
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %5, align 4
  %cmp48.i = icmp slt i32 %inc71.i, %59
  br i1 %cmp48.i, label %if.end55.i.for.body49.i_crit_edge, label %if.end55.i.for.end72.i_crit_edge

if.end55.i.for.end72.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72.i

if.end55.i.for.body49.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body49.i

for.end72.i:                                      ; preds = %if.end55.i.for.end72.i_crit_edge, %if.end45.i.for.end72.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %60 = load i32, ptr @brcmf_msg_level, align 4
  %and.i = and i32 %60, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool73.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool73.not.i, label %brcmf_pno_prep_fwconfig.exitthread-pre-split, label %do.body75.i

do.body75.i:                                      ; preds = %for.end72.i
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_pno_prep_fwconfig, ptr noundef nonnull @.str.13, i32 noundef %scan_freq.2) #11
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp80177.i = icmp sgt i32 %62, 0
  br i1 %cmp80177.i, label %do.body75.i.do.body83.i_crit_edge, label %do.body75.i.brcmf_pno_prep_fwconfig.exit_crit_edge

do.body75.i.brcmf_pno_prep_fwconfig.exit_crit_edge: ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_prep_fwconfig.exit

do.body75.i.do.body83.i_crit_edge:                ; preds = %do.body75.i
  br label %do.body83.i

do.body83.i:                                      ; preds = %do.body83.i.do.body83.i_crit_edge, %do.body75.i.do.body83.i_crit_edge
  %i.2178.i = phi i32 [ %inc100.i, %do.body83.i.do.body83.i_crit_edge ], [ 0, %do.body75.i.do.body83.i_crit_edge ]
  %arrayidx84.i = getelementptr %struct.brcmf_gscan_bucket_config, ptr %call8.i.i.i, i32 %i.2178.i
  %bucket_freq_multiple85.i = getelementptr %struct.brcmf_gscan_bucket_config, ptr %call8.i.i.i, i32 %i.2178.i, i32 1
  %63 = ptrtoint ptr %bucket_freq_multiple85.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bucket_freq_multiple85.i, align 1
  %conv86.i = zext i8 %64 to i32
  %max_freq_multiple.i = getelementptr %struct.brcmf_gscan_bucket_config, ptr %call8.i.i.i, i32 %i.2178.i, i32 5
  %65 = ptrtoint ptr %max_freq_multiple.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %max_freq_multiple.i, align 2
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #11
  %conv88.i = zext i16 %67 to i32
  %repeat.i = getelementptr %struct.brcmf_gscan_bucket_config, ptr %call8.i.i.i, i32 %i.2178.i, i32 4
  %68 = ptrtoint ptr %repeat.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %repeat.i, align 4
  %conv90.i = zext i16 %69 to i32
  %flag92.i = getelementptr %struct.brcmf_gscan_bucket_config, ptr %call8.i.i.i, i32 %i.2178.i, i32 2
  %70 = ptrtoint ptr %flag92.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flag92.i, align 2
  %conv93.i = zext i8 %71 to i32
  %72 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx84.i, align 8
  %conv96.i = zext i8 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_pno_prep_fwconfig, ptr noundef nonnull @.str.14, i32 noundef %i.2178.i, i32 noundef %conv86.i, i32 noundef %conv88.i, i32 noundef %conv90.i, i32 noundef %conv93.i, i32 noundef %conv96.i) #11
  %inc100.i = add nuw nsw i32 %i.2178.i, 1
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %5, align 4
  %cmp80.i = icmp slt i32 %inc100.i, %75
  br i1 %cmp80.i, label %do.body83.i.do.body83.i_crit_edge, label %do.body83.i.brcmf_pno_prep_fwconfig.exit_crit_edge

do.body83.i.brcmf_pno_prep_fwconfig.exit_crit_edge: ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_prep_fwconfig.exit

do.body83.i.do.body83.i_crit_edge:                ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body83.i

brcmf_pno_prep_fwconfig.exitthread-pre-split:     ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load i32, ptr %5, align 4
  br label %brcmf_pno_prep_fwconfig.exit

brcmf_pno_prep_fwconfig.exit:                     ; preds = %brcmf_pno_prep_fwconfig.exitthread-pre-split, %do.body83.i.brcmf_pno_prep_fwconfig.exit_crit_edge, %do.body75.i.brcmf_pno_prep_fwconfig.exit_crit_edge
  %77 = phi i32 [ %.pr, %brcmf_pno_prep_fwconfig.exitthread-pre-split ], [ %62, %do.body75.i.brcmf_pno_prep_fwconfig.exit_crit_edge ], [ %75, %do.body83.i.brcmf_pno_prep_fwconfig.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp = icmp slt i32 %77, 0
  br i1 %cmp, label %brcmf_pno_prep_fwconfig.exit.cleanup_crit_edge, label %if.end

brcmf_pno_prep_fwconfig.exit.cleanup_crit_edge:   ; preds = %brcmf_pno_prep_fwconfig.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %brcmf_pno_prep_fwconfig.exit
  %sub = shl i32 %77, 3
  %add = add i32 %sub, 10
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.free_buckets_crit_edge, label %if.end5

if.end.free_buckets_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_buckets

if.end5:                                          ; preds = %if.end
  %78 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ifp, align 4
  %call.i86 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.10, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp.i87 = icmp eq i32 %call.i86, 0
  br i1 %cmp.i87, label %if.then.i, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end5.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i86, %if.end5.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp3.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp3.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %81, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %ret.0.i) #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %82 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %ret.0.i) #16
  br label %free_gscan

if.end12:                                         ; preds = %if.end.i
  %84 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pfn_param.i) #11
  %86 = getelementptr inbounds %struct.brcmf_pno_param_le, ptr %pfn_param.i, i32 0, i32 1
  %87 = getelementptr inbounds %struct.brcmf_pno_param_le, ptr %pfn_param.i, i32 0, i32 3
  %88 = getelementptr inbounds %struct.brcmf_pno_param_le, ptr %pfn_param.i, i32 0, i32 7
  %89 = getelementptr inbounds %struct.brcmf_pno_param_le, ptr %pfn_param.i, i32 0, i32 8
  %90 = getelementptr inbounds i8, ptr %pfn_param.i, i32 8
  %91 = call ptr @memset(ptr %90, i32 0, i32 16)
  %92 = ptrtoint ptr %pfn_param.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 33554432, ptr %pfn_param.i, align 4
  %93 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 4, ptr %88, align 2
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 3, ptr %89, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %scan_freq.2) #11
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %86, align 4
  %97 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 18432, ptr %87, align 4
  %call30.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.23, ptr noundef nonnull %pfn_param.i, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %brcmf_pno_config.exit.thread, label %brcmf_pno_config.exit

brcmf_pno_config.exit.thread:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pfn_param.i) #11
  br label %if.end16

brcmf_pno_config.exit:                            ; preds = %if.end12
  %wiphy37.i = getelementptr inbounds %struct.brcmf_pub, ptr %85, i32 0, i32 2
  %98 = ptrtoint ptr %wiphy37.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wiphy37.i, align 4
  %dev38.i = getelementptr inbounds %struct.wiphy, ptr %99, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.18, i32 noundef %call30.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pfn_param.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp14 = icmp slt i32 %call30.i, 0
  br i1 %cmp14, label %brcmf_pno_config.exit.free_gscan_crit_edge, label %brcmf_pno_config.exit.if.end16_crit_edge

brcmf_pno_config.exit.if.end16_crit_edge:         ; preds = %brcmf_pno_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

brcmf_pno_config.exit.free_gscan_crit_edge:       ; preds = %brcmf_pno_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_gscan

if.end16:                                         ; preds = %brcmf_pno_config.exit.if.end16_crit_edge, %brcmf_pno_config.exit.thread
  %100 = ptrtoint ptr %pno_cfg to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %pno_cfg, align 4
  %flags.i = getelementptr inbounds %struct.brcmf_pno_config_le, ptr %pno_cfg, i32 0, i32 3
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %flags.i, align 4
  %call.i88 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.27, ptr noundef nonnull %pno_cfg, i32 noundef 140) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp18 = icmp slt i32 %call.i88, 0
  br i1 %cmp18, label %if.end16.if.then40_crit_edge, label %if.end20

if.end16.if.then40_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.end20:                                         ; preds = %if.end16
  %102 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 512, ptr %call9.i.i, align 128
  %retry_threshold = getelementptr inbounds %struct.brcmf_gscan_config, ptr %call9.i.i, i32 0, i32 6
  %103 = ptrtoint ptr %retry_threshold to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 3, ptr %retry_threshold, align 1
  %buffer_threshold = getelementptr inbounds %struct.brcmf_gscan_config, ptr %call9.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %buffer_threshold to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 101, ptr %buffer_threshold, align 1
  %flags = getelementptr inbounds %struct.brcmf_gscan_config, ptr %call9.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 8, ptr %flags, align 2
  %conv = trunc i32 %77 to i8
  %count_of_channel_buckets = getelementptr inbounds %struct.brcmf_gscan_config, ptr %call9.i.i, i32 0, i32 5
  %106 = ptrtoint ptr %count_of_channel_buckets to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv, ptr %count_of_channel_buckets, align 2
  %bucket = getelementptr inbounds %struct.brcmf_gscan_config, ptr %call9.i.i, i32 0, i32 8
  %107 = call ptr @memcpy(ptr %bucket, ptr %call8.i.i.i, i32 %sub)
  %call22 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.9, ptr noundef nonnull %call9.i.i, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.if.then40_crit_edge, label %if.end26

if.end20.if.then40_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.end26:                                         ; preds = %if.end20
  %108 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pfn_mac.i) #11
  %110 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %pfn_mac.i, i32 0, i32 1
  %111 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %pfn_mac.i, i32 0, i32 2
  %112 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %pfn_mac.i, i32 0, i32 2, i32 1
  %113 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %pfn_mac.i, i32 0, i32 2, i32 2
  %114 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %pfn_mac.i, i32 0, i32 2, i32 3
  %115 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %pfn_mac.i, i32 0, i32 2, i32 4
  %116 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %pfn_mac.i, i32 0, i32 2, i32 5
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp85.i = icmp sgt i32 %118, 0
  br i1 %cmp85.i, label %if.end26.for.body.i93_crit_edge, label %if.end26.brcmf_pno_set_random.exit.thread_crit_edge

if.end26.brcmf_pno_set_random.exit.thread_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_set_random.exit.thread

if.end26.for.body.i93_crit_edge:                  ; preds = %if.end26
  br label %for.body.i93

for.cond.i:                                       ; preds = %for.body.i93
  %inc.i89 = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i89, %118
  br i1 %exitcond.not.i, label %for.cond.i.brcmf_pno_set_random.exit.thread_crit_edge, label %for.cond.i.for.body.i93_crit_edge

for.cond.i.for.body.i93_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i93

for.cond.i.brcmf_pno_set_random.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_set_random.exit.thread

for.body.i93:                                     ; preds = %for.cond.i.for.body.i93_crit_edge, %if.end26.for.body.i93_crit_edge
  %i.086.i = phi i32 [ %inc.i89, %for.cond.i.for.body.i93_crit_edge ], [ 0, %if.end26.for.body.i93_crit_edge ]
  %arrayidx.i = getelementptr %struct.brcmf_pno_info, ptr %5, i32 0, i32 1, i32 %i.086.i
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i, align 4
  %flags.i90 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %120, i32 0, i32 7
  %121 = ptrtoint ptr %flags.i90 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags.i90, align 8
  %and.i91 = and i32 %122, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i92, label %for.cond.i, label %for.end.i94

for.end.i94:                                      ; preds = %for.body.i93
  %mac_addr4.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %120, i32 0, i32 14
  %mac_addr_mask.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %120, i32 0, i32 15
  %123 = ptrtoint ptr %pfn_mac.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %pfn_mac.i, align 1
  %124 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 3, ptr %110, align 1
  %125 = call ptr @memcpy(ptr %111, ptr %mac_addr4.i, i32 6)
  %126 = ptrtoint ptr %mac_addr_mask.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %mac_addr_mask.i, align 1
  %128 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %111, align 1
  %and2081.i = and i8 %129, %127
  %call.i.i = call i32 @get_random_u32() #11
  %130 = ptrtoint ptr %mac_addr_mask.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %mac_addr_mask.i, align 1
  %conv23.i = zext i8 %131 to i32
  %neg.i = xor i32 %conv23.i, -1
  %and24.i = and i32 %call.i.i, %neg.i
  %132 = trunc i32 %and24.i to i8
  %conv28.i = or i8 %and2081.i, %132
  %arrayidx16.1.i = getelementptr %struct.cfg80211_sched_scan_request, ptr %120, i32 0, i32 15, i32 1
  %133 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx16.1.i, align 1
  %135 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %112, align 1
  %and2081.1.i = and i8 %136, %134
  %call.i.1.i = call i32 @get_random_u32() #11
  %137 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx16.1.i, align 1
  %conv23.1.i = zext i8 %138 to i32
  %neg.1.i = xor i32 %conv23.1.i, -1
  %and24.1.i = and i32 %call.i.1.i, %neg.1.i
  %139 = trunc i32 %and24.1.i to i8
  %conv28.1.i = or i8 %and2081.1.i, %139
  %140 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv28.1.i, ptr %112, align 1
  %arrayidx16.2.i = getelementptr %struct.cfg80211_sched_scan_request, ptr %120, i32 0, i32 15, i32 2
  %141 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx16.2.i, align 1
  %143 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %113, align 1
  %and2081.2.i = and i8 %144, %142
  %call.i.2.i = call i32 @get_random_u32() #11
  %145 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx16.2.i, align 1
  %conv23.2.i = zext i8 %146 to i32
  %neg.2.i = xor i32 %conv23.2.i, -1
  %and24.2.i = and i32 %call.i.2.i, %neg.2.i
  %147 = trunc i32 %and24.2.i to i8
  %conv28.2.i = or i8 %and2081.2.i, %147
  %148 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv28.2.i, ptr %113, align 1
  %arrayidx16.3.i = getelementptr %struct.cfg80211_sched_scan_request, ptr %120, i32 0, i32 15, i32 3
  %149 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx16.3.i, align 1
  %151 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %114, align 1
  %and2081.3.i = and i8 %152, %150
  %call.i.3.i = call i32 @get_random_u32() #11
  %153 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx16.3.i, align 1
  %conv23.3.i = zext i8 %154 to i32
  %neg.3.i = xor i32 %conv23.3.i, -1
  %and24.3.i = and i32 %call.i.3.i, %neg.3.i
  %155 = trunc i32 %and24.3.i to i8
  %conv28.3.i = or i8 %and2081.3.i, %155
  %156 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv28.3.i, ptr %114, align 1
  %arrayidx16.4.i = getelementptr %struct.cfg80211_sched_scan_request, ptr %120, i32 0, i32 15, i32 4
  %157 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx16.4.i, align 1
  %159 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %115, align 1
  %and2081.4.i = and i8 %160, %158
  %call.i.4.i = call i32 @get_random_u32() #11
  %161 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx16.4.i, align 1
  %conv23.4.i = zext i8 %162 to i32
  %neg.4.i = xor i32 %conv23.4.i, -1
  %and24.4.i = and i32 %call.i.4.i, %neg.4.i
  %163 = trunc i32 %and24.4.i to i8
  %conv28.4.i = or i8 %and2081.4.i, %163
  %164 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv28.4.i, ptr %115, align 1
  %arrayidx16.5.i = getelementptr %struct.cfg80211_sched_scan_request, ptr %120, i32 0, i32 15, i32 5
  %165 = ptrtoint ptr %arrayidx16.5.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx16.5.i, align 1
  %167 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %116, align 1
  %and2081.5.i = and i8 %168, %166
  %call.i.5.i = call i32 @get_random_u32() #11
  %169 = ptrtoint ptr %arrayidx16.5.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx16.5.i, align 1
  %conv23.5.i = zext i8 %170 to i32
  %neg.5.i = xor i32 %conv23.5.i, -1
  %and24.5.i = and i32 %call.i.5.i, %neg.5.i
  %171 = trunc i32 %and24.5.i to i8
  %conv28.5.i = or i8 %and2081.5.i, %171
  %172 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv28.5.i, ptr %116, align 1
  %173 = and i8 %conv28.i, -4
  %174 = or i8 %173, 2
  %175 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %111, align 1
  %arrayidx43.i = getelementptr %struct.brcmf_pno_info, ptr %5, i32 0, i32 1, i32 6
  %176 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx43.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %177, align 8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_pno_set_random, ptr noundef nonnull @.str.28, i64 noundef %179, ptr noundef %111) #11
  %call46.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.29, ptr noundef nonnull %pfn_mac.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %for.end.i94.brcmf_pno_set_random.exit.thread_crit_edge, label %brcmf_pno_set_random.exit

for.end.i94.brcmf_pno_set_random.exit.thread_crit_edge: ; preds = %for.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_set_random.exit.thread

brcmf_pno_set_random.exit.thread:                 ; preds = %for.end.i94.brcmf_pno_set_random.exit.thread_crit_edge, %for.cond.i.brcmf_pno_set_random.exit.thread_crit_edge, %if.end26.brcmf_pno_set_random.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pfn_mac.i) #11
  br label %if.end31

brcmf_pno_set_random.exit:                        ; preds = %for.end.i94
  %wiphy.i95 = getelementptr inbounds %struct.brcmf_pub, ptr %109, i32 0, i32 2
  %180 = ptrtoint ptr %wiphy.i95 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %wiphy.i95, align 4
  %dev.i96 = getelementptr inbounds %struct.wiphy, ptr %181, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i96, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.brcmf_pno_set_random, i32 noundef %call46.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pfn_mac.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp28 = icmp slt i32 %call46.i, 0
  br i1 %cmp28, label %brcmf_pno_set_random.exit.if.then40_crit_edge, label %brcmf_pno_set_random.exit.if.end31_crit_edge

brcmf_pno_set_random.exit.if.end31_crit_edge:     ; preds = %brcmf_pno_set_random.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

brcmf_pno_set_random.exit.if.then40_crit_edge:    ; preds = %brcmf_pno_set_random.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.end31:                                         ; preds = %brcmf_pno_set_random.exit.if.end31_crit_edge, %brcmf_pno_set_random.exit.thread
  %182 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp58.i = icmp sgt i32 %183, 0
  br i1 %cmp58.i, label %for.body.lr.ph.i, label %if.end31.clean_crit_edge

if.end31.clean_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean

for.body.lr.ph.i:                                 ; preds = %if.end31
  %184 = getelementptr inbounds i8, ptr %pfn.i.i, i32 4
  %auth.i.i = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %pfn.i.i, i32 0, i32 3
  %wpa_auth.i.i = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %pfn.i.i, i32 0, i32 4
  %wsec.i.i = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %pfn.i.i, i32 0, i32 5
  %infra.i.i = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %pfn.i.i, i32 0, i32 2
  %flags.i.i = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %pfn.i.i, i32 0, i32 1
  %185 = getelementptr inbounds %struct.brcmf_pno_bssid_le, ptr %bssid_cfg.i.i, i32 0, i32 1
  br label %for.body.i99

for.body.i99:                                     ; preds = %for.inc19.i.for.body.i99_crit_edge, %for.body.lr.ph.i
  %err.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %err.1.lcssa.i, %for.inc19.i.for.body.i99_crit_edge ]
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc20.i, %for.inc19.i.for.body.i99_crit_edge ]
  %arrayidx.i98 = getelementptr %struct.brcmf_pno_info, ptr %5, i32 0, i32 1, i32 %i.059.i
  %186 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i98, align 4
  %n_match_sets.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %187, i32 0, i32 9
  %188 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %n_match_sets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp253.i = icmp sgt i32 %189, 0
  br i1 %cmp253.i, label %for.body3.lr.ph.i, label %for.body.i99.for.inc19.i_crit_edge

for.body.i99.for.inc19.i_crit_edge:               ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19.i

for.body3.lr.ph.i:                                ; preds = %for.body.i99
  %match_sets.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %187, i32 0, i32 8
  %ssids.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %187, i32 0, i32 1
  %n_ssids.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %187, i32 0, i32 2
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %err.157.i = phi i32 [ %err.060.i, %for.body3.lr.ph.i ], [ %err.350.i, %for.inc.i.for.body3.i_crit_edge ]
  %j.054.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i110, %for.inc.i.for.body3.i_crit_edge ]
  %190 = ptrtoint ptr %match_sets.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %match_sets.i, align 4
  %arrayidx4.i = getelementptr %struct.cfg80211_match_set, ptr %191, i32 %j.054.i
  %ssid_len.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx4.i, i32 0, i32 1
  %192 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ssid_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool.not.i100 = icmp eq i8 %193, 0
  br i1 %tobool.not.i100, label %for.body3.i.if.end.i109_crit_edge, label %if.then.i101

for.body3.i.if.end.i109_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i109

if.then.i101:                                     ; preds = %for.body3.i
  %tobool.not.i.i = icmp eq ptr %arrayidx4.i, null
  br i1 %tobool.not.i.i, label %if.then.i101.brcmf_is_ssid_active.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then.i101.brcmf_is_ssid_active.exit.i_crit_edge: ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_is_ssid_active.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then.i101
  %194 = ptrtoint ptr %ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ssids.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %195, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.brcmf_is_ssid_active.exit.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.brcmf_is_ssid_active.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_is_ssid_active.exit.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %196 = ptrtoint ptr %n_ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %n_ssids.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp32.i.i = icmp sgt i32 %197, 0
  br i1 %cmp32.i.i, label %for.body.lr.ph.i.i, label %lor.lhs.false2.i.i.brcmf_is_ssid_active.exit.i_crit_edge

lor.lhs.false2.i.i.brcmf_is_ssid_active.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_is_ssid_active.exit.i

for.body.lr.ph.i.i:                               ; preds = %lor.lhs.false2.i.i
  %conv.i.i102 = zext i8 %193 to i32
  br label %for.body.i.i103

for.body.i.i103:                                  ; preds = %for.inc.i.i.for.body.i.i103_crit_edge, %for.body.lr.ph.i.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i106, %for.inc.i.i.for.body.i.i103_crit_edge ]
  %ssid_len6.i.i = getelementptr %struct.cfg80211_ssid, ptr %195, i32 %i.033.i.i, i32 1
  %198 = ptrtoint ptr %ssid_len6.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %ssid_len6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %193, i8 %199)
  %cmp8.i.i = icmp eq i8 %193, %199
  br i1 %cmp8.i.i, label %if.then10.i.i, label %for.body.i.i103.for.inc.i.i_crit_edge

for.body.i.i103.for.inc.i.i_crit_edge:            ; preds = %for.body.i.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i103
  %arrayidx.i.i104 = getelementptr %struct.cfg80211_ssid, ptr %195, i32 %i.033.i.i
  %call.i.i105 = call i32 @strncmp(ptr noundef nonnull %arrayidx4.i, ptr noundef %arrayidx.i.i104, i32 noundef %conv.i.i102) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool18.not.i.i = icmp eq i32 %call.i.i105, 0
  br i1 %tobool18.not.i.i, label %if.then10.i.i.brcmf_is_ssid_active.exit.i_crit_edge, label %if.then10.i.i.for.inc.i.i_crit_edge

if.then10.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then10.i.i.brcmf_is_ssid_active.exit.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_is_ssid_active.exit.i

for.inc.i.i:                                      ; preds = %if.then10.i.i.for.inc.i.i_crit_edge, %for.body.i.i103.for.inc.i.i_crit_edge
  %inc.i.i106 = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i106, %197
  br i1 %exitcond.not.i.i, label %for.inc.i.i.brcmf_is_ssid_active.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i103_crit_edge

for.inc.i.i.for.body.i.i103_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i103

for.inc.i.i.brcmf_is_ssid_active.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_is_ssid_active.exit.i

brcmf_is_ssid_active.exit.i:                      ; preds = %for.inc.i.i.brcmf_is_ssid_active.exit.i_crit_edge, %if.then10.i.i.brcmf_is_ssid_active.exit.i_crit_edge, %lor.lhs.false2.i.i.brcmf_is_ssid_active.exit.i_crit_edge, %lor.lhs.false.i.i.brcmf_is_ssid_active.exit.i_crit_edge, %if.then.i101.brcmf_is_ssid_active.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ false, %lor.lhs.false2.i.i.brcmf_is_ssid_active.exit.i_crit_edge ], [ false, %lor.lhs.false.i.i.brcmf_is_ssid_active.exit.i_crit_edge ], [ false, %if.then.i101.brcmf_is_ssid_active.exit.i_crit_edge ], [ true, %if.then10.i.i.brcmf_is_ssid_active.exit.i_crit_edge ], [ false, %for.inc.i.i.brcmf_is_ssid_active.exit.i_crit_edge ]
  %200 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pfn.i.i) #11
  %202 = call ptr @memset(ptr %184, i32 255, i32 32)
  %203 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %auth.i.i, align 4
  %204 = ptrtoint ptr %wpa_auth.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 -1, ptr %wpa_auth.i.i, align 4
  %205 = ptrtoint ptr %wsec.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %wsec.i.i, align 4
  %206 = ptrtoint ptr %infra.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 16777216, ptr %infra.i.i, align 4
  %spec.select = select i1 %retval.0.i.i, i32 67108864, i32 0
  %207 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %spec.select, ptr %flags.i.i, align 4
  %208 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %ssid_len.i, align 1
  %conv.i42.i = zext i8 %209 to i32
  %210 = shl nuw i32 %conv.i42.i, 24
  %211 = ptrtoint ptr %pfn.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %pfn.i.i, align 4
  %212 = call ptr @memcpy(ptr %184, ptr %arrayidx4.i, i32 %conv.i42.i)
  %conv12.i.i = zext i1 %retval.0.i.i to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_pno_add_ssid, ptr noundef nonnull @.str.31, ptr noundef %arrayidx4.i, i32 noundef %conv12.i.i) #11
  %call.i43.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.32, ptr noundef nonnull %pfn.i.i, i32 noundef 56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %cmp.i.i108 = icmp slt i32 %call.i43.i, 0
  br i1 %cmp.i.i108, label %do.end18.i.i, label %brcmf_is_ssid_active.exit.i.brcmf_pno_add_ssid.exit.i_crit_edge

brcmf_is_ssid_active.exit.i.brcmf_pno_add_ssid.exit.i_crit_edge: ; preds = %brcmf_is_ssid_active.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_add_ssid.exit.i

do.end18.i.i:                                     ; preds = %brcmf_is_ssid_active.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %wiphy.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %201, i32 0, i32 2
  %213 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %wiphy.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %214, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.brcmf_pno_add_ssid, i32 noundef %call.i43.i) #16
  br label %brcmf_pno_add_ssid.exit.i

brcmf_pno_add_ssid.exit.i:                        ; preds = %do.end18.i.i, %brcmf_is_ssid_active.exit.i.brcmf_pno_add_ssid.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pfn.i.i) #11
  br label %if.end.i109

if.end.i109:                                      ; preds = %brcmf_pno_add_ssid.exit.i, %for.body3.i.if.end.i109_crit_edge
  %err.2.i = phi i32 [ %call.i43.i, %brcmf_pno_add_ssid.exit.i ], [ %err.157.i, %for.body3.i.if.end.i109_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool9.not.i = icmp eq i32 %err.2.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %if.end.i109.if.end15.i_crit_edge

if.end.i109.if.end15.i_crit_edge:                 ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i109
  %bssid.i = getelementptr %struct.cfg80211_match_set, ptr %191, i32 %j.054.i, i32 1
  %215 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %bssid.i, align 4
  %217 = and i32 %216, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.i.not.i.i = icmp eq i32 %217, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

is_valid_ether_addr.exit.i:                       ; preds = %land.lhs.true.i
  %add.ptr.i.i.i = getelementptr i8, ptr %bssid.i, i32 4
  %218 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %219 to i32
  %or.i.i.i = or i32 %216, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.for.inc.i_crit_edge, label %if.then11.i

is_valid_ether_addr.exit.i.for.inc.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then11.i:                                      ; preds = %is_valid_ether_addr.exit.i
  %220 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bssid_cfg.i.i) #11
  %222 = call ptr @memcpy(ptr %bssid_cfg.i.i, ptr %bssid.i, i32 6)
  %223 = ptrtoint ptr %185 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %185, align 2
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_pno_add_bssid, ptr noundef nonnull @.str.34, ptr noundef %bssid.i) #11
  %call.i44.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.35, ptr noundef nonnull %bssid_cfg.i.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp.i45.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp.i45.i, label %do.end6.i.i, label %if.then11.i.brcmf_pno_add_bssid.exit.i_crit_edge

if.then11.i.brcmf_pno_add_bssid.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_add_bssid.exit.i

do.end6.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %wiphy.i46.i = getelementptr inbounds %struct.brcmf_pub, ptr %221, i32 0, i32 2
  %224 = ptrtoint ptr %wiphy.i46.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %wiphy.i46.i, align 4
  %dev.i47.i = getelementptr inbounds %struct.wiphy, ptr %225, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.brcmf_pno_add_bssid, i32 noundef %call.i44.i) #16
  br label %brcmf_pno_add_bssid.exit.i

brcmf_pno_add_bssid.exit.i:                       ; preds = %do.end6.i.i, %if.then11.i.brcmf_pno_add_bssid.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bssid_cfg.i.i) #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %brcmf_pno_add_bssid.exit.i, %if.end.i109.if.end15.i_crit_edge
  %err.3.i = phi i32 [ %err.2.i, %if.end.i109.if.end15.i_crit_edge ], [ %call.i44.i, %brcmf_pno_add_bssid.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3.i)
  %cmp16.i = icmp slt i32 %err.3.i, 0
  br i1 %cmp16.i, label %if.end15.i.if.then40_crit_edge, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end15.i.if.then40_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

for.inc.i:                                        ; preds = %if.end15.i.for.inc.i_crit_edge, %is_valid_ether_addr.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %err.350.i = phi i32 [ %err.3.i, %if.end15.i.for.inc.i_crit_edge ], [ 0, %is_valid_ether_addr.exit.i.for.inc.i_crit_edge ], [ 0, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc.i110 = add nuw nsw i32 %j.054.i, 1
  %226 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %n_match_sets.i, align 8
  %cmp2.i = icmp slt i32 %inc.i110, %227
  br i1 %cmp2.i, label %for.inc.i.for.body3.i_crit_edge, label %for.inc.i.for.inc19.i_crit_edge

for.inc.i.for.inc19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19.i

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.inc19.i:                                      ; preds = %for.inc.i.for.inc19.i_crit_edge, %for.body.i99.for.inc19.i_crit_edge
  %err.1.lcssa.i = phi i32 [ %err.060.i, %for.body.i99.for.inc19.i_crit_edge ], [ %err.350.i, %for.inc.i.for.inc19.i_crit_edge ]
  %inc20.i = add nuw nsw i32 %i.059.i, 1
  %228 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %5, align 4
  %cmp.i111 = icmp slt i32 %inc20.i, %229
  br i1 %cmp.i111, label %for.inc19.i.for.body.i99_crit_edge, label %for.inc19.i.clean_crit_edge

for.inc19.i.clean_crit_edge:                      ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean

for.inc19.i.for.body.i99_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i99

clean:                                            ; preds = %for.inc19.i.clean_crit_edge, %if.end31.clean_crit_edge
  %call37 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.10, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %clean.if.then40_crit_edge, label %clean.free_gscan_crit_edge

clean.free_gscan_crit_edge:                       ; preds = %clean
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_gscan

clean.if.then40_crit_edge:                        ; preds = %clean
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.then40:                                        ; preds = %clean.if.then40_crit_edge, %if.end15.i.if.then40_crit_edge, %brcmf_pno_set_random.exit.if.then40_crit_edge, %if.end20.if.then40_crit_edge, %if.end16.if.then40_crit_edge
  %err.0139 = phi i32 [ %call37, %clean.if.then40_crit_edge ], [ %call46.i, %brcmf_pno_set_random.exit.if.then40_crit_edge ], [ %call22, %if.end20.if.then40_crit_edge ], [ %call.i88, %if.end16.if.then40_crit_edge ], [ %err.3.i, %if.end15.i.if.then40_crit_edge ]
  %230 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ifp, align 4
  %call.i113 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.10, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp.i114 = icmp eq i32 %call.i113, 0
  br i1 %cmp.i114, label %if.then.i116, label %if.then40.if.end.i119_crit_edge

if.then40.if.end.i119_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i119

if.then.i116:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i115 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 0) #11
  br label %if.end.i119

if.end.i119:                                      ; preds = %if.then.i116, %if.then40.if.end.i119_crit_edge
  %ret.0.i117 = phi i32 [ %call2.i115, %if.then.i116 ], [ %call.i113, %if.then40.if.end.i119_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i117)
  %cmp3.i118 = icmp slt i32 %ret.0.i117, 0
  br i1 %cmp3.i118, label %do.end.i122, label %if.end.i119.free_gscan_crit_edge

if.end.i119.free_gscan_crit_edge:                 ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_gscan

do.end.i122:                                      ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  %wiphy.i120 = getelementptr inbounds %struct.brcmf_pub, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %wiphy.i120 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %wiphy.i120, align 4
  %dev.i121 = getelementptr inbounds %struct.wiphy, ptr %233, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i121, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %ret.0.i117) #16
  br label %free_gscan

free_gscan:                                       ; preds = %do.end.i122, %if.end.i119.free_gscan_crit_edge, %clean.free_gscan_crit_edge, %brcmf_pno_config.exit.free_gscan_crit_edge, %do.end
  %err.1 = phi i32 [ %ret.0.i, %do.end ], [ %call30.i, %brcmf_pno_config.exit.free_gscan_crit_edge ], [ %call37, %clean.free_gscan_crit_edge ], [ %err.0139, %if.end.i119.free_gscan_crit_edge ], [ %err.0139, %do.end.i122 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %free_buckets

free_buckets:                                     ; preds = %free_gscan, %if.end.free_buckets_crit_edge
  %err.2 = phi i32 [ %err.1, %free_gscan ], [ -12, %if.end.free_buckets_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_buckets, %brcmf_pno_prep_fwconfig.exit.cleanup_crit_edge, %if.then54.i, %if.end7.i.i.i.cleanup_crit_edge, %if.end40.i.cleanup_crit_edge, %do.end13.i
  %retval.0 = phi i32 [ %err.2, %free_buckets ], [ %77, %brcmf_pno_prep_fwconfig.exit.cleanup_crit_edge ], [ -12, %if.end40.i.cleanup_crit_edge ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ %err.0.i170.i, %if.then54.i ], [ -61, %do.end13.i ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %pno_cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_pno_remove_request(ptr noundef %pi, i64 noundef %reqid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.brcmf_pno_info, ptr %pi, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %req_lock, i32 noundef 0) #11
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.done_crit_edge, label %for.cond.preheader

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp271 = icmp sgt i32 %1, 0
  br i1 %cmp271, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcmf_pno_info, ptr %pi, i32 0, i32 1, i32 %i.072
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %reqid)
  %cmp4 = icmp eq i64 %5, %reqid
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.072, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %1)
  %cmp8 = icmp eq i32 %i.0.lcssa, %1
  br i1 %cmp8, label %for.end.do.end_crit_edge, label %do.body32, !prof !109

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 70, i32 noundef 9, ptr noundef nonnull @.str.36) #11
  br label %done

do.body32:                                        ; preds = %for.end
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 16384, ptr noundef nonnull @__func__.brcmf_pno_remove_request, ptr noundef nonnull @.str, i64 noundef %reqid) #11
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pi, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %pi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool37.not = icmp eq i32 %dec, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %dec)
  %cmp39 = icmp eq i32 %i.0.lcssa, %dec
  %or.cond = select i1 %tobool37.not, i1 true, i1 %cmp39
  br i1 %or.cond, label %do.body32.done_crit_edge, label %while.cond.preheader

do.body32.done_crit_edge:                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

while.cond.preheader:                             ; preds = %do.body32
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pi, align 4
  %sub74 = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %sub74)
  %cmp43.not75 = icmp sgt i32 %i.0.lcssa, %sub74
  br i1 %cmp43.not75, label %while.cond.preheader.done_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.done_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.176 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ %i.0.lcssa, %while.cond.preheader.while.body_crit_edge ]
  %add = add i32 %i.176, 1
  %arrayidx45 = getelementptr %struct.brcmf_pno_info, ptr %pi, i32 0, i32 1, i32 %add
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.brcmf_pno_info, ptr %pi, i32 0, i32 1, i32 %i.176
  %12 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %arrayidx47, align 4
  %13 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pi, align 4
  %sub = add i32 %14, -1
  %cmp43.not = icmp sgt i32 %add, %sub
  br i1 %cmp43.not, label %while.body.done_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

done:                                             ; preds = %while.body.done_crit_edge, %while.cond.preheader.done_crit_edge, %do.body32.done_crit_edge, %do.end, %entry.done_crit_edge
  %err.0 = phi i32 [ 0, %entry.done_crit_edge ], [ -2, %do.end ], [ 0, %do.body32.done_crit_edge ], [ 0, %while.cond.preheader.done_crit_edge ], [ 0, %while.body.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %req_lock) #11
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_pno_stop_sched_scan(ptr noundef %ifp, i64 noundef %reqid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_pno_stop_sched_scan, ptr noundef nonnull @.str, i64 noundef %reqid) #11
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %pno = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %pno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pno, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @brcmf_pno_remove_request(ptr noundef %5, i64 noundef %reqid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ifp, align 4
  %call.i = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.10, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.if.end.i_crit_edge

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end3.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i, %if.end3.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp3.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.brcmf_pno_clean.exit_crit_edge

if.end.i.brcmf_pno_clean.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcmf_pno_clean.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %ret.0.i) #16
  br label %brcmf_pno_clean.exit

brcmf_pno_clean.exit:                             ; preds = %do.end.i, %if.end.i.brcmf_pno_clean.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %brcmf_pno_clean.exit.cleanup_crit_edge, label %if.then7

brcmf_pno_clean.exit.cleanup_crit_edge:           ; preds = %brcmf_pno_clean.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %brcmf_pno_clean.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call fastcc i32 @brcmf_pno_config_sched_scans(ptr noundef %ifp)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %brcmf_pno_clean.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %brcmf_pno_clean.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_pno_attach(ptr nocapture noundef writeonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_pno_attach, ptr noundef nonnull @.str.1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pno = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 29
  %1 = ptrtoint ptr %pno to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pno, align 4
  %req_lock = getelementptr inbounds %struct.brcmf_pno_info, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %req_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @brcmf_pno_attach.__key) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_pno_detach(ptr nocapture noundef %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_pno_detach, ptr noundef nonnull @.str.1) #11
  %pno = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 29
  %0 = ptrtoint ptr %pno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pno, align 4
  store ptr null, ptr %pno, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end12, !prof !110

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 537, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end12, %entry.if.end_crit_edge
  %req_lock = getelementptr inbounds %struct.brcmf_pno_info, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %req_lock) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @brcmf_pno_wiphy_params(ptr nocapture noundef writeonly %wiphy, i1 noundef zeroext %gscan) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %gscan, i8 16, i8 1
  %max_sched_scan_reqs = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 19
  %0 = ptrtoint ptr %max_sched_scan_reqs to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %max_sched_scan_reqs, align 1
  %max_sched_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 20
  %1 = ptrtoint ptr %max_sched_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 16, ptr %max_sched_scan_ssids, align 2
  %max_match_sets = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 21
  %2 = ptrtoint ptr %max_match_sets to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %max_match_sets, align 1
  %max_sched_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 23
  %3 = ptrtoint ptr %max_sched_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2048, ptr %max_sched_scan_ie_len, align 2
  %max_sched_scan_plan_interval = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 25
  %4 = ptrtoint ptr %max_sched_scan_plan_interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 508, ptr %max_sched_scan_plan_interval, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @brcmf_pno_find_reqid_by_bucket(ptr noundef %pi, i32 noundef %bucket) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.brcmf_pno_info, ptr %pi, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %req_lock, i32 noundef 0) #11
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bucket)
  %cmp = icmp ugt i32 %1, %bucket
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.brcmf_pno_info, ptr %pi, i32 0, i32 1, i32 %bucket
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reqid.0 = phi i64 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %req_lock) #11
  ret i64 %reqid.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_pno_get_bucket_map(ptr noundef %pi, ptr nocapture noundef readonly %ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.brcmf_pno_info, ptr %pi, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %req_lock, i32 noundef 0) #11
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp57 = icmp sgt i32 %1, 0
  br i1 %cmp57, label %for.body.lr.ph, label %entry.for.end33_crit_edge

entry.for.end33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end33

for.body.lr.ph:                                   ; preds = %entry
  %SSID_len = getelementptr inbounds %struct.brcmf_pno_net_info_le, ptr %ni, i32 0, i32 2
  %SSID = getelementptr inbounds %struct.brcmf_pno_net_info_le, ptr %ni, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %for.inc31.for.body_crit_edge ]
  %bucket_map.058 = phi i32 [ 0, %for.body.lr.ph ], [ %bucket_map.1, %for.inc31.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcmf_pno_info, ptr %pi, i32 0, i32 1, i32 %i.059
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %n_match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %n_match_sets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_match_sets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp355 = icmp sgt i32 %5, 0
  br i1 %cmp355, label %for.body4.lr.ph, label %for.body.for.inc31_crit_edge

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc31

for.body4.lr.ph:                                  ; preds = %for.body
  %match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %match_sets, align 4
  %8 = ptrtoint ptr %SSID_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %SSID_len, align 1
  %conv6 = zext i8 %9 to i32
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %j.056 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %arrayidx5 = getelementptr %struct.cfg80211_match_set, ptr %7, i32 %j.056
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx5, i32 0, i32 1
  %10 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %9)
  %cmp7 = icmp eq i8 %11, %9
  br i1 %cmp7, label %land.lhs.true, label %for.body4.if.end16_crit_edge

for.body4.if.end16_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %for.body4
  %bcmp54 = tail call i32 @bcmp(ptr %arrayidx5, ptr %SSID, i32 %conv6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp54)
  %tobool14.not = icmp eq i32 %bcmp54, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw i32 1, %i.059
  %or = or i32 %shl, %bucket_map.058
  br label %for.inc31

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %for.body4.if.end16_crit_edge
  %bssid = getelementptr %struct.cfg80211_match_set, ptr %7, i32 %j.056, i32 1
  %12 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bssid, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

is_valid_ether_addr.exit:                         ; preds = %if.end16
  %add.ptr.i.i = getelementptr i8, ptr %bssid, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %or.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.for.inc_crit_edge, label %land.lhs.true20

is_valid_ether_addr.exit.for.inc_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true20:                                  ; preds = %is_valid_ether_addr.exit
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid, ptr noundef dereferenceable(6) %ni, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  %shl28 = shl nuw i32 1, %i.059
  %or29 = or i32 %shl28, %bucket_map.058
  br label %for.inc31

for.inc:                                          ; preds = %land.lhs.true20.for.inc_crit_edge, %is_valid_ether_addr.exit.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.056, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.inc31_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

for.inc.for.inc31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc31

for.inc31:                                        ; preds = %for.inc.for.inc31_crit_edge, %if.then27, %if.then15, %for.body.for.inc31_crit_edge
  %bucket_map.1 = phi i32 [ %or29, %if.then27 ], [ %or, %if.then15 ], [ %bucket_map.058, %for.body.for.inc31_crit_edge ], [ %bucket_map.058, %for.inc.for.inc31_crit_edge ]
  %inc32 = add nuw nsw i32 %i.059, 1
  %exitcond62.not = icmp eq i32 %inc32, %1
  br i1 %exitcond62.not, label %for.inc31.for.end33_crit_edge, label %for.inc31.for.body_crit_edge

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc31.for.end33_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end33

for.end33:                                        ; preds = %for.inc31.for.end33_crit_edge, %entry.for.end33_crit_edge
  %bucket_map.0.lcssa = phi i32 [ 0, %entry.for.end33_crit_edge ], [ %bucket_map.1, %for.inc31.for.end33_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %req_lock) #11
  ret i32 %bucket_map.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !35, !37, !39, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !63, !65, !66, !68, !70, !71, !72, !74, !75, !77, !79, !80, !81, !83, !84, !86, !88, !89, !91, !93, !95, !97, !98, !99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__func__.brcmf_pno_start_sched_scan, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 473, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.brcmf_pno_stop_sched_scan, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 495, i32 2}
!5 = !{ptr @__func__.brcmf_pno_attach, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 519, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @brcmf_pno_attach.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 525, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.brcmf_pno_detach, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 533, i32 2}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 537, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 43, i32 6}
!17 = !{ptr @__func__.brcmf_pno_store_request, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 47, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 418, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @brcmf_pno_config_sched_scans._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @brcmf_pno_config_sched_scans._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 440, i32 38}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 455, i32 37}
!30 = !{ptr @__func__.brcmf_pno_prep_fwconfig, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 305, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 319, i32 3}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 346, i32 3}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 348, i32 4}
!39 = !{ptr @__func__.brcmf_pno_get_bucket_channels, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 286, i32 3}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 127, i32 38}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 129, i32 4}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @brcmf_pno_config._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @brcmf_pno_config._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 135, i32 4}
!51 = !{ptr @brcmf_pno_config._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @brcmf_pno_config._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 142, i32 3}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 146, i32 38}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 149, i32 3}
!59 = !{ptr @brcmf_pno_config._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @brcmf_pno_config._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 99, i32 39}
!63 = !{ptr @__func__.brcmf_pno_set_random, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 187, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 189, i32 38}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 192, i32 3}
!70 = !{ptr @brcmf_pno_set_random._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @brcmf_pno_set_random._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @__func__.brcmf_pno_add_ssid, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 214, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 215, i32 38}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 217, i32 3}
!79 = !{ptr @brcmf_pno_add_ssid._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @brcmf_pno_add_ssid._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @__func__.brcmf_pno_add_bssid, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 230, i32 2}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 231, i32 38}
!86 = !{ptr @brcmf_pno_add_bssid._entry, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 234, i32 3}
!88 = !{ptr @brcmf_pno_add_bssid._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 70, i32 6}
!91 = !{ptr @__func__.brcmf_pno_remove_request, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 75, i32 2}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 265, i32 39}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c", i32 268, i32 3}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @brcmf_pno_clean._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @brcmf_pno_clean._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
