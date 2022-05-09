; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.brcmf_btcoex_info = type { ptr, %struct.timer_list, i16, i8, i8, i32, %struct.work_struct, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.brcmf_cfg80211_vif = type { ptr, %struct.wireless_dev, %struct.brcmf_cfg80211_profile, i32, %struct.vif_saved_ie, %struct.list_head, i16, i8, i32, i32, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.122, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.122 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.brcmf_cfg80211_profile = type { [6 x i8], %struct.brcmf_cfg80211_security, [6 x %struct.brcmf_wsec_key], i32, i16, i8 }
%struct.brcmf_cfg80211_security = type { i32, i32, i32, i32 }
%struct.brcmf_wsec_key = type { i32, i32, [32 x i8], [18 x i32], i32, i32, [3 x i32], i32, i32, %struct.anon.130, [2 x i32], [6 x i8] }
%struct.anon.130 = type { i32, i16 }
%struct.vif_saved_ie = type { [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], i32, i32, i32, i32, i32 }
%struct.anon.131 = type { i32, i32 }
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

@__func__.brcmf_btcoex_attach = private unnamed_addr constant [20 x i8] c"brcmf_btcoex_attach\00", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enter\0A\00", [25 x i8] zeroinitializer }, align 32
@brcmf_btcoex_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&btci->timer)\00", [17 x i8] zeroinitializer }, align 32
@brcmf_btcoex_attach.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&btci->work)\00", [33 x i8] zeroinitializer }, align 32
@__func__.brcmf_btcoex_detach = private unnamed_addr constant [20 x i8] c"brcmf_btcoex_detach\00", align 1
@__func__.brcmf_btcoex_set_mode = private unnamed_addr constant [22 x i8] c"brcmf_btcoex_set_mode\00", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DHCP session starts\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DHCP session ends\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown mode, ignored\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.brcmf_btcoex_timerfunc = private unnamed_addr constant [23 x i8] c"brcmf_btcoex_timerfunc\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.brcmf_btcoex_handler = private unnamed_addr constant [21 x i8] c"brcmf_btcoex_handler\00", align 1
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DHCP started\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DHCP done before T1 expiration\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DHCP T1:%d expired\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DHCP done before T2 expiration\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DHCP T2:%d expired\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid state=%d !!!\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcmf_btcoex_boost_wifi = private unnamed_addr constant [24 x i8] c"brcmf_btcoex_boost_wifi\00", align 1
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"new SCO/eSCO coex algo {save & override}\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"saved bt_params[50,51,64,65,71]: 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Do new SCO/eSCO coex algo {restore}\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"restored bt_params[50,51,64,65,71]: 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"attempted to restore not saved BTCOEX params\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"btc_params\00", [21 x i8] zeroinitializer }, align 32
@__func__.brcmf_btcoex_restore_part1 = private unnamed_addr constant [27 x i8] c"brcmf_btcoex_restore_part1\00", align 1
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"restored btc_params regs {66,41,68} 0x%x 0x%x 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_btcoex_is_sco_active = private unnamed_addr constant [27 x i8] c"brcmf_btcoex_is_sco_active\00", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ioc read btc params error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sample[%d], btc_params 27:%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sco/esco detected, pkt id_cnt:%d samples:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exit: result=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.brcmf_btcoex_dhcp_start = private unnamed_addr constant [24 x i8] c"brcmf_btcoex_dhcp_start\00", align 1
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enable BT DHCP Timer\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.btcmf_btcoex_save_part1 = private unnamed_addr constant [24 x i8] c"btcmf_btcoex_save_part1\00", align 1
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"saved btc_params regs (66,41,68) 0x%x 0x%x 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.brcmf_btcoex_dhcp_end = private unnamed_addr constant [22 x i8] c"brcmf_btcoex_dhcp_end\00", align 1
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disable BT DHCP Timer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bt_state:%d\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 362, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 373, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 378, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 460, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 472, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 479, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 300, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 314, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 319, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 330, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 332, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 338, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 150, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 158, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 172, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 179, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 186, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 126, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 263, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 208, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 212, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 219, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 226, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 421, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 243, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 429, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [61 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 435, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @brcmf_btcoex_attach.__key, ptr @.str.1, ptr @brcmf_btcoex_attach.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_btcoex_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_btcoex_attach.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_btcoex_attach(ptr noundef %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_btcoex_attach, ptr noundef nonnull @.str) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 148) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bt_state = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 5
  %1 = ptrtoint ptr %bt_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bt_state, align 8
  %timer_on = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 3
  %2 = ptrtoint ptr %timer_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %timer_on, align 2
  %timeout = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 200, ptr %timeout, align 4
  %timer = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @brcmf_btcoex_timerfunc, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @brcmf_btcoex_attach.__key) #5
  %cfg5 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 7
  %4 = ptrtoint ptr %cfg5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cfg, ptr %cfg5, align 8
  %saved_regs_part1 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 11
  %5 = ptrtoint ptr %saved_regs_part1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %saved_regs_part1, align 8
  %saved_regs_part2 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 17
  %6 = ptrtoint ptr %saved_regs_part2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %saved_regs_part2, align 8
  %work = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %7 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @brcmf_btcoex_attach.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry10 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry10, ptr %entry10, align 8
  %prev.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 6, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %call7.i, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @brcmf_btcoex_handler, ptr %func, align 8
  %btcoex = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 3
  %11 = ptrtoint ptr %btcoex to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %btcoex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_btcoex_timerfunc(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_btcoex_timerfunc, ptr noundef nonnull @.str) #5
  %timer_on = getelementptr i8, ptr %t, i32 50
  %0 = ptrtoint ptr %timer_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %timer_on, align 2
  %work = getelementptr i8, ptr %t, i32 56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_btcoex_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %timer_on = getelementptr i8, ptr %work, i32 -6
  %0 = ptrtoint ptr %timer_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %timer_on, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %timer_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %timer_on, align 2
  %timer = getelementptr i8, ptr %work, i32 -56
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bt_state = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %bt_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bt_state, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.body49 [
    i32 1, label %do.body
    i32 2, label %sw.bb18
    i32 3, label %sw.bb37
  ]

