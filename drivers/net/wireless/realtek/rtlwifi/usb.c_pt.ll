; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/usb.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtl_usb_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_usb_probe\09\09\09\09"
module asm "\09.long\09__crc_rtl_usb_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_usb_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_usb_probe\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_usb_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_usb_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_usb_disconnect\09\09\09\09"
module asm "\09.long\09__crc_rtl_usb_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_usb_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_usb_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_usb_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_usb_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_usb_suspend\09\09\09\09"
module asm "\09.long\09__crc_rtl_usb_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_usb_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_usb_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_usb_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_usb_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_usb_resume\09\09\09\09"
module asm "\09.long\09__crc_rtl_usb_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_usb_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_usb_resume\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_usb_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtl_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtl_mac = type { [6 x i8], i8, i8, i32, i32, [6 x %struct.ieee80211_supported_band], ptr, ptr, i32, [9 x %struct.rtl_tid_data], i32, i32, i32, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, [9 x %struct.sk_buff_head], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, [16 x i8], i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i64, i8, i8, i16, i8, i32, i8, i8, i8, i8, [5 x %struct.ieee80211_tx_queue_params], [4 x %struct.rtl_qos_parameters], i64, i64, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rtl_tid_data = type { %struct.rtl_ht_agg }
%struct.rtl_ht_agg = type { i16, i16, i16, i64, i32, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtl_qos_parameters = type { i16, i16, i8, i8, i16 }
%struct.rtl_hal = type { ptr, i8, i8, i8, i8, i8, i8, i8, %struct.bt_coexist_8723, i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, %struct.p2p_ps_offload_t, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i64, i32, ptr, i8, i8, i8 }
%struct.bt_coexist_8723 = type { i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.btdm_8723 }
%struct.btdm_8723 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8 }
%struct.p2p_ps_offload_t = type { i8 }
%struct.rtl_regulatory = type { [2 x i8], i16, i16, i32, i16, i16, i16, ptr }
%struct.rtl_rfkill = type { i8 }
%struct.rtl_io = type { ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_phy = type { [4 x %struct.bb_reg_def], %struct.init_gain, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, [16 x i32], [4 x i32], [10 x i32], i8, [4 x i8], i8, i8, [46 x %struct.iqk_matrix_regs], i8, i8, i8, i8, [13 x [16 x i32]], [13 x [16 x i32]], [2 x [4 x [4 x [84 x i32]]]], [4 x [4 x [6 x i8]]], [4 x [4 x [5 x i8]]], [4 x i8], i8, i8, i8, i8, [4 x [4 x [6 x [14 x [4 x i8]]]]], [4 x [4 x [6 x [49 x [4 x i8]]]]], [2 x i32], i8, [2 x i32], i32, i8, i32, i8, [10 x %struct.phy_parameters], i16, i8, i32 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_gain = type { i8, i8, i8, i8, i8 }
%struct.iqk_matrix_regs = type { i8, [1 x [8 x i32]] }
%struct.phy_parameters = type { i16, ptr }
%struct.rtl_dm = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, %struct.dm_phy_dbg_info, i8, i8, i8, [2 x i32], i32, i32, i8, i32, i32, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.fast_ant_training, i8, i8, i32, i32, i32, i32, i8, ptr, i8, i64, i64 }
%struct.dm_phy_dbg_info = type { [4 x i8], i64, i64, i64, i16, i16, [4 x i32] }
%struct.fast_ant_training = type { [6 x i8], i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [33 x i8], [33 x i8], [33 x i8], [33 x i32], [33 x i32], [33 x i32], [33 x i32], i8, i8 }
%struct.rtl_security = type { i8, i8, i8, i32, i32, i32, [32 x [6 x i8]], [5 x [61 x i8]], [5 x i8], ptr }
%struct.rtl_efuse = type { ptr, i8, i8, i16, [2 x [512 x i8]], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [2 x i8], [3 x [2 x i8]], [12 x i8], [12 x i8], [4 x [3 x i8]], [4 x [12 x i8]], [4 x [12 x i8]], [2 x i8], i8, i8, [2 x [3 x i8]], [2 x [59 x i8]], [2 x [59 x i8]], [4 x [14 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [7 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i16, [3 x i8], i8, i8, [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_led_ctl = type { i8, %struct.rtl_led, %struct.rtl_led }
%struct.rtl_led = type { ptr, i32, i8 }
%struct.rtl_tx_report = type { %struct.atomic_t, i16, i32, i16, %struct.sk_buff_head }
%struct.rtl_scan_list = type { i32, %struct.list_head }
%struct.rtl_ps_ctl = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rtl_p2p_ps_info, i8, i8, i8, i8, i8, i32 }
%struct.rtl_p2p_ps_info = type { i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.dynamic_primary_cca = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.wireless_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, [4 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i8], [2 x i8], [4 x i16], [4 x i16], %struct.rt_smooth_data, %struct.rt_smooth_data }
%struct.rt_smooth_data = type { [100 x i32], i32, i32, i32 }
%struct.rt_link_detect = type { i32, i32, [4 x i32], [4 x i32], i32, i32, i8, i8, i8, i8, i8, [9 x [4 x i32]], [9 x i32], [9 x i8] }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.rtl_hal_usbint_cfg = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.rtl_tcb_desc = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i32], i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.rtl_usb = type { ptr, ptr, i32, i32, i8, i32, [2 x i32], i8, ptr, i8, i8, %struct.rtl_ep_map, i32, i32, [6 x %struct.sk_buff_head], [6 x %struct.usb_anchor], %struct.usb_anchor, ptr, ptr, ptr, i8, i32, i32, i32, %struct.usb_anchor, %struct.usb_anchor, %struct.tasklet_struct, %struct.sk_buff_head, ptr, ptr }
%struct.rtl_ep_map = type { [7 x i32] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.rtl_stats = type { [6 x i8], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i32, i32, [2 x i32] }

@__UNIQUE_ID_author354 = internal constant [55 x i8] c"rtl_usb.author=lizhaoming\09<chaoming_li@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [53 x i8] c"rtl_usb.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [56 x i8] c"rtl_usb.author=Larry Finger\09<Larry.FInger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [58 x i8] c"rtl_usb.file=drivers/net/wireless/realtek/rtlwifi/rtl_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [20 x i8] c"rtl_usb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [49 x i8] c"rtl_usb.description=USB basic driver for rtlwifi\00", section ".modinfo", align 1
@rtl_ops = external dso_local constant %struct.ieee80211_ops, align 4
@rtl_usb_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtlwifi/usb.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl_usb: ieee80211 alloc failed\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&rtlpriv->locks.usb_lock\00", [39 x i8] zeroinitializer }, align 32
@rtl_usb_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&rtlpriv->works.fill_h2c_cmd)\00", [48 x i8] zeroinitializer }, align 32
@rtl_usb_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&rtlpriv->works.lps_change_work)\00", [45 x i8] zeroinitializer }, align 32
@rtl_usb_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&rtlpriv->works.update_beacon_work)\00", [42 x i8] zeroinitializer }, align 32
@rtl_usb_ops = internal constant { %struct.rtl_intf_ops, [56 x i8] } { %struct.rtl_intf_ops { ptr null, ptr @rtl_usb_start, ptr @rtl_usb_stop, ptr null, ptr @rtl_usb_tx, ptr null, ptr null, ptr @rtl_usb_tx_chk_waitq_insert, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rtl_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl_usb: Can't allocate sw for mac80211\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl_usb_probe\00", [18 x i8] zeroinitializer }, align 32
@rtl_usb_probe._entry_ptr = internal global ptr @rtl_usb_probe._entry, section ".printk_index", align 4
@rtl_usb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl_usb: Can't init_sw_vars\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl_usb_probe._entry_ptr.13 = internal global ptr @rtl_usb_probe._entry.11, section ".printk_index", align 4
@rtl_usb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl_usb: Can't register mac80211 hw.\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl_usb_probe._entry_ptr.16 = internal global ptr @rtl_usb_probe._entry.14, section ".printk_index", align 4
@__kstrtab_rtl_usb_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_usb_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_usb_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_usb_probe to i32), ptr @__kstrtab_rtl_usb_probe, ptr @__kstrtabns_rtl_usb_probe }, section "___ksymtab+rtl_usb_probe", align 4
@__kstrtab_rtl_usb_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_usb_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_usb_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_usb_disconnect to i32), ptr @__kstrtab_rtl_usb_disconnect, ptr @__kstrtabns_rtl_usb_disconnect }, section "___ksymtab+rtl_usb_disconnect", align 4
@__kstrtab_rtl_usb_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_usb_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_usb_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_usb_suspend to i32), ptr @__kstrtab_rtl_usb_suspend, ptr @__kstrtabns_rtl_usb_suspend }, section "___ksymtab+rtl_usb_suspend", align 4
@__kstrtab_rtl_usb_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_usb_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_usb_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_usb_resume to i32), ptr @__kstrtab_rtl_usb_resume, ptr @__kstrtabns_rtl_usb_resume }, section "___ksymtab+rtl_usb_resume", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@_rtl_usb_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013rtl_usb: Failed to prep_rx_urb!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_rtl_usb_receive\00", [47 x i8] zeroinitializer }, align 32
@_rtl_usb_receive._entry_ptr = internal global ptr @_rtl_usb_receive._entry, section ".printk_index", align 4
@_rtl_prep_rx_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl_usb: Failed to usb_alloc_coherent!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_rtl_prep_rx_urb\00", [47 x i8] zeroinitializer }, align 32
@_rtl_prep_rx_urb._entry_ptr = internal global ptr @_rtl_prep_rx_urb._entry, section ".printk_index", align 4
@_rtl_rx_completed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtl_usb: Too short packet from bulk IN! (len: %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_rtl_rx_completed\00", [46 x i8] zeroinitializer }, align 32
@_rtl_rx_completed._entry_ptr = internal global ptr @_rtl_rx_completed._entry, section ".printk_index", align 4
@_rtl_rx_completed._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtl_usb: Pending RX skbuff queue full! (qlen: %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@_rtl_rx_completed._entry_ptr.26 = internal global ptr @_rtl_rx_completed._entry.24, section ".printk_index", align 4
@_rtl_rx_completed._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl_usb: Can't allocate skb for bulk IN!\0A\00", [52 x i8] zeroinitializer }, align 32
@_rtl_rx_completed._entry_ptr.29 = internal global ptr @_rtl_rx_completed._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC80211_LINKING\0A\00", [46 x i8] zeroinitializer }, align 32
@_rtl_usb_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013rtl_usb: USB device is stopping...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_rtl_usb_transmit\00", [46 x i8] zeroinitializer }, align 32
@_rtl_usb_transmit._entry_ptr = internal global ptr @_rtl_usb_transmit._entry, section ".printk_index", align 4
@_rtl_usb_transmit._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rtl_usb: Can't allocate urb. Drop skb!\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl_usb_transmit._entry_ptr.35 = internal global ptr @_rtl_usb_transmit._entry.33, section ".printk_index", align 4
@_usb_tx_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013rtl_usb: Urb has error status 0x%X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_usb_tx_post\00", [19 x i8] zeroinitializer }, align 32
@_usb_tx_post._entry_ptr = internal global ptr @_usb_tx_post._entry, section ".printk_index", align 4
@_rtl_submit_tx_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013rtl_usb: Failed to submit urb\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_rtl_submit_tx_urb\00", [45 x i8] zeroinitializer }, align 32
@_rtl_submit_tx_urb._entry_ptr = internal global ptr @_rtl_submit_tx_urb._entry, section ".printk_index", align 4
@_rtl_usb_io_handler_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&rtlpriv->io.bb_mutex\00", [42 x i8] zeroinitializer }, align 32
@_usbctrl_vendorreq_sync_read.count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_usbctrl_vendorreq_sync_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013rtl_usb: reg 0x%x, usbctrl_vendorreq TimeOut! status:0x%x value=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"_usbctrl_vendorreq_sync_read\00", [35 x i8] zeroinitializer }, align 32
@_usbctrl_vendorreq_sync_read._entry_ptr = internal global ptr @_usbctrl_vendorreq_sync_read._entry, section ".printk_index", align 4
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"USB EP(0x%02x), MaxPacketSize=%d, Interval=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@_rtl_usb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl_usb: Too few input end points found\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_rtl_usb_init\00", [18 x i8] zeroinitializer }, align 32
@_rtl_usb_init._entry_ptr = internal global ptr @_rtl_usb_init._entry, section ".printk_index", align 4
@_rtl_usb_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013rtl_usb: No output end points found\0A\00", [57 x i8] zeroinitializer }, align 32
@_rtl_usb_init._entry_ptr.48 = internal global ptr @_rtl_usb_init._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USB Max Bulk-out Size=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid endpoint map setting!\0A\00", [33 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@_rtl_usb_init_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016rtl_usb: rx_max_size %d, rx_urb_num %d, in_ep %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_rtl_usb_init_rx\00", [47 x i8] zeroinitializer }, align 32
@_rtl_usb_init_rx._entry_ptr = internal global ptr @_rtl_usb_init_rx._entry, section ".printk_index", align 4
@_rtl_rx_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013rtl_usb: rx agg not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_rtl_rx_work\00", [19 x i8] zeroinitializer }, align 32
@_rtl_rx_work._entry_ptr = internal global ptr @_rtl_rx_work._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1017, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1030, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1031, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1033, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1035, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"rtl_usb_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 997, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1064, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1068, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1075, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 87, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 715, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 407, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 605, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 612, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 622, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 935, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 906, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 913, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 854, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 833, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 225, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 98, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 117, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 339, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 345, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 349, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 262, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 269, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1367, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1368, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1984, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 307, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [46 x i8] c"../drivers/net/wireless/realtek/rtlwifi/usb.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 547, i32 4 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__ksymtab_rtl_usb_disconnect, ptr @__ksymtab_rtl_usb_probe, ptr @__ksymtab_rtl_usb_resume, ptr @__ksymtab_rtl_usb_suspend, ptr @_rtl_prep_rx_urb._entry, ptr @_rtl_prep_rx_urb._entry_ptr, ptr @_rtl_rx_completed._entry, ptr @_rtl_rx_completed._entry.24, ptr @_rtl_rx_completed._entry.27, ptr @_rtl_rx_completed._entry_ptr, ptr @_rtl_rx_completed._entry_ptr.26, ptr @_rtl_rx_completed._entry_ptr.29, ptr @_rtl_rx_work._entry, ptr @_rtl_rx_work._entry_ptr, ptr @_rtl_submit_tx_urb._entry, ptr @_rtl_submit_tx_urb._entry_ptr, ptr @_rtl_usb_init._entry, ptr @_rtl_usb_init._entry.46, ptr @_rtl_usb_init._entry_ptr, ptr @_rtl_usb_init._entry_ptr.48, ptr @_rtl_usb_init_rx._entry, ptr @_rtl_usb_init_rx._entry_ptr, ptr @_rtl_usb_receive._entry, ptr @_rtl_usb_receive._entry_ptr, ptr @_rtl_usb_transmit._entry, ptr @_rtl_usb_transmit._entry.33, ptr @_rtl_usb_transmit._entry_ptr, ptr @_rtl_usb_transmit._entry_ptr.35, ptr @_usb_tx_post._entry, ptr @_usb_tx_post._entry_ptr, ptr @_usbctrl_vendorreq_sync_read._entry, ptr @_usbctrl_vendorreq_sync_read._entry_ptr, ptr @rtl_usb_probe._entry, ptr @rtl_usb_probe._entry.11, ptr @rtl_usb_probe._entry.14, ptr @rtl_usb_probe._entry_ptr, ptr @rtl_usb_probe._entry_ptr.13, ptr @rtl_usb_probe._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @rtl_usb_probe.__key, ptr @.str.2, ptr @rtl_usb_probe.__key.3, ptr @.str.4, ptr @rtl_usb_probe.__key.5, ptr @.str.6, ptr @rtl_usb_probe.__key.7, ptr @.str.8, ptr @rtl_usb_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @_rtl_usb_io_handler_init.__key, ptr @.str.40, ptr @_usbctrl_vendorreq_sync_read.count, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @init_usb_anchor.__key, ptr @.str.51, ptr @init_usb_anchor.__key.52, ptr @.str.53, ptr @skb_queue_head_init.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_usb_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_usb_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_usb_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_usb_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_usb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_usb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_usb_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_prep_rx_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_rx_completed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_rx_completed._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_rx_completed._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_usb_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_usb_transmit._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_usb_tx_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_submit_tx_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_usb_io_handler_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_usbctrl_vendorreq_sync_read.count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_usbctrl_vendorreq_sync_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_usb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_usb_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_usb_init_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_rx_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl_usb_probe(ptr noundef %intf, ptr nocapture readnone %id, ptr noundef %rtl_hal_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 51320, ptr noundef nonnull @rtl_ops, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b208 = load i1, ptr @rtl_usb_probe.__already_done, align 1
  br i1 %.b208, label %land.end.cleanup_crit_edge, label %if.then6, !prof !152

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rtl_usb_probe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1017, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end35:                                         ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 400) #10
  %usb_data = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %usb_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %usb_data, align 8
  %tobool39.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool39.not, label %if.then40, label %do.body42

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #7
  br label %cleanup

