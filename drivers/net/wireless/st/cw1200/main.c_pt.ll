; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/main.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cw1200_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_cw1200_core_probe\09\09\09\09"
module asm "\09.long\09__crc_cw1200_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cw1200_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22cw1200_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_cw1200_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cw1200_core_release\22, \22a\22\09"
module asm "\09.weak\09__crc_cw1200_core_release\09\09\09\09"
module asm "\09.long\09__crc_cw1200_core_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cw1200_core_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cw1200_core_release\22\09\09\09\09\09"
module asm "__kstrtabns_cw1200_core_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.cw1200_common = type <{ ptr, ptr, ptr, %struct.ieee80211_low_level_stats, [6 x i8], [2 x i8], ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr, ptr, %struct.mutex, [4 x %struct.cw1200_queue], %struct.cw1200_queue_stats, i32, i32, i32, ptr, ptr, ptr, %struct.wsm_edca_params, %struct.wsm_tx_queue_params, %struct.wsm_mib_association_mode, %struct.wsm_set_bss_params, %struct.cw1200_ht_info, %struct.wsm_set_pm, %struct.wsm_set_pm, i32, i32, i8, [3 x i8], i32, i32, %struct.wait_queue_head, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, %struct.wsm_rx_filter, %struct.wsm_mib_multicast_filter, i8, i8, i8, %struct.work_struct, %struct.work_struct, i8, i8, [2 x i8], %struct.cw1200_pm_state, %struct.wsm_p2p_ps_modeinfo, %struct.wsm_uapsd_info, i8, i8, i8, i8, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.cw1200_scan, %struct.atomic_t, %struct.delayed_work, %struct.wsm_startup_ind, %struct.mutex, %struct.wsm_buf, %struct.wsm_cmd, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.atomic_t, i32, i32, i32, i8, [3 x i8], %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, i32, i8, i8, [2 x i8], %struct.work_struct, i32, [11 x %struct.wsm_add_key], i32, [5 x %struct.cw1200_link_entry], %struct.work_struct, %struct.delayed_work, i32, i32, i8, [3 x i8], %struct.spinlock, i8, i8, [2 x i8], %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i32, i32, i32, %struct.work_struct, %struct.tx_policy_cache, %struct.work_struct, i32, %struct.wait_queue_head, %struct.work_struct, [6 x i8], i8, i8 }>
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.cw1200_queue = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.spinlock, i8, i8, %struct.timer_list, i32 }
%struct.cw1200_queue_stats = type { %struct.spinlock, ptr, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wsm_edca_params = type { [4 x %struct.wsm_edca_queue_params], [4 x i8] }
%struct.wsm_edca_queue_params = type { i16, i16, i16, i16, i32 }
%struct.wsm_tx_queue_params = type { [4 x %struct.wsm_set_tx_queue_params] }
%struct.wsm_set_tx_queue_params = type { i8, i16, i32 }
%struct.wsm_mib_association_mode = type { i8, i8, i8, i8, i32 }
%struct.wsm_set_bss_params = type { i8, i8, i16, i32 }
%struct.cw1200_ht_info = type { %struct.ieee80211_sta_ht_cap, i32, i16 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wsm_set_pm = type { i8, i8, i8, i8 }
%struct.wsm_rx_filter = type { i8, i8, i8, i8 }
%struct.wsm_mib_multicast_filter = type { i32, i32, [8 x [6 x i8]] }
%struct.cw1200_pm_state = type { ptr, %struct.timer_list, ptr, %struct.spinlock }
%struct.wsm_p2p_ps_modeinfo = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_uapsd_info = type { i16, i16, i16, i16 }
%struct.cw1200_scan = type { %struct.semaphore, %struct.work_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x %struct.wsm_ssid], i32, i32, i32, %struct.atomic_t, %struct.delayed_work, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wsm_ssid = type { [32 x i8], i32 }
%struct.wsm_startup_ind = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [128 x i8], [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wsm_buf = type { ptr, ptr, ptr }
%struct.wsm_cmd = type { %struct.spinlock, i32, ptr, i32, ptr, i32, i16 }
%struct.atomic_t = type { i32 }
%struct.wsm_add_key = type { i8, i8, i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.135 }
%struct.anon.135 = type { [6 x i8], i16, [16 x i8], [8 x i8], [8 x i8] }
%struct.cw1200_link_entry = type { i32, i32, i32, [6 x i8], [8 x i8], %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tx_policy_cache = type { [8 x %struct.tx_policy_cache_entry], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy_cache_entry = type { %struct.tx_policy, %struct.list_head }
%struct.tx_policy = type { %union.anon.141, i8, i8, i8, i8 }
%union.anon.141 = type { [3 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author348 = internal constant [67 x i8] c"cw1200_core.author=Dmitry Tarnyagin <dmitry.tarnyagin@lockless.no>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [63 x i8] c"cw1200_core.description=Softmac ST-Ericsson CW1200 common code\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [60 x i8] c"cw1200_core.file=drivers/net/wireless/st/cw1200/cw1200_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [24 x i8] c"cw1200_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias352 = internal constant [30 x i8] c"cw1200_core.alias=cw1200_core\00", section ".modinfo", align 1
@__param_str_macaddr = internal constant [20 x i8] c"cw1200_core.macaddr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_macaddr = internal constant %struct.kparam_array { i32 6, i32 1, ptr null, ptr @param_ops_byte, ptr @cw1200_mac_template }, align 4
@__param_macaddr = internal constant %struct.kernel_param { ptr @__param_str_macaddr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_macaddr } }, section "__param", align 4
@__UNIQUE_ID_macaddrtype353 = internal constant [43 x i8] c"cw1200_core.parmtype=macaddr:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_macaddr354 = internal constant [60 x i8] c"cw1200_core.parm=macaddr:Override platform_data MAC address\00", section ".modinfo", align 1
@__param_str_cw1200_sdd_path = internal constant [28 x i8] c"cw1200_core.cw1200_sdd_path\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@cw1200_sdd_path = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_cw1200_sdd_path = internal constant %struct.kernel_param { ptr @__param_str_cw1200_sdd_path, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @cw1200_sdd_path } }, section "__param", align 4
@__UNIQUE_ID_cw1200_sdd_pathtype355 = internal constant [43 x i8] c"cw1200_core.parmtype=cw1200_sdd_path:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_cw1200_sdd_path356 = internal constant [65 x i8] c"cw1200_core.parm=cw1200_sdd_path:Override platform_data SDD file\00", section ".modinfo", align 1
@__param_str_cw1200_refclk = internal constant [26 x i8] c"cw1200_core.cw1200_refclk\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cw1200_refclk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cw1200_refclk = internal constant %struct.kernel_param { ptr @__param_str_cw1200_refclk, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @cw1200_refclk } }, section "__param", align 4
@__UNIQUE_ID_cw1200_refclktype357 = internal constant [39 x i8] c"cw1200_core.parmtype=cw1200_refclk:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cw1200_refclk358 = internal constant [70 x i8] c"cw1200_core.parm=cw1200_refclk:Override platform_data reference clock\00", section ".modinfo", align 1
@cw1200_power_mode = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_str_cw1200_power_mode = internal constant [30 x i8] c"cw1200_core.cw1200_power_mode\00", align 1
@__param_cw1200_power_mode = internal constant %struct.kernel_param { ptr @__param_str_cw1200_power_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @cw1200_power_mode } }, section "__param", align 4
@__UNIQUE_ID_cw1200_power_modetype359 = internal constant [43 x i8] c"cw1200_core.parmtype=cw1200_power_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cw1200_power_mode360 = internal constant [101 x i8] c"cw1200_core.parm=cw1200_power_mode:WSM power mode.  0 == active, 1 == doze, 2 == quiescent (default)\00", section ".modinfo", align 1
@__param_str_cw1200_ba_rx_tids = internal constant [30 x i8] c"cw1200_core.cw1200_ba_rx_tids\00", align 1
@cw1200_ba_rx_tids = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_cw1200_ba_rx_tids = internal constant %struct.kernel_param { ptr @__param_str_cw1200_ba_rx_tids, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @cw1200_ba_rx_tids } }, section "__param", align 4
@__UNIQUE_ID_cw1200_ba_rx_tidstype361 = internal constant [43 x i8] c"cw1200_core.parmtype=cw1200_ba_rx_tids:int\00", section ".modinfo", align 1
@__param_str_cw1200_ba_tx_tids = internal constant [30 x i8] c"cw1200_core.cw1200_ba_tx_tids\00", align 1
@cw1200_ba_tx_tids = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_cw1200_ba_tx_tids = internal constant %struct.kernel_param { ptr @__param_str_cw1200_ba_tx_tids, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @cw1200_ba_tx_tids } }, section "__param", align 4
@__UNIQUE_ID_cw1200_ba_tx_tidstype362 = internal constant [43 x i8] c"cw1200_core.parmtype=cw1200_ba_tx_tids:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cw1200_ba_rx_tids363 = internal constant [53 x i8] c"cw1200_core.parm=cw1200_ba_rx_tids:Block ACK RX TIDs\00", section ".modinfo", align 1
@__UNIQUE_ID_cw1200_ba_tx_tids364 = internal constant [53 x i8] c"cw1200_core.parm=cw1200_ba_tx_tids:Block ACK TX TIDs\00", section ".modinfo", align 1
@cw1200_dpll_from_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Unknown Refclk freq (0x%04x), using 26000KHz\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_dpll_from_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/st/cw1200/main.c\00", [58 x i8] zeroinitializer }, align 32
@cw1200_dpll_from_clk._entry_ptr = internal global ptr @cw1200_dpll_from_clk._entry, section ".printk_index", align 4
@cw1200_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Timeout waiting on device startup\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_core_probe\00", [46 x i8] zeroinitializer }, align 32
@cw1200_core_probe._entry_ptr = internal global ptr @cw1200_core_probe._entry, section ".printk_index", align 4
@__kstrtab_cw1200_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_cw1200_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_cw1200_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cw1200_core_probe to i32), ptr @__kstrtab_cw1200_core_probe, ptr @__kstrtabns_cw1200_core_probe }, section "___ksymtab_gpl+cw1200_core_probe", align 4
@__kstrtab_cw1200_core_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cw1200_core_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cw1200_core_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cw1200_core_release to i32), ptr @__kstrtab_cw1200_core_release, ptr @__kstrtabns_cw1200_core_release }, section "___ksymtab_gpl+cw1200_core_release", align 4
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@cw1200_mac_template = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\02\80\E1\00\00\00", [26 x i8] zeroinitializer }, align 32
@cw1200_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @cw1200_tx, ptr @cw1200_start, ptr @cw1200_stop, ptr @cw1200_wow_suspend, ptr @cw1200_wow_resume, ptr null, ptr @cw1200_add_interface, ptr @cw1200_change_interface, ptr @cw1200_remove_interface, ptr @cw1200_config, ptr @cw1200_bss_info_changed, ptr null, ptr null, ptr @cw1200_prepare_multicast, ptr @cw1200_configure_filter, ptr null, ptr @cw1200_set_tim, ptr @cw1200_set_key, ptr null, ptr null, ptr null, ptr @cw1200_hw_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cw1200_get_stats, ptr null, ptr null, ptr @cw1200_set_rts_threshold, ptr @cw1200_sta_add, ptr @cw1200_sta_remove, ptr null, ptr @cw1200_sta_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cw1200_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cw1200_ampdu_action, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cw1200_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@cw1200_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 13, i16 0 }], [48 x i8] zeroinitializer }, align 32
@cw1200_mcs_rates = internal global { [8 x %struct.ieee80211_rate], [32 x i8] } { [8 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 8, i16 65, i16 14, i16 0 }, %struct.ieee80211_rate { i32 8, i16 130, i16 15, i16 0 }, %struct.ieee80211_rate { i32 8, i16 195, i16 16, i16 0 }, %struct.ieee80211_rate { i32 8, i16 260, i16 17, i16 0 }, %struct.ieee80211_rate { i32 8, i16 390, i16 18, i16 0 }, %struct.ieee80211_rate { i32 8, i16 520, i16 19, i16 0 }, %struct.ieee80211_rate { i32 8, i16 585, i16 20, i16 0 }, %struct.ieee80211_rate { i32 8, i16 650, i16 21, i16 0 }], [32 x i8] zeroinitializer }, align 32
@cw1200_wowlan_support = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->wsm_cmd_mux\00", [45 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->conf_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cw1200_wq\00", [22 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&priv->scan.work)\00", [60 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&priv->scan.probe_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&priv->scan.probe_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->scan.timeout)->work)\00", [48 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->scan.timeout)->timer\00", [34 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(work_completion)(&(&priv->clear_recent_scan_work)->work)\00", [38 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&(&priv->clear_recent_scan_work)->timer\00", [56 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->join_timeout)->work)\00", [48 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->join_timeout)->timer\00", [34 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&priv->unjoin_work)\00", [58 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&priv->join_complete_work)\00", [51 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->wep_key_work)\00", [57 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&priv->tx_policy_upload_work)\00", [48 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&priv->event_queue_lock\00", [40 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&priv->event_handler)\00", [56 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&priv->bss_loss_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&priv->bss_loss_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->bss_params_work)\00", [54 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->bss_loss_lock\00", [43 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->ps_state_lock\00", [43 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->set_cts_work)\00", [57 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->set_tim_work)\00", [57 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&priv->multicast_start_work)\00", [49 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&priv->multicast_stop_work)\00", [50 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->link_id_work)\00", [57 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&priv->link_id_gc_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&priv->link_id_gc_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&priv->linkid_reset_work)\00", [52 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&priv->update_filtering_work)\00", [48 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&priv->set_beacon_wakeup_period_work)\00", [40 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&priv->mcast_timeout)\00", [41 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.72 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&priv->channel_switch_done\00", [37 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->wsm_cmd_wq\00", [46 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&priv->wsm_startup_done\00", [40 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&priv->ps_mode_switch_done\00", [37 x i8] zeroinitializer }, align 32
@cw1200_init_common.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->wsm_cmd.lock\00", [44 x i8] zeroinitializer }, align 32
@cw1200_2ghz_chantable = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@cw1200_band_2ghz = internal global { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @cw1200_2ghz_chantable, ptr @cw1200_rates, i32 0, i32 14, i32 12, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 2320, i8 1, i8 0, i8 0, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 16640, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@cw1200_5ghz_chantable = internal global { [37 x %struct.ieee80211_channel], [520 x i8] } { [37 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 1, i32 5170, i16 0, i16 34, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5180, i16 0, i16 36, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5190, i16 0, i16 38, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5200, i16 0, i16 40, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5210, i16 0, i16 42, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5220, i16 0, i16 44, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5230, i16 0, i16 46, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5240, i16 0, i16 48, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5260, i16 0, i16 52, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5280, i16 0, i16 56, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5300, i16 0, i16 60, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5320, i16 0, i16 64, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5500, i16 0, i16 100, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5520, i16 0, i16 104, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5540, i16 0, i16 108, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5560, i16 0, i16 112, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5580, i16 0, i16 116, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5600, i16 0, i16 120, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5620, i16 0, i16 124, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5640, i16 0, i16 128, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5660, i16 0, i16 132, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5680, i16 0, i16 136, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5700, i16 0, i16 140, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5745, i16 0, i16 149, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5765, i16 0, i16 153, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5785, i16 0, i16 157, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5805, i16 0, i16 161, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5825, i16 0, i16 165, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5920, i16 0, i16 184, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5940, i16 0, i16 188, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5960, i16 0, i16 192, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5980, i16 0, i16 196, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6000, i16 0, i16 200, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6020, i16 0, i16 204, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6040, i16 0, i16 208, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6060, i16 0, i16 212, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6080, i16 0, i16 216, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [520 x i8] zeroinitializer }, align 32
@cw1200_band_5ghz = internal global { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @cw1200_5ghz_chantable, ptr getelementptr (i8, ptr @cw1200_rates, i64 48), i32 0, i32 37, i32 8, <{ i16, i8, i8, i8, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 2320, i8 1, i8 0, i8 0, { <{ i8, [9 x i8] }>, i16, i8, [3 x i8] } { <{ i8, [9 x i8] }> <{ i8 -1, [9 x i8] zeroinitializer }>, i16 16640, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@cw1200_register_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Cannot init PM. (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cw1200_register_common\00", [41 x i8] zeroinitializer }, align 32
@cw1200_register_common._entry_ptr = internal global ptr @cw1200_register_common._entry, section ".printk_index", align 4
@cw1200_register_common._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Cannot register device (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_register_common._entry_ptr.90 = internal global ptr @cw1200_register_common._entry.88, section ".printk_index", align 4
@cw1200_register_common._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Registered as '%s'\0A\00", [42 x i8] zeroinitializer }, align 32
@cw1200_register_common._entry_ptr.93 = internal global ptr @cw1200_register_common._entry.91, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 16, i64 13000, i64 16000, i64 16800, i64 19200, i64 24000, i64 26000, i64 33600, i64 38400, i64 40000, i64 48000, i64 52000]
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"cw1200_sdd_path\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 49, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"cw1200_refclk\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 52, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"cw1200_power_mode\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 56, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"cw1200_ba_rx_tids\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 237, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"cw1200_ba_tx_tids\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 238, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 509, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 565, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"cw1200_mac_template\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 45, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [11 x i8] c"cw1200_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 205, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"cw1200_rates\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 67, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"cw1200_mcs_rates\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 82, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"cw1200_wowlan_support\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 245, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 342, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 343, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 344, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 351, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 352, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 353, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 354, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 356, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 357, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 358, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 359, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 360, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 361, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 363, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 364, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 365, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 366, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 367, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 368, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 369, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 370, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 371, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 372, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 373, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 374, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 375, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 376, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 378, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 402, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 403, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 404, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 405, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 407, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [22 x i8] c"cw1200_2ghz_chantable\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 119, i32 33 }
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"cw1200_band_2ghz\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 158, i32 40 }
@___asan_gen_.385 = private unnamed_addr constant [22 x i8] c"cw1200_5ghz_chantable\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 136, i32 33 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"cw1200_band_5ghz\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 178, i32 40 }
@___asan_gen_.391 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 33, i32 31 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 34, i32 28 }
@___asan_gen_.398 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 35, i32 39 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 422, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 430, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.419 = private constant [41 x i8] c"../drivers/net/wireless/st/cw1200/main.c\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 440, i32 2 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_alias352, ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_cw1200_ba_rx_tids363, ptr @__UNIQUE_ID_cw1200_ba_rx_tidstype361, ptr @__UNIQUE_ID_cw1200_ba_tx_tids364, ptr @__UNIQUE_ID_cw1200_ba_tx_tidstype362, ptr @__UNIQUE_ID_cw1200_power_mode360, ptr @__UNIQUE_ID_cw1200_power_modetype359, ptr @__UNIQUE_ID_cw1200_refclk358, ptr @__UNIQUE_ID_cw1200_refclktype357, ptr @__UNIQUE_ID_cw1200_sdd_path356, ptr @__UNIQUE_ID_cw1200_sdd_pathtype355, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__UNIQUE_ID_macaddr354, ptr @__UNIQUE_ID_macaddrtype353, ptr @__ksymtab_cw1200_core_probe, ptr @__ksymtab_cw1200_core_release, ptr @__param_cw1200_ba_rx_tids, ptr @__param_cw1200_ba_tx_tids, ptr @__param_cw1200_power_mode, ptr @__param_cw1200_refclk, ptr @__param_cw1200_sdd_path, ptr @__param_macaddr, ptr @cw1200_core_probe._entry, ptr @cw1200_core_probe._entry_ptr, ptr @cw1200_dpll_from_clk._entry, ptr @cw1200_dpll_from_clk._entry_ptr, ptr @cw1200_register_common._entry, ptr @cw1200_register_common._entry.88, ptr @cw1200_register_common._entry.91, ptr @cw1200_register_common._entry_ptr, ptr @cw1200_register_common._entry_ptr.90, ptr @cw1200_register_common._entry_ptr.93, ptr @cw1200_sdd_path, ptr @cw1200_refclk, ptr @cw1200_power_mode, ptr @cw1200_ba_rx_tids, ptr @cw1200_ba_tx_tids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cw1200_mac_template, ptr @cw1200_ops, ptr @cw1200_rates, ptr @cw1200_mcs_rates, ptr @cw1200_wowlan_support, ptr @cw1200_init_common.__key, ptr @.str.5, ptr @cw1200_init_common.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cw1200_init_common.__key.10, ptr @.str.11, ptr @cw1200_init_common.__key.12, ptr @.str.13, ptr @cw1200_init_common.__key.14, ptr @.str.15, ptr @cw1200_init_common.__key.16, ptr @.str.17, ptr @cw1200_init_common.__key.18, ptr @.str.19, ptr @cw1200_init_common.__key.20, ptr @.str.21, ptr @cw1200_init_common.__key.22, ptr @.str.23, ptr @cw1200_init_common.__key.24, ptr @.str.25, ptr @cw1200_init_common.__key.26, ptr @.str.27, ptr @cw1200_init_common.__key.28, ptr @.str.29, ptr @cw1200_init_common.__key.30, ptr @.str.31, ptr @cw1200_init_common.__key.32, ptr @.str.33, ptr @cw1200_init_common.__key.34, ptr @.str.35, ptr @cw1200_init_common.__key.36, ptr @.str.37, ptr @cw1200_init_common.__key.38, ptr @.str.39, ptr @cw1200_init_common.__key.40, ptr @.str.41, ptr @cw1200_init_common.__key.42, ptr @.str.43, ptr @cw1200_init_common.__key.44, ptr @.str.45, ptr @cw1200_init_common.__key.46, ptr @.str.47, ptr @cw1200_init_common.__key.48, ptr @.str.49, ptr @cw1200_init_common.__key.50, ptr @.str.51, ptr @cw1200_init_common.__key.52, ptr @.str.53, ptr @cw1200_init_common.__key.54, ptr @.str.55, ptr @cw1200_init_common.__key.56, ptr @.str.57, ptr @cw1200_init_common.__key.58, ptr @.str.59, ptr @cw1200_init_common.__key.60, ptr @.str.61, ptr @cw1200_init_common.__key.62, ptr @.str.63, ptr @cw1200_init_common.__key.64, ptr @.str.65, ptr @cw1200_init_common.__key.66, ptr @.str.67, ptr @cw1200_init_common.__key.68, ptr @.str.69, ptr @cw1200_init_common.__key.70, ptr @.str.71, ptr @cw1200_init_common.__key.72, ptr @.str.73, ptr @cw1200_init_common.__key.74, ptr @.str.75, ptr @cw1200_init_common.__key.76, ptr @.str.77, ptr @cw1200_init_common.__key.78, ptr @.str.79, ptr @cw1200_init_common.__key.80, ptr @.str.81, ptr @cw1200_2ghz_chantable, ptr @cw1200_band_2ghz, ptr @cw1200_5ghz_chantable, ptr @cw1200_band_5ghz, ptr @sema_init.__key, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_sdd_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_refclk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_power_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_ba_rx_tids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_ba_tx_tids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_dpll_from_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_mac_template to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_mcs_rates to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_init_common.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_2ghz_chantable to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_band_2ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_5ghz_chantable to i32), i32 2072, i32 2592, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_band_5ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_register_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_register_common._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_register_common._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_dpll_from_clk(i16 noundef zeroext %clk_khz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %clk_khz to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %clk_khz, label %do.end [
    i16 13000, label %entry.return_crit_edge
    i16 16000, label %sw.bb1
    i16 16800, label %sw.bb2
    i16 19200, label %sw.bb3
    i16 24000, label %sw.bb4
    i16 26000, label %sw.bb5
    i16 -31936, label %sw.bb6
    i16 -27136, label %sw.bb7
    i16 -25536, label %sw.bb8
    i16 -17536, label %sw.bb9
    i16 -13536, label %sw.bb10
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %clk_khz to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #7
  br label %return

return:                                           ; preds = %do.end, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 247787809, %do.end ], [ 123891857, %sw.bb10 ], [ 161, %sw.bb9 ], [ 193, %sw.bb8 ], [ 268439745, %sw.bb7 ], [ 153391329, %sw.bb6 ], [ 247787809, %sw.bb5 ], [ 321, %sw.bb4 ], [ 401, %sw.bb3 ], [ 306786753, %sw.bb2 ], [ 481, %sw.bb1 ], [ 495571521, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_core_probe(ptr noundef %hwbus_ops, ptr noundef %hwbus, ptr noundef %pdev, ptr nocapture noundef writeonly %core, i32 noundef %ref_clk, ptr noundef readonly %macaddr, ptr noundef %sdd_path, i1 noundef zeroext %have_5ghz) #0 align 64 {
entry:
  %arg.i = alloca i32, align 4
  %val.i = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cw1200_power_mode, align 4
  %call.i.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 4916, ptr noundef nonnull @cw1200_ops, ptr noundef null) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.err77_crit_edge, label %if.end.i

entry.err77_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err77

if.end.i:                                         ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %2, align 4
  %hw_type.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 8
  %4 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hw_type.i, align 4
  %mode.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 43
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mode.i, align 4
  %rates.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 23
  %6 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cw1200_rates, ptr %rates.i, align 4
  %mcs_rates.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 24
  %7 = ptrtoint ptr %mcs_rates.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cw1200_mcs_rates, ptr %mcs_rates.i, align 4
  %8 = load i32, ptr @cw1200_ba_rx_tids, align 4
  %conv.i = trunc i32 %8 to i8
  %9 = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 55
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %9, align 4
  %11 = load i32, ptr @cw1200_ba_tx_tids, align 4
  %conv9.i = trunc i32 %11 to i8
  %12 = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 56
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9.i, ptr %12, align 1
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %or.i.i722.i = or i32 %15, 2295216
  store i32 %or.i.i722.i, ptr %flags.i.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy.i, align 8
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 910, ptr %interface_modes.i, align 4
  %19 = load ptr, ptr %wiphy.i, align 8
  %wowlan.i = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 40
  %20 = ptrtoint ptr %wowlan.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cw1200_wowlan_support, ptr %wowlan.i, align 32
  %21 = load ptr, ptr %wiphy.i, align 8
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 32
  %or.i = or i32 %23, 16384
  store i32 %or.i, ptr %flags.i, align 32
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %queues.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4, ptr %queues.i, align 4
  %rts_threshold.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 67
  %25 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %rts_threshold.i, align 4
  %max_rates.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %max_rates.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %max_rates.i, align 1
  %max_rate_tries.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %max_rate_tries.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 15, ptr %max_rate_tries.i, align 1
  %extra_tx_headroom.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 36, ptr %extra_tx_headroom.i, align 4
  %sta_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %sta_data_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %sta_data_size.i, align 8
  %30 = load ptr, ptr %wiphy.i, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cw1200_band_2ghz, ptr %bands.i, align 16
  br i1 %have_5ghz, label %if.then17.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy.i, align 8
  %arrayidx20.i = getelementptr %struct.wiphy, ptr %33, i32 0, i32 53, i32 1
  %34 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @cw1200_band_5ghz, ptr %arrayidx20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end.i.if.end21.i_crit_edge
  %35 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy.i, align 8
  %arrayidx26.i = getelementptr %struct.wiphy, ptr %36, i32 0, i32 53, i32 0
  %37 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx26.i, align 4
  %tobool27.not.i = icmp eq ptr %38, null
  br i1 %tobool27.not.i, label %if.end21.i.cleanup.i_crit_edge, label %for.cond30.preheader.i

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond30.preheader.i:                           ; preds = %if.end21.i
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp31747.i = icmp sgt i32 %40, 0
  br i1 %cmp31747.i, label %for.cond30.preheader.i.for.body33.i_crit_edge, label %for.cond30.preheader.i.cleanup.i_crit_edge

for.cond30.preheader.i.cleanup.i_crit_edge:       ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.cond30.preheader.i.for.body33.i_crit_edge:    ; preds = %for.cond30.preheader.i
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i.for.body33.i_crit_edge, %for.cond30.preheader.i.for.body33.i_crit_edge
  %i.0748.i = phi i32 [ %inc.i, %for.body33.i.for.body33.i_crit_edge ], [ 0, %for.cond30.preheader.i.for.body33.i_crit_edge ]
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %flags35.i = getelementptr %struct.ieee80211_channel, ptr %42, i32 %i.0748.i, i32 4
  %43 = ptrtoint ptr %flags35.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %flags35.i, align 4
  %44 = load ptr, ptr %38, align 4
  %max_antenna_gain.i = getelementptr %struct.ieee80211_channel, ptr %44, i32 %i.0748.i, i32 5
  %45 = ptrtoint ptr %max_antenna_gain.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %max_antenna_gain.i, align 4
  %46 = load ptr, ptr %38, align 4
  %max_power.i = getelementptr %struct.ieee80211_channel, ptr %46, i32 %i.0748.i, i32 6
  %47 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 30, ptr %max_power.i, align 4
  %inc.i = add nuw nsw i32 %i.0748.i, 1
  %48 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_channels.i, align 4
  %cmp31.i = icmp slt i32 %inc.i, %49
  br i1 %cmp31.i, label %for.body33.i.for.body33.i_crit_edge, label %for.body33.i.cleanup.i_crit_edge

for.body33.i.cleanup.i_crit_edge:                 ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.body33.i.for.body33.i_crit_edge:              ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body33.i

cleanup.i:                                        ; preds = %for.body33.i.cleanup.i_crit_edge, %for.cond30.preheader.i.cleanup.i_crit_edge, %if.end21.i.cleanup.i_crit_edge
  %50 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wiphy.i, align 8
  %arrayidx26.1.i = getelementptr %struct.wiphy, ptr %51, i32 0, i32 53, i32 1
  %52 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx26.1.i, align 4
  %tobool27.not.1.i = icmp eq ptr %53, null
  br i1 %tobool27.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %for.cond30.preheader.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1.i

for.cond30.preheader.1.i:                         ; preds = %cleanup.i
  %n_channels.1.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %n_channels.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_channels.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp31747.1.i = icmp sgt i32 %55, 0
  br i1 %cmp31747.1.i, label %for.cond30.preheader.1.i.for.body33.1.i_crit_edge, label %for.cond30.preheader.1.i.cleanup.1.i_crit_edge

for.cond30.preheader.1.i.cleanup.1.i_crit_edge:   ; preds = %for.cond30.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1.i

for.cond30.preheader.1.i.for.body33.1.i_crit_edge: ; preds = %for.cond30.preheader.1.i
  br label %for.body33.1.i

for.body33.1.i:                                   ; preds = %for.body33.1.i.for.body33.1.i_crit_edge, %for.cond30.preheader.1.i.for.body33.1.i_crit_edge
  %i.0748.1.i = phi i32 [ %inc.1.i, %for.body33.1.i.for.body33.1.i_crit_edge ], [ 0, %for.cond30.preheader.1.i.for.body33.1.i_crit_edge ]
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %flags35.1.i = getelementptr %struct.ieee80211_channel, ptr %57, i32 %i.0748.1.i, i32 4
  %58 = ptrtoint ptr %flags35.1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %flags35.1.i, align 4
  %59 = load ptr, ptr %53, align 4
  %max_antenna_gain.1.i = getelementptr %struct.ieee80211_channel, ptr %59, i32 %i.0748.1.i, i32 5
  %60 = ptrtoint ptr %max_antenna_gain.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %max_antenna_gain.1.i, align 4
  %61 = load ptr, ptr %53, align 4
  %max_power.1.i = getelementptr %struct.ieee80211_channel, ptr %61, i32 %i.0748.1.i, i32 6
  %62 = ptrtoint ptr %max_power.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 30, ptr %max_power.1.i, align 4
  %inc.1.i = add nuw nsw i32 %i.0748.1.i, 1
  %63 = ptrtoint ptr %n_channels.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n_channels.1.i, align 4
  %cmp31.1.i = icmp slt i32 %inc.1.i, %64
  br i1 %cmp31.1.i, label %for.body33.1.i.for.body33.1.i_crit_edge, label %for.body33.1.i.cleanup.1.i_crit_edge

for.body33.1.i.cleanup.1.i_crit_edge:             ; preds = %for.body33.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1.i

for.body33.1.i.for.body33.1.i_crit_edge:          ; preds = %for.body33.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body33.1.i

cleanup.1.i:                                      ; preds = %for.body33.1.i.cleanup.1.i_crit_edge, %for.cond30.preheader.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %65 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wiphy.i, align 8
  %arrayidx26.2.i = getelementptr %struct.wiphy, ptr %66, i32 0, i32 53, i32 2
  %67 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx26.2.i, align 4
  %tobool27.not.2.i = icmp eq ptr %68, null
  br i1 %tobool27.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %for.cond30.preheader.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2.i

for.cond30.preheader.2.i:                         ; preds = %cleanup.1.i
  %n_channels.2.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %n_channels.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n_channels.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp31747.2.i = icmp sgt i32 %70, 0
  br i1 %cmp31747.2.i, label %for.cond30.preheader.2.i.for.body33.2.i_crit_edge, label %for.cond30.preheader.2.i.cleanup.2.i_crit_edge

for.cond30.preheader.2.i.cleanup.2.i_crit_edge:   ; preds = %for.cond30.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2.i

for.cond30.preheader.2.i.for.body33.2.i_crit_edge: ; preds = %for.cond30.preheader.2.i
  br label %for.body33.2.i

for.body33.2.i:                                   ; preds = %for.body33.2.i.for.body33.2.i_crit_edge, %for.cond30.preheader.2.i.for.body33.2.i_crit_edge
  %i.0748.2.i = phi i32 [ %inc.2.i, %for.body33.2.i.for.body33.2.i_crit_edge ], [ 0, %for.cond30.preheader.2.i.for.body33.2.i_crit_edge ]
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  %flags35.2.i = getelementptr %struct.ieee80211_channel, ptr %72, i32 %i.0748.2.i, i32 4
  %73 = ptrtoint ptr %flags35.2.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %flags35.2.i, align 4
  %74 = load ptr, ptr %68, align 4
  %max_antenna_gain.2.i = getelementptr %struct.ieee80211_channel, ptr %74, i32 %i.0748.2.i, i32 5
  %75 = ptrtoint ptr %max_antenna_gain.2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %max_antenna_gain.2.i, align 4
  %76 = load ptr, ptr %68, align 4
  %max_power.2.i = getelementptr %struct.ieee80211_channel, ptr %76, i32 %i.0748.2.i, i32 6
  %77 = ptrtoint ptr %max_power.2.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 30, ptr %max_power.2.i, align 4
  %inc.2.i = add nuw nsw i32 %i.0748.2.i, 1
  %78 = ptrtoint ptr %n_channels.2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_channels.2.i, align 4
  %cmp31.2.i = icmp slt i32 %inc.2.i, %79
  br i1 %cmp31.2.i, label %for.body33.2.i.for.body33.2.i_crit_edge, label %for.body33.2.i.cleanup.2.i_crit_edge

for.body33.2.i.cleanup.2.i_crit_edge:             ; preds = %for.body33.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2.i

for.body33.2.i.for.body33.2.i_crit_edge:          ; preds = %for.body33.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body33.2.i

cleanup.2.i:                                      ; preds = %for.body33.2.i.cleanup.2.i_crit_edge, %for.cond30.preheader.2.i.cleanup.2.i_crit_edge, %cleanup.1.i.cleanup.2.i_crit_edge
  %80 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wiphy.i, align 8
  %arrayidx26.3.i = getelementptr %struct.wiphy, ptr %81, i32 0, i32 53, i32 3
  %82 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx26.3.i, align 4
  %tobool27.not.3.i = icmp eq ptr %83, null
  br i1 %tobool27.not.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge, label %for.cond30.preheader.3.i

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.3.i

for.cond30.preheader.3.i:                         ; preds = %cleanup.2.i
  %n_channels.3.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %n_channels.3.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %n_channels.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp31747.3.i = icmp sgt i32 %85, 0
  br i1 %cmp31747.3.i, label %for.cond30.preheader.3.i.for.body33.3.i_crit_edge, label %for.cond30.preheader.3.i.cleanup.3.i_crit_edge

for.cond30.preheader.3.i.cleanup.3.i_crit_edge:   ; preds = %for.cond30.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.3.i

for.cond30.preheader.3.i.for.body33.3.i_crit_edge: ; preds = %for.cond30.preheader.3.i
  br label %for.body33.3.i

for.body33.3.i:                                   ; preds = %for.body33.3.i.for.body33.3.i_crit_edge, %for.cond30.preheader.3.i.for.body33.3.i_crit_edge
  %i.0748.3.i = phi i32 [ %inc.3.i, %for.body33.3.i.for.body33.3.i_crit_edge ], [ 0, %for.cond30.preheader.3.i.for.body33.3.i_crit_edge ]
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %83, align 4
  %flags35.3.i = getelementptr %struct.ieee80211_channel, ptr %87, i32 %i.0748.3.i, i32 4
  %88 = ptrtoint ptr %flags35.3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %flags35.3.i, align 4
  %89 = load ptr, ptr %83, align 4
  %max_antenna_gain.3.i = getelementptr %struct.ieee80211_channel, ptr %89, i32 %i.0748.3.i, i32 5
  %90 = ptrtoint ptr %max_antenna_gain.3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %max_antenna_gain.3.i, align 4
  %91 = load ptr, ptr %83, align 4
  %max_power.3.i = getelementptr %struct.ieee80211_channel, ptr %91, i32 %i.0748.3.i, i32 6
  %92 = ptrtoint ptr %max_power.3.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 30, ptr %max_power.3.i, align 4
  %inc.3.i = add nuw nsw i32 %i.0748.3.i, 1
  %93 = ptrtoint ptr %n_channels.3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_channels.3.i, align 4
  %cmp31.3.i = icmp slt i32 %inc.3.i, %94
  br i1 %cmp31.3.i, label %for.body33.3.i.for.body33.3.i_crit_edge, label %for.body33.3.i.cleanup.3.i_crit_edge

for.body33.3.i.cleanup.3.i_crit_edge:             ; preds = %for.body33.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.3.i

for.body33.3.i.for.body33.3.i_crit_edge:          ; preds = %for.body33.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body33.3.i

cleanup.3.i:                                      ; preds = %for.body33.3.i.cleanup.3.i_crit_edge, %for.cond30.preheader.3.i.cleanup.3.i_crit_edge, %cleanup.2.i.cleanup.3.i_crit_edge
  %95 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wiphy.i, align 8
  %arrayidx26.4.i = getelementptr %struct.wiphy, ptr %96, i32 0, i32 53, i32 4
  %97 = ptrtoint ptr %arrayidx26.4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx26.4.i, align 4
  %tobool27.not.4.i = icmp eq ptr %98, null
  br i1 %tobool27.not.4.i, label %cleanup.3.i.cleanup.4.i_crit_edge, label %for.cond30.preheader.4.i

cleanup.3.i.cleanup.4.i_crit_edge:                ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.4.i

for.cond30.preheader.4.i:                         ; preds = %cleanup.3.i
  %n_channels.4.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %n_channels.4.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n_channels.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp31747.4.i = icmp sgt i32 %100, 0
  br i1 %cmp31747.4.i, label %for.cond30.preheader.4.i.for.body33.4.i_crit_edge, label %for.cond30.preheader.4.i.cleanup.4.i_crit_edge

for.cond30.preheader.4.i.cleanup.4.i_crit_edge:   ; preds = %for.cond30.preheader.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.4.i

for.cond30.preheader.4.i.for.body33.4.i_crit_edge: ; preds = %for.cond30.preheader.4.i
  br label %for.body33.4.i

for.body33.4.i:                                   ; preds = %for.body33.4.i.for.body33.4.i_crit_edge, %for.cond30.preheader.4.i.for.body33.4.i_crit_edge
  %i.0748.4.i = phi i32 [ %inc.4.i, %for.body33.4.i.for.body33.4.i_crit_edge ], [ 0, %for.cond30.preheader.4.i.for.body33.4.i_crit_edge ]
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %98, align 4
  %flags35.4.i = getelementptr %struct.ieee80211_channel, ptr %102, i32 %i.0748.4.i, i32 4
  %103 = ptrtoint ptr %flags35.4.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %flags35.4.i, align 4
  %104 = load ptr, ptr %98, align 4
  %max_antenna_gain.4.i = getelementptr %struct.ieee80211_channel, ptr %104, i32 %i.0748.4.i, i32 5
  %105 = ptrtoint ptr %max_antenna_gain.4.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %max_antenna_gain.4.i, align 4
  %106 = load ptr, ptr %98, align 4
  %max_power.4.i = getelementptr %struct.ieee80211_channel, ptr %106, i32 %i.0748.4.i, i32 6
  %107 = ptrtoint ptr %max_power.4.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 30, ptr %max_power.4.i, align 4
  %inc.4.i = add nuw nsw i32 %i.0748.4.i, 1
  %108 = ptrtoint ptr %n_channels.4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_channels.4.i, align 4
  %cmp31.4.i = icmp slt i32 %inc.4.i, %109
  br i1 %cmp31.4.i, label %for.body33.4.i.for.body33.4.i_crit_edge, label %for.body33.4.i.cleanup.4.i_crit_edge

for.body33.4.i.cleanup.4.i_crit_edge:             ; preds = %for.body33.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.4.i

for.body33.4.i.for.body33.4.i_crit_edge:          ; preds = %for.body33.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body33.4.i

cleanup.4.i:                                      ; preds = %for.body33.4.i.cleanup.4.i_crit_edge, %for.cond30.preheader.4.i.cleanup.4.i_crit_edge, %cleanup.3.i.cleanup.4.i_crit_edge
  %110 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wiphy.i, align 8
  %arrayidx26.5.i = getelementptr %struct.wiphy, ptr %111, i32 0, i32 53, i32 5
  %112 = ptrtoint ptr %arrayidx26.5.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx26.5.i, align 4
  %tobool27.not.5.i = icmp eq ptr %113, null
  br i1 %tobool27.not.5.i, label %cleanup.4.i.cleanup.5.i_crit_edge, label %for.cond30.preheader.5.i

cleanup.4.i.cleanup.5.i_crit_edge:                ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.5.i

for.cond30.preheader.5.i:                         ; preds = %cleanup.4.i
  %n_channels.5.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %n_channels.5.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %n_channels.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp31747.5.i = icmp sgt i32 %115, 0
  br i1 %cmp31747.5.i, label %for.cond30.preheader.5.i.for.body33.5.i_crit_edge, label %for.cond30.preheader.5.i.cleanup.5.i_crit_edge

for.cond30.preheader.5.i.cleanup.5.i_crit_edge:   ; preds = %for.cond30.preheader.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.5.i

for.cond30.preheader.5.i.for.body33.5.i_crit_edge: ; preds = %for.cond30.preheader.5.i
  br label %for.body33.5.i

for.body33.5.i:                                   ; preds = %for.body33.5.i.for.body33.5.i_crit_edge, %for.cond30.preheader.5.i.for.body33.5.i_crit_edge
  %i.0748.5.i = phi i32 [ %inc.5.i, %for.body33.5.i.for.body33.5.i_crit_edge ], [ 0, %for.cond30.preheader.5.i.for.body33.5.i_crit_edge ]
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %113, align 4
  %flags35.5.i = getelementptr %struct.ieee80211_channel, ptr %117, i32 %i.0748.5.i, i32 4
  %118 = ptrtoint ptr %flags35.5.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %flags35.5.i, align 4
  %119 = load ptr, ptr %113, align 4
  %max_antenna_gain.5.i = getelementptr %struct.ieee80211_channel, ptr %119, i32 %i.0748.5.i, i32 5
  %120 = ptrtoint ptr %max_antenna_gain.5.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %max_antenna_gain.5.i, align 4
  %121 = load ptr, ptr %113, align 4
  %max_power.5.i = getelementptr %struct.ieee80211_channel, ptr %121, i32 %i.0748.5.i, i32 6
  %122 = ptrtoint ptr %max_power.5.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 30, ptr %max_power.5.i, align 4
  %inc.5.i = add nuw nsw i32 %i.0748.5.i, 1
  %123 = ptrtoint ptr %n_channels.5.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %n_channels.5.i, align 4
  %cmp31.5.i = icmp slt i32 %inc.5.i, %124
  br i1 %cmp31.5.i, label %for.body33.5.i.for.body33.5.i_crit_edge, label %for.body33.5.i.cleanup.5.i_crit_edge

for.body33.5.i.cleanup.5.i_crit_edge:             ; preds = %for.body33.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.5.i

for.body33.5.i.for.body33.5.i_crit_edge:          ; preds = %for.body33.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body33.5.i

cleanup.5.i:                                      ; preds = %for.body33.5.i.cleanup.5.i_crit_edge, %for.cond30.preheader.5.i.cleanup.5.i_crit_edge, %cleanup.4.i.cleanup.5.i_crit_edge
  %125 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wiphy.i, align 8
  %max_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %126, i32 0, i32 18
  %127 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 2, ptr %max_scan_ssids.i, align 32
  %128 = load ptr, ptr %wiphy.i, align 8
  %max_scan_ie_len.i = getelementptr inbounds %struct.wiphy, ptr %128, i32 0, i32 22
  %129 = ptrtoint ptr %max_scan_ie_len.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 2304, ptr %max_scan_ie_len.i, align 4
  %tobool45.not.i = icmp eq ptr %macaddr, null
  %130 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i724.i = getelementptr inbounds %struct.wiphy, ptr %130, i32 0, i32 1
  br i1 %tobool45.not.i, label %if.else47.i, label %if.then46.i

if.then46.i:                                      ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #6
  %131 = call ptr @memcpy(ptr %perm_addr.i724.i, ptr %macaddr, i32 6)
  br label %if.end48.i

if.else47.i:                                      ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #6
  %132 = call ptr @memcpy(ptr %perm_addr.i724.i, ptr @cw1200_mac_template, i32 6)
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else47.i, %if.then46.i
  %133 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wiphy.i, align 8
  %arrayidx50.i = getelementptr %struct.wiphy, ptr %134, i32 0, i32 1, i32 3
  %135 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp52.i = icmp eq i8 %136, 0
  br i1 %cmp52.i, label %land.lhs.true.i, label %if.end48.i.do.body.i_crit_edge

if.end48.i.do.body.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.end48.i
  %arrayidx56.i = getelementptr %struct.wiphy, ptr %134, i32 0, i32 1, i32 4
  %137 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp58.i = icmp eq i8 %138, 0
  br i1 %cmp58.i, label %land.lhs.true60.i, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

land.lhs.true60.i:                                ; preds = %land.lhs.true.i
  %arrayidx63.i = getelementptr %struct.wiphy, ptr %134, i32 0, i32 1, i32 5
  %139 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx63.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp65.i = icmp eq i8 %140, 0
  br i1 %cmp65.i, label %if.then67.i, label %land.lhs.true60.i.do.body.i_crit_edge

land.lhs.true60.i.do.body.i_crit_edge:            ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.then67.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @get_random_bytes(ptr noundef %arrayidx50.i, i32 noundef 3) #4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then67.i, %land.lhs.true60.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge, %if.end48.i.do.body.i_crit_edge
  %wsm_cmd_mux.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 89
  tail call void @__mutex_init(ptr noundef %wsm_cmd_mux.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @cw1200_init_common.__key) #4
  %conf_mutex.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %conf_mutex.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @cw1200_init_common.__key.6) #4
  %call75.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.8, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.9) #4
  %workqueue.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 16
  %141 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call75.i, ptr %workqueue.i, align 4
  %tobool77.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool77.not.i, label %if.then78.i, label %if.end79.i

if.then78.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i.i) #4
  br label %err77

if.end79.i:                                       ; preds = %do.body.i
  %scan.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85
  %wait_list1.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 2
  %142 = ptrtoint ptr %scan.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %scan.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 0, i32 1
  %143 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 0, i32 2
  %144 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 0, i32 3
  %145 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 0, i32 4
  %146 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 0, i32 4, i32 2
  %147 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.84, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 0, i32 4, i32 3
  %148 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 0, i32 4, i32 4
  %149 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 0, i32 4, i32 5
  %150 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 1
  %151 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i, align 4
  %152 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 0, i32 2, i32 1
  %153 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 1
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #4
  %154 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @cw1200_init_common.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry88.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 1, i32 1
  %155 = ptrtoint ptr %entry88.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %entry88.i, ptr %entry88.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 1, i32 1, i32 1
  %156 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %entry88.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 1, i32 2
  %157 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @cw1200_scan_work, ptr %func.i, align 4
  %probe_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 12
  tail call void @__init_work(ptr noundef %probe_work.i, i32 noundef 0) #4
  %158 = ptrtoint ptr %probe_work.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -64, ptr %probe_work.i, align 4
  %lockdep_map106.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 12, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map106.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @cw1200_init_common.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry110.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 12, i32 0, i32 1
  %159 = ptrtoint ptr %entry110.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %entry110.i, ptr %entry110.i, align 4
  %prev.i725.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 12, i32 0, i32 1, i32 1
  %160 = ptrtoint ptr %prev.i725.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %entry110.i, ptr %prev.i725.i, align 4
  %func114.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 12, i32 0, i32 2
  %161 = ptrtoint ptr %func114.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @cw1200_probe_work, ptr %func114.i, align 4
  %timer.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @cw1200_init_common.__key.14) #4
  %timeout.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 2
  tail call void @__init_work(ptr noundef %timeout.i, i32 noundef 0) #4
  %162 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -64, ptr %timeout.i, align 4
  %lockdep_map137.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map137.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @cw1200_init_common.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry141.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 2, i32 0, i32 1
  %163 = ptrtoint ptr %entry141.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %entry141.i, ptr %entry141.i, align 4
  %prev.i726.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 2, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %prev.i726.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %entry141.i, ptr %prev.i726.i, align 4
  %func145.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 2, i32 0, i32 2
  %165 = ptrtoint ptr %func145.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @cw1200_scan_timeout, ptr %func145.i, align 4
  %timer151.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 85, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer151.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @cw1200_init_common.__key.18) #4
  %clear_recent_scan_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 87
  tail call void @__init_work(ptr noundef %clear_recent_scan_work.i, i32 noundef 0) #4
  %166 = ptrtoint ptr %clear_recent_scan_work.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -64, ptr %clear_recent_scan_work.i, align 4
  %lockdep_map166.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 87, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map166.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @cw1200_init_common.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry169.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 87, i32 0, i32 1
  %167 = ptrtoint ptr %entry169.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %entry169.i, ptr %entry169.i, align 4
  %prev.i727.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 87, i32 0, i32 1, i32 1
  %168 = ptrtoint ptr %prev.i727.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %entry169.i, ptr %prev.i727.i, align 4
  %func172.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 87, i32 0, i32 2
  %169 = ptrtoint ptr %func172.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @cw1200_clear_recent_scan_work, ptr %func172.i, align 4
  %timer177.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 87, i32 1
  tail call void @init_timer_key(ptr noundef %timer177.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.23, ptr noundef nonnull @cw1200_init_common.__key.22) #4
  %join_timeout.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 101
  tail call void @__init_work(ptr noundef %join_timeout.i, i32 noundef 0) #4
  %170 = ptrtoint ptr %join_timeout.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -64, ptr %join_timeout.i, align 4
  %lockdep_map192.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 101, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map192.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @cw1200_init_common.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry195.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 101, i32 0, i32 1
  %171 = ptrtoint ptr %entry195.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %entry195.i, ptr %entry195.i, align 4
  %prev.i728.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 101, i32 0, i32 1, i32 1
  %172 = ptrtoint ptr %prev.i728.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %entry195.i, ptr %prev.i728.i, align 4
  %func198.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 101, i32 0, i32 2
  %173 = ptrtoint ptr %func198.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @cw1200_join_timeout, ptr %func198.i, align 4
  %timer203.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 101, i32 1
  tail call void @init_timer_key(ptr noundef %timer203.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.27, ptr noundef nonnull @cw1200_init_common.__key.26) #4
  %unjoin_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 102
  tail call void @__init_work(ptr noundef %unjoin_work.i, i32 noundef 0) #4
  %174 = ptrtoint ptr %unjoin_work.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 -64, ptr %unjoin_work.i, align 4
  %lockdep_map214.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 102, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map214.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @cw1200_init_common.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry216.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 102, i32 1
  %175 = ptrtoint ptr %entry216.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %entry216.i, ptr %entry216.i, align 4
  %prev.i729.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 102, i32 1, i32 1
  %176 = ptrtoint ptr %prev.i729.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %entry216.i, ptr %prev.i729.i, align 4
  %func218.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 102, i32 2
  %177 = ptrtoint ptr %func218.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @cw1200_unjoin_work, ptr %func218.i, align 4
  %join_complete_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 103
  tail call void @__init_work(ptr noundef %join_complete_work.i, i32 noundef 0) #4
  %178 = ptrtoint ptr %join_complete_work.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -64, ptr %join_complete_work.i, align 4
  %lockdep_map227.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 103, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map227.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @cw1200_init_common.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry229.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 103, i32 1
  %179 = ptrtoint ptr %entry229.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %entry229.i, ptr %entry229.i, align 4
  %prev.i730.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 103, i32 1, i32 1
  %180 = ptrtoint ptr %prev.i730.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %entry229.i, ptr %prev.i730.i, align 4
  %func231.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 103, i32 2
  %181 = ptrtoint ptr %func231.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @cw1200_join_complete_work, ptr %func231.i, align 4
  %wep_key_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 109
  tail call void @__init_work(ptr noundef %wep_key_work.i, i32 noundef 0) #4
  %182 = ptrtoint ptr %wep_key_work.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 -64, ptr %wep_key_work.i, align 4
  %lockdep_map240.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 109, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map240.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @cw1200_init_common.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry242.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 109, i32 1
  %183 = ptrtoint ptr %entry242.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %entry242.i, ptr %entry242.i, align 4
  %prev.i731.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 109, i32 1, i32 1
  %184 = ptrtoint ptr %prev.i731.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %entry242.i, ptr %prev.i731.i, align 4
  %func244.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 109, i32 2
  %185 = ptrtoint ptr %func244.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @cw1200_wep_key_work, ptr %func244.i, align 4
  %tx_policy_upload_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 139
  tail call void @__init_work(ptr noundef %tx_policy_upload_work.i, i32 noundef 0) #4
  %186 = ptrtoint ptr %tx_policy_upload_work.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -64, ptr %tx_policy_upload_work.i, align 4
  %lockdep_map253.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 139, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map253.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @cw1200_init_common.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry255.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 139, i32 1
  %187 = ptrtoint ptr %entry255.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %entry255.i, ptr %entry255.i, align 4
  %prev.i732.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 139, i32 1, i32 1
  %188 = ptrtoint ptr %prev.i732.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %entry255.i, ptr %prev.i732.i, align 4
  %func257.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 139, i32 2
  %189 = ptrtoint ptr %func257.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @tx_policy_upload_work, ptr %func257.i, align 4
  %event_queue_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 129
  tail call void @__raw_spin_lock_init(ptr noundef %event_queue_lock.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @cw1200_init_common.__key.36, i16 noundef signext 3) #4
  %event_queue.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 130
  %190 = ptrtoint ptr %event_queue.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %event_queue.i, ptr %event_queue.i, align 4
  %prev.i733.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 130, i32 1
  %191 = ptrtoint ptr %prev.i733.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %event_queue.i, ptr %prev.i733.i, align 4
  %event_handler.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 131
  tail call void @__init_work(ptr noundef %event_handler.i, i32 noundef 0) #4
  %192 = ptrtoint ptr %event_handler.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -64, ptr %event_handler.i, align 4
  %lockdep_map270.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 131, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map270.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @cw1200_init_common.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry272.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 131, i32 1
  %193 = ptrtoint ptr %entry272.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %entry272.i, ptr %entry272.i, align 4
  %prev.i734.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 131, i32 1, i32 1
  %194 = ptrtoint ptr %prev.i734.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %entry272.i, ptr %prev.i734.i, align 4
  %func274.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 131, i32 2
  %195 = ptrtoint ptr %func274.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @cw1200_event_handler, ptr %func274.i, align 4
  %bss_loss_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 132
  tail call void @__init_work(ptr noundef %bss_loss_work.i, i32 noundef 0) #4
  %196 = ptrtoint ptr %bss_loss_work.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -64, ptr %bss_loss_work.i, align 4
  %lockdep_map287.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 132, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map287.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @cw1200_init_common.__key.40, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry290.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 132, i32 0, i32 1
  %197 = ptrtoint ptr %entry290.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile ptr %entry290.i, ptr %entry290.i, align 4
  %prev.i735.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 132, i32 0, i32 1, i32 1
  %198 = ptrtoint ptr %prev.i735.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %entry290.i, ptr %prev.i735.i, align 4
  %func293.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 132, i32 0, i32 2
  %199 = ptrtoint ptr %func293.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @cw1200_bss_loss_work, ptr %func293.i, align 4
  %timer298.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 132, i32 1
  tail call void @init_timer_key(ptr noundef %timer298.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.43, ptr noundef nonnull @cw1200_init_common.__key.42) #4
  %bss_params_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 137
  tail call void @__init_work(ptr noundef %bss_params_work.i, i32 noundef 0) #4
  %200 = ptrtoint ptr %bss_params_work.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -64, ptr %bss_params_work.i, align 4
  %lockdep_map309.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 137, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map309.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @cw1200_init_common.__key.44, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry311.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 137, i32 1
  %201 = ptrtoint ptr %entry311.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %entry311.i, ptr %entry311.i, align 4
  %prev.i736.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 137, i32 1, i32 1
  %202 = ptrtoint ptr %prev.i736.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %entry311.i, ptr %prev.i736.i, align 4
  %func313.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 137, i32 2
  %203 = ptrtoint ptr %func313.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @cw1200_bss_params_work, ptr %func313.i, align 4
  %bss_loss_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 133
  tail call void @__raw_spin_lock_init(ptr noundef %bss_loss_lock.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @cw1200_init_common.__key.46, i16 noundef signext 3) #4
  %ps_state_lock.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 120
  tail call void @__raw_spin_lock_init(ptr noundef %ps_state_lock.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @cw1200_init_common.__key.48, i16 noundef signext 3) #4
  %set_cts_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 125
  tail call void @__init_work(ptr noundef %set_cts_work.i, i32 noundef 0) #4
  %204 = ptrtoint ptr %set_cts_work.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 -64, ptr %set_cts_work.i, align 4
  %lockdep_map330.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 125, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map330.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @cw1200_init_common.__key.50, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry332.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 125, i32 1
  %205 = ptrtoint ptr %entry332.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %entry332.i, ptr %entry332.i, align 4
  %prev.i737.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 125, i32 1, i32 1
  %206 = ptrtoint ptr %prev.i737.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %entry332.i, ptr %prev.i737.i, align 4
  %func334.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 125, i32 2
  %207 = ptrtoint ptr %func334.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @cw1200_set_cts_work, ptr %func334.i, align 4
  %set_tim_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 124
  tail call void @__init_work(ptr noundef %set_tim_work.i, i32 noundef 0) #4
  %208 = ptrtoint ptr %set_tim_work.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -64, ptr %set_tim_work.i, align 4
  %lockdep_map343.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 124, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map343.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @cw1200_init_common.__key.52, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry345.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 124, i32 1
  %209 = ptrtoint ptr %entry345.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile ptr %entry345.i, ptr %entry345.i, align 4
  %prev.i738.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 124, i32 1, i32 1
  %210 = ptrtoint ptr %prev.i738.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %entry345.i, ptr %prev.i738.i, align 4
  %func347.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 124, i32 2
  %211 = ptrtoint ptr %func347.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @cw1200_set_tim_work, ptr %func347.i, align 4
  %multicast_start_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 126
  tail call void @__init_work(ptr noundef %multicast_start_work.i, i32 noundef 0) #4
  %212 = ptrtoint ptr %multicast_start_work.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -64, ptr %multicast_start_work.i, align 4
  %lockdep_map356.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 126, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map356.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @cw1200_init_common.__key.54, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry358.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 126, i32 1
  %213 = ptrtoint ptr %entry358.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile ptr %entry358.i, ptr %entry358.i, align 4
  %prev.i739.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 126, i32 1, i32 1
  %214 = ptrtoint ptr %prev.i739.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %entry358.i, ptr %prev.i739.i, align 4
  %func360.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 126, i32 2
  %215 = ptrtoint ptr %func360.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @cw1200_multicast_start_work, ptr %func360.i, align 4
  %multicast_stop_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 127
  tail call void @__init_work(ptr noundef %multicast_stop_work.i, i32 noundef 0) #4
  %216 = ptrtoint ptr %multicast_stop_work.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -64, ptr %multicast_stop_work.i, align 4
  %lockdep_map369.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 127, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map369.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @cw1200_init_common.__key.56, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry371.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 127, i32 1
  %217 = ptrtoint ptr %entry371.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile ptr %entry371.i, ptr %entry371.i, align 4
  %prev.i740.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 127, i32 1, i32 1
  %218 = ptrtoint ptr %prev.i740.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %entry371.i, ptr %prev.i740.i, align 4
  %func373.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 127, i32 2
  %219 = ptrtoint ptr %func373.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @cw1200_multicast_stop_work, ptr %func373.i, align 4
  %link_id_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 114
  tail call void @__init_work(ptr noundef %link_id_work.i, i32 noundef 0) #4
  %220 = ptrtoint ptr %link_id_work.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -64, ptr %link_id_work.i, align 4
  %lockdep_map382.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 114, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map382.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @cw1200_init_common.__key.58, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry384.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 114, i32 1
  %221 = ptrtoint ptr %entry384.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %entry384.i, ptr %entry384.i, align 4
  %prev.i741.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 114, i32 1, i32 1
  %222 = ptrtoint ptr %prev.i741.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %entry384.i, ptr %prev.i741.i, align 4
  %func386.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 114, i32 2
  %223 = ptrtoint ptr %func386.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @cw1200_link_id_work, ptr %func386.i, align 4
  %link_id_gc_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 115
  tail call void @__init_work(ptr noundef %link_id_gc_work.i, i32 noundef 0) #4
  %224 = ptrtoint ptr %link_id_gc_work.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -64, ptr %link_id_gc_work.i, align 4
  %lockdep_map399.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 115, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map399.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @cw1200_init_common.__key.60, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry402.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 115, i32 0, i32 1
  %225 = ptrtoint ptr %entry402.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %entry402.i, ptr %entry402.i, align 4
  %prev.i742.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 115, i32 0, i32 1, i32 1
  %226 = ptrtoint ptr %prev.i742.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %entry402.i, ptr %prev.i742.i, align 4
  %func405.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 115, i32 0, i32 2
  %227 = ptrtoint ptr %func405.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @cw1200_link_id_gc_work, ptr %func405.i, align 4
  %timer410.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 115, i32 1
  tail call void @init_timer_key(ptr noundef %timer410.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.63, ptr noundef nonnull @cw1200_init_common.__key.62) #4
  %linkid_reset_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 142
  tail call void @__init_work(ptr noundef %linkid_reset_work.i, i32 noundef 0) #4
  %228 = ptrtoint ptr %linkid_reset_work.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 -64, ptr %linkid_reset_work.i, align 4
  %lockdep_map421.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 142, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map421.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @cw1200_init_common.__key.64, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry423.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 142, i32 1
  %229 = ptrtoint ptr %entry423.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr %entry423.i, ptr %entry423.i, align 4
  %prev.i743.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 142, i32 1, i32 1
  %230 = ptrtoint ptr %prev.i743.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %entry423.i, ptr %prev.i743.i, align 4
  %func425.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 142, i32 2
  %231 = ptrtoint ptr %func425.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @cw1200_link_id_reset, ptr %func425.i, align 4
  %update_filtering_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 53
  tail call void @__init_work(ptr noundef %update_filtering_work.i, i32 noundef 0) #4
  %232 = ptrtoint ptr %update_filtering_work.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 -64, ptr %update_filtering_work.i, align 4
  %lockdep_map434.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 53, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map434.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @cw1200_init_common.__key.66, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry436.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 53, i32 1
  %233 = ptrtoint ptr %entry436.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile ptr %entry436.i, ptr %entry436.i, align 4
  %prev.i744.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 53, i32 1, i32 1
  %234 = ptrtoint ptr %prev.i744.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %entry436.i, ptr %prev.i744.i, align 4
  %func438.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 53, i32 2
  %235 = ptrtoint ptr %func438.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr @cw1200_update_filtering_work, ptr %func438.i, align 4
  %set_beacon_wakeup_period_work.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 54
  tail call void @__init_work(ptr noundef %set_beacon_wakeup_period_work.i, i32 noundef 0) #4
  %236 = ptrtoint ptr %set_beacon_wakeup_period_work.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 -64, ptr %set_beacon_wakeup_period_work.i, align 4
  %lockdep_map447.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 54, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map447.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @cw1200_init_common.__key.68, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry449.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 54, i32 1
  %237 = ptrtoint ptr %entry449.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile ptr %entry449.i, ptr %entry449.i, align 4
  %prev.i745.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 54, i32 1, i32 1
  %238 = ptrtoint ptr %prev.i745.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %entry449.i, ptr %prev.i745.i, align 4
  %func451.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 54, i32 2
  %239 = ptrtoint ptr %func451.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr @cw1200_set_beacon_wakeup_period_work, ptr %func451.i, align 4
  %mcast_timeout.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 128
  tail call void @init_timer_key(ptr noundef %mcast_timeout.i, ptr noundef nonnull @cw1200_mcast_timeout, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @cw1200_init_common.__key.70) #4
  %tx_queue_stats.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 19
  %call457.i = tail call i32 @cw1200_queue_stats_init(ptr noundef %tx_queue_stats.i, i32 noundef 8, ptr noundef nonnull @cw1200_skb_dtor, ptr noundef %2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call457.i)
  %tobool458.not.i = icmp eq i32 %call457.i, 0
  br i1 %tobool458.not.i, label %for.body465.preheader.i, label %if.then459.i

for.body465.preheader.i:                          ; preds = %if.end79.i
  %arrayidx466.i = getelementptr %struct.cw1200_common, ptr %2, i32 0, i32 18, i32 0
  %call470.i = tail call i32 @cw1200_queue_init(ptr noundef %arrayidx466.i, ptr noundef %tx_queue_stats.i, i8 noundef zeroext 0, i32 noundef 16, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470.i)
  %tobool471.not.i = icmp eq i32 %call470.i, 0
  br i1 %tobool471.not.i, label %for.inc484.i, label %for.body465.preheader.i.for.end480.i_crit_edge

for.body465.preheader.i.for.end480.i_crit_edge:   ; preds = %for.body465.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end480.i

if.then459.i:                                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #6
  %240 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %workqueue.i, align 4
  tail call void @destroy_workqueue(ptr noundef %241) #4
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i.i) #4
  br label %err77

for.body476.i.1:                                  ; preds = %for.body476.i.preheader
  %sub.i.1 = add nsw i32 %i.2752.i.ph, -2
  %arrayidx478.i.1 = getelementptr %struct.cw1200_common, ptr %2, i32 0, i32 18, i32 %sub.i.1
  tail call void @cw1200_queue_deinit(ptr noundef %arrayidx478.i.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp474.i.1 = icmp ugt i32 %sub.i, 1
  br i1 %cmp474.i.1, label %for.body476.i.2, label %for.body476.i.1.for.end480.i_crit_edge

for.body476.i.1.for.end480.i_crit_edge:           ; preds = %for.body476.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end480.i

for.body476.i.2:                                  ; preds = %for.body476.i.1
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.2 = add nsw i32 %i.2752.i.ph, -3
  %arrayidx478.i.2 = getelementptr %struct.cw1200_common, ptr %2, i32 0, i32 18, i32 %sub.i.2
  tail call void @cw1200_queue_deinit(ptr noundef %arrayidx478.i.2) #4
  br label %for.end480.i

for.end480.i:                                     ; preds = %for.body476.i.preheader.for.end480.i_crit_edge, %for.body476.i.2, %for.body476.i.1.for.end480.i_crit_edge, %for.body465.preheader.i.for.end480.i_crit_edge
  tail call void @cw1200_queue_stats_deinit(ptr noundef %tx_queue_stats.i) #4
  %242 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %workqueue.i, align 4
  tail call void @destroy_workqueue(ptr noundef %243) #4
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i.i) #4
  br label %err77

for.inc484.i:                                     ; preds = %for.body465.preheader.i
  %arrayidx466.1.i = getelementptr %struct.cw1200_common, ptr %2, i32 0, i32 18, i32 1
  %call470.1.i = tail call i32 @cw1200_queue_init(ptr noundef %arrayidx466.1.i, ptr noundef %tx_queue_stats.i, i8 noundef zeroext 1, i32 noundef 16, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470.1.i)
  %tobool471.not.1.i = icmp eq i32 %call470.1.i, 0
  br i1 %tobool471.not.1.i, label %for.inc484.1.i, label %for.inc484.i.for.body476.i.preheader_crit_edge

for.inc484.i.for.body476.i.preheader_crit_edge:   ; preds = %for.inc484.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body476.i.preheader

for.body476.i.preheader:                          ; preds = %for.inc484.2.i.for.body476.i.preheader_crit_edge, %for.inc484.1.i.for.body476.i.preheader_crit_edge, %for.inc484.i.for.body476.i.preheader_crit_edge
  %i.2752.i.ph = phi i32 [ 1, %for.inc484.i.for.body476.i.preheader_crit_edge ], [ 2, %for.inc484.1.i.for.body476.i.preheader_crit_edge ], [ 3, %for.inc484.2.i.for.body476.i.preheader_crit_edge ]
  %sub.i = add nsw i32 %i.2752.i.ph, -1
  %arrayidx478.i = getelementptr %struct.cw1200_common, ptr %2, i32 0, i32 18, i32 %sub.i
  tail call void @cw1200_queue_deinit(ptr noundef %arrayidx478.i) #4
  br i1 %tobool471.not.1.i, label %for.body476.i.1, label %for.body476.i.preheader.for.end480.i_crit_edge

for.body476.i.preheader.for.end480.i_crit_edge:   ; preds = %for.body476.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end480.i

for.inc484.1.i:                                   ; preds = %for.inc484.i
  %arrayidx466.2.i = getelementptr %struct.cw1200_common, ptr %2, i32 0, i32 18, i32 2
  %call470.2.i = tail call i32 @cw1200_queue_init(ptr noundef %arrayidx466.2.i, ptr noundef %tx_queue_stats.i, i8 noundef zeroext 2, i32 noundef 16, i32 noundef 500) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470.2.i)
  %tobool471.not.2.i = icmp eq i32 %call470.2.i, 0
  br i1 %tobool471.not.2.i, label %for.inc484.2.i, label %for.inc484.1.i.for.body476.i.preheader_crit_edge