do.body:                                          ; preds = %if.end
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_handler, ptr noundef nonnull @.str.7) #5
  %6 = ptrtoint ptr %bt_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %bt_state, align 4
  %timeout = getelementptr i8, ptr %work, i32 -8
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 200, i16 %8)
  %cmp = icmp ult i16 %8, 200
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %timer6 = getelementptr i8, ptr %work, i32 -56
  %expires = getelementptr i8, ptr %work, i32 -48
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expires, align 4
  %call8 = tail call i32 @mod_timer(ptr noundef %timer6, i32 noundef %10) #5
  br label %sw.epilog

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv12 = add i16 %8, -200
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv12, ptr %timeout, align 4
  %timer13 = getelementptr i8, ptr %work, i32 -56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 200
  %call15 = tail call i32 @mod_timer(ptr noundef %timer13, i32 noundef %add) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %dhcp_done = getelementptr i8, ptr %work, i32 -5
  %13 = ptrtoint ptr %dhcp_done to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dhcp_done, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %do.body25, label %do.body21

do.body21:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_handler, ptr noundef nonnull @.str.8) #5
  br label %idle

do.body25:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 @jiffies_to_msecs(i32 noundef 200) #5
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_handler, ptr noundef nonnull @.str.9, i32 noundef %call27) #5
  tail call fastcc void @brcmf_btcoex_boost_wifi(ptr noundef %add.ptr, i1 noundef zeroext true)
  %15 = ptrtoint ptr %bt_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %bt_state, align 4
  %timer31 = getelementptr i8, ptr %work, i32 -56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %timeout32 = getelementptr i8, ptr %work, i32 -8
  %17 = ptrtoint ptr %timeout32 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %timeout32, align 4
  %conv33 = zext i16 %18 to i32
  %add34 = add i32 %16, %conv33
  %call35 = tail call i32 @mod_timer(ptr noundef %timer31, i32 noundef %add34) #5
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  %dhcp_done38 = getelementptr i8, ptr %work, i32 -5
  %19 = ptrtoint ptr %dhcp_done38 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dhcp_done38, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool39.not = icmp eq i8 %20, 0
  br i1 %tobool39.not, label %do.body45, label %do.body41