do.body42:                                        ; preds = %if.end35
  %usb_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %usb_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl_usb_probe.__key, i16 noundef signext 3) #7
  %fill_h2c_cmd = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 15
  tail call void @__init_work(ptr noundef %fill_h2c_cmd, i32 noundef 0) #7
  %5 = ptrtoint ptr %fill_h2c_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %fill_h2c_cmd, align 4
  %lockdep_map = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtl_usb_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry53 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 15, i32 1
  %6 = ptrtoint ptr %entry53 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry53, ptr %entry53, align 4
  %prev.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 15, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry53, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 15, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rtl_fill_h2c_cmd_work_callback, ptr %func, align 4
  %lps_change_work = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14
  tail call void @__init_work(ptr noundef %lps_change_work, i32 noundef 0) #7
  %9 = ptrtoint ptr %lps_change_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %lps_change_work, align 4
  %lockdep_map67 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map67, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtl_usb_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry70 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14, i32 1
  %10 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i209 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry70, ptr %prev.i209, align 4
  %func73 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14, i32 2
  %12 = ptrtoint ptr %func73 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rtl_lps_change_work_callback, ptr %func73, align 4
  %update_beacon_work = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 16
  tail call void @__init_work(ptr noundef %update_beacon_work, i32 noundef 0) #7
  %13 = ptrtoint ptr %update_beacon_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %update_beacon_work, align 4
  %lockdep_map85 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map85, ptr noundef nonnull @.str.8, ptr noundef nonnull @rtl_usb_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry88 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 16, i32 1
  %14 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry88, ptr %entry88, align 4
  %prev.i210 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 16, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry88, ptr %prev.i210, align 4
  %func91 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 16, i32 2
  %16 = ptrtoint ptr %func91 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rtl_update_beacon_work_callback, ptr %func91, align 4
  %usb_data_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 44
  %17 = ptrtoint ptr %usb_data_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %usb_data_index, align 4
  %firmware_loading_complete = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %firmware_loading_complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %firmware_loading_complete, align 4
  %wait.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #7
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56, i32 1
  %21 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %parent.i.i, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 -128
  %call95 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #7
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %priv97 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 52
  %26 = call ptr @memset(ptr %priv97, i32 0, i32 1640)
  %dev98 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 1, i32 6, i32 9
  %intf99 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 1, i32 7
  %27 = ptrtoint ptr %intf99 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %intf, ptr %intf99, align 4
  %28 = ptrtoint ptr %dev98 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %dev98, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %interface = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 9
  %30 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %interface, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %rtl_hal_cfg, ptr %cfg, align 8
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 33
  %32 = ptrtoint ptr %intf_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @rtl_usb_ops, ptr %intf_ops, align 4
  %33 = load ptr, ptr %priv, align 8
  %io.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %23, ptr %io.i, align 4
  %bb_mutex.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13, i32 1
  tail call void @__mutex_init(ptr noundef %bb_mutex.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @_rtl_usb_io_handler_init.__key) #7
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13, i32 5
  %35 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @_usb_write8_async, ptr %write8_async.i, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13, i32 6
  %36 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @_usb_write16_async, ptr %write16_async.i, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13, i32 7
  %37 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @_usb_write32_async, ptr %write32_async.i, align 4
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @_usb_read8_sync, ptr %read8_sync.i, align 4
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13, i32 10
  %39 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @_usb_read16_sync, ptr %read16_sync.i, align 4
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13, i32 11
  %40 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @_usb_read32_sync, ptr %read32_sync.i, align 4
  %writen_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 13, i32 8
  %41 = ptrtoint ptr %writen_sync.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @_usb_writen_sync, ptr %writen_sync.i, align 4
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %read_chip_version = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read_chip_version to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_chip_version, align 4
  tail call void %47(ptr noundef nonnull %call.i) #7
  %48 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg, align 8
  %ops105 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ops105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops105, align 4
  %read_eeprom_info = getelementptr inbounds %struct.rtl_hal_ops, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %read_eeprom_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_eeprom_info, align 4
  tail call void %53(ptr noundef nonnull %call.i) #7
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %intf.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 1, i32 7
  %56 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intf.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bNumEndpoints.i, align 4
  %in_ep_nums.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 1, i32 8, i32 10
  %62 = ptrtoint ptr %in_ep_nums.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %in_ep_nums.i, align 4
  %out_ep_nums.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %63 = ptrtoint ptr %out_ep_nums.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %out_ep_nums.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp78.not.i = icmp eq i8 %61, 0
  br i1 %cmp78.not.i, label %do.body42.for.end.i_crit_edge, label %for.body.preheader.i

do.body42.for.end.i_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.preheader.i:                             ; preds = %do.body42
  %wide.trip.count.i = zext i8 %61 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %64 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_altsetting.i, align 4
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %endpoint.i, align 4
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %67, i32 %indvars.iv.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %68 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not81.i = icmp slt i8 %69, 0
  %out_ep_nums.in_ep_nums.i = select i1 %tobool.not81.i, ptr %in_ep_nums.i, ptr %out_ep_nums.i
  %70 = ptrtoint ptr %out_ep_nums.in_ep_nums.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %out_ep_nums.in_ep_nums.i, align 4
  %inc12.i = add i8 %71, 1
  store i8 %inc12.i, ptr %out_ep_nums.in_ep_nums.i, align 4
  %72 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv14.i = zext i8 %73 to i32
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %74 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %wMaxPacketSize.i, align 1
  %conv15.i = zext i16 %75 to i32
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 5
  %76 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bInterval.i, align 1
  %conv16.i = zext i8 %77 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %55, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.43, i32 noundef %conv14.i, i32 noundef %conv15.i, i32 noundef %conv16.i) #7
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.body42.for.end.i_crit_edge
  %78 = ptrtoint ptr %in_ep_nums.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %in_ep_nums.i, align 4
  %conv19.i = zext i8 %79 to i32
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i, align 8
  %usb_interface_cfg.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %usb_interface_cfg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %usb_interface_cfg.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv19.i)
  %cmp20.i = icmp ugt i32 %85, %conv19.i
  br i1 %cmp20.i, label %do.end.i, label %if.end24.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #11
  br label %error_out2