for.inc484.1.i.for.body476.i.preheader_crit_edge: ; preds = %for.inc484.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body476.i.preheader

for.inc484.2.i:                                   ; preds = %for.inc484.1.i
  %arrayidx466.3.i = getelementptr %struct.cw1200_common, ptr %2, i32 0, i32 18, i32 3
  %call470.3.i = tail call i32 @cw1200_queue_init(ptr noundef %arrayidx466.3.i, ptr noundef %tx_queue_stats.i, i8 noundef zeroext 3, i32 noundef 16, i32 noundef 1000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470.3.i)
  %tobool471.not.3.i = icmp eq i32 %call470.3.i, 0
  br i1 %tobool471.not.3.i, label %cw1200_init_common.exit, label %for.inc484.2.i.for.body476.i.preheader_crit_edge

for.inc484.2.i.for.body476.i.preheader_crit_edge: ; preds = %for.inc484.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body476.i.preheader

cw1200_init_common.exit:                          ; preds = %for.inc484.2.i
  %channel_switch_done.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 39
  tail call void @__init_waitqueue_head(ptr noundef %channel_switch_done.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @cw1200_init_common.__key.72) #4
  %wsm_cmd_wq.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 92
  tail call void @__init_waitqueue_head(ptr noundef %wsm_cmd_wq.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @cw1200_init_common.__key.74) #4
  %wsm_startup_done.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 93
  tail call void @__init_waitqueue_head(ptr noundef %wsm_startup_done.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @cw1200_init_common.__key.76) #4
  %ps_mode_switch_done.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 141
  tail call void @__init_waitqueue_head(ptr noundef %ps_mode_switch_done.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @cw1200_init_common.__key.78) #4
  %wsm_cmd_buf.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 90
  tail call void @wsm_buf_init(ptr noundef %wsm_cmd_buf.i) #4
  %wsm_cmd.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 91
  tail call void @__raw_spin_lock_init(ptr noundef %wsm_cmd.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @cw1200_init_common.__key.80, i16 noundef signext 3) #4
  %done.i = getelementptr inbounds %struct.cw1200_common, ptr %2, i32 0, i32 91, i32 1
  %244 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 1, ptr %done.i, align 4
  tail call void @tx_policy_init(ptr noundef %2) #4
  %245 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %priv1.i, align 8
  %hw_refclk = getelementptr inbounds %struct.cw1200_common, ptr %246, i32 0, i32 10
  %247 = load i32, ptr @cw1200_refclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool3.not = icmp eq i32 %247, 0
  %spec.store.select = select i1 %tobool3.not, i32 %ref_clk, i32 %247
  %248 = ptrtoint ptr %hw_refclk to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %spec.store.select, ptr %hw_refclk, align 4
  %sdd_path7 = getelementptr inbounds %struct.cw1200_common, ptr %246, i32 0, i32 14
  %249 = load ptr, ptr @cw1200_sdd_path, align 4
  %tobool8.not = icmp eq ptr %249, null
  %spec.store.select118 = select i1 %tobool8.not, ptr %sdd_path, ptr %249
  %250 = ptrtoint ptr %sdd_path7 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %spec.store.select118, ptr %sdd_path7, align 4
  %hwbus_ops12 = getelementptr inbounds %struct.cw1200_common, ptr %246, i32 0, i32 6
  %251 = ptrtoint ptr %hwbus_ops12 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %hwbus_ops, ptr %hwbus_ops12, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %246, i32 0, i32 7
  %252 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %hwbus, ptr %hwbus_priv, align 4
  %pdev13 = getelementptr inbounds %struct.cw1200_common, ptr %246, i32 0, i32 2
  %253 = ptrtoint ptr %pdev13 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %pdev, ptr %pdev13, align 4
  %254 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %246, align 4
  %wiphy.i119 = getelementptr inbounds %struct.ieee80211_hw, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %wiphy.i119 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %wiphy.i119, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %257, i32 0, i32 56, i32 1
  %258 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %pdev, ptr %parent.i.i, align 8
  %259 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %246, ptr %core, align 4
  %call14 = tail call i32 @cw1200_register_bh(ptr noundef %246) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cw1200_init_common.exit.err1_crit_edge