do.body41:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_handler, ptr noundef nonnull @.str.10) #5
  br label %idle

do.body45:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_handler, ptr noundef nonnull @.str.11, i32 noundef 3) #5
  br label %idle

do.body49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_btcoex_handler, ptr noundef nonnull @.str.12, i32 noundef %4) #5
  br label %idle

sw.epilog:                                        ; preds = %do.body25, %if.else, %if.then5
  %21 = ptrtoint ptr %timer_on to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %timer_on, align 2
  br label %cleanup

idle:                                             ; preds = %do.body49, %do.body45, %do.body41, %do.body21
  %22 = ptrtoint ptr %bt_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %bt_state, align 4
  %23 = ptrtoint ptr %timer_on to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %timer_on, align 2
  tail call fastcc void @brcmf_btcoex_boost_wifi(ptr noundef %add.ptr, i1 noundef zeroext false)
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %wdev = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %25, i32 0, i32 1
  tail call void @cfg80211_crit_proto_stopped(ptr noundef %wdev, i32 noundef 3264) #5
  tail call fastcc void @brcmf_btcoex_restore_part1(ptr noundef %add.ptr)
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %idle, %sw.epilog
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_btcoex_detach(ptr nocapture noundef %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_btcoex_detach, ptr noundef nonnull @.str) #5
  %btcoex = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %cfg, i32 0, i32 3
  %0 = ptrtoint ptr %btcoex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btcoex, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %timer_on = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %timer_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timer_on, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %timer_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %timer_on, align 2
  %5 = ptrtoint ptr %btcoex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btcoex, align 4
  %timer = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %6, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %7 = ptrtoint ptr %btcoex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btcoex, align 4
  %work = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %8, i32 0, i32 6
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #5
  %9 = ptrtoint ptr %btcoex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btcoex, align 4
  tail call fastcc void @brcmf_btcoex_boost_wifi(ptr noundef %10, i1 noundef zeroext false)
  %11 = ptrtoint ptr %btcoex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btcoex, align 4
  tail call fastcc void @brcmf_btcoex_restore_part1(ptr noundef %12)
  %13 = ptrtoint ptr %btcoex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %btcoex, align 4
  tail call void @kfree(ptr noundef %14) #5
  %15 = ptrtoint ptr %btcoex to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %btcoex, align 4
  br label %return