if.end24.i:                                       ; preds = %for.end.i
  %86 = ptrtoint ptr %out_ep_nums.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %out_ep_nums.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp27.i = icmp eq i8 %87, 0
  br i1 %cmp27.i, label %do.end32.i, label %if.end35.i

do.end32.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #11
  br label %error_out2

if.end35.i:                                       ; preds = %if.end24.i
  %usb_endpoint_mapping.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %83, i32 0, i32 8
  %88 = ptrtoint ptr %usb_endpoint_mapping.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_endpoint_mapping.i, align 4
  %call38.i = tail call i32 %89(ptr noundef nonnull %call.i) #7
  %90 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i, align 8
  %usb_interface_cfg40.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %usb_interface_cfg40.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %usb_interface_cfg40.i, align 4
  %usb_mq_to_hwq.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %usb_mq_to_hwq.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usb_mq_to_hwq.i, align 4
  %usb_mq_to_hwq41.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %96 = ptrtoint ptr %usb_mq_to_hwq41.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %usb_mq_to_hwq41.i, align 4
  %97 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %priv, align 8
  %dev.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 6, i32 9
  %99 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %cmp.i.i = icmp eq i32 %102, 3
  %cond3.i.i = select i1 %cmp.i.i, i32 512, i32 64
  %max_bulk_out_size.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 5, i32 1
  %103 = ptrtoint ptr %max_bulk_out_size.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %cond3.i.i, ptr %max_bulk_out_size.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %98, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.49, i32 noundef %cond3.i.i) #7
  %ep_map.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %104 = ptrtoint ptr %ep_map.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ep_map.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool6.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool6.not.i.i, label %if.end35.i.if.then.i.i_crit_edge, label %for.cond.i.i

if.end35.i.if.then.i.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.i.i:                                     ; preds = %if.end35.i
  %arrayidx.1.i.i = getelementptr %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 1, i32 4, i32 7
  %106 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool6.not.1.i.i = icmp eq i32 %107, 0
  br i1 %tobool6.not.1.i.i, label %for.cond.i.i.if.then.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.then.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 2
  %108 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool6.not.2.i.i = icmp eq i32 %109, 0
  br i1 %tobool6.not.2.i.i, label %for.cond.1.i.i.if.then.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 3
  %110 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool6.not.3.i.i = icmp eq i32 %111, 0
  br i1 %tobool6.not.3.i.i, label %for.cond.2.i.i.if.then.i.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool6.not.4.i.i = icmp eq i32 %113, 0
  br i1 %tobool6.not.4.i.i, label %for.cond.3.i.i.if.then.i.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %arrayidx.5.i.i = getelementptr %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 4
  %114 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool6.not.5.i.i = icmp eq i32 %115, 0
  br i1 %tobool6.not.5.i.i, label %for.cond.4.i.i.if.then.i.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %arrayidx.6.i.i = getelementptr %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 5
  %116 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool6.not.6.i.i = icmp eq i32 %117, 0
  br i1 %tobool6.not.6.i.i, label %for.cond.5.i.i.if.then.i.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 0, i32 32
  %118 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cfg.i.i, align 8
  %usb_interface_cfg.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %usb_interface_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %usb_interface_cfg.i.i, align 4
  %usb_tx_post_hdl.i.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %usb_tx_post_hdl.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usb_tx_post_hdl.i.i, align 4
  %usb_tx_post_hdl7.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 8, i32 9, i32 2
  %124 = ptrtoint ptr %usb_tx_post_hdl7.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %usb_tx_post_hdl7.i.i, align 4
  %125 = load ptr, ptr %usb_interface_cfg.i.i, align 4
  %usb_tx_cleanup.i.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %usb_tx_cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usb_tx_cleanup.i.i, align 4
  %usb_tx_cleanup10.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 8, i32 9, i32 3
  %128 = ptrtoint ptr %usb_tx_cleanup10.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %usb_tx_cleanup10.i.i, align 4
  %129 = load ptr, ptr %usb_interface_cfg.i.i, align 4
  %usb_tx_aggregate_hdl.i.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %129, i32 0, i32 7
  %130 = ptrtoint ptr %usb_tx_aggregate_hdl.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %usb_tx_aggregate_hdl.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %131, null
  %spec.select.i.i = select i1 %tobool13.not.i.i, ptr @_none_usb_tx_aggregate_hdl, ptr %131
  %usb_tx_aggregate_hdl18.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 8, i32 9, i32 1, i32 4, i32 7
  %132 = ptrtoint ptr %usb_tx_aggregate_hdl18.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %spec.select.i.i, ptr %usb_tx_aggregate_hdl18.i.i, align 4
  %tx_submitted.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 8, i32 8, i32 1, i32 4, i32 2
  %133 = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 8, i32 8, i32 1, i32 4, i32 6
  %134 = call ptr @memset(ptr %133, i32 0, i32 104)
  %135 = ptrtoint ptr %tx_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %tx_submitted.i.i, ptr %tx_submitted.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 8, i32 8, i32 1, i32 4, i32 3
  %136 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %tx_submitted.i.i, ptr %prev.i.i.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %133, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_usb_anchor.__key) #7
  %lock.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 8, i32 9, i32 0, i32 3, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_usb_anchor.__key.52, i16 noundef signext 3) #7
  %tx_skb_queue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 0, i32 5, i32 2
  %tx_pending.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 1, i32 7, i32 6, i32 0, i32 0, i32 1
  br label %for.body21.i.i

if.then.i.i:                                      ; preds = %for.cond.5.i.i.if.then.i.i_crit_edge, %for.cond.4.i.i.if.then.i.i_crit_edge, %for.cond.3.i.i.if.then.i.i_crit_edge, %for.cond.2.i.i.if.then.i.i_crit_edge, %for.cond.1.i.i.if.then.i.i_crit_edge, %for.cond.i.i.if.then.i.i_crit_edge, %if.end35.i.if.then.i.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %98, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.50) #7
  br label %_rtl_usb_init.exit

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %for.cond.6.i.i
  %i.17.i.i = phi i32 [ 0, %for.cond.6.i.i ], [ %inc25.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ]
  %arrayidx22.i.i = getelementptr [6 x %struct.sk_buff_head], ptr %tx_skb_queue.i.i, i32 0, i32 %i.17.i.i
  %lock.i1.i.i = getelementptr [6 x %struct.sk_buff_head], ptr %tx_skb_queue.i.i, i32 0, i32 %i.17.i.i, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i1.i.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %137 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %arrayidx22.i.i, ptr %arrayidx22.i.i, align 4
  %prev.i.i2.i.i = getelementptr inbounds %struct.anon.65, ptr %arrayidx22.i.i, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %arrayidx22.i.i, ptr %prev.i.i2.i.i, align 4
  %qlen.i.i.i.i = getelementptr [6 x %struct.sk_buff_head], ptr %tx_skb_queue.i.i, i32 0, i32 %i.17.i.i, i32 1
  %139 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %arrayidx23.i.i = getelementptr [6 x %struct.usb_anchor], ptr %tx_pending.i.i, i32 0, i32 %i.17.i.i
  %140 = getelementptr inbounds i8, ptr %arrayidx23.i.i, i32 8
  %141 = call ptr @memset(ptr %140, i32 0, i32 104)
  %142 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %arrayidx23.i.i, ptr %arrayidx23.i.i, align 4
  %prev.i.i3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx23.i.i, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %arrayidx23.i.i, ptr %prev.i.i3.i.i, align 4
  %wait.i4.i.i = getelementptr [6 x %struct.usb_anchor], ptr %tx_pending.i.i, i32 0, i32 %i.17.i.i, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait.i4.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_usb_anchor.__key) #7
  %lock.i5.i.i = getelementptr [6 x %struct.usb_anchor], ptr %tx_pending.i.i, i32 0, i32 %i.17.i.i, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i5.i.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_usb_anchor.__key.52, i16 noundef signext 3) #7
  %inc25.i.i = add nuw nsw i32 %i.17.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc25.i.i, 6
  br i1 %exitcond.not.i.i, label %for.body21.i.i._rtl_usb_init.exit_crit_edge, label %for.body21.i.i.for.body21.i.i_crit_edge

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i.i

for.body21.i.i._rtl_usb_init.exit_crit_edge:      ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_usb_init.exit

_rtl_usb_init.exit:                               ; preds = %for.body21.i.i._rtl_usb_init.exit_crit_edge, %if.then.i.i
  %144 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %priv, align 8
  %cfg.i73.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 0, i32 32
  %146 = ptrtoint ptr %cfg.i73.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cfg.i73.i, align 8
  %usb_interface_cfg.i74.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %147, i32 0, i32 6
  %148 = ptrtoint ptr %usb_interface_cfg.i74.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %usb_interface_cfg.i74.i, align 4
  %rx_max_size.i.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %rx_max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_max_size.i.i, align 4
  %rx_max_size3.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 10, i32 0, i32 1, i32 1
  %152 = ptrtoint ptr %rx_max_size3.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %rx_max_size3.i.i, align 4
  %153 = load ptr, ptr %usb_interface_cfg.i74.i, align 4
  %rx_urb_num.i.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %rx_urb_num.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rx_urb_num.i.i, align 4
  %rx_urb_num6.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 10, i32 0, i32 2
  %156 = ptrtoint ptr %rx_urb_num6.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %rx_urb_num6.i.i, align 4
  %157 = load ptr, ptr %usb_interface_cfg.i74.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 4
  %in_ep.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 10, i32 0, i32 1
  %160 = ptrtoint ptr %in_ep.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %in_ep.i.i, align 4
  %161 = load ptr, ptr %usb_interface_cfg.i74.i, align 4
  %usb_rx_hdl.i.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %usb_rx_hdl.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %usb_rx_hdl.i.i, align 4
  %usb_rx_hdl11.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 13, i32 0, i32 3, i32 1, i32 1
  %164 = ptrtoint ptr %usb_rx_hdl11.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %usb_rx_hdl11.i.i, align 4
  %165 = load ptr, ptr %usb_interface_cfg.i74.i, align 4
  %usb_rx_segregate_hdl.i.i = getelementptr inbounds %struct.rtl_hal_usbint_cfg, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %usb_rx_segregate_hdl.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %usb_rx_segregate_hdl.i.i, align 4
  %usb_rx_segregate_hdl14.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 13, i32 0, i32 3, i32 1
  %168 = ptrtoint ptr %usb_rx_segregate_hdl14.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %usb_rx_segregate_hdl14.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %151, i32 noundef %155, i32 noundef %159) #11
  %rx_submitted.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 10, i32 0, i32 3
  %169 = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 10, i32 0, i32 3, i32 1, i32 1
  %170 = call ptr @memset(ptr %169, i32 0, i32 104)
  %171 = ptrtoint ptr %rx_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %rx_submitted.i.i, ptr %rx_submitted.i.i, align 4
  %prev.i.i.i75.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 10, i32 0, i32 3, i32 1
  %172 = ptrtoint ptr %prev.i.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %rx_submitted.i.i, ptr %prev.i.i.i75.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %169, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_usb_anchor.__key) #7
  %lock.i.i76.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 10, i32 1, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i76.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_usb_anchor.__key.52, i16 noundef signext 3) #7
  %rx_cleanup_urbs.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 11, i32 0, i32 3, i32 2
  %173 = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 11, i32 0, i32 3, i32 6
  %174 = call ptr @memset(ptr %173, i32 0, i32 104)
  %175 = ptrtoint ptr %rx_cleanup_urbs.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %rx_cleanup_urbs.i.i, ptr %rx_cleanup_urbs.i.i, align 4
  %prev.i.i1.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 11, i32 0, i32 3, i32 3
  %176 = ptrtoint ptr %prev.i.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %rx_cleanup_urbs.i.i, ptr %prev.i.i1.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %173, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_usb_anchor.__key) #7
  %lock.i3.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 11, i32 1, i32 4, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i3.i.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_usb_anchor.__key.52, i16 noundef signext 3) #7
  %rx_queue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 12, i32 1, i32 4
  %lock.i4.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 12, i32 1, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i4.i.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %177 = ptrtoint ptr %rx_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %rx_queue.i.i, ptr %rx_queue.i.i, align 4
  %prev.i.i5.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 12, i32 1, i32 4, i32 1
  %178 = ptrtoint ptr %prev.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %rx_queue.i.i, ptr %prev.i.i5.i.i, align 4
  %qlen.i.i.i77.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 12, i32 1, i32 4, i32 1, i32 1
  %179 = ptrtoint ptr %qlen.i.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %qlen.i.i.i77.i, align 4
  %rx_work_tasklet.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 1, i32 8, i32 12, i32 0, i32 3, i32 7
  tail call void @tasklet_setup(ptr noundef %rx_work_tasklet.i.i, ptr noundef nonnull @_rtl_rx_work) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool107.not = icmp eq i32 %call38.i, 0
  br i1 %tobool107.not, label %if.end109, label %_rtl_usb_init.exit.error_out2_crit_edge