cw1200_init_common.exit.err1_crit_edge:           ; preds = %cw1200_init_common.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err1

if.end17:                                         ; preds = %cw1200_init_common.exit
  %call18 = tail call i32 @cw1200_load_firmware(ptr noundef %246) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err2_crit_edge

if.end17.err2_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %err2

if.end21:                                         ; preds = %if.end17
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 561) #4
  %firmware_ready = getelementptr inbounds %struct.cw1200_common, ptr %246, i32 0, i32 94
  %260 = ptrtoint ptr %firmware_ready to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %firmware_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool25.not = icmp eq i32 %261, 0
  br i1 %tobool25.not, label %if.then34, label %if.end21.wsm_set_operational_mode.exit_crit_edge

if.end21.wsm_set_operational_mode.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %wsm_set_operational_mode.exit

if.then34:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %262 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %wsm_startup_done = getelementptr inbounds %struct.cw1200_common, ptr %246, i32 0, i32 93
  %call36151 = call i32 @prepare_to_wait_event(ptr noundef %wsm_startup_done, ptr noundef nonnull %__wq_entry, i32 noundef 1) #4
  %263 = ptrtoint ptr %firmware_ready to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %firmware_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool39.not152.not = icmp eq i32 %264, 0
  br i1 %tobool39.not152.not, label %if.then34.if.end55_crit_edge, label %if.then34.for.end_crit_edge