return:                                           ; preds = %if.end7, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_btcoex_boost_wifi(ptr noundef %btci, i1 noundef zeroext %trump_sco) unnamed_addr #0 align 64 {
entry:
  %reg_write.i110 = alloca %struct.anon.131, align 4
  %reg_write.i108 = alloca %struct.anon.131, align 4
  %reg_write.i106 = alloca %struct.anon.131, align 4
  %reg_write.i104 = alloca %struct.anon.131, align 4
  %reg_write.i102 = alloca %struct.anon.131, align 4
  %reg_write.i100 = alloca %struct.anon.131, align 4
  %reg_write.i98 = alloca %struct.anon.131, align 4
  %reg_write.i96 = alloca %struct.anon.131, align 4
  %reg_write.i94 = alloca %struct.anon.131, align 4
  %reg_write.i = alloca %struct.anon.131, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 7
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub, align 4
  %call = tail call ptr @brcmf_get_ifp(ptr noundef %3, i32 noundef 0) #5
  br i1 %trump_sco, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %saved_regs_part2 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 17
  %4 = ptrtoint ptr %saved_regs_part2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %saved_regs_part2, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %do.body, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_boost_wifi, ptr noundef nonnull @.str.13) #5
  %reg50 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 12
  %6 = ptrtoint ptr %reg50 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50, ptr %reg50, align 4
  %call.i = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef %reg50) #5
  %reg51 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 13
  %7 = ptrtoint ptr %reg51 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 51, ptr %reg51, align 4
  %call.i89 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef %reg51) #5
  %reg64 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 14
  %8 = ptrtoint ptr %reg64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %reg64, align 4
  %call.i90 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef %reg64) #5
  %reg65 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 15
  %9 = ptrtoint ptr %reg65 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65, ptr %reg65, align 4
  %call.i91 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef %reg65) #5
  %reg71 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 16
  %10 = ptrtoint ptr %reg71 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 71, ptr %reg71, align 4
  %call.i92 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef %reg71) #5
  %11 = ptrtoint ptr %saved_regs_part2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %saved_regs_part2, align 4
  %12 = ptrtoint ptr %reg50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg50, align 4
  %14 = ptrtoint ptr %reg51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg51, align 4
  %16 = ptrtoint ptr %reg64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg64, align 4
  %18 = ptrtoint ptr %reg65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg65, align 4
  %20 = ptrtoint ptr %reg71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg71, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_boost_wifi, ptr noundef nonnull @.str.14, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i) #5
  %22 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i, i32 0, i32 1
  %23 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 838860800, ptr %reg_write.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 578813952, ptr %22, align 4
  %call.i93 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i94) #5
  %25 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i94, i32 0, i32 1
  %26 = ptrtoint ptr %reg_write.i94 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 855638016, ptr %reg_write.i94, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %25, align 4
  %call.i95 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i94, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i94) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i96) #5
  %28 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i96, i32 0, i32 1
  %29 = ptrtoint ptr %reg_write.i96 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1073741824, ptr %reg_write.i96, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %28, align 4
  %call.i97 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i96, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i96) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i98) #5
  %31 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i98, i32 0, i32 1
  %32 = ptrtoint ptr %reg_write.i98 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1090519040, ptr %reg_write.i98, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %31, align 4
  %call.i99 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i98, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i98) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i100) #5
  %34 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i100, i32 0, i32 1
  %35 = ptrtoint ptr %reg_write.i100 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1191182336, ptr %reg_write.i100, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %34, align 4
  %call.i101 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i100, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i100) #5
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %saved_regs_part221 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 17
  %37 = ptrtoint ptr %saved_regs_part221 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %saved_regs_part221, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool22.not = icmp eq i8 %38, 0
  br i1 %tobool22.not, label %do.body47, label %do.body24

do.body24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_boost_wifi, ptr noundef nonnull @.str.15) #5
  %reg5027 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 12
  %39 = ptrtoint ptr %reg5027 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg5027, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i102) #5
  %41 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i102, i32 0, i32 1
  %42 = ptrtoint ptr %reg_write.i102 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 838860800, ptr %reg_write.i102, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %41, align 4
  %call.i103 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i102, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i102) #5
  %reg5129 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 13
  %45 = ptrtoint ptr %reg5129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg5129, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i104) #5
  %47 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i104, i32 0, i32 1
  %48 = ptrtoint ptr %reg_write.i104 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 855638016, ptr %reg_write.i104, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %46) #5
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %47, align 4
  %call.i105 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i104, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i104) #5
  %reg6431 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 14
  %51 = ptrtoint ptr %reg6431 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg6431, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i106) #5
  %53 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i106, i32 0, i32 1
  %54 = ptrtoint ptr %reg_write.i106 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1073741824, ptr %reg_write.i106, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %52) #5
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %53, align 4
  %call.i107 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i106, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i106) #5
  %reg6533 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 15
  %57 = ptrtoint ptr %reg6533 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg6533, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i108) #5
  %59 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i108, i32 0, i32 1
  %60 = ptrtoint ptr %reg_write.i108 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1090519040, ptr %reg_write.i108, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %58) #5
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %59, align 4
  %call.i109 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i108, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i108) #5
  %reg7135 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 16
  %63 = ptrtoint ptr %reg7135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg7135, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i110) #5
  %65 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i110, i32 0, i32 1
  %66 = ptrtoint ptr %reg_write.i110 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1191182336, ptr %reg_write.i110, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %64) #5
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %65, align 4
  %call.i111 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i110, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i110) #5
  %69 = ptrtoint ptr %reg5027 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg5027, align 4
  %71 = ptrtoint ptr %reg5129 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg5129, align 4
  %73 = ptrtoint ptr %reg6431 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %reg6431, align 4
  %75 = ptrtoint ptr %reg6533 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg6533, align 4
  %77 = ptrtoint ptr %reg7135 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reg7135, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_boost_wifi, ptr noundef nonnull @.str.16, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78) #5
  %79 = ptrtoint ptr %saved_regs_part221 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %saved_regs_part221, align 4
  br label %if.end50