_rtl_usb_init.exit.error_out2_crit_edge:          ; preds = %_rtl_usb_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_out2

if.end109:                                        ; preds = %_rtl_usb_init.exit
  %180 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %priv, align 8
  %rtlhal2.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 10
  %182 = ptrtoint ptr %rtlhal2.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call.i, ptr %rtlhal2.i, align 8
  %inactiveps.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 21, i32 17
  %183 = ptrtoint ptr %inactiveps.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %inactiveps.i, align 1
  %leisure_ps.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 21, i32 9
  %184 = ptrtoint ptr %leisure_ps.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %leisure_ps.i, align 1
  %fwctrl_lps.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 21, i32 10
  %185 = ptrtoint ptr %fwctrl_lps.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %fwctrl_lps.i, align 2
  %reg_fwctrl_lps.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 21, i32 12
  %186 = ptrtoint ptr %reg_fwctrl_lps.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 3, ptr %reg_fwctrl_lps.i, align 4
  %reg_max_lps_awakeintvl.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 21, i32 14
  %187 = ptrtoint ptr %reg_max_lps_awakeintvl.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 5, ptr %reg_max_lps_awakeintvl.i, align 2
  %fwctrl_psmode.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 21, i32 11
  %188 = ptrtoint ptr %fwctrl_psmode.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 3, ptr %fwctrl_psmode.i, align 1
  %beacon_interval.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 9, i32 54
  %189 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 100, ptr %beacon_interval.i, align 8
  %min_space_cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 9, i32 55
  %190 = ptrtoint ptr %min_space_cfg.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %min_space_cfg.i, align 4
  %max_mss_density.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 9, i32 56
  %191 = ptrtoint ptr %max_mss_density.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %max_mss_density.i, align 1
  %current_ampdu_density.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 9, i32 58
  %192 = ptrtoint ptr %current_ampdu_density.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 7, ptr %current_ampdu_density.i, align 1
  %current_ampdu_factor.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 9, i32 57
  %193 = ptrtoint ptr %current_ampdu_factor.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 3, ptr %current_ampdu_factor.i, align 2
  %acm_method.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 1, i32 7, i32 0, i32 1, i32 3
  %194 = ptrtoint ptr %acm_method.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 2, ptr %acm_method.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 1, i32 7, i32 0, i32 1, i32 4
  %195 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -1, ptr %irq_mask.i, align 4
  %arrayidx8.i = getelementptr %struct.rtl_priv, ptr %181, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %196 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %arrayidx8.i, align 4
  %disablehwsm.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 1, i32 7, i32 0, i32 1, i32 2
  %197 = ptrtoint ptr %disablehwsm.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %disablehwsm.i, align 4
  %call110 = tail call i32 @rtl_init_core(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end118, label %do.end115

do.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %error_out2

if.end118:                                        ; preds = %if.end109
  %198 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cfg, align 8
  %ops120 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %ops120 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ops120, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %call121 = tail call i32 %203(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end129, label %if.end118.error_out_crit_edge

if.end118.error_out_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_out

if.end129:                                        ; preds = %if.end118
  %204 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cfg, align 8
  %ops131 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %205, i32 0, i32 4
  %206 = ptrtoint ptr %ops131 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ops131, align 4
  %init_sw_leds = getelementptr inbounds %struct.rtl_hal_ops, ptr %207, i32 0, i32 43
  %208 = ptrtoint ptr %init_sw_leds to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %init_sw_leds, align 4
  tail call void %209(ptr noundef nonnull %call.i) #7
  %call132 = tail call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end140, label %if.end129.error_out_crit_edge

if.end129.error_out_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_out

if.end140:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %mac80211_registered = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 1
  %210 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %mac80211_registered, align 2
  %status = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status) #7
  br label %cleanup

error_out:                                        ; preds = %if.end129.error_out_crit_edge, %if.end118.error_out_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %if.end118.error_out_crit_edge ], [ @.str.15, %if.end129.error_out_crit_edge ]
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink) #11
  tail call void @rtl_deinit_core(ptr noundef nonnull %call.i) #7
  br label %error_out2