if.then34.for.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then34.if.end55_crit_edge:                     ; preds = %if.then34
  br label %if.end55

if.end55:                                         ; preds = %cleanup.if.end55_crit_edge, %if.then34.if.end55_crit_edge
  %__ret35.1155 = phi i32 [ %__ret35.1, %cleanup.if.end55_crit_edge ], [ 300, %if.then34.if.end55_crit_edge ]
  %call36154 = phi i32 [ %call36, %cleanup.if.end55_crit_edge ], [ %call36151, %if.then34.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36154)
  %tobool56.not = icmp eq i32 %call36154, 0
  br i1 %tobool56.not, label %cleanup, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

cleanup:                                          ; preds = %if.end55
  %call59 = call i32 @schedule_timeout(i32 noundef %__ret35.1155) #4
  %call36 = call i32 @prepare_to_wait_event(ptr noundef %wsm_startup_done, ptr noundef nonnull %__wq_entry, i32 noundef 1) #4
  %265 = ptrtoint ptr %firmware_ready to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %firmware_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool39.not = icmp eq i32 %266, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool43.not = icmp eq i32 %call59, 0
  %spec.store.select82 = select i1 %tobool43.not, i32 1, i32 %call59
  %__ret35.1 = select i1 %tobool39.not, i32 %call59, i32 %spec.store.select82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1)
  %tobool49.not = icmp eq i32 %__ret35.1, 0
  %not.tobool39.not = xor i1 %tobool39.not, true
  %267 = select i1 %not.tobool39.not, i1 true, i1 %tobool49.not
  br i1 %267, label %cleanup.for.end_crit_edge, label %cleanup.if.end55_crit_edge