do.body47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_boost_wifi, ptr noundef nonnull @.str.17) #5
  br label %if.end50

if.end50:                                         ; preds = %do.body47, %do.body24, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_btcoex_restore_part1(ptr nocapture noundef %btci) unnamed_addr #0 align 64 {
entry:
  %reg_write.i20 = alloca %struct.anon.131, align 4
  %reg_write.i18 = alloca %struct.anon.131, align 4
  %reg_write.i = alloca %struct.anon.131, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_regs_part1 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 11
  %0 = ptrtoint ptr %saved_regs_part1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %saved_regs_part1, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %saved_regs_part1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %saved_regs_part1, align 4
  %3 = ptrtoint ptr %btci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %btci, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %reg66 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 8
  %7 = ptrtoint ptr %reg66 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg66, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i) #5
  %9 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i, i32 0, i32 1
  %10 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1107296256, ptr %reg_write.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %9, align 4
  %call.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i) #5
  %reg41 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 9
  %13 = ptrtoint ptr %reg41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg41, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i18) #5
  %15 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i18, i32 0, i32 1
  %16 = ptrtoint ptr %reg_write.i18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 687865856, ptr %reg_write.i18, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %14) #5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %15, align 4
  %call.i19 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i18, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i18) #5
  %reg68 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %btci, i32 0, i32 10
  %19 = ptrtoint ptr %reg68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg68, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i20) #5
  %21 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i20, i32 0, i32 1
  %22 = ptrtoint ptr %reg_write.i20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1140850688, ptr %reg_write.i20, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %20) #5
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %21, align 4
  %call.i21 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i20, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i20) #5
  %25 = ptrtoint ptr %reg66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg66, align 4
  %27 = ptrtoint ptr %reg41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg41, align 4
  %29 = ptrtoint ptr %reg68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg68, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_restore_part1, ptr noundef nonnull @.str.19, i32 noundef %26, i32 noundef %28, i32 noundef %30) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_btcoex_set_mode(ptr noundef %vif, i32 noundef %mode, i16 noundef zeroext %duration) local_unnamed_addr #0 align 64 {
entry:
  %reg_write.i13.i = alloca %struct.anon.131, align 4
  %reg_write.i11.i = alloca %struct.anon.131, align 4
  %reg_write.i.i = alloca %struct.anon.131, align 4
  %param27.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_to_cfg.exit, !prof !79

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #5, !srcloc !80
  unreachable

wiphy_to_cfg.exit:                                ; preds = %entry
  %config.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 4
  %btcoex = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %btcoex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btcoex, align 4
  %pub = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pub, align 4
  %call1 = tail call ptr @brcmf_get_ifp(ptr noundef %7, i32 noundef 0) #5
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %mode, label %do.body20 [
    i32 0, label %do.body
    i32 1, label %do.body9
  ]

do.body:                                          ; preds = %wiphy_to_cfg.exit
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_set_mode, ptr noundef nonnull @.str.4) #5
  %bt_state = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %bt_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bt_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param27.i) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.028.i = phi i32 [ 0, %if.end ], [ %inc14.i, %for.inc.i.for.body.i_crit_edge ]
  %sco_id_cnt.027.i = phi i32 [ 0, %if.end ], [ %spec.select.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %param27.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 27, ptr %param27.i, align 4
  %call.i.i = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call1, ptr noundef nonnull @.str.18, ptr noundef nonnull %param27.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %do.body.i, label %do.body2.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_btcoex_is_sco_active, ptr noundef nonnull @.str.20) #5
  br label %brcmf_btcoex_is_sco_active.exit.thread