error_out2:                                       ; preds = %error_out, %do.end115, %_rtl_usb_init.exit.error_out2_crit_edge, %do.end32.i, %do.end.i
  %211 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %priv, align 8
  %bb_mutex.i214 = getelementptr inbounds %struct.rtl_priv, ptr %212, i32 0, i32 13, i32 1
  tail call void @mutex_destroy(ptr noundef %bb_mutex.i214) #7
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #7
  tail call void @complete(ptr noundef %firmware_loading_complete) #7
  %213 = ptrtoint ptr %usb_data to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %usb_data, align 8
  tail call void @kfree(ptr noundef %214) #7
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error_out2, %if.end140, %if.then40, %if.then6, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %error_out2 ], [ 0, %if.end140 ], [ -12, %if.then40 ], [ -12, %if.then6 ], [ -12, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_fill_h2c_cmd_work_callback(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -892
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %fill_h2c_cmd = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %fill_h2c_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fill_h2c_cmd, align 4
  %rate_mask = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 47
  tail call void %9(ptr noundef %1, i8 noundef zeroext 6, i32 noundef 5, ptr noundef %rate_mask) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_lps_change_work_callback(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_update_beacon_work_callback(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_init_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_deinit_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_usb_disconnect(ptr nocapture noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 1, i32 6, i32 9
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !153

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %firmware_loading_complete = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %firmware_loading_complete) #7
  %status = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 34
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #7
  %mac80211_registered = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac80211_registered, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #7
  %6 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mac80211_registered, align 2
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl_deinit_deferred_work(ptr noundef %1, i1 noundef zeroext false) #7
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 33
  %7 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf_ops, align 4
  %adapter_stop = getelementptr inbounds %struct.rtl_intf_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %adapter_stop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter_stop, align 4
  tail call void %10(ptr noundef %1) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %rx_submitted.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 1, i32 8, i32 10, i32 0, i32 3
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i.i.i) #7
  %rx_work_tasklet.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 1, i32 8, i32 12, i32 0, i32 3, i32 7
  tail call void @tasklet_kill(ptr noundef %rx_work_tasklet.i.i.i) #7
  %lps_change_work.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 0, i32 8, i32 14
  %call.i.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %lps_change_work.i.i.i) #7
  %rtl_wq.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 0, i32 8, i32 7
  %13 = ptrtoint ptr %rtl_wq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtl_wq.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end10.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end10.if.end.i.i.i_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @destroy_workqueue(ptr noundef nonnull %14) #7
  %15 = ptrtoint ptr %rtl_wq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rtl_wq.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end10.if.end.i.i.i_crit_edge
  %rx_queue.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 1, i32 8, i32 12, i32 1, i32 4
  tail call void @skb_queue_purge(ptr noundef %rx_queue.i.i.i) #7
  %rx_cleanup_urbs.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 1, i32 8, i32 11, i32 0, i32 3, i32 2
  %call822.i.i.i = tail call ptr @usb_get_from_anchor(ptr noundef %rx_cleanup_urbs.i.i.i) #7
  %tobool9.not23.i.i.i = icmp eq ptr %call822.i.i.i, null
  br i1 %tobool9.not23.i.i.i, label %if.end.i.i.i._rtl_usb_cleanup_rx.exit.i.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  br label %while.body.i.i.i

if.end.i.i.i._rtl_usb_cleanup_rx.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_usb_cleanup_rx.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i.while.body.i.i.i_crit_edge
  %call824.i.i.i = phi ptr [ %call8.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %call822.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %dev10.i.i.i = getelementptr inbounds %struct.urb, ptr %call824.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %dev10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call824.i.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transfer_buffer_length.i.i.i, align 4
  %transfer_buffer.i.i.i = getelementptr inbounds %struct.urb, ptr %call824.i.i.i, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer.i.i.i, align 4
  %transfer_dma.i.i.i = getelementptr inbounds %struct.urb, ptr %call824.i.i.i, i32 0, i32 15
  %22 = ptrtoint ptr %transfer_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_dma.i.i.i, align 4
  tail call void @usb_free_coherent(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23) #7
  tail call void @usb_free_urb(ptr noundef nonnull %call824.i.i.i) #7
  %call8.i.i.i = tail call ptr @usb_get_from_anchor(ptr noundef %rx_cleanup_urbs.i.i.i) #7
  %tobool9.not.i.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %while.body.i.i.i._rtl_usb_cleanup_rx.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.body.i.i.i._rtl_usb_cleanup_rx.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_usb_cleanup_rx.exit.i.i

_rtl_usb_cleanup_rx.exit.i.i:                     ; preds = %while.body.i.i.i._rtl_usb_cleanup_rx.exit.i.i_crit_edge, %if.end.i.i.i._rtl_usb_cleanup_rx.exit.i.i_crit_edge
  %tx_skb_queue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 1, i32 7, i32 0, i32 5, i32 2
  %usb_tx_cleanup.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 1, i32 8, i32 9, i32 3
  %tx_pending.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 1, i32 7, i32 6, i32 0, i32 0, i32 1
  br label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %while.end.i.i.while.cond.preheader.i.i_crit_edge, %_rtl_usb_cleanup_rx.exit.i.i
  %i.019.i.i = phi i32 [ 0, %_rtl_usb_cleanup_rx.exit.i.i ], [ %inc.i.i, %while.end.i.i.while.cond.preheader.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [6 x %struct.sk_buff_head], ptr %tx_skb_queue.i.i, i32 0, i32 %i.019.i.i
  %call16.i.i = tail call ptr @skb_dequeue(ptr noundef %arrayidx.i.i) #7
  %tobool.not17.i.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool.not17.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %call18.i.i = phi ptr [ %call.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call16.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %usb_tx_cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_tx_cleanup.i.i, align 4
  tail call void %25(ptr noundef %1, ptr noundef nonnull %call18.i.i) #7
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call18.i.i, i32 0, i32 3
  %count.i.i.i = getelementptr %struct.sk_buff, ptr %call18.i.i, i32 0, i32 3, i32 9
  %26 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %bf.load.i.i.i = load i16, ptr %count.i.i.i, align 1
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, 2047
  store i16 %bf.clear.i.i.i, ptr %count.i.i.i, align 1
  %count.1.i.i.i = getelementptr %struct.sk_buff, ptr %call18.i.i, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %count.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %bf.load.1.i.i.i = load i16, ptr %count.1.i.i.i, align 1
  %bf.clear.1.i.i.i = and i16 %bf.load.1.i.i.i, 2047
  store i16 %bf.clear.1.i.i.i, ptr %count.1.i.i.i, align 1
  %count.2.i.i.i = getelementptr %struct.sk_buff, ptr %call18.i.i, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %count.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %bf.load.2.i.i.i = load i16, ptr %count.2.i.i.i, align 1
  %bf.clear.2.i.i.i = and i16 %bf.load.2.i.i.i, 2047
  store i16 %bf.clear.2.i.i.i, ptr %count.2.i.i.i, align 1
  %count.3.i.i.i = getelementptr %struct.sk_buff, ptr %call18.i.i, i32 0, i32 3, i32 18
  %29 = ptrtoint ptr %count.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %bf.load.3.i.i.i = load i16, ptr %count.3.i.i.i, align 1
  %bf.clear.3.i.i.i = and i16 %bf.load.3.i.i.i, 2047
  store i16 %bf.clear.3.i.i.i, ptr %count.3.i.i.i, align 1
  %add.ptr.i.i.i = getelementptr %struct.sk_buff, ptr %call18.i.i, i32 0, i32 3, i32 20
  %30 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 28)
  %31 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cb.i.i.i, align 8
  %or.i.i = or i32 %32, 512
  store i32 %or.i.i, ptr %cb.i.i.i, align 8
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %1, ptr noundef nonnull %call18.i.i) #7
  %call.i.i = tail call ptr @skb_dequeue(ptr noundef %arrayidx.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %arrayidx3.i.i = getelementptr [6 x %struct.usb_anchor], ptr %tx_pending.i.i, i32 0, i32 %i.019.i.i
  tail call void @usb_kill_anchored_urbs(ptr noundef %arrayidx3.i.i) #7
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 6
  br i1 %exitcond.not.i.i, label %rtl_usb_deinit.exit, label %while.end.i.i.while.cond.preheader.i.i_crit_edge

while.end.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader.i.i

rtl_usb_deinit.exit:                              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_submitted.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 1, i32 8, i32 8, i32 1, i32 4, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i.i) #7
  tail call void @rtl_deinit_core(ptr noundef %1) #7
  %usb_data = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 43
  %33 = ptrtoint ptr %usb_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_data, align 8
  tail call void @kfree(ptr noundef %34) #7
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %35 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %deinit_sw_leds = getelementptr inbounds %struct.rtl_hal_ops, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %deinit_sw_leds to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %deinit_sw_leds, align 4
  tail call void %40(ptr noundef %1) #7
  %41 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg, align 8
  %ops12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops12, align 4
  %deinit_sw_vars = getelementptr inbounds %struct.rtl_hal_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %deinit_sw_vars to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %deinit_sw_vars, align 4
  tail call void %46(ptr noundef %1) #7
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %bb_mutex.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 13, i32 1
  tail call void @mutex_destroy(ptr noundef %bb_mutex.i) #7
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  tail call void @usb_put_dev(ptr noundef %50) #7
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @ieee80211_free_hw(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl_usb_deinit.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_deinit_deferred_work(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtl_usb_suspend(ptr nocapture readnone %pusb_intf, [1 x i32] %message.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtl_usb_resume(ptr nocapture readnone %pusb_intf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_usb_start(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %hw_init = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_init, align 4
  %call = tail call i32 %7(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @rtl_init_rx_config(ptr noundef %hw) #7
  %state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %state.i, align 8
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 1, i32 6, i32 9
  %rx_urb_num.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 1, i32 8, i32 10, i32 0, i32 2
  %12 = ptrtoint ptr %rx_urb_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_urb_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end.i_crit_edge, !prof !153

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 703, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %rx_max_size.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 1, i32 8, i32 10, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %rx_max_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %15)
  %cmp21.i = icmp ult i32 %15, 1600
  br i1 %cmp21.i, label %do.end37.i, label %if.end.i.if.end43.i_crit_edge, !prof !153

if.end.i.if.end43.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 705, i32 noundef 9, ptr noundef null) #7
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end37.i, %if.end.i.if.end43.i_crit_edge
  %16 = ptrtoint ptr %rx_urb_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_urb_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5296.not.i = icmp eq i32 %17, 0
  br i1 %cmp5296.not.i, label %if.end43.i.if.end_crit_edge, label %for.body.lr.ph.i

if.end43.i.if.end_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end43.i
  %in_ep.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 1, i32 8, i32 10, i32 0, i32 1
  %rx_submitted.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 1, i32 8, i32 10, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end68.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end68.i.for.body.i_crit_edge ]
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool53.not.i = icmp eq ptr %call.i, null
  br i1 %tobool53.not.i, label %for.body.i.err_out.i_crit_edge, label %if.end55.i

for.body.i.err_out.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.i

if.end55.i:                                       ; preds = %for.body.i
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %rx_max_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_max_size.i, align 4
  %transfer_dma.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %call.i.i = tail call ptr @usb_alloc_coherent(ptr noundef %19, i32 noundef %21, i32 noundef 3264, ptr noundef %transfer_dma.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end61.i, label %if.end64.i

do.end61.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %err_out.sink.split.i

if.end64.i:                                       ; preds = %if.end55.i
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %in_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_ep.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 8
  %shl.i.i.i = shl i32 %27, 8
  %shl1.i.i.i = shl i32 %25, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or5.i.i = or i32 %or.i.i.i, -1073741696
  %28 = ptrtoint ptr %rx_max_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_max_size.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %30 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or5.i.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %32 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %33 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %34 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @_rtl_rx_completed, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %35 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev.i, ptr %context4.i.i.i, align 4
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %36 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %transfer_flags.i.i, align 4
  %or7.i.i = or i32 %37, 4
  store i32 %or7.i.i, ptr %transfer_flags.i.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_submitted.i) #7
  %call65.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #7
  br label %err_out.sink.split.i

if.end68.i:                                       ; preds = %if.end64.i
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #7
  %inc.i = add nuw i32 %i.097.i, 1
  %38 = ptrtoint ptr %rx_urb_num.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_urb_num.i, align 4
  %cmp52.i = icmp ult i32 %inc.i, %39
  br i1 %cmp52.i, label %if.end68.i.for.body.i_crit_edge, label %if.end68.i.if.end_crit_edge

if.end68.i.if.end_crit_edge:                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end68.i.for.body.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

err_out.sink.split.i:                             ; preds = %if.then67.i, %do.end61.i
  %err.0.ph.i = phi i32 [ %call65.i, %if.then67.i ], [ -12, %do.end61.i ]
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #7
  br label %err_out.i

err_out.i:                                        ; preds = %err_out.sink.split.i, %for.body.i.err_out.i_crit_edge
  %err.0.i = phi i32 [ %err.0.ph.i, %err_out.sink.split.i ], [ -12, %for.body.i.err_out.i_crit_edge ]
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #7
  br label %if.end

if.end:                                           ; preds = %err_out.i, %if.end68.i.if.end_crit_edge, %if.end43.i.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %err.0.i, %err_out.i ], [ 0, %if.end43.i.if.end_crit_edge ], [ 0, %if.end68.i.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_usb_stop(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %state.i, align 8
  %fill_h2c_cmd = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 15
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %fill_h2c_cmd) #7
  %state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  %rx_submitted = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 10, i32 0, i32 3
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted) #7
  %rx_work_tasklet = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 12, i32 0, i32 3, i32 7
  tail call void @tasklet_kill(ptr noundef %rx_work_tasklet) #7
  %lps_change_work = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %lps_change_work) #7
  %update_beacon_work = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 16
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %update_beacon_work) #7
  %rtl_wq = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %rtl_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtl_wq, align 4
  tail call void @flush_workqueue(ptr noundef %5) #7
  %rx_queue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 12, i32 1, i32 4
  tail call void @skb_queue_purge(ptr noundef %rx_queue) #7
  %rx_cleanup_urbs = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 11, i32 0, i32 3, i32 2
  %call1027 = tail call ptr @usb_get_from_anchor(ptr noundef %rx_cleanup_urbs) #7
  %tobool.not28 = icmp eq ptr %call1027, null
  br i1 %tobool.not28, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call1029 = phi ptr [ %call10, %while.body.while.body_crit_edge ], [ %call1027, %entry.while.body_crit_edge ]
  %dev11 = getelementptr inbounds %struct.urb, ptr %call1029, i32 0, i32 8
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call1029, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transfer_buffer_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call1029, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call1029, i32 0, i32 15
  %12 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13) #7
  tail call void @usb_free_urb(ptr noundef nonnull %call1029) #7
  %call10 = tail call ptr @usb_get_from_anchor(ptr noundef %rx_cleanup_urbs) #7
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %hw_disable = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %hw_disable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_disable, align 4
  tail call void %19(ptr noundef %hw) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_usb_tx(ptr noundef %hw, ptr noundef %sta, ptr noundef %skb, ptr nocapture noundef readnone %dummy) #0 align 64 {
entry:
  %tcb_desc.i = alloca %struct.rtl_tcb_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %err_free, label %if.end, !prof !153

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %usb_mq_to_hwq = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %8 = ptrtoint ptr %usb_mq_to_hwq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_mq_to_hwq, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %10 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queue_mapping.i, align 8
  %call6 = tail call zeroext i16 %9(i16 noundef zeroext %7, i16 noundef zeroext %11) #7
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tcb_desc.i) #7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 2
  %18 = call ptr @memset(ptr %tcb_desc.i, i32 0, i32 56)
  %19 = and i16 %17, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %19)
  %cmp.i.i = icmp eq i16 %19, -20480
  br i1 %cmp.i.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 16, i32 noundef 3, ptr noundef nonnull @.str.30) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %sw_ps_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 21, i32 25
  %20 = ptrtoint ptr %sw_ps_enabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sw_ps_enabled.i, align 8, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %22 = and i16 %17, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %22)
  %cmp.i58.i = icmp ne i16 %22, 2048
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i58.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %19)
  %cmp.i59.i = icmp eq i16 %19, 18432
  %or.cond63.i = select i1 %or.cond.i, i1 true, i1 %cmp.i59.i
  %23 = and i16 %17, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.i60.i = icmp ne i16 %23, 0
  %or.cond64.i = select i1 %or.cond63.i, i1 true, i1 %cmp.i60.i
  br i1 %or.cond64.i, label %if.end.i.if.end11.i_crit_edge, label %if.then7.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %15, align 2
  %26 = or i16 %25, 16
  store i16 %26, ptr %15, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i.if.end11.i_crit_edge
  %call12.i = tail call zeroext i1 @rtl_action_proc(ptr noundef %hw, ptr noundef %skb, i8 noundef zeroext 1) #7
  %27 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr1.i, align 4
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %txbytesmulticast.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 24, i32 1
  br label %if.end28.i

if.else.i:                                        ; preds = %if.end11.i
  %32 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr1.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %15, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %35, %33
  %add.ptr3.i.i = getelementptr %struct.ieee80211_hdr, ptr %15, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %37
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i61.i = icmp eq i16 %and510.i.i, -1
  %len18.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len18.i, align 4
  br i1 %cmp.i61.i, label %if.then17.i, label %if.else22.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %txbytesbroadcast.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 24, i32 2
  br label %if.end28.i