cleanup.if.end55_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then34.for.end_crit_edge
  %__ret35.1.lcssa = phi i32 [ 300, %if.then34.for.end_crit_edge ], [ %__ret35.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wsm_startup_done, ptr noundef nonnull %__wq_entry) #4
  br label %if.end62

if.end62:                                         ; preds = %for.end, %if.end55.if.end62_crit_edge
  %__ret35.2138 = phi i32 [ %__ret35.1.lcssa, %for.end ], [ %call36154, %if.end55.if.end62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret35.2138)
  %cmp = icmp slt i32 %__ret35.2138, 1
  br i1 %cmp, label %do.end67, label %if.end62.wsm_set_operational_mode.exit_crit_edge

if.end62.wsm_set_operational_mode.exit_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %wsm_set_operational_mode.exit

do.end67:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %err2

wsm_set_operational_mode.exit:                    ; preds = %if.end62.wsm_set_operational_mode.exit_crit_edge, %if.end21.wsm_set_operational_mode.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #4
  %conv.i120 = trunc i32 %0 to i8
  %conv2.i = or i8 %conv.i120, 16
  %268 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %conv2.i, ptr %val.i, align 1
  %call.i = call i32 @wsm_write_mib(ptr noundef %246, i16 noundef zeroext 4102, ptr noundef nonnull %val.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg.i) #4
  %269 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 16777216, ptr %arg.i, align 4
  %call.i123 = call i32 @wsm_write_mib(ptr noundef %246, i16 noundef zeroext 4132, ptr noundef nonnull %arg.i, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg.i) #4
  %270 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %priv1.i, align 8
  %pm_state.i = getelementptr inbounds %struct.cw1200_common, ptr %271, i32 0, i32 58
  %call.i125 = call i32 @cw1200_pm_init(ptr noundef %pm_state.i, ptr noundef %271) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %if.end.i127, label %do.end.i