do.body2.i:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %param27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %param27.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_is_sco_active, ptr noundef nonnull @.str.21, i32 noundef %i.028.i, i32 noundef %13) #5
  %14 = ptrtoint ptr %param27.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param27.i, align 4
  %and.i = and i32 %15, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 2
  %inc.i = zext i1 %cmp5.i to i32
  %spec.select.i = add nuw nsw i32 %sco_id_cnt.027.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.i)
  %cmp8.i = icmp ugt i32 %spec.select.i, 2
  br i1 %cmp8.i, label %if.then3, label %for.inc.i

for.inc.i:                                        ; preds = %do.body2.i
  %inc14.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, 12
  br i1 %exitcond.not.i, label %for.inc.i.brcmf_btcoex_is_sco_active.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.brcmf_btcoex_is_sco_active.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcmf_btcoex_is_sco_active.exit.thread

brcmf_btcoex_is_sco_active.exit.thread:           ; preds = %for.inc.i.brcmf_btcoex_is_sco_active.exit.thread_crit_edge, %do.body.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_btcoex_is_sco_active, ptr noundef nonnull @.str.23, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param27.i) #5
  br label %cleanup

if.then3:                                         ; preds = %do.body2.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_is_sco_active, ptr noundef nonnull @.str.22, i32 noundef %spec.select.i, i32 noundef %i.028.i) #5
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_btcoex_is_sco_active, ptr noundef nonnull @.str.23, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param27.i) #5
  %conv = zext i16 %duration to i32
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %conv) #5
  %conv5 = trunc i32 %call2.i to i16
  %timeout = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5, ptr %timeout, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vif, ptr %5, align 4
  %18 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vif, align 4
  %saved_regs_part1.i.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 11
  %20 = ptrtoint ptr %saved_regs_part1.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %saved_regs_part1.i.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i34 = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i34, label %if.then.i.i, label %if.then3.brcmf_btcoex_dhcp_start.exit_crit_edge

if.then3.brcmf_btcoex_dhcp_start.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcmf_btcoex_dhcp_start.exit

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %reg66.i.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %reg66.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 66, ptr %reg66.i.i, align 4
  %call.i.i.i = call i32 @brcmf_fil_iovar_int_get(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef %reg66.i.i) #5
  %reg41.i.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 9
  %23 = ptrtoint ptr %reg41.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 41, ptr %reg41.i.i, align 4
  %call.i18.i.i = call i32 @brcmf_fil_iovar_int_get(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef %reg41.i.i) #5
  %reg68.i.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 10
  %24 = ptrtoint ptr %reg68.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 68, ptr %reg68.i.i, align 4
  %call.i19.i.i = call i32 @brcmf_fil_iovar_int_get(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef %reg68.i.i) #5
  %25 = ptrtoint ptr %saved_regs_part1.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %saved_regs_part1.i.i, align 4
  %26 = ptrtoint ptr %reg66.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg66.i.i, align 4
  %28 = ptrtoint ptr %reg41.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg41.i.i, align 4
  %30 = ptrtoint ptr %reg68.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg68.i.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.btcmf_btcoex_save_part1, ptr noundef nonnull @.str.25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #5
  br label %brcmf_btcoex_dhcp_start.exit

brcmf_btcoex_dhcp_start.exit:                     ; preds = %if.then.i.i, %if.then3.brcmf_btcoex_dhcp_start.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i.i) #5
  %32 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %reg_write.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1107296256, ptr %reg_write.i.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 270991360, ptr %32, align 4
  %call.i.i35 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i.i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i11.i) #5
  %35 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i11.i, i32 0, i32 1
  %36 = ptrtoint ptr %reg_write.i11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 687865856, ptr %reg_write.i11.i, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 855638016, ptr %35, align 4
  %call.i12.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i11.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i11.i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_write.i13.i) #5
  %38 = getelementptr inbounds %struct.anon.131, ptr %reg_write.i13.i, i32 0, i32 1
  %39 = ptrtoint ptr %reg_write.i13.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1140850688, ptr %reg_write.i13.i, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1878982656, ptr %38, align 4
  %call.i14.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg_write.i13.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_write.i13.i) #5
  %dhcp_done.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 4
  %41 = ptrtoint ptr %dhcp_done.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %dhcp_done.i, align 1
  %42 = ptrtoint ptr %bt_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %bt_state, align 4
  %work.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i15.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work.i) #5
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_btcoex_dhcp_start, ptr noundef nonnull @.str.24) #5
  br label %cleanup