if.else22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %stats25.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 24
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else22.i, %if.then17.i, %if.then14.i
  %txbytesbroadcast.sink65.i = phi ptr [ %txbytesbroadcast.i, %if.then17.i ], [ %stats25.i, %if.else22.i ], [ %txbytesmulticast.i, %if.then14.i ]
  %conv19.sink.in.i = phi i32 [ %39, %if.then17.i ], [ %39, %if.else22.i ], [ %31, %if.then14.i ]
  %conv19.sink.i = zext i32 %conv19.sink.in.i to i64
  %40 = ptrtoint ptr %txbytesbroadcast.sink65.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %txbytesbroadcast.sink65.i, align 8
  %add21.i = add i64 %41, %conv19.sink.i
  store i64 %add21.i, ptr %txbytesbroadcast.sink65.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %42 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %fill_tx_desc.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 26
  %46 = ptrtoint ptr %fill_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fill_tx_desc.i, align 4
  %conv29.i = trunc i16 %call6 to i8
  call void %47(ptr noundef %hw, ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef %cb.i.i, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %conv29.i, ptr noundef nonnull %tcb_desc.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %22)
  %cmp.i62.i = icmp eq i16 %22, 2048
  br i1 %cmp.i62.i, label %if.then31.i, label %if.end28.i._rtl_usb_tx_preprocess.exit_crit_edge

if.end28.i._rtl_usb_tx_preprocess.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_usb_tx_preprocess.exit

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i, align 8
  %ops33.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ops33.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops33.i, align 4
  %led_control.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %51, i32 0, i32 36
  %52 = ptrtoint ptr %led_control.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %led_control.i, align 4
  call void %53(ptr noundef %hw, i32 noundef 4) #7
  br label %_rtl_usb_tx_preprocess.exit

_rtl_usb_tx_preprocess.exit:                      ; preds = %if.then31.i, %if.end28.i._rtl_usb_tx_preprocess.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tcb_desc.i) #7
  %conv = zext i16 %call6 to i32
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %usb_tx_aggregate_hdl.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 1, i32 8, i32 9, i32 1, i32 4, i32 7
  %56 = ptrtoint ptr %usb_tx_aggregate_hdl.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_tx_aggregate_hdl.i, align 4
  %cmp.i20 = icmp eq ptr %57, null
  br i1 %cmp.i20, label %do.end.i, label %_rtl_usb_tx_preprocess.exit.if.end.i22_crit_edge, !prof !153

_rtl_usb_tx_preprocess.exit.if.end.i22_crit_edge: ; preds = %_rtl_usb_tx_preprocess.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i22

do.end.i:                                         ; preds = %_rtl_usb_tx_preprocess.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 904, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i22

if.end.i22:                                       ; preds = %do.end.i, %_rtl_usb_tx_preprocess.exit.if.end.i22_crit_edge
  %state.i21 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 1, i32 7, i32 0, i32 1
  %58 = ptrtoint ptr %state.i21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp20.i = icmp eq i32 %59, 0
  br i1 %cmp20.i, label %do.end30.i, label %if.end32.i, !prof !153

do.end30.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end32.i:                                       ; preds = %if.end.i22
  %ep_map.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %arrayidx.i = getelementptr [7 x i32], ptr %ep_map.i, i32 0, i32 %conv
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %dev.i.i = getelementptr inbounds %struct.rtl_priv, ptr %63, i32 1, i32 6, i32 9
  %cmp.i.i23 = icmp eq ptr %skb, null
  br i1 %cmp.i.i23, label %do.end.i.i, label %if.end32.i.if.end.i.i_crit_edge, !prof !153

if.end32.i.if.end.i.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 886, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end32.i.if.end.i.i_crit_edge
  %call.i.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #7
  %tobool20.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not.i.i, label %do.end46.i, label %if.end49.i

do.end46.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end49.i:                                       ; preds = %if.end.i.i
  %rate_driver_data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %64 = ptrtoint ptr %rate_driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dev.i.i, ptr %rate_driver_data.i.i.i, align 8
  %65 = inttoptr i32 %61 to ptr
  %arrayidx2.i.i.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %66 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %arrayidx2.i.i.i, align 4
  %67 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %shl.i.i.i = shl i32 %70, 8
  %shl1.i.i.i = shl i32 %61, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -1073741824
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 8
  %75 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %68, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 10
  %76 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or.i.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 14
  %77 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %72, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 19
  %78 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %74, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 28
  %79 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @_rtl_tx_complete, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 27
  %80 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %skb, ptr %context4.i.i.i, align 4
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 13
  %81 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %transfer_flags.i.i, align 4
  %or25.i.i = or i32 %82, 64
  store i32 %or25.i.i, ptr %transfer_flags.i.i, align 4
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 8
  %tx_submitted.i.i = getelementptr inbounds %struct.rtl_priv, ptr %84, i32 1, i32 8, i32 8, i32 1, i32 4, i32 2
  call void @usb_anchor_urb(ptr noundef nonnull %call.i.i, ptr noundef %tx_submitted.i.i) #7
  %call.i61.i = call i32 @usb_submit_urb(ptr noundef nonnull %call.i.i, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %cmp.i62.i24 = icmp slt i32 %call.i61.i, 0
  br i1 %cmp.i62.i24, label %if.then.i.i, label %if.end49.i._rtl_submit_tx_urb.exit.i_crit_edge

if.end49.i._rtl_submit_tx_urb.exit.i_crit_edge:   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_submit_tx_urb.exit.i

if.then.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #11
  call void @usb_unanchor_urb(ptr noundef nonnull %call.i.i) #7
  %85 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %context4.i.i.i, align 4
  call void @kfree_skb_reason(ptr noundef %86, i32 noundef 0) #7
  br label %_rtl_submit_tx_urb.exit.i

_rtl_submit_tx_urb.exit.i:                        ; preds = %if.then.i.i, %if.end49.i._rtl_submit_tx_urb.exit.i_crit_edge
  call void @usb_free_urb(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

err_free:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %_rtl_submit_tx_urb.exit.i, %do.end46.i, %do.end30.i
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtl_usb_tx_chk_waitq_insert(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %sta, ptr nocapture noundef readnone %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_init_rx_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl_rx_completed(ptr noundef %_urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %_urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state = getelementptr inbounds %struct.rtl_usb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.free_crit_edge, label %if.end, !prof !153

entry.free_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %_urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.resubmit_crit_edge [
    i32 0, label %if.then9
    i32 -2, label %if.end.free_crit_edge
    i32 -104, label %if.end.free_crit_edge88
    i32 -19, label %if.end.free_crit_edge89
    i32 -108, label %if.end.free_crit_edge90
  ], !prof !155

if.end.free_crit_edge90:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end.free_crit_edge89:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end.free_crit_edge88:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end.resubmit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit

if.then9:                                         ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %_urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %8)
  %cmp10 = icmp ult i32 %8, 54
  br i1 %cmp10, label %do.end, label %if.end12

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %8) #11
  br label %resubmit

if.end12:                                         ; preds = %if.then9
  %rx_queue = getelementptr inbounds %struct.rtl_usb, ptr %1, i32 0, i32 27
  %qlen.i = getelementptr inbounds %struct.rtl_usb, ptr %1, i32 0, i32 27, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %10)
  %cmp14 = icmp ugt i32 %10, 63
  br i1 %cmp14, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %10) #11
  br label %resubmit

if.end21:                                         ; preds = %if.end12
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %_urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 24
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr, align 2
  %15 = and i16 %14, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %15)
  %cmp.i.i = icmp eq i16 %15, -30720
  %16 = and i16 %14, 3
  br i1 %cmp.i.i, label %if.then1.i, label %if.end21._rtl_rx_get_padding.exit_crit_edge

if.end21._rtl_rx_get_padding.exit_crit_edge:      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rx_get_padding.exit

if.then1.i:                                       ; preds = %if.end21
  %sub = add i32 %8, -24
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp.i.i.i = icmp eq i16 %16, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.v.i.i, i32 %sub)
  %cmp3.i = icmp ult i32 %retval.0.v.i.i, %sub
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.then1.i._rtl_rx_get_padding.exit_crit_edge

if.then1.i._rtl_rx_get_padding.exit_crit_edge:    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rx_get_padding.exit

land.lhs.true.i:                                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i.i = getelementptr i8, ptr %add.ptr, i32 %retval.0.v.i.i
  %17 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %retval.0.i.i, align 1
  %19 = lshr i8 %18, 6
  %20 = and i8 %19, 2
  %21 = xor i8 %20, 2
  %22 = zext i8 %21 to i32
  br label %_rtl_rx_get_padding.exit

_rtl_rx_get_padding.exit:                         ; preds = %land.lhs.true.i, %if.then1.i._rtl_rx_get_padding.exit_crit_edge, %if.end21._rtl_rx_get_padding.exit_crit_edge
  %padding.1.i = phi i32 [ %22, %land.lhs.true.i ], [ 2, %if.then1.i._rtl_rx_get_padding.exit_crit_edge ], [ 0, %if.end21._rtl_rx_get_padding.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp.i22.i = icmp eq i16 %16, 3
  %xor11.i = xor i32 %padding.1.i, 2
  %spec.select21.i = select i1 %cmp.i22.i, i32 %xor11.i, i32 %padding.1.i
  %add = add i32 %8, 32
  %add23 = add i32 %add, %spec.select21.i
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add23, i32 noundef 2592) #7
  %tobool25.not = icmp eq ptr %call.i.i, null
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %_rtl_rx_get_padding.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %resubmit

if.end32:                                         ; preds = %_rtl_rx_get_padding.exit
  %in_ep = getelementptr inbounds %struct.rtl_usb, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_ep, align 4
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 24
  %25 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %rate_driver_data.i, align 8
  %26 = inttoptr i32 %24 to ptr
  %arrayidx2.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 28
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %arrayidx2.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %spec.select21.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %31, i32 %spec.select21.i
  %add.ptr.i84 = getelementptr i8, ptr %add.ptr.i, i32 32
  store ptr %add.ptr.i84, ptr %data.i, align 4
  %add.ptr1.i86 = getelementptr i8, ptr %add.ptr1.i, i32 32
  store ptr %add.ptr1.i86, ptr %tail.i, align 8
  %32 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transfer_buffer, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %8) #7
  %34 = call ptr @memcpy(ptr %call.i, ptr %33, i32 %8)
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef nonnull %call.i.i) #7
  %state.i = getelementptr inbounds %struct.rtl_usb, ptr %1, i32 0, i32 26, i32 1
  %call.i87 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end32.resubmit_crit_edge

if.end32.resubmit_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %rx_work_tasklet = getelementptr inbounds %struct.rtl_usb, ptr %1, i32 0, i32 26
  tail call void @__tasklet_schedule(ptr noundef %rx_work_tasklet) #7
  br label %resubmit