do.end.i:                                         ; preds = %wsm_set_operational_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %call.i125) #7
  br label %err2

if.end.i127:                                      ; preds = %wsm_set_operational_mode.exit
  %call3.i = call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end12.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #6
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call3.i) #7
  call void @cw1200_pm_deinit(ptr noundef %pm_state.i) #4
  br label %err2

if.end12.i:                                       ; preds = %if.end.i127
  %call13.i = call i32 @cw1200_debug_init(ptr noundef %271) #4
  %272 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.wiphy, ptr %273, i32 0, i32 56, i32 3
  %274 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %275, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end12.i.cw1200_register_common.exit_crit_edge

if.end12.i.cw1200_register_common.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cw1200_register_common.exit

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %273, i32 0, i32 56
  %276 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev.i.i, align 4
  br label %cw1200_register_common.exit

cw1200_register_common.exit:                      ; preds = %if.end.i.i.i, %if.end12.i.cw1200_register_common.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %277, %if.end.i.i.i ], [ %275, %if.end12.i.cw1200_register_common.exit_crit_edge ]
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %retval.0.i.i.i) #7
  br label %cleanup78

err2:                                             ; preds = %do.end8.i, %do.end.i, %do.end67, %if.end17.err2_crit_edge
  %err.0 = phi i32 [ %call18, %if.end17.err2_crit_edge ], [ -110, %do.end67 ], [ %call3.i, %do.end8.i ], [ %call.i125, %do.end.i ]
  call void @cw1200_unregister_bh(ptr noundef %246) #4
  br label %err1