do.body9:                                         ; preds = %wiphy_to_cfg.exit
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_set_mode, ptr noundef nonnull @.str.5) #5
  %bt_state12 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 5
  %44 = ptrtoint ptr %bt_state12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bt_state12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp13.not = icmp eq i32 %45, 0
  br i1 %cmp13.not, label %do.body9.cleanup_crit_edge, label %land.lhs.true

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body9
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 4
  %cmp16 = icmp eq ptr %47, %vif
  br i1 %cmp16, label %if.then18, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  %dhcp_done.i36 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 4
  %48 = ptrtoint ptr %dhcp_done.i36 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %dhcp_done.i36, align 1
  %timer_on.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 3
  %49 = ptrtoint ptr %timer_on.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %timer_on.i, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %if.else.i41, label %do.body.i38

do.body.i38:                                      ; preds = %if.then18
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_dhcp_end, ptr noundef nonnull @.str.26) #5
  %51 = ptrtoint ptr %timer_on.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %timer_on.i, align 2
  %timer.i = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #5
  %52 = ptrtoint ptr %bt_state12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bt_state12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.not.i = icmp eq i32 %53, 0
  br i1 %cmp.not.i, label %do.body.i38.cleanup_crit_edge, label %do.body3.i

do.body.i38.cleanup_crit_edge:                    ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body3.i:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_dhcp_end, ptr noundef nonnull @.str.27, i32 noundef %53) #5
  %work.i39 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %5, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i.i40 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %work.i39) #5
  br label %cleanup

if.else.i41:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @brcmf_btcoex_restore_part1(ptr noundef %5) #5
  br label %cleanup

do.body20:                                        ; preds = %wiphy_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_btcoex_set_mode, ptr noundef nonnull @.str.6) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %if.else.i41, %do.body3.i, %do.body.i38.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.body9.cleanup_crit_edge, %brcmf_btcoex_dhcp_start.exit, %brcmf_btcoex_is_sco_active.exit.thread, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.body.cleanup_crit_edge ], [ 0, %do.body9.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %brcmf_btcoex_dhcp_start.exit ], [ 0, %do.body20 ], [ 0, %brcmf_btcoex_is_sco_active.exit.thread ], [ 0, %do.body.i38.cleanup_crit_edge ], [ 0, %do.body3.i ], [ 0, %if.else.i41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_crit_proto_stopped(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !49, !51, !52, !54, !56, !58, !60, !61, !63, !64, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__func__.brcmf_btcoex_attach, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 362, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @brcmf_btcoex_attach.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 373, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @brcmf_btcoex_attach.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 378, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.brcmf_btcoex_detach, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 390, i32 2}
!11 = !{ptr @__func__.brcmf_btcoex_set_mode, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 460, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 472, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 479, i32 3}
!18 = !{ptr @__func__.brcmf_btcoex_timerfunc, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 276, i32 2}
!20 = !{ptr @__func__.brcmf_btcoex_handler, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 300, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 314, i32 4}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 319, i32 3}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 330, i32 4}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 332, i32 4}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 338, i32 3}
!33 = !{ptr @__func__.brcmf_btcoex_boost_wifi, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 150, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 158, i32 3}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 172, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 179, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 186, i32 3}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 126, i32 38}
!46 = !{ptr @__func__.brcmf_btcoex_restore_part1, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 263, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__func__.brcmf_btcoex_is_sco_active, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 208, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 212, i32 3}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 219, i32 4}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 226, i32 2}
!58 = !{ptr @__func__.brcmf_btcoex_dhcp_start, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 421, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__func__.btcmf_btcoex_save_part1, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 243, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__func__.brcmf_btcoex_dhcp_end, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 429, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c", i32 435, i32 4}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i8 0, i8 2}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2156983117, i64 2156983605, i64 2156983154, i64 2156983210, i64 2156983244, i64 2156983268, i64 2156983309, i64 2156983330, i64 2156983358, i64 2156983392}