resubmit:                                         ; preds = %if.then.i, %if.end32.resubmit_crit_edge, %do.end29, %do.end18, %do.end, %if.end.resubmit_crit_edge
  %rx_submitted = getelementptr inbounds %struct.rtl_usb, ptr %1, i32 0, i32 24
  tail call void @usb_anchor_urb(ptr noundef %_urb, ptr noundef %rx_submitted) #7
  %call42 = tail call i32 @usb_submit_urb(ptr noundef %_urb, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %resubmit.cleanup52_crit_edge, label %if.then50, !prof !152

resubmit.cleanup52_crit_edge:                     ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.then50:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_unanchor_urb(ptr noundef %_urb) #7
  br label %free

free:                                             ; preds = %if.then50, %if.end.free_crit_edge, %if.end.free_crit_edge88, %if.end.free_crit_edge89, %if.end.free_crit_edge90, %entry.free_crit_edge
  %rx_cleanup_urbs = getelementptr inbounds %struct.rtl_usb, ptr %1, i32 0, i32 25
  tail call void @usb_anchor_urb(ptr noundef %_urb, ptr noundef %rx_cleanup_urbs) #7
  br label %cleanup52

cleanup52:                                        ; preds = %free, %resubmit.cleanup52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_action_proc(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl_tx_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rate_driver_data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_driver_data, align 8
  %intf = getelementptr inbounds %struct.rtl_usb, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.rtl_usb, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !153

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %usb_tx_post_hdl.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 1, i32 8, i32 9, i32 2
  %12 = ptrtoint ptr %usb_tx_post_hdl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_tx_post_hdl.i, align 4
  %call.i = tail call i32 %13(ptr noundef %7, ptr noundef %urb, ptr noundef %1) #7
  %call2.i = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 32) #7
  %count.i.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %14 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i.i, 2047
  store i16 %bf.clear.i.i, ptr %count.i.i, align 1
  %count.1.i.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %bf.load.1.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.clear.1.i.i = and i16 %bf.load.1.i.i, 2047
  store i16 %bf.clear.1.i.i, ptr %count.1.i.i, align 1
  %count.2.i.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  %16 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %bf.load.2.i.i = load i16, ptr %count.2.i.i, align 1
  %bf.clear.2.i.i = and i16 %bf.load.2.i.i, 2047
  store i16 %bf.clear.2.i.i, ptr %count.2.i.i, align 1
  %count.3.i.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %17 = ptrtoint ptr %count.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %bf.load.3.i.i = load i16, ptr %count.3.i.i, align 1
  %bf.clear.3.i.i = and i16 %bf.load.3.i.i, 2047
  store i16 %bf.clear.3.i.i, ptr %count.3.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 28)
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cb.i, align 8
  %or.i = or i32 %20, 512
  store i32 %or.i, ptr %cb.i, align 8
  %status.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end._usb_tx_post.exit_crit_edge, label %do.end.i

if.end._usb_tx_post.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_usb_tx_post.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %22) #11
  br label %_usb_tx_post.exit

_usb_tx_post.exit:                                ; preds = %do.end.i, %if.end._usb_tx_post.exit_crit_edge
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %7, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %_usb_tx_post.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_usb_write8_async(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %conv = zext i8 %val to i32
  tail call fastcc void @_usb_write_async(ptr noundef %add.ptr, i32 noundef %addr, i32 noundef %conv, i16 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_usb_write16_async(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %conv = zext i16 %val to i32
  tail call fastcc void @_usb_write_async(ptr noundef %add.ptr, i32 noundef %addr, i32 noundef %conv, i16 noundef zeroext 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_usb_write32_async(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  tail call fastcc void @_usb_write_async(ptr noundef %add.ptr, i32 noundef %addr, i32 noundef %val, i16 noundef zeroext 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @_usb_read8_sync(ptr noundef %rtlpriv, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_usb_read_sync(ptr noundef %rtlpriv, i32 noundef %addr, i16 noundef zeroext 1)
  %conv = trunc i32 %call to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @_usb_read16_sync(ptr noundef %rtlpriv, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_usb_read_sync(ptr noundef %rtlpriv, i32 noundef %addr, i16 noundef zeroext 2)
  %conv = trunc i32 %call to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_usb_read32_sync(ptr noundef %rtlpriv, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_usb_read_sync(ptr noundef %rtlpriv, i32 noundef %addr, i16 noundef zeroext 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_usb_writen_sync(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr, ptr noundef %data, i16 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 8
  %conv2 = zext i16 %len to i32
  %call3 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %conv2, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl i32 %3, 8
  %conv = trunc i32 %addr to i16
  %or = or i32 %shl.i, -2147483648
  %call4 = tail call i32 @usb_control_msg(ptr noundef %add.ptr, i32 noundef %or, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call3, i16 noundef zeroext %len, i32 noundef 50) #7
  tail call void @kfree(ptr noundef nonnull %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_usb_write_async(ptr noundef %udev, i32 noundef %addr, i32 noundef %val, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  %conv = trunc i32 %addr to i16
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %data, align 4
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %udev, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 8) #10
  %tobool41.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool41.not.i, label %entry._usbctrl_vendorreq_async_write.exit_crit_edge, label %if.end43.i

entry._usbctrl_vendorreq_async_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_usbctrl_vendorreq_async_write.exit

if.end43.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 254) #10
  %tobool45.not.i = icmp eq ptr %call7.i.i1.i, null
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end47.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %_usbctrl_vendorreq_async_write.exit

if.end47.i:                                       ; preds = %if.end43.i
  %call48.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #7
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %if.then50.i, label %if.end51.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i1.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %_usbctrl_vendorreq_async_write.exit

if.end51.i:                                       ; preds = %if.end47.i
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %call7.i.i.i, align 8
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %bRequest.i, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %wValue.i, align 2
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %wIndex.i, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %len) #7
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %wLength.i, align 2
  %conv52.i = zext i16 %len to i32
  %13 = call ptr @memcpy(ptr %call7.i.i1.i, ptr %data, i32 %conv52.i)
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call48.i, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %udev, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call48.i, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %call48.i, i32 0, i32 21
  %16 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %call48.i, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i1.i, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call48.i, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv52.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call48.i, i32 0, i32 28
  %19 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @usbctrl_async_callback, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %call48.i, i32 0, i32 27
  %20 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %context5.i.i, align 4
  %call54.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call48.i, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %if.then57.i, label %if.end51.i.if.end58.i_crit_edge

if.end51.i.if.end58.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

if.then57.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i1.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %if.end51.i.if.end58.i_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call48.i) #7
  br label %_usbctrl_vendorreq_async_write.exit

_usbctrl_vendorreq_async_write.exit:              ; preds = %if.end58.i, %if.then50.i, %if.then46.i, %entry._usbctrl_vendorreq_async_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbctrl_async_callback(ptr noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %0 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %1) #7
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_usb_read_sync(ptr noundef %rtlpriv, i32 noundef %addr, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %usb_lock = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 7, i32 9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %usb_lock) #7
  %usb_data_index = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 44
  %2 = ptrtoint ptr %usb_data_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_data_index, align 4
  %inc = add i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %inc)
  %cmp7 = icmp sgt i32 %inc, 99
  %spec.select = select i1 %cmp7, i32 0, i32 %inc
  %4 = ptrtoint ptr %usb_data_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %usb_data_index, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -128
  %usb_data = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 43
  %5 = ptrtoint ptr %usb_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_data, align 8
  %arrayidx = getelementptr i32, ptr %6, i32 %spec.select
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %usb_lock, i32 noundef %call4) #7
  %conv13 = trunc i32 %addr to i16
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 8
  %shl.i.i = shl i32 %8, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %9 = and i16 %conv13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %9)
  %10 = icmp ne i16 %9, 4096
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %entry
  %vendorreq_times.0.i = phi i32 [ 0, %entry ], [ %inc.i, %if.then.i.do.body.i_crit_edge ]
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr, i32 noundef %or1.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %conv13, i16 noundef zeroext 0, ptr noundef %arrayidx, i16 noundef zeroext %len, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body.i._usbctrl_vendorreq_sync_read.exit_crit_edge

do.body.i._usbctrl_vendorreq_sync_read.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_usbctrl_vendorreq_sync_read.exit

if.then.i:                                        ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %vendorreq_times.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %vendorreq_times.0.i)
  %cmp10.i = icmp ult i32 %vendorreq_times.0.i, 9
  %or.cond1.i = select i1 %10, i1 %cmp10.i, i1 false
  br i1 %or.cond1.i, label %if.then.i.do.body.i_crit_edge, label %land.lhs.true14.critedge.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

land.lhs.true14.critedge.i:                       ; preds = %if.then.i
  %11 = load i32, ptr @_usbctrl_vendorreq_sync_read.count, align 4
  %inc15.i = add i32 %11, 1
  store i32 %inc15.i, ptr @_usbctrl_vendorreq_sync_read.count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp16.i = icmp slt i32 %11, 4
  br i1 %cmp16.i, label %do.end21.i, label %land.lhs.true14.critedge.i._usbctrl_vendorreq_sync_read.exit_crit_edge

land.lhs.true14.critedge.i._usbctrl_vendorreq_sync_read.exit_crit_edge: ; preds = %land.lhs.true14.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_usbctrl_vendorreq_sync_read.exit

do.end21.i:                                       ; preds = %land.lhs.true14.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv22.i = and i32 %addr, 65535
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv22.i, i32 noundef %call2.i, i32 noundef %13) #11
  br label %_usbctrl_vendorreq_sync_read.exit

_usbctrl_vendorreq_sync_read.exit:                ; preds = %do.end21.i, %land.lhs.true14.critedge.i._usbctrl_vendorreq_sync_read.exit_crit_edge, %do.body.i._usbctrl_vendorreq_sync_read.exit_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_none_usb_tx_aggregate_hdl(ptr nocapture noundef readnone %hw, ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_dequeue(ptr noundef %list) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl_rx_work(ptr noundef %t) #0 align 64 {
entry:
  %rx_status.i = alloca %struct.ieee80211_rx_status, align 8
  %stats.i = alloca %struct.rtl_stats, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr i8, ptr %t, i32 -1448
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %rx_queue = getelementptr i8, ptr %t, i32 24
  %call123 = call ptr @skb_dequeue(ptr noundef %rx_queue) #7
  %tobool.not24 = icmp eq ptr %call123, null
  br i1 %tobool.not24, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %state = getelementptr i8, ptr %t, i32 -1444
  %usb_rx_segregate_hdl = getelementptr i8, ptr %t, i32 80
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %rx_drvinfo_size.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 23
  %rx_bufshift.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 24
  %crc.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call125 = phi ptr [ %call123, %while.body.lr.ph ], [ %call1, %while.cond.backedge.while.body_crit_edge ]
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !153

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call125, i32 noundef 1) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %_rtl_usb_rx_process_noagg.exit, %if.then
  %call1 = call ptr @skb_dequeue(ptr noundef %rx_queue) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %usb_rx_segregate_hdl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_rx_segregate_hdl, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then13, label %if.else, !prof !152

if.then13:                                        ; preds = %if.end
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call125, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_status.i) #7
  %12 = call ptr @memset(ptr %rx_status.i, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %stats.i) #7
  %13 = call ptr @memset(ptr %stats.i, i32 0, i32 152)
  %call.i = call ptr @skb_pull(ptr noundef nonnull %call125, i32 noundef 24) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %query_rx_desc.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 30
  %18 = ptrtoint ptr %query_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %query_rx_desc.i, align 4
  %call1.i = call zeroext i1 %19(ptr noundef %3, ptr noundef nonnull %stats.i, ptr noundef nonnull %rx_status.i, ptr noundef %11, ptr noundef nonnull %call125) #7
  %20 = ptrtoint ptr %rx_drvinfo_size.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_drvinfo_size.i, align 1
  %conv.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %rx_bufshift.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rx_bufshift.i, align 2
  %conv2.i = zext i8 %23 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i
  %call3.i = call ptr @skb_pull(ptr noundef nonnull %call125, i32 noundef %add.i) #7
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %28 = ptrtoint ptr %crc.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %crc.i, align 2
  %29 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else31.i

if.then.i:                                        ; preds = %if.then13
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call125, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %cb.i.i, ptr %rx_status.i, i32 48)
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr1.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %25, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %34, %32
  %add.ptr3.i.i = getelementptr %struct.ieee80211_hdr, ptr %25, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %36
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.if.end16.i_crit_edge, label %if.else.i

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else.i:                                        ; preds = %if.then.i
  %37 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr1.i, align 4
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i, label %if.else12.i, label %if.else.i.if.end16.i_crit_edge

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call125, i32 0, i32 6
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %conv13.i = zext i32 %41 to i64
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 24, i32 3
  %42 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rxbytesunicast.i, align 8
  %add15.i = add i64 %43, %conv13.i
  store i64 %add15.i, ptr %rxbytesunicast.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else12.i, %if.else.i.if.end16.i_crit_edge, %if.then.i.if.end16.i_crit_edge
  %unicast.0.off0.i = phi i1 [ false, %if.then.i.if.end16.i_crit_edge ], [ false, %if.else.i.if.end16.i_crit_edge ], [ true, %if.else12.i ]
  %44 = and i16 %27, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %44)
  %cmp.i54.i = icmp eq i16 %44, 2048
  br i1 %cmp.i54.i, label %if.then18.i, label %if.end16.i.if.end24.i_crit_edge

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then18.i:                                      ; preds = %if.end16.i
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 8
  %ops20.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %ops20.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops20.i, align 4
  %led_control.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %48, i32 0, i32 36
  %49 = ptrtoint ptr %led_control.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %led_control.i, align 4
  call void %50(ptr noundef %3, i32 noundef 5) #7
  br i1 %unicast.0.off0.i, label %if.then22.i, label %if.then18.i.if.end24.i_crit_edge

if.then18.i.if.end24.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_rx_inperiod.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 25, i32 5
  %51 = ptrtoint ptr %num_rx_inperiod.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_rx_inperiod.i, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %num_rx_inperiod.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.then18.i.if.end24.i_crit_edge, %if.end16.i.if.end24.i_crit_edge
  call void @rtl_beacon_statistic(ptr noundef %3, ptr noundef nonnull %call125) #7
  %call25.i = call zeroext i1 @rtl_action_proc(ptr noundef %3, ptr noundef nonnull %call125, i8 noundef zeroext 0) #7
  br i1 %call25.i, label %if.then28.i, label %if.else29.i, !prof !152

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ieee80211_rx_napi(ptr noundef %3, ptr noundef null, ptr noundef nonnull %call125, ptr noundef null) #7
  br label %_rtl_usb_rx_process_noagg.exit

if.else29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call125, i32 noundef 1) #7
  br label %_rtl_usb_rx_process_noagg.exit