err1:                                             ; preds = %err2, %cw1200_init_common.exit.err1_crit_edge
  %err.1 = phi i32 [ %call14, %cw1200_init_common.exit.err1_crit_edge ], [ %err.0, %err2 ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i.i) #4
  br label %err77

err77:                                            ; preds = %err1, %for.end480.i, %if.then459.i, %if.then78.i, %entry.err77_crit_edge
  %err.2 = phi i32 [ %err.1, %err1 ], [ -22, %if.then459.i ], [ -22, %for.end480.i ], [ -22, %if.then78.i ], [ -22, %entry.err77_crit_edge ]
  %278 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr null, ptr %core, align 4
  br label %cleanup78

cleanup78:                                        ; preds = %err77, %cw1200_register_common.exit
  %retval.0 = phi i32 [ %err.2, %err77 ], [ 0, %cw1200_register_common.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_register_bh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_load_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_unregister_bh(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_core_release(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %self, i32 0, i32 6
  %0 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %self, i32 0, i32 7
  %4 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv, align 4
  tail call void %3(ptr noundef %5) #4
  %call = tail call i32 @__cw1200_irq_enable(ptr noundef %self, i32 noundef 0) #4
  %6 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock, align 4
  %10 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwbus_priv, align 4
  tail call void %9(ptr noundef %11) #4
  %12 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %self, align 4
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1.i, align 8
  tail call void @ieee80211_unregister_hw(ptr noundef %13) #4
  %mcast_timeout.i = getelementptr inbounds %struct.cw1200_common, ptr %15, i32 0, i32 128
  %call.i = tail call i32 @del_timer_sync(ptr noundef %mcast_timeout.i) #4
  tail call void @cw1200_unregister_bh(ptr noundef %15) #4
  tail call void @cw1200_debug_release(ptr noundef %15) #4
  %conf_mutex.i = getelementptr inbounds %struct.cw1200_common, ptr %15, i32 0, i32 17
  tail call void @mutex_destroy(ptr noundef %conf_mutex.i) #4
  %wsm_cmd_buf.i = getelementptr inbounds %struct.cw1200_common, ptr %15, i32 0, i32 90
  tail call void @wsm_buf_deinit(ptr noundef %wsm_cmd_buf.i) #4
  %workqueue.i = getelementptr inbounds %struct.cw1200_common, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workqueue.i, align 4
  tail call void @destroy_workqueue(ptr noundef %17) #4
  %18 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %workqueue.i, align 4
  %sdd.i = getelementptr inbounds %struct.cw1200_common, ptr %15, i32 0, i32 13
  %19 = ptrtoint ptr %sdd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdd.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %entry.cw1200_unregister_common.exit_crit_edge, label %if.then.i

entry.cw1200_unregister_common.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cw1200_unregister_common.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @release_firmware(ptr noundef nonnull %20) #4
  %21 = ptrtoint ptr %sdd.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sdd.i, align 4
  br label %cw1200_unregister_common.exit

cw1200_unregister_common.exit:                    ; preds = %if.then.i, %entry.cw1200_unregister_common.exit_crit_edge
  %arrayidx.i = getelementptr %struct.cw1200_common, ptr %15, i32 0, i32 18, i32 0
  tail call void @cw1200_queue_deinit(ptr noundef %arrayidx.i) #4
  %arrayidx.1.i = getelementptr %struct.cw1200_common, ptr %15, i32 0, i32 18, i32 1
  tail call void @cw1200_queue_deinit(ptr noundef %arrayidx.1.i) #4
  %arrayidx.2.i = getelementptr %struct.cw1200_common, ptr %15, i32 0, i32 18, i32 2
  tail call void @cw1200_queue_deinit(ptr noundef %arrayidx.2.i) #4
  %arrayidx.3.i = getelementptr %struct.cw1200_common, ptr %15, i32 0, i32 18, i32 3
  tail call void @cw1200_queue_deinit(ptr noundef %arrayidx.3.i) #4
  %tx_queue_stats.i = getelementptr inbounds %struct.cw1200_common, ptr %15, i32 0, i32 19
  tail call void @cw1200_queue_stats_deinit(ptr noundef %tx_queue_stats.i) #4
  %pm_state.i = getelementptr inbounds %struct.cw1200_common, ptr %15, i32 0, i32 58
  tail call void @cw1200_pm_deinit(ptr noundef %pm_state.i) #4
  %22 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %self, align 4
  tail call void @ieee80211_free_hw(ptr noundef %23) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cw1200_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_scan_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_probe_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_scan_timeout(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_clear_recent_scan_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_join_timeout(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_unjoin_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_join_complete_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_wep_key_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tx_policy_upload_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_event_handler(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_bss_loss_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_bss_params_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_set_cts_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_set_tim_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_multicast_start_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_multicast_stop_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_link_id_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_link_id_gc_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_link_id_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_update_filtering_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_set_beacon_wakeup_period_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_mcast_timeout(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_stats_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_skb_dtor(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_queue_init(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_queue_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_queue_stats_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_buf_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tx_policy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_tx(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_start(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_stop(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_wow_suspend(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_wow_resume(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_add_interface(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_change_interface(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_remove_interface(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_config(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cw1200_prepare_multicast(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_configure_filter(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_set_tim(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_hw_scan(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_get_stats(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_set_rts_threshold(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_sta_add(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_sta_remove(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_sta_notify(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_ampdu_action(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_flush(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_write_mib(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_pm_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_pm_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_debug_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_debug_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_buf_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !29, !31, !33, !34, !36, !37, !39, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__UNIQUE_ID_author348, !1, !"__UNIQUE_ID_author348", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_description349, !3, !"__UNIQUE_ID_description349", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 40, i32 1}
!4 = !{ptr @__UNIQUE_ID_file350, !5, !"__UNIQUE_ID_file350", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 41, i32 1}
!6 = !{ptr @__UNIQUE_ID_license351, !5, !"__UNIQUE_ID_license351", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias352, !8, !"__UNIQUE_ID_alias352", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 42, i32 1}
!9 = !{ptr @__param_macaddr, !10, !"__param_macaddr", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 46, i32 1}
!11 = !{ptr @__UNIQUE_ID_macaddrtype353, !10, !"__UNIQUE_ID_macaddrtype353", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_macaddr354, !13, !"__UNIQUE_ID_macaddr354", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 47, i32 1}
!14 = !{ptr @__param_cw1200_sdd_path, !15, !"__param_cw1200_sdd_path", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 50, i32 1}
!16 = !{ptr @__UNIQUE_ID_cw1200_sdd_pathtype355, !15, !"__UNIQUE_ID_cw1200_sdd_pathtype355", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_cw1200_sdd_path356, !18, !"__UNIQUE_ID_cw1200_sdd_path356", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 51, i32 1}
!19 = !{ptr @__param_cw1200_refclk, !20, !"__param_cw1200_refclk", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 53, i32 1}
!21 = !{ptr @__UNIQUE_ID_cw1200_refclktype357, !20, !"__UNIQUE_ID_cw1200_refclktype357", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_cw1200_refclk358, !23, !"__UNIQUE_ID_cw1200_refclk358", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 54, i32 1}
!24 = !{ptr @cw1200_power_mode, !25, !"cw1200_power_mode", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 56, i32 5}
!26 = !{ptr @__param_cw1200_power_mode, !27, !"__param_cw1200_power_mode", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 57, i32 1}
!28 = !{ptr @__UNIQUE_ID_cw1200_power_modetype359, !27, !"__UNIQUE_ID_cw1200_power_modetype359", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_cw1200_power_mode360, !30, !"__UNIQUE_ID_cw1200_power_mode360", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 58, i32 1}
!31 = !{ptr @__param_cw1200_ba_rx_tids, !32, !"__param_cw1200_ba_rx_tids", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 239, i32 1}
!33 = !{ptr @__UNIQUE_ID_cw1200_ba_rx_tidstype361, !32, !"__UNIQUE_ID_cw1200_ba_rx_tidstype361", i1 false, i1 false}
!34 = !{ptr @__param_cw1200_ba_tx_tids, !35, !"__param_cw1200_ba_tx_tids", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 240, i32 1}
!36 = !{ptr @__UNIQUE_ID_cw1200_ba_tx_tidstype362, !35, !"__UNIQUE_ID_cw1200_ba_tx_tidstype362", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_cw1200_ba_rx_tids363, !38, !"__UNIQUE_ID_cw1200_ba_rx_tids363", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 241, i32 1}
!39 = !{ptr @__UNIQUE_ID_cw1200_ba_tx_tids364, !40, !"__UNIQUE_ID_cw1200_ba_tx_tids364", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 242, i32 1}
!41 = !{ptr @.str, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 509, i32 3}
!43 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cw1200_dpll_from_clk._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @cw1200_dpll_from_clk._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 565, i32 3}
!49 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cw1200_core_probe._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cw1200_core_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @__ksymtab_cw1200_core_probe, !53, !"__ksymtab_cw1200_core_probe", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 590, i32 1}
!54 = !{ptr @__ksymtab_cw1200_core_release, !55, !"__ksymtab_cw1200_core_release", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 604, i32 1}
!56 = !{ptr @cw1200_sdd_path, !57, !"cw1200_sdd_path", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 49, i32 14}
!58 = !{ptr @cw1200_refclk, !59, !"cw1200_refclk", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 52, i32 12}
!60 = !{ptr @__param_str_macaddr, !10, !"__param_str_macaddr", i1 false, i1 false}
!61 = !{ptr @__param_arr_macaddr, !10, !"__param_arr_macaddr", i1 false, i1 false}
!62 = !{ptr @cw1200_mac_template, !63, !"cw1200_mac_template", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 45, i32 11}
!64 = !{ptr @__param_str_cw1200_sdd_path, !15, !"__param_str_cw1200_sdd_path", i1 false, i1 false}
!65 = !{ptr @__param_str_cw1200_refclk, !20, !"__param_str_cw1200_refclk", i1 false, i1 false}
!66 = !{ptr @__param_str_cw1200_power_mode, !27, !"__param_str_cw1200_power_mode", i1 false, i1 false}
!67 = !{ptr @__param_str_cw1200_ba_rx_tids, !32, !"__param_str_cw1200_ba_rx_tids", i1 false, i1 false}
!68 = !{ptr @cw1200_ba_rx_tids, !69, !"cw1200_ba_rx_tids", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 237, i32 12}
!70 = !{ptr @__param_str_cw1200_ba_tx_tids, !35, !"__param_str_cw1200_ba_tx_tids", i1 false, i1 false}
!71 = !{ptr @cw1200_ba_tx_tids, !72, !"cw1200_ba_tx_tids", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 238, i32 12}
!73 = !{ptr @cw1200_init_common.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 342, i32 2}
!75 = !{ptr @.str.5, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cw1200_init_common.__key.6, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 343, i32 2}
!78 = !{ptr @.str.7, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.8, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 344, i32 20}
!81 = !{ptr @.str.9, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cw1200_init_common.__key.10, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 351, i32 2}
!84 = !{ptr @.str.11, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cw1200_init_common.__key.12, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 352, i32 2}
!87 = !{ptr @.str.13, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cw1200_init_common.__key.14, !86, !"__key", i1 false, i1 false}
!89 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cw1200_init_common.__key.16, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 353, i32 2}
!92 = !{ptr @.str.17, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cw1200_init_common.__key.18, !91, !"__key", i1 false, i1 false}
!94 = !{ptr @.str.19, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cw1200_init_common.__key.20, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 354, i32 2}
!97 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cw1200_init_common.__key.22, !96, !"__key", i1 false, i1 false}
!99 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cw1200_init_common.__key.24, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 356, i32 2}
!102 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cw1200_init_common.__key.26, !101, !"__key", i1 false, i1 false}
!104 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cw1200_init_common.__key.28, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 357, i32 2}
!107 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cw1200_init_common.__key.30, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 358, i32 2}
!110 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cw1200_init_common.__key.32, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 359, i32 2}
!113 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cw1200_init_common.__key.34, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 360, i32 2}
!116 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cw1200_init_common.__key.36, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 361, i32 2}
!119 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cw1200_init_common.__key.38, !121, !"__key", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 363, i32 2}
!122 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @cw1200_init_common.__key.40, !124, !"__key", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 364, i32 2}
!125 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @cw1200_init_common.__key.42, !124, !"__key", i1 false, i1 false}
!127 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @cw1200_init_common.__key.44, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 365, i32 2}
!130 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @cw1200_init_common.__key.46, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 366, i32 2}
!133 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @cw1200_init_common.__key.48, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 367, i32 2}
!136 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cw1200_init_common.__key.50, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 368, i32 2}
!139 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @cw1200_init_common.__key.52, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 369, i32 2}
!142 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @cw1200_init_common.__key.54, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 370, i32 2}
!145 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cw1200_init_common.__key.56, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 371, i32 2}
!148 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @cw1200_init_common.__key.58, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 372, i32 2}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @cw1200_init_common.__key.60, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 373, i32 2}
!154 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @cw1200_init_common.__key.62, !153, !"__key", i1 false, i1 false}
!156 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @cw1200_init_common.__key.64, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 374, i32 2}
!159 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @cw1200_init_common.__key.66, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 375, i32 2}
!162 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @cw1200_init_common.__key.68, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 376, i32 2}
!165 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @cw1200_init_common.__key.70, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 378, i32 2}
!168 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @cw1200_init_common.__key.72, !170, !"__key", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 402, i32 2}
!171 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cw1200_init_common.__key.74, !173, !"__key", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 403, i32 2}
!174 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @cw1200_init_common.__key.76, !176, !"__key", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 404, i32 2}
!177 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @cw1200_init_common.__key.78, !179, !"__key", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 405, i32 2}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @cw1200_init_common.__key.80, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 407, i32 2}
!183 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @cw1200_ops, !185, !"cw1200_ops", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 205, i32 35}
!186 = !{ptr @cw1200_rates, !187, !"cw1200_rates", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 67, i32 30}
!188 = !{ptr @cw1200_mcs_rates, !189, !"cw1200_mcs_rates", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 82, i32 30}
!190 = !{ptr @cw1200_wowlan_support, !191, !"cw1200_wowlan_support", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 245, i32 42}
!192 = !{ptr @cw1200_band_2ghz, !193, !"cw1200_band_2ghz", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 158, i32 40}
!194 = !{ptr @cw1200_2ghz_chantable, !195, !"cw1200_2ghz_chantable", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 119, i32 33}
!196 = !{ptr @cw1200_band_5ghz, !197, !"cw1200_band_5ghz", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 178, i32 40}
!198 = !{ptr @cw1200_5ghz_chantable, !199, !"cw1200_5ghz_chantable", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 136, i32 33}
!200 = !{ptr @sema_init.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!202 = !{ptr @.str.84, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!204 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!206 = distinct !{null, !207, !"cw1200_ttl", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 198, i32 28}
!208 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 422, i32 3}
!210 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @cw1200_register_common._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @cw1200_register_common._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 430, i32 3}
!215 = !{ptr @cw1200_register_common._entry.88, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @cw1200_register_common._entry_ptr.90, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/st/cw1200/main.c", i32 440, i32 2}
!219 = !{ptr @cw1200_register_common._entry.91, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @cw1200_register_common._entry_ptr.93, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