if.else31.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call125, i32 noundef 1) #7
  br label %_rtl_usb_rx_process_noagg.exit

_rtl_usb_rx_process_noagg.exit:                   ; preds = %if.else31.i, %if.else29.i, %if.then28.i
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %stats.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_status.i) #7
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @_rtl_rx_pre_process(ptr noundef %3, ptr noundef nonnull %call125)
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl_rx_pre_process(ptr noundef %hw, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %rx_status.i = alloca %struct.ieee80211_rx_status, align 8
  %stats.i = alloca %struct.rtl_stats, align 8
  %rx_queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rx_queue) #7
  %0 = call ptr @memset(ptr %rx_queue, i32 255, i32 56)
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %rx_queue, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %3 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %rx_queue, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %rx_queue, i32 0, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %usb_rx_segregate_hdl = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 1, i32 8, i32 13, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %usb_rx_segregate_hdl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_rx_segregate_hdl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void %7(ptr noundef %hw, ptr noundef %skb, ptr noundef nonnull %rx_queue) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_queue, align 4
  %cmp.i.not = icmp eq ptr %9, %rx_queue
  br i1 %cmp.i.not, label %do.end, label %if.end.if.end18_crit_edge, !prof !153

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 520, i32 noundef 9, ptr noundef null) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  %10 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_queue, align 4
  %cmp.i36.not39 = icmp eq ptr %11, %rx_queue
  br i1 %cmp.i36.not39, label %if.end18.while.end_crit_edge, label %while.body.lr.ph

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end18
  %rx_drvinfo_size.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 23
  %rx_bufshift.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 24
  %crc.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %_rtl_usb_rx_process_agg.exit.while.body_crit_edge, %while.body.lr.ph
  %call29 = call ptr @skb_dequeue(ptr noundef nonnull %rx_queue) #7
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_status.i) #7
  %16 = call ptr @memset(ptr %rx_status.i, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %stats.i) #7
  %17 = call ptr @memset(ptr %stats.i, i32 0, i32 152)
  %call.i = call ptr @skb_pull(ptr noundef %call29, i32 noundef 24) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %query_rx_desc.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %21, i32 0, i32 30
  %22 = ptrtoint ptr %query_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %query_rx_desc.i, align 4
  %call1.i = call zeroext i1 %23(ptr noundef %hw, ptr noundef nonnull %stats.i, ptr noundef nonnull %rx_status.i, ptr noundef %15, ptr noundef %call29) #7
  %24 = ptrtoint ptr %rx_drvinfo_size.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rx_drvinfo_size.i, align 1
  %conv.i38 = zext i8 %25 to i32
  %26 = ptrtoint ptr %rx_bufshift.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rx_bufshift.i, align 2
  %conv2.i = zext i8 %27 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i38
  %call3.i = call ptr @skb_pull(ptr noundef %call29, i32 noundef %add.i) #7
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %32 = ptrtoint ptr %crc.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %crc.i, align 2
  %33 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body._rtl_usb_rx_process_agg.exit_crit_edge

while.body._rtl_usb_rx_process_agg.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_usb_rx_process_agg.exit

if.then.i:                                        ; preds = %while.body
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 3
  %34 = call ptr @memcpy(ptr %cb.i.i, ptr %rx_status.i, i32 48)
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %29, i32 0, i32 2
  %35 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr1.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %29, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %38, %36
  %add.ptr3.i.i = getelementptr %struct.ieee80211_hdr, ptr %29, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %40
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.if.end16.i_crit_edge, label %if.else.i

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else.i:                                        ; preds = %if.then.i
  %41 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr1.i, align 4
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %if.else12.i, label %if.else.i.if.end16.i_crit_edge

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 6
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 4
  %conv13.i = zext i32 %45 to i64
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 24, i32 3
  %46 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rxbytesunicast.i, align 8
  %add15.i = add i64 %47, %conv13.i
  store i64 %add15.i, ptr %rxbytesunicast.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else12.i, %if.else.i.if.end16.i_crit_edge, %if.then.i.if.end16.i_crit_edge
  %unicast.0.off0.i = phi i1 [ false, %if.then.i.if.end16.i_crit_edge ], [ false, %if.else.i.if.end16.i_crit_edge ], [ true, %if.else12.i ]
  %48 = and i16 %31, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %48)
  %cmp.i41.i = icmp eq i16 %48, 2048
  br i1 %cmp.i41.i, label %if.then18.i, label %if.end16.i.if.end24.i_crit_edge

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then18.i:                                      ; preds = %if.end16.i
  %49 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i, align 8
  %ops20.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %ops20.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops20.i, align 4
  %led_control.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %52, i32 0, i32 36
  %53 = ptrtoint ptr %led_control.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %led_control.i, align 4
  call void %54(ptr noundef %hw, i32 noundef 5) #7
  br i1 %unicast.0.off0.i, label %if.then22.i, label %if.then18.i.if.end24.i_crit_edge

if.then18.i.if.end24.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_rx_inperiod.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 25, i32 5
  %55 = ptrtoint ptr %num_rx_inperiod.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_rx_inperiod.i, align 4
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %num_rx_inperiod.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.then18.i.if.end24.i_crit_edge, %if.end16.i.if.end24.i_crit_edge
  call void @rtl_beacon_statistic(ptr noundef %hw, ptr noundef %call29) #7
  br label %_rtl_usb_rx_process_agg.exit

_rtl_usb_rx_process_agg.exit:                     ; preds = %if.end24.i, %while.body._rtl_usb_rx_process_agg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %stats.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_status.i) #7
  call void @ieee80211_rx_napi(ptr noundef %hw, ptr noundef null, ptr noundef %call29, ptr noundef null) #7
  %57 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_queue, align 4
  %cmp.i36.not = icmp eq ptr %58, %rx_queue
  br i1 %cmp.i36.not, label %_rtl_usb_rx_process_agg.exit.while.end_crit_edge, label %_rtl_usb_rx_process_agg.exit.while.body_crit_edge

_rtl_usb_rx_process_agg.exit.while.body_crit_edge: ; preds = %_rtl_usb_rx_process_agg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

_rtl_usb_rx_process_agg.exit.while.end_crit_edge: ; preds = %_rtl_usb_rx_process_agg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %_rtl_usb_rx_process_agg.exit.while.end_crit_edge, %if.end18.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rx_queue) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_beacon_statistic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !102, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !118, !119, !120, !122, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !138, !140, !141, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_author355, !3, !"__UNIQUE_ID_author355", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 14, i32 1}
!4 = !{ptr @__UNIQUE_ID_author356, !5, !"__UNIQUE_ID_author356", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 15, i32 1}
!6 = !{ptr @__UNIQUE_ID_file357, !7, !"__UNIQUE_ID_file357", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 16, i32 1}
!8 = !{ptr @__UNIQUE_ID_license358, !7, !"__UNIQUE_ID_license358", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description359, !10, !"__UNIQUE_ID_description359", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 17, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1017, i32 3}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtl_usb_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1030, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtl_usb_probe.__key.3, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1031, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rtl_usb_probe.__key.5, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1033, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtl_usb_probe.__key.7, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1035, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1064, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rtl_usb_probe._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rtl_usb_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1068, i32 3}
!34 = !{ptr @rtl_usb_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rtl_usb_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1075, i32 3}
!38 = !{ptr @rtl_usb_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rtl_usb_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_rtl_usb_probe, !41, !"__ksymtab_rtl_usb_probe", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1093, i32 1}
!42 = !{ptr @__ksymtab_rtl_usb_disconnect, !43, !"__ksymtab_rtl_usb_disconnect", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1127, i32 1}
!44 = !{ptr @__ksymtab_rtl_usb_suspend, !45, !"__ksymtab_rtl_usb_suspend", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1133, i32 1}
!46 = !{ptr @__ksymtab_rtl_usb_resume, !47, !"__ksymtab_rtl_usb_resume", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 1139, i32 1}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rtl_usb_ops, !52, !"rtl_usb_ops", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 997, i32 34}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 715, i32 4}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @_rtl_usb_receive._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @_rtl_usb_receive._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 407, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @_rtl_prep_rx_urb._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @_rtl_prep_rx_urb._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 605, i32 4}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @_rtl_rx_completed._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @_rtl_rx_completed._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 612, i32 4}
!70 = !{ptr @_rtl_rx_completed._entry.24, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @_rtl_rx_completed._entry_ptr.26, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 622, i32 4}
!74 = !{ptr @_rtl_rx_completed._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @_rtl_rx_completed._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 935, i32 3}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 906, i32 3}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @_rtl_usb_transmit._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @_rtl_usb_transmit._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 913, i32 3}
!85 = !{ptr @_rtl_usb_transmit._entry.33, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @_rtl_usb_transmit._entry_ptr.35, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 854, i32 3}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @_usb_tx_post._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @_usb_tx_post._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 833, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @_rtl_submit_tx_urb._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @_rtl_submit_tx_urb._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @_rtl_usb_io_handler_init.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 225, i32 2}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 48, i32 6}
!102 = !{ptr @_usbctrl_vendorreq_sync_read.count, !103, !"count", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 98, i32 13}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 117, i32 3}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @_usbctrl_vendorreq_sync_read._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @_usbctrl_vendorreq_sync_read._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 339, i32 3}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 345, i32 3}
!113 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @_rtl_usb_init._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @_rtl_usb_init._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 349, i32 3}
!118 = !{ptr @_rtl_usb_init._entry.46, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @_rtl_usb_init._entry_ptr.48, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 262, i32 2}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 269, i32 4}
!124 = !{ptr @init_usb_anchor.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!126 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @init_usb_anchor.__key.52, !128, !"__key", i1 false, i1 false}
!128 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @skb_queue_head_init.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!132 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 307, i32 2}
!135 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @_rtl_usb_init_rx._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @_rtl_usb_init_rx._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/usb.c", i32 547, i32 4}
!140 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @_rtl_rx_work._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @_rtl_rx_work._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i8 0, i8 2}
!155 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
