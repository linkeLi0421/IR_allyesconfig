; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtl_pci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_pci_probe\09\09\09\09"
module asm "\09.long\09__crc_rtl_pci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_pci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_pci_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_pci_disconnect\09\09\09\09"
module asm "\09.long\09__crc_rtl_pci_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_pci_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_pci_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_pci_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_pci_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_pci_suspend\09\09\09\09"
module asm "\09.long\09__crc_rtl_pci_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_pci_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_pci_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_pci_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_pci_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_pci_resume\09\09\09\09"
module asm "\09.long\09__crc_rtl_pci_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_pci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_pci_resume\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_pci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_global_var = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
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
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.rtl8192_rx_ring = type { ptr, i32, i32, [512 x ptr], ptr, i16 }
%struct.rtl_rx_desc = type { [8 x i32] }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%struct.rtl_tx_buffer_desc = type { [16 x i32] }
%struct.rtl_tx_desc = type { [16 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.140, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.140 = type { ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.mp_adapter = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8 }
%struct.rtl_pci = type { ptr, i8, i8, i8, i8, i8, i8, [9 x %struct.rtl8192_tx_ring], [9 x i32], i32, [2 x %struct.rtl8192_rx_ring], i32, i16, i32, i8, [4 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i8, i8, i8 }
%struct.rtl_rx_buffer_desc = type { [4 x i32] }
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_tcb_desc = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i32], i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.rtl_int = type { i32, i32, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.149 }
%union.anon.149 = type { %struct.anon.155, [16 x i8] }
%struct.anon.155 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.162 = type { i8, %union.anon.163 }
%union.anon.163 = type <{ %struct.anon.168, [17 x i8] }>
%struct.anon.168 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.rtl_stats = type { [6 x i8], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i32, i32, [2 x i32] }

@__UNIQUE_ID_author356 = internal constant [55 x i8] c"rtl_pci.author=lizhaoming\09<chaoming_li@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [53 x i8] c"rtl_pci.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author358 = internal constant [56 x i8] c"rtl_pci.author=Larry Finger\09<Larry.FInger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [58 x i8] c"rtl_pci.file=drivers/net/wireless/realtek/rtlwifi/rtl_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [20 x i8] c"rtl_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [49 x i8] c"rtl_pci.description=PCI basic driver for rtlwifi\00", section ".modinfo", align 1
@rtl_pci_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/realtek/rtlwifi/pci.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s : Cannot enable new PCI device\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl_pci_probe.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to obtain 64bit DMA for consistent allocations\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl_pci_probe.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"rtlwifi: Unable to obtain 32bit DMA for consistent allocations\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl_ops = external dso_local constant %struct.ieee80211_ops, align 4
@rtl_pci_probe.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s : ieee80211 alloc failed\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl_pci_ops = dso_local constant { %struct.rtl_intf_ops, [56 x i8] } { %struct.rtl_intf_ops { ptr @read_efuse_byte, ptr @rtl_pci_start, ptr @rtl_pci_stop, ptr @rtl_pci_check_buddy_priv, ptr @rtl_pci_tx, ptr @rtl_pci_flush, ptr @rtl_pci_reset_trx_ring, ptr @rtl_pci_tx_chk_waitq_insert, ptr @rtl_pci_disable_aspm, ptr @rtl_pci_enable_aspm }, [56 x i8] zeroinitializer }, align 32
@rtl_global_var = external dso_local global %struct.rtl_global_var, align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl_pci\00", [24 x i8] zeroinitializer }, align 32
@rtl_pci_probe.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rtlwifi: Can't obtain PCI resources\0A\00", [59 x i8] zeroinitializer }, align 32
@rtl_pci_probe.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtlwifi: Can't map PCI mem\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"mem mapped space: start: 0x%08lx len:%08lx flags:%08lx, after map:0x%08lx\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 2265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl_pci: Can't init_sw_vars\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@rtl_pci_probe._entry_ptr = internal global ptr @rtl_pci_probe._entry, section ".printk_index", align 4
@rtl_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str, i32 2277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl_pci: Can't allocate sw for mac80211\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl_pci_probe._entry_ptr.18 = internal global ptr @rtl_pci_probe._entry.16, section ".printk_index", align 4
@rtl_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str, i32 2284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl_pci: Failed to init PCI\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl_pci_probe._entry_ptr.21 = internal global ptr @rtl_pci_probe._entry.19, section ".printk_index", align 4
@rtl_pci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str, i32 2290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl_pci: Can't register mac80211 hw.\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl_pci_probe._entry_ptr.24 = internal global ptr @rtl_pci_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to register IRQ handler\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_rtl_pci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_pci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_pci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_pci_probe to i32), ptr @__kstrtab_rtl_pci_probe, ptr @__kstrtabns_rtl_pci_probe }, section "___ksymtab+rtl_pci_probe", align 4
@__kstrtab_rtl_pci_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_pci_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_pci_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_pci_disconnect to i32), ptr @__kstrtab_rtl_pci_disconnect, ptr @__kstrtabns_rtl_pci_disconnect }, section "___ksymtab+rtl_pci_disconnect", align 4
@__kstrtab_rtl_pci_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_pci_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_pci_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_pci_suspend to i32), ptr @__kstrtab_rtl_pci_suspend, ptr @__kstrtabns_rtl_pci_suspend }, section "___ksymtab+rtl_pci_suspend", align 4
@__kstrtab_rtl_pci_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_pci_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_pci_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_pci_resume to i32), ptr @__kstrtab_rtl_pci_resume, ptr @__kstrtabns_rtl_pci_resume }, section "___ksymtab+rtl_pci_resume", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"8192 PCI-E is found - vid/did=%x/%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"8192SE is found - vid/did=%x/%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Err: Unknown device - vid/did=%x/%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"8723AE PCI-E is found - vid/did=%x/%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"8192C PCI-E is found - vid/did=%x/%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"8192D PCI-E is found - vid/did=%x/%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Find adapter, Hardware type is 8188EE\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Find adapter, Hardware type is 8723BE\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Find adapter, Hardware type is 8192EE\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Find adapter, Hardware type is 8821AE\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Find adapter, Hardware type is 8812AE\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Find adapter, Hardware type is 8822BE\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Find 92DE MAC0\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Find 92DE MAC1\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unknown device - VendorID/DeviceID=%x/%x, Revision=%x\0A\00", [41 x i8] zeroinitializer }, align 32
@pcibridge_vendors = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 -32634, i16 4098, i16 4130, i16 4153, i16 0], [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Pci Bridge Vendor is found index: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"pcidev busnumber:devnumber:funcnumber:vendor:link_ctl %d:%d:%d:%x:%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"pci_bridge busnumber:devnumber:funcnumber:vendor:pcie_cap:link_ctl_reg:amd %d:%d:%d:%x:%x:%x:%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Link Control Register =%x\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl_pci_update_default_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rtl_pci: switch case %#x not processed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_rtl_pci_update_default_setting\00", [32 x i8] zeroinitializer }, align 32
@_rtl_pci_update_default_setting._entry_ptr = internal global ptr @_rtl_pci_update_default_setting._entry, section ".printk_index", align 4
@rtl_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 1757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rtl_pci: tx ring initialization failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtl_pci_init\00", [19 x i8] zeroinitializer }, align 32
@rtl_pci_init._entry_ptr = internal global ptr @rtl_pci_init._entry, section ".printk_index", align 4
@_rtl_pci_init_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&rtlpriv->works.lps_change_work)\00", [45 x i8] zeroinitializer }, align 32
@ac_to_hwq = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\01\00", [28 x i8] zeroinitializer }, align 32
@_rtl_pci_init_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013rtl_pci: Cannot allocate RX ring\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_rtl_pci_init_rx_ring\00", [42 x i8] zeroinitializer }, align 32
@_rtl_pci_init_rx_ring._entry_ptr = internal global ptr @_rtl_pci_init_rx_ring._entry, section ".printk_index", align 4
@_rtl_pci_init_rx_ring._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl_pci_init_rx_ring._entry_ptr.54 = internal global ptr @_rtl_pci_init_rx_ring._entry.53, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@_rtl_pci_init_tx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013rtl_pci: Cannot allocate TX ring (prio = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_rtl_pci_init_tx_ring\00", [42 x i8] zeroinitializer }, align 32
@_rtl_pci_init_tx_ring._entry_ptr = internal global ptr @_rtl_pci_init_tx_ring._entry, section ".printk_index", align 4
@_rtl_pci_init_tx_ring._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl_pci_init_tx_ring._entry_ptr.60 = internal global ptr @_rtl_pci_init_tx_ring._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"queue:%d, ring_addr:%p\0A\00", [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MSI Interrupt Mode!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beacon ok interrupt!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beacon err interrupt!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"beacon interrupt!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"prepare beacon for interrupt!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IMR_TXFOVW!\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Manage ok interrupt!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HIGH_QUEUE ok interrupt!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BK Tx OK interrupt!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BE TX OK interrupt!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VI TX OK interrupt!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Vo TX OK interrupt!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"H2C TX OK interrupt!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CMD TX OK interrupt!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Rx ok interrupt!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx descriptor unavailable!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx overflow !\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firmware interrupt!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hsisr interrupt!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"new ring->idx:%d, free: skb_queue_len:%d, free: seq:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"more desc left, wake skb_queue@%d, ring->idx = %d, skb_queue_len = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"skb->end - skb->tail = %d, len is %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pin-based Interrupt Mode!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCI(Bridge) UNKNOWN\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to config hardware!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enable_interrupt OK\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s OK\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.rtl_pci_start = private unnamed_addr constant [14 x i8] c"rtl_pci_start\00", align 1
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pcipriv->ndis_adapter.funcnumber %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tpcipriv->ndis_adapter.funcnumber %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"find_buddy_priv %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"No more TX desc@%d, ring->idx = %d, idx = %d, skb_queue_len = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get_available_desc fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"less desc left, stop skb_queue@%d, ring->idx = %d, idx = %d, skb_queue_len = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PlatformEnableASPM(): Write reg[%x] = %x\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 16, i64 43, i64 68, i64 71, i64 33137, i64 33138, i64 33139, i64 33140, i64 33142, i64 33143, i64 33144, i64 33145, i64 33163, i64 33169, i64 33170, i64 33171, i64 34595, i64 34834, i64 34849, i64 46883, i64 47138]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 16]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 4098, i64 4130, i64 4153, i64 32902]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 15]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 16, i64 18432, i64 41984, i64 51200]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2161, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2169, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2178, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2192, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"rtl_pci_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2431, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2220, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2222, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2235, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2240, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2265, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2277, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2284, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2290, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2305, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1904, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1910, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1916, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1924, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1932, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1938, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1943, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1947, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1951, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1955, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1959, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1964, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1977, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1981, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1986, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"pcibridge_vendors\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 20, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2021, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2051, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2058, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 391, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 146, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1757, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1201, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [10 x i8] c"ac_to_hwq\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 27, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1287, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1310, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 326, i32 6 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1224, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1241, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1252, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1984, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2094, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 927, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 931, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 935, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 938, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 945, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 948, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 954, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 962, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 970, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 978, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 986, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 995, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1005, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1013, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1018, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1024, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1031, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1048, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 559, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 610, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 803, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 2112, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 207, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1789, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1799, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1810, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 334, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 337, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 353, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1645, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1658, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1682, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.401 = private constant [46 x i8] c"../drivers/net/wireless/realtek/rtlwifi/pci.c\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 274, i32 2 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__ksymtab_rtl_pci_disconnect, ptr @__ksymtab_rtl_pci_probe, ptr @__ksymtab_rtl_pci_resume, ptr @__ksymtab_rtl_pci_suspend, ptr @_rtl_pci_init_rx_ring._entry, ptr @_rtl_pci_init_rx_ring._entry.53, ptr @_rtl_pci_init_rx_ring._entry_ptr, ptr @_rtl_pci_init_rx_ring._entry_ptr.54, ptr @_rtl_pci_init_tx_ring._entry, ptr @_rtl_pci_init_tx_ring._entry.59, ptr @_rtl_pci_init_tx_ring._entry_ptr, ptr @_rtl_pci_init_tx_ring._entry_ptr.60, ptr @_rtl_pci_update_default_setting._entry, ptr @_rtl_pci_update_default_setting._entry_ptr, ptr @rtl_pci_init._entry, ptr @rtl_pci_init._entry_ptr, ptr @rtl_pci_probe._entry, ptr @rtl_pci_probe._entry.16, ptr @rtl_pci_probe._entry.19, ptr @rtl_pci_probe._entry.22, ptr @rtl_pci_probe._entry_ptr, ptr @rtl_pci_probe._entry_ptr.18, ptr @rtl_pci_probe._entry_ptr.21, ptr @rtl_pci_probe._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @rtl_pci_ops, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @pcibridge_vendors, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @_rtl_pci_init_struct.__key, ptr @.str.50, ptr @ac_to_hwq, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @skb_queue_head_init.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_pci_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_pci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibridge_vendors to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_pci_update_default_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_pci_init_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_to_hwq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_pci_init_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_pci_init_rx_ring._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_pci_init_tx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl_pci_init_tx_ring._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl_pci_reset_trx_ring(ptr noundef %hw) #0 align 64 {
entry:
  %tmp_one = alloca i8, align 1
  %bufferaddress = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_one) #6
  %2 = ptrtoint ptr %tmp_one to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tmp_one, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bufferaddress) #6
  %3 = ptrtoint ptr %bufferaddress to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bufferaddress, align 4, !annotation !224
  %use_new_trx_flow = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %rx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4
  %rxringcount = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 1
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %rxbuffersize = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %entry
  %rxring_idx.0165 = phi i32 [ 0, %entry ], [ %inc36, %if.end31.for.body_crit_edge ]
  %4 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end31_crit_edge

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring, i32 0, i32 %rxring_idx.0165
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end31_crit_edge, label %if.then

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then:                                          ; preds = %land.lhs.true
  %idx = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring, i32 0, i32 %rxring_idx.0165, i32 2
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idx, align 4
  %9 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rxringcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8163 = icmp sgt i32 %10, 0
  br i1 %cmp8163, label %if.then.for.body9_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.for.body9_crit_edge:                      ; preds = %if.then
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %if.then.for.body9_crit_edge
  %i.0164 = phi i32 [ %inc, %for.inc.for.body9_crit_edge ], [ 0, %if.then.for.body9_crit_edge ]
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr %struct.rtl_rx_desc, ptr %12, i32 %i.0164
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %get_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %16, i32 0, i32 38
  %17 = ptrtoint ptr %get_desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_desc, align 4
  %call = call i64 %18(ptr noundef %hw, ptr noundef %arrayidx13, i1 noundef zeroext false, i8 noundef zeroext 4) #6
  %conv = trunc i64 %call to i32
  %19 = ptrtoint ptr %bufferaddress to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %bufferaddress, align 4
  %20 = call ptr @memset(ptr %arrayidx13, i32 0, i32 32)
  %21 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg, align 8
  %ops20 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops20, align 4
  %set_desc21 = getelementptr inbounds %struct.rtl_hal_ops, ptr %26, i32 0, i32 37
  %27 = ptrtoint ptr %set_desc21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_desc21, align 4
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  call void %28(ptr noundef %hw, ptr noundef %arrayidx13, i1 noundef zeroext false, i8 noundef zeroext 7, ptr noundef nonnull %bufferaddress) #6
  br label %for.inc

if.else:                                          ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  call void %28(ptr noundef %hw, ptr noundef %arrayidx13, i1 noundef zeroext false, i8 noundef zeroext 4, ptr noundef nonnull %bufferaddress) #6
  %29 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg, align 8
  %ops23 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops23, align 4
  %set_desc24 = getelementptr inbounds %struct.rtl_hal_ops, ptr %32, i32 0, i32 37
  %33 = ptrtoint ptr %set_desc24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_desc24, align 4
  call void %34(ptr noundef %hw, ptr noundef %arrayidx13, i1 noundef zeroext false, i8 noundef zeroext 5, ptr noundef %rxbuffersize) #6
  %35 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg, align 8
  %ops26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ops26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops26, align 4
  %set_desc27 = getelementptr inbounds %struct.rtl_hal_ops, ptr %38, i32 0, i32 37
  %39 = ptrtoint ptr %set_desc27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_desc27, align 4
  call void %40(ptr noundef %hw, ptr noundef %arrayidx13, i1 noundef zeroext false, i8 noundef zeroext 1, ptr noundef nonnull %tmp_one) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then16
  %inc = add nuw nsw i32 %i.0164, 1
  %41 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rxringcount, align 4
  %cmp8 = icmp slt i32 %inc, %42
  br i1 %cmp8, label %for.inc.for.body9_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %entry4.0.lcssa = phi ptr [ null, %if.then.for.end_crit_edge ], [ %arrayidx13, %for.inc.for.end_crit_edge ]
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg, align 8
  %ops29 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %ops29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops29, align 4
  %set_desc30 = getelementptr inbounds %struct.rtl_hal_ops, ptr %46, i32 0, i32 37
  %47 = ptrtoint ptr %set_desc30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_desc30, align 4
  call void %48(ptr noundef %hw, ptr noundef %entry4.0.lcssa, i1 noundef zeroext false, i8 noundef zeroext 6, ptr noundef nonnull %tmp_one) #6
  br label %if.end31

if.end31:                                         ; preds = %for.end, %land.lhs.true.if.end31_crit_edge, %for.body.if.end31_crit_edge
  %idx34 = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring, i32 0, i32 %rxring_idx.0165, i32 2
  %49 = ptrtoint ptr %idx34 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %idx34, align 4
  %inc36 = add nuw nsw i32 %rxring_idx.0165, 1
  %exitcond.not = icmp eq i32 %inc36, 2
  br i1 %exitcond.not, label %do.body38, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body38:                                        ; preds = %if.end31
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %irq_th_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 3
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock) #6
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %txringcount = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 1, i32 4, i32 1, i32 1
  br label %for.body48

for.body48:                                       ; preds = %for.inc94.for.body48_crit_edge, %do.body38
  %i.1168 = phi i32 [ 0, %do.body38 ], [ %inc95, %for.inc94.for.body48_crit_edge ]
  %arrayidx49 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168
  %50 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx49, align 4
  %tobool51.not = icmp eq ptr %51, null
  br i1 %tobool51.not, label %lor.lhs.false, label %for.body48.if.then55_crit_edge

for.body48.if.then55_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

lor.lhs.false:                                    ; preds = %for.body48
  %buffer_desc = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 5
  %52 = ptrtoint ptr %buffer_desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer_desc, align 4
  %tobool54.not = icmp eq ptr %53, null
  br i1 %tobool54.not, label %lor.lhs.false.for.inc94_crit_edge, label %lor.lhs.false.if.then55_crit_edge

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

lor.lhs.false.for.inc94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc94

if.then55:                                        ; preds = %lor.lhs.false.if.then55_crit_edge, %for.body48.if.then55_crit_edge
  %qlen.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 4, i32 1
  %54 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool59.not167 = icmp eq i32 %55, 0
  br i1 %tobool59.not167, label %if.then55.while.end_crit_edge, label %while.body.lr.ph

if.then55.while.end_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then55
  %queue = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 4
  %buffer_desc66 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 5
  %idx67 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 2
  %entries = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end73.while.body_crit_edge, %while.body.lr.ph
  %56 = phi i32 [ %55, %while.body.lr.ph ], [ %91, %if.end73.while.body_crit_edge ]
  %57 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %58, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %58
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %56, -1
  %59 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %60 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %61, i32 0, i32 1
  %64 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %63, ptr %prev17.i.i, align 4
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %61, ptr %63, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %while.body.__skb_dequeue.exit_crit_edge
  %66 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool64.not = icmp eq i8 %67, 0
  br i1 %tobool64.not, label %if.else69, label %if.then65

if.then65:                                        ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %buffer_desc66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer_desc66, align 4
  %70 = ptrtoint ptr %idx67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %idx67, align 4
  %arrayidx68 = getelementptr %struct.rtl_tx_buffer_desc, ptr %69, i32 %71
  br label %if.end73

if.else69:                                        ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx49, align 4
  %74 = ptrtoint ptr %idx67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %idx67, align 4
  %arrayidx72 = getelementptr %struct.rtl_tx_desc, ptr %73, i32 %75
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then65
  %entry60.0 = phi ptr [ %arrayidx68, %if.then65 ], [ %arrayidx72, %if.else69 ]
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %78 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg, align 8
  %ops76 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ops76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops76, align 4
  %get_desc77 = getelementptr inbounds %struct.rtl_hal_ops, ptr %81, i32 0, i32 38
  %82 = ptrtoint ptr %get_desc77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %get_desc77, align 4
  %call78 = call i64 %83(ptr noundef %hw, ptr noundef %entry60.0, i1 noundef zeroext true, i8 noundef zeroext 3) #6
  %conv79 = trunc i64 %call78 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev74, i32 noundef %conv79, i32 noundef %85, i32 noundef 1, i32 noundef 0) #6
  call void @__dev_kfree_skb_irq(ptr noundef %spec.store.select.i.i, i32 noundef 1) #6
  %86 = ptrtoint ptr %idx67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %idx67, align 4
  %add = add i32 %87, 1
  %88 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %89
  store i32 %rem, ptr %idx67, align 4
  %90 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %qlen.i, align 4
  %tobool59.not = icmp eq i32 %91, 0
  br i1 %tobool59.not, label %if.end73.while.end_crit_edge, label %if.end73.while.body_crit_edge

if.end73.while.body_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end73.while.end_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end73.while.end_crit_edge, %if.then55.while.end_crit_edge
  %92 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool83.not = icmp eq i8 %93, 0
  br i1 %tobool83.not, label %while.end.if.end89_crit_edge, label %if.then84

while.end.if.end89_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then84:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %cur_tx_rp = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 8
  %94 = ptrtoint ptr %cur_tx_rp to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %cur_tx_rp, align 2
  %cur_tx_wp = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 7
  %95 = ptrtoint ptr %cur_tx_wp to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %cur_tx_wp, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %while.end.if.end89_crit_edge
  %idx90 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 2
  %96 = ptrtoint ptr %idx90 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %idx90, align 4
  %arrayidx91 = getelementptr [9 x i32], ptr %txringcount, i32 0, i32 %i.1168
  %97 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx91, align 4
  %entries92 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %i.1168, i32 3
  %99 = ptrtoint ptr %entries92 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %entries92, align 4
  br label %for.inc94

for.inc94:                                        ; preds = %if.end89, %lor.lhs.false.for.inc94_crit_edge
  %inc95 = add nuw nsw i32 %i.1168, 1
  %exitcond172.not = icmp eq i32 %inc95, 9
  br i1 %exitcond172.not, label %for.end96, label %for.inc94.for.body48_crit_edge

for.inc94.for.body48_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48

for.end96:                                        ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call42) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufferaddress) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_one) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  %linkctrl_reg.i416.i = alloca i16, align 2
  %offset_e0.i.i = alloca i8, align 1
  %offset_e4.i.i = alloca i32, align 4
  %linkctrl_reg.i.i = alloca i8, align 1
  %revisionid.i = alloca i8, align 1
  %irqline.i = alloca i16, align 2
  %value.i540 = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end36, label %land.end

land.end:                                         ; preds = %entry
  %.b539 = load i1, ptr @rtl_pci_probe.__already_done, align 1
  br i1 %.b539, label %land.end.cleanup_crit_edge, label %if.then6, !prof !226

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %land.end
  store i1 true, ptr @rtl_pci_probe.__already_done, align 1
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then6.pci_name.exit_crit_edge

if.then6.pci_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then6.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.then6.pci_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2162, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i) #6
  br label %cleanup

if.end36:                                         ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = inttoptr i32 %5 to ptr
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mod_params, align 4
  %dma64 = getelementptr inbounds %struct.rtl_mod_params, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %dma64 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dma64, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool37.not = icmp eq i8 %10, 0
  br i1 %tobool37.not, label %if.end36.if.else_crit_edge, label %land.lhs.true

if.end36.if.else_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end36
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call38 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then40:                                        ; preds = %land.lhs.true
  %call42 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end93, label %land.end51

land.end51:                                       ; preds = %if.then40
  %.b529538 = load i1, ptr @rtl_pci_probe.__already_done.2, align 1
  br i1 %.b529538, label %land.end51.if.end417_crit_edge, label %if.then58, !prof !226

land.end51.if.end417_crit_edge:                   ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end417

if.then58:                                        ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl_pci_probe.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2170, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end417

if.end93:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %value.i, align 1, !annotation !224
  %call.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 1817, ptr noundef nonnull %value.i) #6
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value.i, align 1
  %storemerge.i = or i8 %13, 32
  store i8 %storemerge.i, ptr %value.i, align 1
  %call4.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 1817, i8 noundef zeroext %storemerge.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  br label %if.end152

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end36.if.else_crit_edge
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call95 = tail call i32 @dma_set_mask(ptr noundef %dev94, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.else.if.end152_crit_edge

if.else.if.end152_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then97:                                        ; preds = %if.else
  %call99 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev94, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end150, label %land.end108

land.end108:                                      ; preds = %if.then97
  %.b530537 = load i1, ptr @rtl_pci_probe.__already_done.4, align 1
  br i1 %.b530537, label %land.end108.if.end417_crit_edge, label %if.then115, !prof !226

land.end108.if.end417_crit_edge:                  ; preds = %land.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end417

if.then115:                                       ; preds = %land.end108
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl_pci_probe.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2179, i32 noundef 9, ptr noundef nonnull @.str.5) #6
  br label %if.end417

if.end150:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i540) #6
  %14 = ptrtoint ptr %value.i540 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %value.i540, align 1, !annotation !224
  %call.i541 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 1817, ptr noundef nonnull %value.i540) #6
  %15 = ptrtoint ptr %value.i540 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %value.i540, align 1
  %17 = and i8 %16, -33
  store i8 %17, ptr %value.i540, align 1
  %call4.i542 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 1817, i8 noundef zeroext %17) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i540) #6
  br label %if.end152

if.end152:                                        ; preds = %if.end150, %if.else.if.end152_crit_edge, %if.end93
  call void @pci_set_master(ptr noundef %pdev) #6
  %call.i543 = call ptr @ieee80211_alloc_hw_nm(i32 noundef 54828, ptr noundef nonnull @rtl_ops, ptr noundef null) #6
  %tobool154.not = icmp eq ptr %call.i543, null
  br i1 %tobool154.not, label %land.end162, label %if.end205

land.end162:                                      ; preds = %if.end152
  %.b531534 = load i1, ptr @rtl_pci_probe.__already_done.6, align 1
  br i1 %.b531534, label %land.end162.if.end417_crit_edge, label %if.then169, !prof !226

land.end162.if.end417_crit_edge:                  ; preds = %land.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end417

if.then169:                                       ; preds = %land.end162
  store i1 true, ptr @rtl_pci_probe.__already_done.6, align 1
  %init_name.i.i544 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i544 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i544, align 8
  %tobool.not.i.i545 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i545, label %if.end.i.i547, label %if.then169.pci_name.exit549_crit_edge

if.then169.pci_name.exit549_crit_edge:            ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit549

if.end.i.i547:                                    ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i546 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %20 = ptrtoint ptr %dev.i546 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i546, align 4
  br label %pci_name.exit549

pci_name.exit549:                                 ; preds = %if.end.i.i547, %if.then169.pci_name.exit549_crit_edge
  %retval.0.i.i548 = phi ptr [ %21, %if.end.i.i547 ], [ %19, %if.then169.pci_name.exit549_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2193, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i548) #6
  br label %if.end417

if.end205:                                        ; preds = %if.end152
  %dev206 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i543, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev206, ptr %parent.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i543, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i543, i32 0, i32 3
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i543, ptr %27, align 8
  %dev209 = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %29 = ptrtoint ptr %dev209 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pdev, ptr %dev209, align 4
  %firmware_loading_complete = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %firmware_loading_complete to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %firmware_loading_complete, align 4
  %wait.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #6
  %proximity = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 48
  %31 = ptrtoint ptr %proximity to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %proximity, align 8
  %32 = ptrtoint ptr %dev209 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pdev, ptr %dev209, align 4
  %interface = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 10, i32 9
  %33 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %interface, align 4
  %34 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %driver_data, align 4
  %36 = inttoptr i32 %35 to ptr
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 32
  %37 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %cfg, align 8
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 33
  %38 = ptrtoint ptr %intf_ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @rtl_pci_ops, ptr %intf_ops, align 4
  %glb_var = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 4
  %39 = ptrtoint ptr %glb_var to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rtl_global_var, ptr %glb_var, align 8
  call void @rtl_efuse_ops_init(ptr noundef nonnull %call.i543) #6
  %call216 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end267, label %land.end225

land.end225:                                      ; preds = %if.end205
  %.b532536 = load i1, ptr @rtl_pci_probe.__already_done.9, align 1
  br i1 %.b532536, label %land.end225.if.then416_crit_edge, label %if.then232, !prof !226

land.end225.if.then416_crit_edge:                 ; preds = %land.end225
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then416

if.then232:                                       ; preds = %land.end225
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl_pci_probe.__already_done.9, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2222, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.then416

if.end267:                                        ; preds = %if.end205
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 4
  %idxprom = zext i8 %43 to i32
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %idxprom, i32 1
  %46 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp = icmp eq i32 %47, 0
  %sub = sub i32 1, %45
  %add = add i32 %sub, %47
  %cond = select i1 %cmp, i32 0, i32 %add
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %idxprom, i32 3
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %call293 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %idxprom, i32 noundef %cond) #6
  %50 = ptrtoint ptr %call293 to i32
  %pci_mem_start = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 13, i32 3
  %51 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %pci_mem_start, align 4
  %cmp296 = icmp eq ptr %call293, null
  br i1 %cmp296, label %land.end306, label %if.end348

land.end306:                                      ; preds = %if.end267
  %.b533535 = load i1, ptr @rtl_pci_probe.__already_done.11, align 1
  br i1 %.b533535, label %land.end306.fail2_crit_edge, label %if.then313, !prof !226

land.end306.fail2_crit_edge:                      ; preds = %land.end306
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.then313:                                       ; preds = %land.end306
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl_pci_probe.__already_done.11, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2235, i32 noundef 9, ptr noundef nonnull @.str.12) #6
  br label %fail2thread-pre-split

if.end348:                                        ; preds = %if.end267
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %27, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %45, i32 noundef %cond, i32 noundef %49, i32 noundef %50) #6
  %call351 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 129, i8 noundef zeroext 0) #6
  %call352 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 68, i8 noundef zeroext 0) #6
  %call353 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 4, i8 noundef zeroext 6) #6
  %call354 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 4, i8 noundef zeroext 7) #6
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %54 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %self.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %revisionid.i) #6
  %58 = ptrtoint ptr %revisionid.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %revisionid.i, align 1, !annotation !224
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %irqline.i) #6
  %59 = ptrtoint ptr %irqline.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %irqline.i, align 2, !annotation !224
  %ndis_adapter.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 7
  %pcibridge_vendor.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 7
  %60 = ptrtoint ptr %pcibridge_vendor.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %pcibridge_vendor.i, align 1
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %61 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vendor.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %63 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %device.i, align 2
  %call.i550 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 8, ptr noundef nonnull %revisionid.i) #6
  %call5.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 60, ptr noundef nonnull %irqline.i) #6
  %conv.i = zext i16 %64 to i32
  %65 = zext i16 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i16 %64, label %if.else126.i [
    i16 -32366, label %land.lhs.true.i
    i16 68, label %if.end348.if.then40thread-pre-split.i_crit_edge
    i16 71, label %if.end348.if.then40thread-pre-split.i_crit_edge564
    i16 -32396, label %if.end348.if.then40thread-pre-split.i_crit_edge565
    i16 -32397, label %if.end348.if.then40thread-pre-split.i_crit_edge566
    i16 -32398, label %if.end348.if.then40thread-pre-split.i_crit_edge567
    i16 -32399, label %if.end348.if.then40thread-pre-split.i_crit_edge568
    i16 -30941, label %if.then54.i
    i16 -32367, label %if.end348.if.then74.i_crit_edge
    i16 -32392, label %if.end348.if.then74.i_crit_edge569
    i16 -32393, label %if.end348.if.then74.i_crit_edge570
    i16 -32394, label %if.end348.if.then74.i_crit_edge571
    i16 -32365, label %if.end348.if.then86.i_crit_edge
    i16 43, label %if.end348.if.then86.i_crit_edge572
    i16 -32391, label %if.then94.i
    i16 -18653, label %if.then100.i
    i16 -32373, label %if.then106.i
    i16 -30687, label %if.then112.i
    i16 -30702, label %if.then118.i
    i16 -18398, label %if.then124.i
  ]

if.end348.if.then86.i_crit_edge572:               ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86.i

if.end348.if.then86.i_crit_edge:                  ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86.i

if.end348.if.then74.i_crit_edge571:               ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74.i

if.end348.if.then74.i_crit_edge570:               ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74.i

if.end348.if.then74.i_crit_edge569:               ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74.i

if.end348.if.then74.i_crit_edge:                  ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74.i

if.end348.if.then40thread-pre-split.i_crit_edge568: ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40thread-pre-split.i

if.end348.if.then40thread-pre-split.i_crit_edge567: ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40thread-pre-split.i

if.end348.if.then40thread-pre-split.i_crit_edge566: ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40thread-pre-split.i

if.end348.if.then40thread-pre-split.i_crit_edge565: ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40thread-pre-split.i

if.end348.if.then40thread-pre-split.i_crit_edge564: ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40thread-pre-split.i

if.end348.if.then40thread-pre-split.i_crit_edge:  ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40thread-pre-split.i

land.lhs.true.i:                                  ; preds = %if.end348
  %66 = ptrtoint ptr %revisionid.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %revisionid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp8.i = icmp eq i8 %67, 1
  br i1 %cmp8.i, label %land.lhs.true.i._rtl_pci_find_adapter.exit_crit_edge, label %land.lhs.true.i.if.then40.i_crit_edge

land.lhs.true.i.if.then40.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

land.lhs.true.i._rtl_pci_find_adapter.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_find_adapter.exit

if.then40thread-pre-split.i:                      ; preds = %if.end348.if.then40thread-pre-split.i_crit_edge, %if.end348.if.then40thread-pre-split.i_crit_edge564, %if.end348.if.then40thread-pre-split.i_crit_edge565, %if.end348.if.then40thread-pre-split.i_crit_edge566, %if.end348.if.then40thread-pre-split.i_crit_edge567, %if.end348.if.then40thread-pre-split.i_crit_edge568
  %68 = ptrtoint ptr %revisionid.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %.pr.i = load i8, ptr %revisionid.i, align 1
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.then40thread-pre-split.i, %land.lhs.true.i.if.then40.i_crit_edge
  %69 = phi i8 [ %.pr.i, %if.then40thread-pre-split.i ], [ %67, %land.lhs.true.i.if.then40.i_crit_edge ]
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %69, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 16, label %sw.bb44.i
  ]

sw.bb.i:                                          ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv42.i = zext i16 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.27, i32 noundef %conv42.i, i32 noundef %conv.i) #6
  %hw_type.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %71 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %hw_type.i, align 8
  br label %_rtl_pci_find_adapter.exit

sw.bb44.i:                                        ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv45.i = zext i16 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef %conv45.i, i32 noundef %conv.i) #6
  %hw_type47.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %72 = ptrtoint ptr %hw_type47.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2, ptr %hw_type47.i, align 8
  br label %if.end139.i

sw.default.i:                                     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv48.i = zext i16 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %conv48.i, i32 noundef %conv.i) #6
  %hw_type50.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %73 = ptrtoint ptr %hw_type50.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 2, ptr %hw_type50.i, align 8
  br label %if.end139.i

if.then54.i:                                      ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  %hw_type55.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %74 = ptrtoint ptr %hw_type55.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 8, ptr %hw_type55.i, align 8
  %conv56.i = zext i16 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.30, i32 noundef %conv56.i, i32 noundef 34595) #6
  br label %if.end139.i

if.then74.i:                                      ; preds = %if.end348.if.then74.i_crit_edge, %if.end348.if.then74.i_crit_edge569, %if.end348.if.then74.i_crit_edge570, %if.end348.if.then74.i_crit_edge571
  %hw_type75.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %75 = ptrtoint ptr %hw_type75.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 4, ptr %hw_type75.i, align 8
  %conv76.i = zext i16 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.31, i32 noundef %conv76.i, i32 noundef %conv.i) #6
  br label %if.end139.i

if.then86.i:                                      ; preds = %if.end348.if.then86.i_crit_edge, %if.end348.if.then86.i_crit_edge572
  %hw_type87.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %76 = ptrtoint ptr %hw_type87.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 6, ptr %hw_type87.i, align 8
  %conv88.i = zext i16 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.32, i32 noundef %conv88.i, i32 noundef %conv.i) #6
  br label %if.end139.i

if.then94.i:                                      ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  %hw_type95.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %77 = ptrtoint ptr %hw_type95.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 10, ptr %hw_type95.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.33) #6
  br label %if.end139.i

if.then100.i:                                     ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  %hw_type101.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %78 = ptrtoint ptr %hw_type101.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 11, ptr %hw_type101.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.34) #6
  br label %if.end139.i

if.then106.i:                                     ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  %hw_type107.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %79 = ptrtoint ptr %hw_type107.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 12, ptr %hw_type107.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.35) #6
  br label %if.end139.i

if.then112.i:                                     ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  %hw_type113.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %80 = ptrtoint ptr %hw_type113.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 13, ptr %hw_type113.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.36) #6
  br label %if.end139.i

if.then118.i:                                     ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  %hw_type119.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %81 = ptrtoint ptr %hw_type119.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 14, ptr %hw_type119.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.37) #6
  br label %if.end139.i

if.then124.i:                                     ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  %hw_type125.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %82 = ptrtoint ptr %hw_type125.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 15, ptr %hw_type125.i, align 8
  %bandset.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 55
  %83 = ptrtoint ptr %bandset.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %bandset.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.38) #6
  br label %if.end139.i

if.else126.i:                                     ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  %conv127.i = zext i16 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %conv127.i, i32 noundef %conv.i) #6
  %hw_type129.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %84 = ptrtoint ptr %hw_type129.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 4, ptr %hw_type129.i, align 8
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.else126.i, %if.then124.i, %if.then118.i, %if.then112.i, %if.then106.i, %if.then100.i, %if.then94.i, %if.then86.i, %if.then74.i, %if.then54.i, %sw.default.i, %sw.bb44.i
  %hw_type140.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 10
  %85 = ptrtoint ptr %hw_type140.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %hw_type140.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %86)
  %cmp142.i = icmp eq i16 %86, 6
  br i1 %cmp142.i, label %if.then144.i, label %if.end139.i.if.end171.i_crit_edge

if.end139.i.if.end171.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171.i

if.then144.i:                                     ; preds = %if.end139.i
  %87 = ptrtoint ptr %revisionid.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %revisionid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %switch.i = icmp ult i8 %88, 2
  br i1 %switch.i, label %if.then152.i, label %if.else165.i

if.then152.i:                                     ; preds = %if.then144.i
  %89 = zext i8 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %88, label %if.then152.i.if.end171thread-pre-split.i_crit_edge [
    i8 0, label %if.then156.i
    i8 1, label %if.then161.i
  ]

if.then152.i.if.end171thread-pre-split.i_crit_edge: ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171thread-pre-split.i

if.then156.i:                                     ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.39) #6
  br label %if.end171thread-pre-split.sink.split.i

if.then161.i:                                     ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.40) #6
  br label %if.end171thread-pre-split.sink.split.i

if.else165.i:                                     ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv145.i = zext i8 %88 to i32
  %conv166.i = zext i16 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %conv166.i, i32 noundef %conv.i, i32 noundef %conv145.i) #6
  br label %if.end171thread-pre-split.sink.split.i

if.end171thread-pre-split.sink.split.i:           ; preds = %if.else165.i, %if.then161.i, %if.then156.i
  %.sink.i = phi i32 [ 0, %if.then156.i ], [ 1, %if.then161.i ], [ 0, %if.else165.i ]
  %interfaceindex.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 56
  %90 = ptrtoint ptr %interfaceindex.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink.i, ptr %interfaceindex.i, align 4
  br label %if.end171thread-pre-split.i

if.end171thread-pre-split.i:                      ; preds = %if.end171thread-pre-split.sink.split.i, %if.then152.i.if.end171thread-pre-split.i_crit_edge
  %91 = ptrtoint ptr %hw_type140.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %.pr421.i = load i16, ptr %hw_type140.i, align 8
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.end171thread-pre-split.i, %if.end139.i.if.end171.i_crit_edge
  %92 = phi i16 [ %.pr421.i, %if.end171thread-pre-split.i ], [ %86, %if.end139.i.if.end171.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %92)
  %switch.selectcmp.case1.i = icmp eq i16 %92, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %92)
  %switch.selectcmp.case2.i = icmp eq i16 %92, 15
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %93 = zext i1 %switch.selectcmp.i to i8
  %use_new_trx_flow176.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 50
  %94 = ptrtoint ptr %use_new_trx_flow176.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %use_new_trx_flow176.i, align 4
  %95 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %number.i, align 4
  %busnumber.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 1
  %99 = ptrtoint ptr %busnumber.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %busnumber.i, align 1
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %100 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %devfn.i, align 4
  %102 = trunc i32 %101 to i8
  %103 = lshr i8 %102, 3
  %devnumber.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 2
  %104 = ptrtoint ptr %devnumber.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %devnumber.i, align 2
  %105 = load i32, ptr %devfn.i, align 4
  %106 = trunc i32 %105 to i8
  %conv184.i = and i8 %106, 7
  %funcnumber.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 3
  %107 = ptrtoint ptr %funcnumber.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv184.i, ptr %funcnumber.i, align 1
  %108 = ptrtoint ptr %pcibridge_vendor.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 4, ptr %pcibridge_vendor.i, align 1
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end171.i.if.end240.i_crit_edge, label %if.then188.i

if.end171.i.if.end240.i_crit_edge:                ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end240.i

if.then188.i:                                     ; preds = %if.end171.i
  %vendor189.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 7
  %109 = ptrtoint ptr %vendor189.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %vendor189.i, align 8
  %pcibridge_vendorid.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 1, i32 14, i32 35, i32 24, i32 1
  %111 = ptrtoint ptr %pcibridge_vendorid.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %pcibridge_vendorid.i, align 4
  %112 = load i16, ptr %vendor189.i, align 8
  %113 = zext i16 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %112, label %if.then188.i.if.end204.i_crit_edge [
    i16 -32634, label %if.then188.i.if.then199.i_crit_edge
    i16 4098, label %if.then199.fold.split.i
    i16 4130, label %if.then199.fold.split431.i
    i16 4153, label %if.then199.fold.split432.i
    i16 0, label %if.then199.fold.split433.i
  ]

if.then188.i.if.then199.i_crit_edge:              ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then199.i

if.then188.i.if.end204.i_crit_edge:               ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204.i

if.then199.fold.split.i:                          ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then199.i

if.then199.fold.split431.i:                       ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then199.i

if.then199.fold.split432.i:                       ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then199.i

if.then199.fold.split433.i:                       ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then199.i

if.then199.i:                                     ; preds = %if.then199.fold.split433.i, %if.then199.fold.split432.i, %if.then199.fold.split431.i, %if.then199.fold.split.i, %if.then188.i.if.then199.i_crit_edge
  %conv191427.lcssa.i = phi i32 [ 0, %if.then188.i.if.then199.i_crit_edge ], [ 1, %if.then199.fold.split.i ], [ 2, %if.then199.fold.split431.i ], [ 3, %if.then199.fold.split432.i ], [ 4, %if.then199.fold.split433.i ]
  %114 = trunc i32 %conv191427.lcssa.i to i8
  %115 = ptrtoint ptr %pcibridge_vendor.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %pcibridge_vendor.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.42, i32 noundef %conv191427.lcssa.i) #6
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.then199.i, %if.then188.i.if.end204.i_crit_edge
  %116 = ptrtoint ptr %pcibridge_vendor.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %.pr422.i = load i8, ptr %pcibridge_vendor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr422.i)
  %cmp208.not.i = icmp eq i8 %.pr422.i, 4
  br i1 %cmp208.not.i, label %if.end204.i.if.end240.i_crit_edge, label %if.then210.i

if.end204.i.if.end240.i_crit_edge:                ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end240.i

if.then210.i:                                     ; preds = %if.end204.i
  %bus211.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 1
  %117 = ptrtoint ptr %bus211.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bus211.i, align 8
  %number212.i = getelementptr inbounds %struct.pci_bus, ptr %118, i32 0, i32 12
  %119 = ptrtoint ptr %number212.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %number212.i, align 4
  %pcibridge_busnum.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 1, i32 14, i32 35, i32 24
  %121 = ptrtoint ptr %pcibridge_busnum.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %pcibridge_busnum.i, align 4
  %devfn214.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 6
  %122 = ptrtoint ptr %devfn214.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %devfn214.i, align 4
  %124 = trunc i32 %123 to i8
  %125 = lshr i8 %124, 3
  %pcibridge_devnum.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 5
  %126 = ptrtoint ptr %pcibridge_devnum.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %pcibridge_devnum.i, align 1
  %127 = load i32, ptr %devfn214.i, align 4
  %128 = trunc i32 %127 to i8
  %conv221.i = and i8 %128, 7
  %pcibridge_funcnum.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 6
  %129 = ptrtoint ptr %pcibridge_funcnum.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv221.i, ptr %pcibridge_funcnum.i, align 2
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 19
  %130 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %pcie_cap.i.i, align 8
  %conv.i.i = zext i8 %131 to i16
  %pcibridge_pciehdr_offset.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 11
  %132 = ptrtoint ptr %pcibridge_pciehdr_offset.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %pcibridge_pciehdr_offset.i, align 1
  %add.i = add nuw nsw i16 %conv.i.i, 16
  %div411.i = lshr i16 %add.i, 2
  %conv229.i = trunc i16 %div411.i to i8
  %num4bytes.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 1, i32 14, i32 35, i32 24, i32 1, i32 0, i32 1
  %133 = ptrtoint ptr %num4bytes.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv229.i, ptr %num4bytes.i, align 4
  %134 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv, align 8
  %dev.i.i = getelementptr inbounds %struct.rtl_priv, ptr %135, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %ndis_adapter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %135, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 7
  %pcibridge_pciehdr_offset.i.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i.i, i32 0, i32 11
  %136 = ptrtoint ptr %pcibridge_pciehdr_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %pcibridge_pciehdr_offset.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %linkctrl_reg.i.i) #6
  %138 = ptrtoint ptr %linkctrl_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -1, ptr %linkctrl_reg.i.i, align 1, !annotation !224
  %conv.i412.i = zext i8 %137 to i32
  %add.i.i = add nuw nsw i32 %conv.i412.i, 16
  %div7.i.i = and i32 %add.i.i, 508
  %139 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = call i32 @pci_read_config_byte(ptr noundef %140, i32 noundef %div7.i.i, ptr noundef nonnull %linkctrl_reg.i.i) #6
  %141 = ptrtoint ptr %linkctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %linkctrl_reg.i.i, align 1
  %pcibridge_linkctrlreg.i.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i.i, i32 0, i32 12
  %143 = ptrtoint ptr %pcibridge_linkctrlreg.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %pcibridge_linkctrlreg.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %linkctrl_reg.i.i) #6
  %144 = ptrtoint ptr %pcibridge_vendor.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %pcibridge_vendor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %145)
  %cmp234.i = icmp eq i8 %145, 2
  br i1 %cmp234.i, label %if.then236.i, label %if.then210.i.if.end240.i_crit_edge

if.then210.i.if.end240.i_crit_edge:               ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end240.i

if.then236.i:                                     ; preds = %if.then210.i
  %146 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %priv, align 8
  %dev.i414.i = getelementptr inbounds %struct.rtl_priv, ptr %147, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset_e0.i.i) #6
  %148 = ptrtoint ptr %offset_e0.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -1, ptr %offset_e0.i.i, align 1, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset_e4.i.i) #6
  %149 = ptrtoint ptr %offset_e4.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %offset_e4.i.i, align 4, !annotation !224
  %150 = ptrtoint ptr %dev.i414.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i414.i, align 4
  %call.i415.i = call i32 @pci_write_config_byte(ptr noundef %151, i32 noundef 224, i8 noundef zeroext -96) #6
  %152 = ptrtoint ptr %dev.i414.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i414.i, align 4
  %call3.i.i = call i32 @pci_read_config_byte(ptr noundef %153, i32 noundef 224, ptr noundef nonnull %offset_e0.i.i) #6
  %154 = ptrtoint ptr %offset_e0.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %offset_e0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %155)
  %cmp.i.i = icmp eq i8 %155, -96
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then236.i.rtl_pci_get_amd_l1_patch.exit.i_crit_edge

if.then236.i.rtl_pci_get_amd_l1_patch.exit.i_crit_edge: ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_pci_get_amd_l1_patch.exit.i

if.then.i.i:                                      ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %dev.i414.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i414.i, align 4
  %call6.i.i = call i32 @pci_read_config_dword(ptr noundef %157, i32 noundef 228, ptr noundef nonnull %offset_e4.i.i) #6
  %158 = ptrtoint ptr %offset_e4.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %offset_e4.i.i, align 4
  %and.i.i = and i32 %159, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i551 = icmp ne i32 %and.i.i, 0
  br label %rtl_pci_get_amd_l1_patch.exit.i

rtl_pci_get_amd_l1_patch.exit.i:                  ; preds = %if.then.i.i, %if.then236.i.rtl_pci_get_amd_l1_patch.exit.i_crit_edge
  %status.0.off0.i.i = phi i1 [ false, %if.then236.i.rtl_pci_get_amd_l1_patch.exit.i_crit_edge ], [ %tobool.not.i.i551, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset_e4.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset_e0.i.i) #6
  %amd_l1_patch.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 13
  %frombool.i = zext i1 %status.0.off0.i.i to i8
  %160 = ptrtoint ptr %amd_l1_patch.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %frombool.i, ptr %amd_l1_patch.i, align 1
  br label %if.end240.i

if.end240.i:                                      ; preds = %rtl_pci_get_amd_l1_patch.exit.i, %if.then210.i.if.end240.i_crit_edge, %if.end204.i.if.end240.i_crit_edge, %if.end171.i.if.end240.i_crit_edge
  %161 = ptrtoint ptr %busnumber.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %busnumber.i, align 1
  %conv243.i = zext i8 %162 to i32
  %163 = ptrtoint ptr %devnumber.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %devnumber.i, align 2
  %conv246.i = zext i8 %164 to i32
  %165 = ptrtoint ptr %funcnumber.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %funcnumber.i, align 1
  %conv249.i = zext i8 %166 to i32
  %167 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %vendor.i, align 8
  %conv251.i = zext i16 %168 to i32
  %169 = ptrtoint ptr %ndis_adapter.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ndis_adapter.i, align 4
  %conv253.i = zext i8 %170 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.43, i32 noundef %conv243.i, i32 noundef %conv246.i, i32 noundef %conv249.i, i32 noundef %conv251.i, i32 noundef %conv253.i) #6
  %pcibridge_busnum255.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 1, i32 14, i32 35, i32 24
  %171 = ptrtoint ptr %pcibridge_busnum255.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %pcibridge_busnum255.i, align 4
  %conv256.i = zext i8 %172 to i32
  %pcibridge_devnum258.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 5
  %173 = ptrtoint ptr %pcibridge_devnum258.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %pcibridge_devnum258.i, align 1
  %conv259.i = zext i8 %174 to i32
  %pcibridge_funcnum261.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 6
  %175 = ptrtoint ptr %pcibridge_funcnum261.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %pcibridge_funcnum261.i, align 2
  %conv262.i = zext i8 %176 to i32
  %177 = ptrtoint ptr %pcibridge_vendor.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %pcibridge_vendor.i, align 1
  %idxprom265.i = zext i8 %178 to i32
  %arrayidx266.i = getelementptr [5 x i16], ptr @pcibridge_vendors, i32 0, i32 %idxprom265.i
  %179 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx266.i, align 2
  %conv267.i = zext i16 %180 to i32
  %pcibridge_pciehdr_offset269.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 11
  %181 = ptrtoint ptr %pcibridge_pciehdr_offset269.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %pcibridge_pciehdr_offset269.i, align 1
  %conv270.i = zext i8 %182 to i32
  %pcibridge_linkctrlreg.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 12
  %183 = ptrtoint ptr %pcibridge_linkctrlreg.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %pcibridge_linkctrlreg.i, align 2
  %conv272.i = zext i8 %184 to i32
  %amd_l1_patch274.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 13
  %185 = ptrtoint ptr %amd_l1_patch274.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %amd_l1_patch274.i, align 1, !range !225
  %187 = zext i8 %186 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.44, i32 noundef %conv256.i, i32 noundef %conv259.i, i32 noundef %conv262.i, i32 noundef %conv267.i, i32 noundef %conv270.i, i32 noundef %conv272.i, i32 noundef %187) #6
  %188 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %190 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 -1, ptr %tmp.i.i, align 1, !annotation !224
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %linkctrl_reg.i416.i) #6
  %191 = ptrtoint ptr %linkctrl_reg.i416.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -1, ptr %linkctrl_reg.i416.i, align 2, !annotation !224
  %call.i418.i = call i32 @pcie_capability_read_word(ptr noundef %pdev, i32 noundef 16, ptr noundef nonnull %linkctrl_reg.i416.i) #6
  %192 = ptrtoint ptr %linkctrl_reg.i416.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %linkctrl_reg.i416.i, align 2
  %conv.i419.i = trunc i16 %193 to i8
  %ndis_adapter.i420.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 7
  %194 = ptrtoint ptr %ndis_adapter.i420.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv.i419.i, ptr %ndis_adapter.i420.i, align 4
  %conv.mask.i.i = and i16 %193, 255
  %conv6.i.i = zext i16 %conv.mask.i.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %189, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.45, i32 noundef %conv6.i.i) #6
  %call7.i.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 152, ptr noundef nonnull %tmp.i.i) #6
  %195 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %tmp.i.i, align 1
  %197 = or i8 %196, 16
  store i8 %197, ptr %tmp.i.i, align 1
  %call10.i.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 152, i8 noundef zeroext %197) #6
  %198 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 23, ptr %tmp.i.i, align 1
  %call11.i.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 1807, i8 noundef zeroext 23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %linkctrl_reg.i416.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %list.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 2
  %glb_var.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 4
  %199 = ptrtoint ptr %glb_var.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %glb_var.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %202, ptr noundef %200) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end240.i.if.end357_crit_edge

if.end240.i.if.end357_crit_edge:                  ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end357

if.end.i.i.i:                                     ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %list.i, ptr %prev.i.i, align 4
  %204 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %200, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 2, i32 1
  %205 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %202, ptr %prev3.i.i.i, align 4
  %206 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %list.i, ptr %202, align 4
  br label %if.end357

_rtl_pci_find_adapter.exit:                       ; preds = %sw.bb.i, %land.lhs.true.i._rtl_pci_find_adapter.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %irqline.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %revisionid.i) #6
  br label %fail2thread-pre-split

if.end357:                                        ; preds = %if.end.i.i.i, %if.end240.i.if.end357_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %irqline.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %revisionid.i) #6
  %207 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %priv, align 8
  %io.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13
  %209 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %dev206, ptr %io.i, align 4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 5
  %210 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @pci_write8_async, ptr %write8_async.i, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 6
  %211 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @pci_write16_async, ptr %write16_async.i, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 7
  %212 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @pci_write32_async, ptr %write32_async.i, align 4
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 9
  %213 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @pci_read8_sync, ptr %read8_sync.i, align 4
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 10
  %214 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @pci_read16_sync, ptr %read16_sync.i, align 4
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 11
  %215 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @pci_read32_sync, ptr %read32_sync.i, align 4
  %216 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %217, i32 0, i32 4
  %218 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ops, align 4
  %read_eeprom_info = getelementptr inbounds %struct.rtl_hal_ops, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %read_eeprom_info to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %read_eeprom_info, align 4
  call void %221(ptr noundef nonnull %call.i543) #6
  %222 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cfg, align 8
  %ops361 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %ops361 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ops361, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %call362 = call i32 %227(ptr noundef nonnull %call.i543) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %if.end370, label %do.end367

do.end367:                                        ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #8
  %call369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %fail3

if.end370:                                        ; preds = %if.end357
  %228 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cfg, align 8
  %ops372 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %ops372 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ops372, align 4
  %init_sw_leds = getelementptr inbounds %struct.rtl_hal_ops, ptr %231, i32 0, i32 43
  %232 = ptrtoint ptr %init_sw_leds to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %init_sw_leds, align 4
  call void %233(ptr noundef nonnull %call.i543) #6
  call fastcc void @rtl_pci_init_aspm(ptr noundef nonnull %call.i543)
  %call373 = call i32 @rtl_init_core(ptr noundef nonnull %call.i543) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end381, label %do.end378

do.end378:                                        ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #8
  %call380 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %fail3

if.end381:                                        ; preds = %if.end370
  %call382 = call fastcc i32 @rtl_pci_init(ptr noundef nonnull %call.i543, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end390, label %do.end387

do.end387:                                        ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  %call389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %fail3

if.end390:                                        ; preds = %if.end381
  %call391 = call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i543) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %if.end399, label %do.end396

do.end396:                                        ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #8
  %call398 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #9
  br label %fail3

if.end399:                                        ; preds = %if.end390
  %mac80211_registered = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 9, i32 1
  %234 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 1, ptr %mac80211_registered, align 2
  call void @rtl_debug_add_one(ptr noundef nonnull %call.i543) #6
  call void @rtl_init_rfkill(ptr noundef nonnull %call.i543) #6
  %call401 = call fastcc i32 @rtl_pci_intr_mode_decide(ptr noundef nonnull %call.i543)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call401)
  %tobool402.not = icmp eq i32 %call401, 0
  br i1 %tobool402.not, label %if.end405, label %if.then403

if.then403:                                       ; preds = %if.end399
  %235 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i553 = getelementptr inbounds %struct.wiphy, ptr %236, i32 0, i32 56, i32 3
  %237 = ptrtoint ptr %init_name.i.i553 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %init_name.i.i553, align 8
  %tobool.not.i.i554 = icmp eq ptr %238, null
  br i1 %tobool.not.i.i554, label %if.end.i.i556, label %if.then403.wiphy_name.exit_crit_edge

if.then403.wiphy_name.exit_crit_edge:             ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i556:                                    ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i555 = getelementptr inbounds %struct.wiphy, ptr %236, i32 0, i32 56
  %239 = ptrtoint ptr %dev.i555 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev.i555, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i556, %if.then403.wiphy_name.exit_crit_edge
  %retval.0.i.i557 = phi ptr [ %240, %if.end.i.i556 ], [ %238, %if.then403.wiphy_name.exit_crit_edge ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %27, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i557) #6
  br label %fail3

if.end405:                                        ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #8
  %irq_alloc = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 4
  %241 = ptrtoint ptr %irq_alloc to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 1, ptr %irq_alloc, align 4
  %status = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 34
  call void @_set_bit(i32 noundef 0, ptr noundef %status) #6
  br label %cleanup

fail3:                                            ; preds = %wiphy_name.exit, %do.end396, %do.end387, %do.end378, %do.end367
  %err.0 = phi i32 [ -19, %do.end367 ], [ %call373, %do.end378 ], [ %call382, %do.end387 ], [ -19, %do.end396 ], [ %call401, %wiphy_name.exit ]
  %242 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %driver_data.i.i, align 4
  call void @rtl_deinit_core(ptr noundef nonnull %call.i543) #6
  br label %fail2thread-pre-split

fail2thread-pre-split:                            ; preds = %fail3, %_rtl_pci_find_adapter.exit, %if.then313
  %err.1.ph = phi i32 [ -19, %_rtl_pci_find_adapter.exit ], [ -12, %if.then313 ], [ %err.0, %fail3 ]
  %243 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_load4_noabort(i32 %243)
  %.pr = load i32, ptr %pci_mem_start, align 4
  br label %fail2

fail2:                                            ; preds = %fail2thread-pre-split, %land.end306.fail2_crit_edge
  %244 = phi i32 [ %.pr, %fail2thread-pre-split ], [ %50, %land.end306.fail2_crit_edge ]
  %err.1 = phi i32 [ %err.1.ph, %fail2thread-pre-split ], [ -12, %land.end306.fail2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp408.not = icmp eq i32 %244, 0
  br i1 %cmp408.not, label %fail2.if.end413_crit_edge, label %if.then410

fail2.if.end413_crit_edge:                        ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end413

if.then410:                                       ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #8
  %245 = inttoptr i32 %244 to ptr
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %245) #6
  br label %if.end413

if.end413:                                        ; preds = %if.then410, %fail2.if.end413_crit_edge
  call void @pci_release_regions(ptr noundef %pdev) #6
  call void @complete(ptr noundef %firmware_loading_complete) #6
  br label %if.then416

if.then416:                                       ; preds = %if.end413, %if.then232, %land.end225.if.then416_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end413 ], [ %call216, %if.then232 ], [ %call216, %land.end225.if.then416_crit_edge ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i543) #6
  br label %if.end417

if.end417:                                        ; preds = %if.then416, %pci_name.exit549, %land.end162.if.end417_crit_edge, %if.then115, %land.end108.if.end417_crit_edge, %if.then58, %land.end51.if.end417_crit_edge
  %err.2563 = phi i32 [ %err.2, %if.then416 ], [ -12, %if.then58 ], [ -12, %land.end51.if.end417_crit_edge ], [ -12, %if.then115 ], [ -12, %land.end108.if.end417_crit_edge ], [ -12, %pci_name.exit549 ], [ -12, %land.end162.if.end417_crit_edge ]
  call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end417, %if.end405, %pci_name.exit, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2563, %if.end417 ], [ 0, %if.end405 ], [ %call, %pci_name.exit ], [ %call, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_efuse_ops_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl_pci_init_aspm(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  %init_aspm.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %ndis_adapter.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 7
  %pcibridge_vendor7.i = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter.i, i32 0, i32 7
  %2 = ptrtoint ptr %pcibridge_vendor7.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pcibridge_vendor7.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %init_aspm.i) #6
  %4 = ptrtoint ptr %init_aspm.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %init_aspm.i, align 1, !annotation !224
  %reg_rfps_level.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %support_aspm.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 5
  %5 = ptrtoint ptr %support_aspm.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %support_aspm.i, align 1
  %const_amdpci_aspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 19
  %6 = ptrtoint ptr %const_amdpci_aspm.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %const_amdpci_aspm.i, align 1
  %const_amdpci_aspm8.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 21
  %8 = ptrtoint ptr %const_amdpci_aspm8.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %const_amdpci_aspm8.i, align 4
  %const_pci_aspm.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %const_pci_aspm.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %const_pci_aspm.i, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %10, label %sw.epilogthread-pre-split.i [
    i8 4, label %sw.bb17.i
    i8 1, label %entry.sw.epilog.i_crit_edge
    i8 2, label %sw.bb10.i
    i8 3, label %sw.bb13.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilogthread-pre-split.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilogthread-pre-split.i, %sw.bb17.i, %sw.bb13.i, %sw.bb10.i, %entry.sw.epilog.i_crit_edge
  %tobool33.not.i = phi i1 [ true, %sw.epilogthread-pre-split.i ], [ true, %sw.bb17.i ], [ true, %sw.bb13.i ], [ false, %sw.bb10.i ], [ false, %entry.sw.epilog.i_crit_edge ]
  %12 = phi i32 [ 0, %sw.epilogthread-pre-split.i ], [ 64, %sw.bb17.i ], [ 66, %sw.bb13.i ], [ -2147483646, %sw.bb10.i ], [ -2147483648, %entry.sw.epilog.i_crit_edge ]
  %or23.i = or i32 %12, 8
  %13 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or23.i, ptr %reg_rfps_level.i, align 4
  %const_hwsw_rfoff_d3.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 20
  %14 = ptrtoint ptr %const_hwsw_rfoff_d3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %const_hwsw_rfoff_d3.i, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %15, label %sw.epilog.i.sw.epilog43.i_crit_edge [
    i8 1, label %sw.bb25.i
    i8 2, label %sw.bb30.i
    i8 3, label %sw.bb40.i
  ]

sw.epilog.i.sw.epilog43.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog43.i

sw.bb25.i:                                        ; preds = %sw.epilog.i
  br i1 %tobool33.not.i, label %sw.bb25.i.sw.epilog43.i_crit_edge, label %if.then.i

sw.bb25.i.sw.epilog43.i_crit_edge:                ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog43.i

if.then.i:                                        ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #8
  %or29.i = or i32 %12, 9
  br label %sw.epilog43.sink.split.i

sw.bb30.i:                                        ; preds = %sw.epilog.i
  br i1 %tobool33.not.i, label %sw.bb30.i.if.end37.i_crit_edge, label %if.then34.i

sw.bb30.i.if.end37.i_crit_edge:                   ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then34.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #8
  %or36.i = or i32 %12, 9
  %17 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or36.i, ptr %reg_rfps_level.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %sw.bb30.i.if.end37.i_crit_edge
  %18 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_rfps_level.i, align 4
  %or39.i = or i32 %19, 8
  br label %sw.epilog43.sink.split.i

sw.bb40.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %or42.i = or i32 %12, 12
  br label %sw.epilog43.sink.split.i

sw.epilog43.sink.split.i:                         ; preds = %sw.bb40.i, %if.end37.i, %if.then.i
  %or29.sink.i = phi i32 [ %or29.i, %if.then.i ], [ %or42.i, %sw.bb40.i ], [ %or39.i, %if.end37.i ]
  %20 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or29.sink.i, ptr %reg_rfps_level.i, align 4
  br label %sw.epilog43.i

sw.epilog43.i:                                    ; preds = %sw.epilog43.sink.split.i, %sw.bb25.i.sw.epilog43.i_crit_edge, %sw.epilog.i.sw.epilog43.i_crit_edge
  %const_support_pciaspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 21
  %21 = ptrtoint ptr %const_support_pciaspm.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %const_support_pciaspm.i, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %22, label %do.end.i [
    i8 0, label %sw.bb45.i
    i8 1, label %sw.bb47.i
    i8 2, label %sw.bb49.i
  ]

sw.bb45.i:                                        ; preds = %sw.epilog43.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %support_aspm.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %support_aspm.i, align 1
  br label %sw.epilog57.i

sw.bb47.i:                                        ; preds = %sw.epilog43.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %support_aspm.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %support_aspm.i, align 1
  %support_backdoor.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 6
  %26 = ptrtoint ptr %support_backdoor.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %support_backdoor.i, align 2
  br label %sw.epilog57.i

sw.bb49.i:                                        ; preds = %sw.epilog43.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %if.then52.i, label %sw.bb49.i.sw.epilog57.i_crit_edge

sw.bb49.i.sw.epilog57.i_crit_edge:                ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog57.i

if.then52.i:                                      ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %support_aspm.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %support_aspm.i, align 1
  br label %sw.epilog57.i

do.end.i:                                         ; preds = %sw.epilog43.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv44.i = zext i8 %22 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv44.i) #9
  br label %sw.epilog57.i

sw.epilog57.i:                                    ; preds = %do.end.i, %if.then52.i, %sw.bb49.i.sw.epilog57.i_crit_edge, %sw.bb47.i, %sw.bb45.i
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %call58.i = call i32 @pci_read_config_byte(ptr noundef %29, i32 noundef 128, ptr noundef nonnull %init_aspm.i) #6
  %hw_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %30 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %31)
  %cmp60.i = icmp eq i16 %31, 2
  br i1 %cmp60.i, label %land.lhs.true.i, label %sw.epilog57.i._rtl_pci_update_default_setting.exit_crit_edge

sw.epilog57.i._rtl_pci_update_default_setting.exit_crit_edge: ; preds = %sw.epilog57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_update_default_setting.exit

land.lhs.true.i:                                  ; preds = %sw.epilog57.i
  %32 = ptrtoint ptr %init_aspm.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %init_aspm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %33)
  %cmp63.i = icmp eq i8 %33, 67
  br i1 %cmp63.i, label %if.then65.i, label %land.lhs.true.i._rtl_pci_update_default_setting.exit_crit_edge

land.lhs.true.i._rtl_pci_update_default_setting.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_update_default_setting.exit

if.then65.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %support_aspm.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %support_aspm.i, align 1
  br label %_rtl_pci_update_default_setting.exit

_rtl_pci_update_default_setting.exit:             ; preds = %if.then65.i, %land.lhs.true.i._rtl_pci_update_default_setting.exit_crit_edge, %sw.epilog57.i._rtl_pci_update_default_setting.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %init_aspm.i) #6
  %35 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_rfps_level.i, align 4
  %and = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_rtl_pci_update_default_setting.exit.if.end_crit_edge, label %if.then

_rtl_pci_update_default_setting.exit.if.end_crit_edge: ; preds = %_rtl_pci_update_default_setting.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %_rtl_pci_update_default_setting.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl_pci_enable_aspm(ptr noundef %hw)
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %37 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %38, 64
  store i32 %or, ptr %cur_ps_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %_rtl_pci_update_default_setting.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_init_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl_pci_init(ptr noundef %hw, ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  %buffer_desc_dma.i.i = alloca i32, align 4
  %desc_dma.i.i = alloca i32, align 4
  %nextdescaddress.i.i = alloca i32, align 4
  %tmp_one.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %rtlhal5.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10
  %up_first_time.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 3
  %2 = ptrtoint ptr %up_first_time.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %up_first_time.i, align 2
  %being_init_adapter.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %3 = ptrtoint ptr %being_init_adapter.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %being_init_adapter.i, align 4
  %4 = ptrtoint ptr %rtlhal5.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hw, ptr %rtlhal5.i, align 8
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %dev.i, align 4
  %6 = load ptr, ptr %priv.i, align 8
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 10
  %7 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %8)
  %switch.selectcmp.case1.i.i = icmp eq i16 %8, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %8)
  %switch.selectcmp.case2.i.i = icmp eq i16 %8, 15
  %switch.selectcmp.i.i = or i1 %switch.selectcmp.case1.i.i, %switch.selectcmp.case2.i.i
  %9 = select i1 %switch.selectcmp.i.i, i32 512, i32 128
  %txringcount.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 1, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %txringcount.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %txringcount.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 1, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %arrayidx.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 1, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 1, i32 4, i32 6
  %13 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %arrayidx.3.i.i, align 4
  %arrayidx.5.i.i = getelementptr %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 2
  %14 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %arrayidx.5.i.i, align 4
  %arrayidx.6.i.i = getelementptr %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %arrayidx.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %arrayidx.7.i.i, align 4
  %arrayidx.8.i.i = getelementptr %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %9, ptr %arrayidx.8.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.rtl_priv, ptr %6, i32 1, i32 8, i32 1, i32 4, i32 7
  %18 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %arrayidx17.i.i, align 4
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %use_new_trx_flow.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 50
  %21 = ptrtoint ptr %use_new_trx_flow.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_new_trx_flow.i.i, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.then19.i.i, label %entry._rtl_pci_init_struct.exit_crit_edge

entry._rtl_pci_init_struct.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_init_struct.exit

if.then19.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %arrayidx.1.i.i, align 4
  br label %_rtl_pci_init_struct.exit

_rtl_pci_init_struct.exit:                        ; preds = %if.then19.i.i, %entry._rtl_pci_init_struct.exit_crit_edge
  %rxbuffersize.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %rxbuffersize.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 9100, ptr %rxbuffersize.i.i, align 4
  %rxringcount.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %rxringcount.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 512, ptr %rxringcount.i.i, align 4
  %beacon_interval.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 54
  %26 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 100, ptr %beacon_interval.i, align 8
  %min_space_cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %27 = ptrtoint ptr %min_space_cfg.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %min_space_cfg.i, align 4
  %max_mss_density.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 56
  %28 = ptrtoint ptr %max_mss_density.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %max_mss_density.i, align 1
  %current_ampdu_density.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 58
  %29 = ptrtoint ptr %current_ampdu_density.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 7, ptr %current_ampdu_density.i, align 1
  %current_ampdu_factor.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 57
  %30 = ptrtoint ptr %current_ampdu_factor.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %current_ampdu_factor.i, align 2
  %retry_short.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 50
  %31 = ptrtoint ptr %retry_short.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 7, ptr %retry_short.i, align 8
  %retry_long.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 51
  %32 = ptrtoint ptr %retry_long.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 7, ptr %retry_long.i, align 1
  %acm_method.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %acm_method.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %acm_method.i, align 4
  %irq_tasklet.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 5
  tail call void @tasklet_setup(ptr noundef %irq_tasklet.i, ptr noundef nonnull @_rtl_pci_irq_tasklet) #6
  %irq_prepare_bcn_tasklet.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 6
  tail call void @tasklet_setup(ptr noundef %irq_prepare_bcn_tasklet.i, ptr noundef nonnull @_rtl_pci_prepare_bcn_tasklet) #6
  %lps_change_work.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14
  tail call void @__init_work(ptr noundef %lps_change_work.i, i32 noundef 0) #6
  %34 = ptrtoint ptr %lps_change_work.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %lps_change_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @_rtl_pci_init_struct.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry16.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14, i32 1
  %35 = ptrtoint ptr %entry16.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry16.i, ptr %entry16.i, align 4
  %prev.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry16.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14, i32 2
  %37 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @rtl_lps_change_work_callback, ptr %func.i, align 4
  %38 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i, align 8
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %for.inc.i
  %txringcount.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 1, i32 8, i32 1, i32 4, i32 1, i32 1
  br label %for.body4.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %_rtl_pci_init_struct.exit
  %rxring_idx.079.i = phi i32 [ 0, %_rtl_pci_init_struct.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i, align 8
  %dev.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %use_new_trx_flow.i.i5 = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 50
  %42 = ptrtoint ptr %use_new_trx_flow.i.i5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %use_new_trx_flow.i.i5, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i6 = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i6, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %rxringcount.i.i7 = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %rxringcount.i.i7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rxringcount.i.i7, align 4
  %mul.i.i = shl i32 %47, 4
  %rx_ring.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 1, i32 8, i32 2, i32 4
  %dma.i.i = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring.i.i, i32 0, i32 %rxring_idx.079.i, i32 1
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev4.i.i, i32 noundef %mul.i.i, ptr noundef %dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %buffer_desc.i.i = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring.i.i, i32 0, i32 %rxring_idx.079.i, i32 4
  %48 = ptrtoint ptr %buffer_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i.i, ptr %buffer_desc.i.i, align 4
  %tobool10.not.i.i = icmp ne ptr %call.i.i.i, null
  %49 = ptrtoint ptr %call.i.i.i to i32
  %and.i.i = and i32 %49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool14.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = select i1 %tobool10.not.i.i, i1 %tobool14.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #9
  br label %do.end

if.end.i.i:                                       ; preds = %if.then.i.i
  %idx.i.i = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring.i.i, i32 0, i32 %rxring_idx.079.i, i32 2
  %50 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %idx.i.i, align 4
  %51 = ptrtoint ptr %rxringcount.i.i7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rxringcount.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp131.i.i = icmp sgt i32 %52, 0
  br i1 %cmp131.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0132.i.i, 1
  %53 = ptrtoint ptr %rxringcount.i.i7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rxringcount.i.i7, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %54
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.inc.i_crit_edge

for.cond.i.i.for.inc.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.0132.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %55 = ptrtoint ptr %buffer_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer_desc.i.i, align 4
  %arrayidx23.i.i = getelementptr %struct.rtl_rx_buffer_desc, ptr %56, i32 %i.0132.i.i
  %call24.i.i = call fastcc i32 @_rtl_pci_init_one_rxdesc(ptr noundef %hw, ptr noundef null, ptr noundef %arrayidx23.i.i, i32 noundef %rxring_idx.079.i, i32 noundef %i.0132.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %for.body.i.i.do.end_crit_edge, label %for.cond.i.i

for.body.i.i.do.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.else.i.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_one.i.i) #6
  %57 = ptrtoint ptr %tmp_one.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %tmp_one.i.i, align 1
  %58 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i, align 4
  %dev30.i.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %rxringcount31.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %rxringcount31.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rxringcount31.i.i, align 4
  %mul32.i.i = shl i32 %61, 5
  %rx_ring33.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 1, i32 8, i32 2, i32 4
  %arrayidx34.i.i = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring33.i.i, i32 0, i32 %rxring_idx.079.i
  %dma35.i.i = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring33.i.i, i32 0, i32 %rxring_idx.079.i, i32 1
  %call.i129.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev30.i.i, i32 noundef %mul32.i.i, ptr noundef %dma35.i.i, i32 noundef 3264, i32 noundef 0) #6
  %62 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i129.i.i, ptr %arrayidx34.i.i, align 4
  %tobool42.not.i.i = icmp ne ptr %call.i129.i.i, null
  %63 = ptrtoint ptr %call.i129.i.i to i32
  %and47.i.i = and i32 %63, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  %or.cond128.i.i = select i1 %tobool42.not.i.i, i1 %tobool48.not.i.i, i1 false
  br i1 %or.cond128.i.i, label %if.end55.i.i, label %do.end52.i.i

do.end52.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call54.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #9
  br label %cleanup74.i.i

if.end55.i.i:                                     ; preds = %if.else.i.i
  %idx58.i.i = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring33.i.i, i32 0, i32 %rxring_idx.079.i, i32 2
  %64 = ptrtoint ptr %idx58.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %idx58.i.i, align 4
  %65 = ptrtoint ptr %rxringcount31.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rxringcount31.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp61134.i.i = icmp sgt i32 %66, 0
  br i1 %cmp61134.i.i, label %if.end55.i.i.for.body62.i.i_crit_edge, label %if.end55.i.i.for.end73.i.i_crit_edge

if.end55.i.i.for.end73.i.i_crit_edge:             ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end73.i.i

if.end55.i.i.for.body62.i.i_crit_edge:            ; preds = %if.end55.i.i
  br label %for.body62.i.i

for.cond59.i.i:                                   ; preds = %for.body62.i.i
  %inc72.i.i = add nuw nsw i32 %i.1135.i.i, 1
  %67 = ptrtoint ptr %rxringcount31.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rxringcount31.i.i, align 4
  %cmp61.i.i = icmp slt i32 %inc72.i.i, %68
  br i1 %cmp61.i.i, label %for.cond59.i.i.for.body62.i.i_crit_edge, label %for.cond59.i.i.for.end73.i.i_crit_edge

for.cond59.i.i.for.end73.i.i_crit_edge:           ; preds = %for.cond59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end73.i.i

for.cond59.i.i.for.body62.i.i_crit_edge:          ; preds = %for.cond59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body62.i.i

for.body62.i.i:                                   ; preds = %for.cond59.i.i.for.body62.i.i_crit_edge, %if.end55.i.i.for.body62.i.i_crit_edge
  %i.1135.i.i = phi i32 [ %inc72.i.i, %for.cond59.i.i.for.body62.i.i_crit_edge ], [ 0, %if.end55.i.i.for.body62.i.i_crit_edge ]
  %69 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx34.i.i, align 4
  %arrayidx66.i.i = getelementptr %struct.rtl_rx_desc, ptr %70, i32 %i.1135.i.i
  %call67.i.i = call fastcc i32 @_rtl_pci_init_one_rxdesc(ptr noundef %hw, ptr noundef null, ptr noundef %arrayidx66.i.i, i32 noundef %rxring_idx.079.i, i32 noundef %i.1135.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i.i)
  %tobool68.not.i.i = icmp eq i32 %call67.i.i, 0
  br i1 %tobool68.not.i.i, label %for.body62.i.i.cleanup74.i.i_crit_edge, label %for.cond59.i.i

for.body62.i.i.cleanup74.i.i_crit_edge:           ; preds = %for.body62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74.i.i

for.end73.i.i:                                    ; preds = %for.cond59.i.i.for.end73.i.i_crit_edge, %if.end55.i.i.for.end73.i.i_crit_edge
  %entry28.0.lcssa.i.i = phi ptr [ null, %if.end55.i.i.for.end73.i.i_crit_edge ], [ %arrayidx66.i.i, %for.cond59.i.i.for.end73.i.i_crit_edge ]
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 32
  %71 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i.i, align 4
  %set_desc.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %74, i32 0, i32 37
  %75 = ptrtoint ptr %set_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %set_desc.i.i, align 4
  call void %76(ptr noundef %hw, ptr noundef %entry28.0.lcssa.i.i, i1 noundef zeroext false, i8 noundef zeroext 6, ptr noundef nonnull %tmp_one.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_one.i.i) #6
  br label %for.inc.i

cleanup74.i.i:                                    ; preds = %for.body62.i.i.cleanup74.i.i_crit_edge, %do.end52.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_one.i.i) #6
  br label %do.end

for.inc.i:                                        ; preds = %for.end73.i.i, %for.cond.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %rxring_idx.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2
  br i1 %exitcond.not.i, label %for.cond2.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body4.i:                                      ; preds = %for.inc9.i.for.body4.i_crit_edge, %for.cond2.preheader.i
  %i.082.i = phi i32 [ 0, %for.cond2.preheader.i ], [ %inc10.i, %for.inc9.i.for.body4.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x i32], ptr %txringcount.i, i32 0, i32 %i.082.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i, align 4
  %79 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv.i, align 8
  %dev.i56.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer_desc_dma.i.i) #6
  %81 = ptrtoint ptr %buffer_desc_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %buffer_desc_dma.i.i, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_dma.i.i) #6
  %82 = ptrtoint ptr %desc_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %desc_dma.i.i, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextdescaddress.i.i) #6
  %use_new_trx_flow.i57.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 50
  %83 = ptrtoint ptr %use_new_trx_flow.i57.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %use_new_trx_flow.i57.i, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i58.i = icmp eq i8 %84, 0
  br i1 %tobool.not.i58.i, label %entry.if.end16_crit_edge.i.i, label %if.then.i63.i

entry.if.end16_crit_edge.i.i:                     ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i.i = shl i32 %78, 6
  br label %if.end16.i.i

if.then.i63.i:                                    ; preds = %for.body4.i
  %85 = ptrtoint ptr %dev.i56.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i56.i, align 4
  %dev3.i.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %mul.i59.i = shl i32 %78, 6
  %call.i.i60.i = call ptr @dma_alloc_attrs(ptr noundef %dev3.i.i, i32 noundef %mul.i59.i, ptr noundef nonnull %buffer_desc_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool4.not.i.i = icmp ne ptr %call.i.i60.i, null
  %87 = ptrtoint ptr %call.i.i60.i to i32
  %and.i61.i = and i32 %87, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool5.not.i.i = icmp eq i32 %and.i61.i, 0
  %or.cond.i62.i = select i1 %tobool4.not.i.i, i1 %tobool5.not.i.i, i1 false
  br i1 %or.cond.i62.i, label %if.end.i64.i, label %if.then.i63.i._rtl_pci_init_tx_ring.exit.i_crit_edge

if.then.i63.i._rtl_pci_init_tx_ring.exit.i_crit_edge: ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_init_tx_ring.exit.i

if.end.i64.i:                                     ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_ring.i.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %buffer_desc8.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i.i, i32 0, i32 %i.082.i, i32 5
  %88 = ptrtoint ptr %buffer_desc8.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i.i60.i, ptr %buffer_desc8.i.i, align 4
  %89 = ptrtoint ptr %buffer_desc_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %buffer_desc_dma.i.i, align 4
  %buffer_desc_dma11.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i.i, i32 0, i32 %i.082.i, i32 6
  %91 = ptrtoint ptr %buffer_desc_dma11.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %buffer_desc_dma11.i.i, align 4
  %cur_tx_rp.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i.i, i32 0, i32 %i.082.i, i32 8
  %92 = ptrtoint ptr %cur_tx_rp.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %cur_tx_rp.i.i, align 2
  %cur_tx_wp.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i.i, i32 0, i32 %i.082.i, i32 7
  %93 = ptrtoint ptr %cur_tx_wp.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %cur_tx_wp.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end.i64.i, %entry.if.end16_crit_edge.i.i
  %mul19.pre-phi.i.i = phi i32 [ %.pre.i.i, %entry.if.end16_crit_edge.i.i ], [ %mul.i59.i, %if.end.i64.i ]
  %94 = ptrtoint ptr %dev.i56.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i56.i, align 4
  %dev18.i.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %call.i98.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev18.i.i, i32 noundef %mul19.pre-phi.i.i, ptr noundef nonnull %desc_dma.i.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool21.not.i.i = icmp ne ptr %call.i98.i.i, null
  %96 = ptrtoint ptr %call.i98.i.i to i32
  %and23.i.i = and i32 %96, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  %or.cond97.i.i = select i1 %tobool21.not.i.i, i1 %tobool24.not.i.i, i1 false
  br i1 %or.cond97.i.i, label %if.end31.i.i, label %if.end16.i.i._rtl_pci_init_tx_ring.exit.i_crit_edge

if.end16.i.i._rtl_pci_init_tx_ring.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_init_tx_ring.exit.i

if.end31.i.i:                                     ; preds = %if.end16.i.i
  %tx_ring32.i.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %arrayidx33.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring32.i.i, i32 0, i32 %i.082.i
  %97 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i98.i.i, ptr %arrayidx33.i.i, align 4
  %98 = ptrtoint ptr %desc_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %desc_dma.i.i, align 4
  %dma.i65.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring32.i.i, i32 0, i32 %i.082.i, i32 1
  %100 = ptrtoint ptr %dma.i65.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %dma.i65.i, align 4
  %idx.i66.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring32.i.i, i32 0, i32 %i.082.i, i32 2
  %101 = ptrtoint ptr %idx.i66.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %idx.i66.i, align 4
  %entries41.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring32.i.i, i32 0, i32 %i.082.i, i32 3
  %102 = ptrtoint ptr %entries41.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %78, ptr %entries41.i.i, align 4
  %queue.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring32.i.i, i32 0, i32 %i.082.i, i32 4
  %lock.i.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring32.i.i, i32 0, i32 %i.082.i, i32 4, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %103 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %queue.i.i, ptr %queue.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.anon.62, ptr %queue.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %queue.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring32.i.i, i32 0, i32 %i.082.i, i32 4, i32 1
  %105 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %80, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef %i.082.i, ptr noundef nonnull %call.i98.i.i) #6
  %106 = ptrtoint ptr %use_new_trx_flow.i57.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %use_new_trx_flow.i57.i, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool45.not.i.i = icmp eq i8 %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp99.i.i = icmp ne i32 %78, 0
  %or.cond101.i.i = and i1 %cmp99.i.i, %tobool45.not.i.i
  br i1 %or.cond101.i.i, label %for.body.lr.ph.i.i, label %if.end31.i.i.for.inc9.i_crit_edge

if.end31.i.i.for.inc9.i_crit_edge:                ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i

for.body.lr.ph.i.i:                               ; preds = %if.end31.i.i
  %cfg.i67.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 32
  br label %for.body.i70.i

for.body.i70.i:                                   ; preds = %for.body.i70.i.for.body.i70.i_crit_edge, %for.body.lr.ph.i.i
  %i.0100.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.body.i70.i.for.body.i70.i_crit_edge ]
  %108 = ptrtoint ptr %desc_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %desc_dma.i.i, align 4
  %add.i.i = add nuw i32 %i.0100.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %78)
  %110 = icmp eq i32 %add.i.i, %78
  %add.op.i.i = shl i32 %add.i.i, 6
  %mul47.i.i = select i1 %110, i32 0, i32 %add.op.i.i
  %add48.i.i = add i32 %mul47.i.i, %109
  %111 = ptrtoint ptr %nextdescaddress.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add48.i.i, ptr %nextdescaddress.i.i, align 4
  %112 = ptrtoint ptr %cfg.i67.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cfg.i67.i, align 8
  %ops.i68.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %ops.i68.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i68.i, align 4
  %set_desc.i69.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %115, i32 0, i32 37
  %116 = ptrtoint ptr %set_desc.i69.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %set_desc.i69.i, align 4
  %arrayidx49.i.i = getelementptr %struct.rtl_tx_desc, ptr %call.i98.i.i, i32 %i.0100.i.i
  call void %117(ptr noundef %hw, ptr noundef %arrayidx49.i.i, i1 noundef zeroext true, i8 noundef zeroext 2, ptr noundef nonnull %nextdescaddress.i.i) #6
  br i1 %110, label %for.body.i70.i.for.inc9.i_crit_edge, label %for.body.i70.i.for.body.i70.i_crit_edge

for.body.i70.i.for.body.i70.i_crit_edge:          ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i70.i

for.body.i70.i.for.inc9.i_crit_edge:              ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i

_rtl_pci_init_tx_ring.exit.i:                     ; preds = %if.end16.i.i._rtl_pci_init_tx_ring.exit.i_crit_edge, %if.then.i63.i._rtl_pci_init_tx_ring.exit.i_crit_edge
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %i.082.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextdescaddress.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_dma.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer_desc_dma.i.i) #6
  call fastcc void @_rtl_pci_free_rx_ring(ptr noundef %hw, i32 noundef 0) #6
  call fastcc void @_rtl_pci_free_rx_ring(ptr noundef %hw, i32 noundef 1) #6
  %tx_ring.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %118 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_ring.i, align 4
  %tobool22.not.i = icmp eq ptr %119, null
  br i1 %tobool22.not.i, label %lor.lhs.false.i, label %_rtl_pci_init_tx_ring.exit.i.if.then26.i_crit_edge

_rtl_pci_init_tx_ring.exit.i.if.then26.i_crit_edge: ; preds = %_rtl_pci_init_tx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

for.inc9.i:                                       ; preds = %for.body.i70.i.for.inc9.i_crit_edge, %if.end31.i.i.for.inc9.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextdescaddress.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_dma.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer_desc_dma.i.i) #6
  %inc10.i = add nuw nsw i32 %i.082.i, 1
  %exitcond91.not.i = icmp eq i32 %inc10.i, 9
  br i1 %exitcond91.not.i, label %for.inc9.i.cleanup_crit_edge, label %for.inc9.i.for.body4.i_crit_edge

for.inc9.i.for.body4.i_crit_edge:                 ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i

for.inc9.i.cleanup_crit_edge:                     ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %_rtl_pci_init_tx_ring.exit.i
  %buffer_desc.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 1, i32 1, i32 3
  %120 = ptrtoint ptr %buffer_desc.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %buffer_desc.i, align 4
  %tobool25.not.i = icmp eq ptr %121, null
  br i1 %tobool25.not.i, label %lor.lhs.false.i.for.inc28.i_crit_edge, label %lor.lhs.false.i.if.then26.i_crit_edge

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

lor.lhs.false.i.for.inc28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.i

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %_rtl_pci_init_tx_ring.exit.i.if.then26.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 0) #6
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %if.then26.i, %lor.lhs.false.i.for.inc28.i_crit_edge
  %arrayidx21.1.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 1, i32 1, i32 4, i32 1, i32 1
  %122 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx21.1.i, align 4
  %tobool22.not.1.i = icmp eq ptr %123, null
  br i1 %tobool22.not.1.i, label %lor.lhs.false.1.i, label %for.inc28.i.if.then26.1.i_crit_edge

for.inc28.i.if.then26.1.i_crit_edge:              ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc28.i
  %buffer_desc.1.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 2, i32 1, i32 1
  %124 = ptrtoint ptr %buffer_desc.1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %buffer_desc.1.i, align 4
  %tobool25.not.1.i = icmp eq ptr %125, null
  br i1 %tobool25.not.1.i, label %lor.lhs.false.1.i.for.inc28.1.i_crit_edge, label %lor.lhs.false.1.i.if.then26.1.i_crit_edge

lor.lhs.false.1.i.if.then26.1.i_crit_edge:        ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.1.i

lor.lhs.false.1.i.for.inc28.1.i_crit_edge:        ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.1.i

if.then26.1.i:                                    ; preds = %lor.lhs.false.1.i.if.then26.1.i_crit_edge, %for.inc28.i.if.then26.1.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 1) #6
  br label %for.inc28.1.i

for.inc28.1.i:                                    ; preds = %if.then26.1.i, %lor.lhs.false.1.i.for.inc28.1.i_crit_edge
  %arrayidx21.2.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 2, i32 1, i32 4
  %126 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx21.2.i, align 4
  %tobool22.not.2.i = icmp eq ptr %127, null
  br i1 %tobool22.not.2.i, label %lor.lhs.false.2.i, label %for.inc28.1.i.if.then26.2.i_crit_edge

for.inc28.1.i.if.then26.2.i_crit_edge:            ; preds = %for.inc28.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.2.i

lor.lhs.false.2.i:                                ; preds = %for.inc28.1.i
  %buffer_desc.2.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 3
  %128 = ptrtoint ptr %buffer_desc.2.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buffer_desc.2.i, align 4
  %tobool25.not.2.i = icmp eq ptr %129, null
  br i1 %tobool25.not.2.i, label %lor.lhs.false.2.i.for.inc28.2.i_crit_edge, label %lor.lhs.false.2.i.if.then26.2.i_crit_edge

lor.lhs.false.2.i.if.then26.2.i_crit_edge:        ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.2.i

lor.lhs.false.2.i.for.inc28.2.i_crit_edge:        ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.2.i

if.then26.2.i:                                    ; preds = %lor.lhs.false.2.i.if.then26.2.i_crit_edge, %for.inc28.1.i.if.then26.2.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 2) #6
  br label %for.inc28.2.i

for.inc28.2.i:                                    ; preds = %if.then26.2.i, %lor.lhs.false.2.i.for.inc28.2.i_crit_edge
  %arrayidx21.3.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 3, i32 0, i32 0, i32 3
  %130 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx21.3.i, align 4
  %tobool22.not.3.i = icmp eq ptr %131, null
  br i1 %tobool22.not.3.i, label %lor.lhs.false.3.i, label %for.inc28.2.i.if.then26.3.i_crit_edge

for.inc28.2.i.if.then26.3.i_crit_edge:            ; preds = %for.inc28.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.3.i

lor.lhs.false.3.i:                                ; preds = %for.inc28.2.i
  %buffer_desc.3.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 4, i32 0, i32 0, i32 4, i32 7
  %132 = ptrtoint ptr %buffer_desc.3.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %buffer_desc.3.i, align 4
  %tobool25.not.3.i = icmp eq ptr %133, null
  br i1 %tobool25.not.3.i, label %lor.lhs.false.3.i.for.inc28.3.i_crit_edge, label %lor.lhs.false.3.i.if.then26.3.i_crit_edge

lor.lhs.false.3.i.if.then26.3.i_crit_edge:        ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.3.i

lor.lhs.false.3.i.for.inc28.3.i_crit_edge:        ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.3.i

if.then26.3.i:                                    ; preds = %lor.lhs.false.3.i.if.then26.3.i_crit_edge, %for.inc28.2.i.if.then26.3.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 3) #6
  br label %for.inc28.3.i

for.inc28.3.i:                                    ; preds = %if.then26.3.i, %lor.lhs.false.3.i.for.inc28.3.i_crit_edge
  %arrayidx21.4.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 5, i32 0, i32 0, i32 2
  %134 = ptrtoint ptr %arrayidx21.4.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx21.4.i, align 4
  %tobool22.not.4.i = icmp eq ptr %135, null
  br i1 %tobool22.not.4.i, label %lor.lhs.false.4.i, label %for.inc28.3.i.if.then26.4.i_crit_edge

for.inc28.3.i.if.then26.4.i_crit_edge:            ; preds = %for.inc28.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.4.i

lor.lhs.false.4.i:                                ; preds = %for.inc28.3.i
  %buffer_desc.4.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 6, i32 0, i32 0, i32 4, i32 6
  %136 = ptrtoint ptr %buffer_desc.4.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %buffer_desc.4.i, align 4
  %tobool25.not.4.i = icmp eq ptr %137, null
  br i1 %tobool25.not.4.i, label %lor.lhs.false.4.i.for.inc28.4.i_crit_edge, label %lor.lhs.false.4.i.if.then26.4.i_crit_edge

lor.lhs.false.4.i.if.then26.4.i_crit_edge:        ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.4.i

lor.lhs.false.4.i.for.inc28.4.i_crit_edge:        ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.4.i

if.then26.4.i:                                    ; preds = %lor.lhs.false.4.i.if.then26.4.i_crit_edge, %for.inc28.3.i.if.then26.4.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 4) #6
  br label %for.inc28.4.i

for.inc28.4.i:                                    ; preds = %if.then26.4.i, %lor.lhs.false.4.i.for.inc28.4.i_crit_edge
  %arrayidx21.5.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 7, i32 0, i32 0, i32 1
  %138 = ptrtoint ptr %arrayidx21.5.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx21.5.i, align 4
  %tobool22.not.5.i = icmp eq ptr %139, null
  br i1 %tobool22.not.5.i, label %lor.lhs.false.5.i, label %for.inc28.4.i.if.then26.5.i_crit_edge

for.inc28.4.i.if.then26.5.i_crit_edge:            ; preds = %for.inc28.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.5.i

lor.lhs.false.5.i:                                ; preds = %for.inc28.4.i
  %buffer_desc.5.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 8, i32 0, i32 0, i32 4, i32 3
  %140 = ptrtoint ptr %buffer_desc.5.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %buffer_desc.5.i, align 4
  %tobool25.not.5.i = icmp eq ptr %141, null
  br i1 %tobool25.not.5.i, label %lor.lhs.false.5.i.for.inc28.5.i_crit_edge, label %lor.lhs.false.5.i.if.then26.5.i_crit_edge

lor.lhs.false.5.i.if.then26.5.i_crit_edge:        ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.5.i

lor.lhs.false.5.i.for.inc28.5.i_crit_edge:        ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.5.i

if.then26.5.i:                                    ; preds = %lor.lhs.false.5.i.if.then26.5.i_crit_edge, %for.inc28.4.i.if.then26.5.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 5) #6
  br label %for.inc28.5.i

for.inc28.5.i:                                    ; preds = %if.then26.5.i, %lor.lhs.false.5.i.for.inc28.5.i_crit_edge
  %arrayidx21.6.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 9
  %142 = ptrtoint ptr %arrayidx21.6.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx21.6.i, align 4
  %tobool22.not.6.i = icmp eq ptr %143, null
  br i1 %tobool22.not.6.i, label %lor.lhs.false.6.i, label %for.inc28.5.i.if.then26.6.i_crit_edge

for.inc28.5.i.if.then26.6.i_crit_edge:            ; preds = %for.inc28.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.6.i

lor.lhs.false.6.i:                                ; preds = %for.inc28.5.i
  %buffer_desc.6.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 10, i32 0, i32 0, i32 4, i32 2
  %144 = ptrtoint ptr %buffer_desc.6.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %buffer_desc.6.i, align 4
  %tobool25.not.6.i = icmp eq ptr %145, null
  br i1 %tobool25.not.6.i, label %lor.lhs.false.6.i.for.inc28.6.i_crit_edge, label %lor.lhs.false.6.i.if.then26.6.i_crit_edge

lor.lhs.false.6.i.if.then26.6.i_crit_edge:        ; preds = %lor.lhs.false.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.6.i

lor.lhs.false.6.i.for.inc28.6.i_crit_edge:        ; preds = %lor.lhs.false.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.6.i

if.then26.6.i:                                    ; preds = %lor.lhs.false.6.i.if.then26.6.i_crit_edge, %for.inc28.5.i.if.then26.6.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 6) #6
  br label %for.inc28.6.i

for.inc28.6.i:                                    ; preds = %if.then26.6.i, %lor.lhs.false.6.i.for.inc28.6.i_crit_edge
  %arrayidx21.7.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 10, i32 0, i32 0, i32 4, i32 7
  %146 = ptrtoint ptr %arrayidx21.7.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx21.7.i, align 4
  %tobool22.not.7.i = icmp eq ptr %147, null
  br i1 %tobool22.not.7.i, label %lor.lhs.false.7.i, label %for.inc28.6.i.if.then26.7.i_crit_edge

for.inc28.6.i.if.then26.7.i_crit_edge:            ; preds = %for.inc28.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.7.i

lor.lhs.false.7.i:                                ; preds = %for.inc28.6.i
  %buffer_desc.7.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 12, i32 0, i32 0, i32 4, i32 1, i32 1
  %148 = ptrtoint ptr %buffer_desc.7.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %buffer_desc.7.i, align 4
  %tobool25.not.7.i = icmp eq ptr %149, null
  br i1 %tobool25.not.7.i, label %lor.lhs.false.7.i.for.inc28.7.i_crit_edge, label %lor.lhs.false.7.i.if.then26.7.i_crit_edge

lor.lhs.false.7.i.if.then26.7.i_crit_edge:        ; preds = %lor.lhs.false.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.7.i

lor.lhs.false.7.i.for.inc28.7.i_crit_edge:        ; preds = %lor.lhs.false.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.7.i

if.then26.7.i:                                    ; preds = %lor.lhs.false.7.i.if.then26.7.i_crit_edge, %for.inc28.6.i.if.then26.7.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 7) #6
  br label %for.inc28.7.i

for.inc28.7.i:                                    ; preds = %if.then26.7.i, %lor.lhs.false.7.i.for.inc28.7.i_crit_edge
  %arrayidx21.8.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 12, i32 0, i32 0, i32 4, i32 6
  %150 = ptrtoint ptr %arrayidx21.8.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx21.8.i, align 4
  %tobool22.not.8.i = icmp eq ptr %151, null
  br i1 %tobool22.not.8.i, label %lor.lhs.false.8.i, label %for.inc28.7.i.if.then26.8.i_crit_edge

for.inc28.7.i.if.then26.8.i_crit_edge:            ; preds = %for.inc28.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.8.i

lor.lhs.false.8.i:                                ; preds = %for.inc28.7.i
  %buffer_desc.8.i = getelementptr %struct.rtl_priv, ptr %39, i32 1, i32 8, i32 1, i32 3
  %152 = ptrtoint ptr %buffer_desc.8.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %buffer_desc.8.i, align 4
  %tobool25.not.8.i = icmp eq ptr %153, null
  br i1 %tobool25.not.8.i, label %lor.lhs.false.8.i.do.end_crit_edge, label %lor.lhs.false.8.i.if.then26.8.i_crit_edge

lor.lhs.false.8.i.if.then26.8.i_crit_edge:        ; preds = %lor.lhs.false.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.8.i

lor.lhs.false.8.i.do.end_crit_edge:               ; preds = %lor.lhs.false.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then26.8.i:                                    ; preds = %lor.lhs.false.8.i.if.then26.8.i_crit_edge, %for.inc28.7.i.if.then26.8.i_crit_edge
  call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef 8) #6
  br label %do.end

do.end:                                           ; preds = %if.then26.8.i, %lor.lhs.false.8.i.do.end_crit_edge, %cleanup74.i.i, %for.body.i.i.do.end_crit_edge, %do.end.i.i
  %retval.0.i.ph = phi i32 [ 1, %lor.lhs.false.8.i.do.end_crit_edge ], [ 1, %if.then26.8.i ], [ -12, %do.end.i.i ], [ -12, %cleanup74.i.i ], [ -12, %for.body.i.i.do.end_crit_edge ]
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc9.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %for.inc9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_debug_add_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_init_rfkill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl_pci_intr_mode_decide(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %msi_support = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %msi_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msi_support, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %dev.i19 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %4 = ptrtoint ptr %dev.i19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i19, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @pci_enable_msi(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.then2_crit_edge, label %if.end.i

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %dev.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i19, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @_rtl_pci_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %rtl_pci_intr_mode_msi.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i19, align 4
  tail call void @pci_disable_msi(ptr noundef %11) #6
  br label %if.then2

rtl_pci_intr_mode_msi.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %using_msi.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i19, i32 0, i32 30
  %12 = ptrtoint ptr %using_msi.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %using_msi.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 132, i32 noundef 3, ptr noundef nonnull @.str.63) #6
  br label %if.end5

if.then2:                                         ; preds = %if.then6.i, %if.then.if.then2_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %dev.i11 = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %15 = ptrtoint ptr %dev.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i11, align 4
  %irq.i12 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %irq.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i12, align 4
  %call.i.i13 = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @_rtl_pci_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp.i14 = icmp slt i32 %call.i.i13, 0
  br i1 %cmp.i14, label %if.then2.if.end5_crit_edge, label %if.end.i16

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i16:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %using_msi.i15 = getelementptr inbounds %struct.rtl_pci, ptr %dev.i11, i32 0, i32 30
  %19 = ptrtoint ptr %using_msi.i15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %using_msi.i15, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 132, i32 noundef 3, ptr noundef nonnull @.str.85) #6
  br label %if.end5

if.else:                                          ; preds = %entry
  %irq.i20 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %20 = ptrtoint ptr %irq.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i20, align 4
  %call.i.i21 = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @_rtl_pci_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.i22 = icmp slt i32 %call.i.i21, 0
  br i1 %cmp.i22, label %if.else.if.end5_crit_edge, label %if.end.i24

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i24:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %using_msi.i23 = getelementptr inbounds %struct.rtl_pci, ptr %dev.i19, i32 0, i32 30
  %22 = ptrtoint ptr %using_msi.i23 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %using_msi.i23, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 132, i32 noundef 3, ptr noundef nonnull @.str.85) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end.i24, %if.else.if.end5_crit_edge, %if.end.i16, %if.then2.if.end5_crit_edge, %rtl_pci_intr_mode_msi.exit
  %ret.0 = phi i32 [ 0, %rtl_pci_intr_mode_msi.exit ], [ 0, %if.end.i16 ], [ %call.i.i13, %if.then2.if.end5_crit_edge ], [ 0, %if.end.i24 ], [ %call.i.i21, %if.else.if.end5_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_deinit_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_pci_disconnect(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %firmware_loading_complete = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %firmware_loading_complete) #6
  %status = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 34
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #6
  tail call void @rtl_debug_remove_one(ptr noundef %1) #6
  %mac80211_registered = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac80211_registered, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #6
  %6 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mac80211_registered, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl_deinit_deferred_work(ptr noundef %1, i1 noundef zeroext false) #6
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 33
  %7 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf_ops, align 4
  %adapter_stop = getelementptr inbounds %struct.rtl_intf_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %adapter_stop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter_stop, align 4
  tail call void %10(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %disable_interrupt = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %disable_interrupt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disable_interrupt, align 4
  tail call void %16(ptr noundef %1) #6
  tail call void @rtl_deinit_rfkill(ptr noundef %1) #6
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  tail call fastcc void @_rtl_pci_free_rx_ring(ptr noundef %1, i32 noundef 0) #6
  tail call fastcc void @_rtl_pci_free_rx_ring(ptr noundef %1, i32 noundef 1) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 0) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 1) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 2) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 3) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 4) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 5) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 6) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 7) #6
  tail call fastcc void @_rtl_pci_free_tx_ring(ptr noundef %1, i32 noundef 8) #6
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %22) #6
  %irq_tasklet.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 8, i32 5
  tail call void @tasklet_kill(ptr noundef %irq_tasklet.i) #6
  %lps_change_work.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 8, i32 14
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %lps_change_work.i) #6
  %rtl_wq.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 8, i32 7
  %23 = ptrtoint ptr %rtl_wq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtl_wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %24) #6
  tail call void @rtl_deinit_core(ptr noundef %1) #6
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg, align 8
  %ops6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops6, align 4
  %deinit_sw_vars = getelementptr inbounds %struct.rtl_hal_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %deinit_sw_vars to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %deinit_sw_vars, align 4
  tail call void %30(ptr noundef %1) #6
  %irq_alloc = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 4
  %31 = ptrtoint ptr %irq_alloc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %irq_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %1) #6
  %37 = ptrtoint ptr %irq_alloc to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %irq_alloc, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %using_msi = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 30
  %38 = ptrtoint ptr %using_msi to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %using_msi, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool12.not = icmp eq i8 %39, 0
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void @pci_disable_msi(ptr noundef %41) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %list = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_del.exit_crit_edge

if.end15.list_del.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end15.list_del.exit_crit_edge
  %48 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pci_mem_start = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 3
  %50 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pci_mem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp16.not = icmp eq i32 %51, 0
  br i1 %cmp16.not, label %list_del.exit.if.end21_crit_edge, label %if.then18

list_del.exit.if.end21_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %52 = inttoptr i32 %51 to ptr
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %52) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %list_del.exit.if.end21_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  tail call void @rtl_pci_disable_aspm(ptr noundef %1)
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @ieee80211_free_hw(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_debug_remove_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_deinit_deferred_work(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_deinit_rfkill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_pci_disable_aspm(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %tmp_u1b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %ndis_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 7
  %pcibridge_vendor7 = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter, i32 0, i32 7
  %2 = ptrtoint ptr %pcibridge_vendor7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pcibridge_vendor7, align 1
  %num4bytes9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 24, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %num4bytes9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num4bytes9, align 4
  %6 = ptrtoint ptr %ndis_adapter to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ndis_adapter, align 4
  %pcibridge_linkctrlreg13 = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter, i32 0, i32 12
  %8 = ptrtoint ptr %pcibridge_linkctrlreg13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pcibridge_linkctrlreg13, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_u1b) #6
  %10 = ptrtoint ptr %tmp_u1b to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tmp_u1b, align 1
  %support_aspm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 5
  %11 = ptrtoint ptr %support_aspm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %support_aspm, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.86) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %13 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_rfps_level, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %15 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_ps_level, align 4
  %and20 = and i32 %16, -3
  store i32 %and20, ptr %cur_ps_level, align 4
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %20, i32 noundef 129, i8 noundef zeroext 0) #6
  %hw_type.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 10, i32 10
  %21 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp.i = icmp eq i16 %22, 2
  br i1 %cmp.i, label %if.then.i, label %if.then19.if.end21_crit_edge

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 21474800) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.then19.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %25, i32 noundef 128, ptr noundef nonnull %tmp_u1b) #6
  %26 = and i8 %7, -4
  %27 = and i8 %9, -4
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %hw_type.i60 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 10, i32 10
  %30 = ptrtoint ptr %hw_type.i60 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_type.i60, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %31)
  %cmp.not.i = icmp eq i16 %31, 2
  %32 = or i8 %26, 64
  %spec.select.i = select i1 %cmp.not.i, i8 %26, i8 %32
  %dev.i61 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %33 = ptrtoint ptr %dev.i61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i61, align 4
  %call.i62 = call i32 @pci_write_config_byte(ptr noundef %34, i32 noundef 128, i8 noundef zeroext %spec.select.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 10737400) #6
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %conv33 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv33, 2
  %call35 = call i32 @pci_write_config_byte(ptr noundef %37, i32 noundef %shl, i8 noundef zeroext %27) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 10737400) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then16, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_u1b) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl_pci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
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
  %hw_suspend = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %hw_suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_suspend, align 4
  tail call void %9(ptr noundef %1) #6
  tail call void @rtl_deinit_rfkill(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl_pci_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
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
  %hw_resume = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %hw_resume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_resume, align 4
  tail call void %9(ptr noundef %1) #6
  tail call void @rtl_init_rfkill(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_efuse_byte(ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_pci_start(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btcoexist, align 8
  %call = tail call i32 @rtl_pci_reset_trx_ring(ptr noundef %hw)
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %driver_is_goingto_unload, align 1
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %8, i32 0, i32 66
  %9 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_btc_status, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call11 = tail call zeroext i1 %10() #6
  br i1 %call11, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %ap_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 4
  %11 = ptrtoint ptr %ap_num to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 36, ptr %ap_num, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void %13(ptr noundef %1) #6
  %btc_init_hal_vars = getelementptr inbounds %struct.rtl_btc_ops, ptr %3, i32 0, i32 3
  br label %if.end15.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %if.else.if.end15_crit_edge, label %if.then14

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %btc_init_variables_wifi_only = getelementptr inbounds %struct.rtl_btc_ops, ptr %3, i32 0, i32 1
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then14, %if.then
  %btc_init_variables_wifi_only.sink = phi ptr [ %btc_init_variables_wifi_only, %if.then14 ], [ %btc_init_hal_vars, %if.then ]
  %14 = ptrtoint ptr %btc_init_variables_wifi_only.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_init_variables_wifi_only.sink, align 4
  tail call void %15(ptr noundef %1) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg, align 8
  %ops17 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops17, align 4
  %hw_init = getelementptr inbounds %struct.rtl_hal_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_init, align 4
  %call18 = tail call i32 %21(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.87) #6
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 2
  %22 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_context, align 8
  tail call void @kfree(ptr noundef %23) #6
  %wifi_only_context = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 3
  %24 = ptrtoint ptr %wifi_only_context to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wifi_only_context, align 4
  tail call void @kfree(ptr noundef %25) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg, align 8
  %ops25 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops25, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_hw_reg, align 4
  %retry_long = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 51
  tail call void %31(ptr noundef %hw, i8 noundef zeroext 53, ptr noundef %retry_long) #6
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg, align 8
  %ops27 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %ops27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops27, align 4
  %enable_interrupt = getelementptr inbounds %struct.rtl_hal_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %enable_interrupt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enable_interrupt, align 4
  tail call void %37(ptr noundef %hw) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.88) #6
  tail call void @rtl_init_rx_config(ptr noundef %hw) #6
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %state.i, align 8
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %39 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_ps_level, align 4
  %and = and i32 %40, -9
  store i32 %and, ptr %cur_ps_level, align 4
  %up_first_time = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 3
  %41 = ptrtoint ptr %up_first_time to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %up_first_time, align 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.rtl_pci_start) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then20
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_pci_stop(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_btc_status, align 4
  %call = tail call zeroext i1 %7() #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btcoexist, align 8
  %btc_halt_notify = getelementptr inbounds %struct.rtl_btc_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %btc_halt_notify to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_halt_notify, align 4
  tail call void %11(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %btcoexist6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %12 = ptrtoint ptr %btcoexist6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btcoexist6, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %btc_deinit_variables = getelementptr inbounds %struct.rtl_btc_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %btc_deinit_variables to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btc_deinit_variables, align 4
  tail call void %15(ptr noundef %1) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %state.i, align 8
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %driver_is_goingto_unload, align 1
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg, align 8
  %ops13 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops13, align 4
  %disable_interrupt = getelementptr inbounds %struct.rtl_hal_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %disable_interrupt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disable_interrupt, align 4
  tail call void %23(ptr noundef %hw) #6
  %lps_change_work = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 14
  %call14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %lps_change_work) #6
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #6
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %24 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rfchange_inprogress, align 2, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not123 = icmp eq i8 %25, 0
  br i1 %tobool20.not123, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %if.end11.while.body_crit_edge
  %rf_timeout.0125 = phi i8 [ %inc, %if.end42.while.body_crit_edge ], [ 0, %if.end11.while.body_crit_edge ]
  %flags.0124 = phi i32 [ %call53, %if.end42.while.body_crit_edge ], [ %call17, %if.end11.while.body_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %flags.0124) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %rf_timeout.0125)
  %cmp24 = icmp ugt i8 %rf_timeout.0125, 100
  br i1 %cmp24, label %do.body28, label %if.end42

do.body28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #6
  br label %while.end

if.end42:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  %inc = add nuw nsw i8 %rf_timeout.0125, 1
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #6
  %27 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rfchange_inprogress, align 2, !range !225
  %tobool20.not = icmp eq i8 %28, 0
  br i1 %tobool20.not, label %if.end42.while.end_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %do.body28, %if.end11.while.end_crit_edge
  %flags.1 = phi i32 [ %call37, %do.body28 ], [ %call17, %if.end11.while.end_crit_edge ], [ %call53, %if.end42.while.end_crit_edge ]
  %29 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %flags.1) #6
  %30 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg, align 8
  %ops62 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ops62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops62, align 4
  %hw_disable = getelementptr inbounds %struct.rtl_hal_ops, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %hw_disable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_disable, align 4
  tail call void %35(ptr noundef %hw) #6
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %36 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_fw_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool63.not = icmp eq i32 %37, 0
  br i1 %tobool63.not, label %while.end.cleanup_crit_edge, label %if.end65

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg, align 8
  %ops67 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ops67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops67, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %41, i32 0, i32 36
  %42 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %led_control, align 4
  tail call void %43(ptr noundef %hw, i32 noundef 7) #6
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #6
  %44 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call78) #6
  tail call void @rtl_pci_enable_aspm(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %while.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rtl_pci_check_buddy_priv(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %buddy_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %glb_var = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %glb_var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glb_var, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %5, %3
  br i1 %cmp.i.not, label %entry.if.end41.thread_crit_edge, label %for.cond.preheader

entry.if.end41.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.thread

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn70 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %glb_var to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %glb_var, align 8
  %cmp.not71 = icmp eq ptr %.pn70, %8
  br i1 %cmp.not71, label %for.cond.preheader.if.end41.thread_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end41.thread_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.thread

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ndis_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 7
  %funcnumber = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter, i32 0, i32 3
  %busnumber = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter, i32 0, i32 1
  %devnumber = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn72 = phi ptr [ %.pn70, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %funcnumber to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %funcnumber, align 1
  %conv = zext i8 %10 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.90, i32 noundef %conv) #6
  %funcnumber10 = getelementptr i8, ptr %.pn72, i32 54751
  %11 = ptrtoint ptr %funcnumber10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %funcnumber10, align 1
  %conv11 = zext i8 %12 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.91, i32 noundef %conv11) #6
  %13 = ptrtoint ptr %busnumber to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %busnumber, align 1
  %busnumber15 = getelementptr i8, ptr %.pn72, i32 54749
  %15 = ptrtoint ptr %busnumber15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %busnumber15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp17 = icmp eq i8 %14, %16
  br i1 %cmp17, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %17 = ptrtoint ptr %devnumber to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %devnumber, align 2
  %devnumber22 = getelementptr i8, ptr %.pn72, i32 54750
  %19 = ptrtoint ptr %devnumber22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %devnumber22, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp24 = icmp eq i8 %18, %20
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %funcnumber to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %funcnumber, align 1
  %23 = ptrtoint ptr %funcnumber10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %funcnumber10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp33.not = icmp eq i8 %22, %24
  br i1 %cmp33.not, label %land.lhs.true26.for.inc_crit_edge, label %if.then45

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true26.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn72, align 4
  %26 = ptrtoint ptr %glb_var to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %glb_var, align 8
  %cmp.not = icmp eq ptr %.pn, %27
  br i1 %cmp.not, label %for.inc.if.end41.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end41.thread_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.thread

if.end41.thread:                                  ; preds = %for.inc.if.end41.thread_crit_edge, %for.cond.preheader.if.end41.thread_crit_edge, %entry.if.end41.thread_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef 0) #6
  br label %if.end46

if.then45:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  %tpriv.0.le = getelementptr i8, ptr %.pn72, i32 -60
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef 1) #6
  %28 = ptrtoint ptr %buddy_priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tpriv.0.le, ptr %buddy_priv, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end41.thread
  %find_buddy_priv.0.off068 = phi i1 [ false, %if.end41.thread ], [ true, %if.then45 ]
  ret i1 %find_buddy_priv.0.off068
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl_pci_tx(ptr noundef %hw, ptr noundef %sta, ptr noundef %skb, ptr noundef %ptcb_desc) #0 align 64 {
entry:
  %hw_queue = alloca i8, align 1
  %temp_one = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hw_queue) #6
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queue_mapping.i.i, align 8
  %8 = and i16 %5, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp.i.i = icmp eq i16 %8, -32768
  br i1 %cmp.i.i, label %entry._rtl_mac_to_hwqueue.exit_crit_edge, label %if.end.i, !prof !227

entry._rtl_mac_to_hwqueue.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_mac_to_hwqueue.exit

if.end.i:                                         ; preds = %entry
  %9 = trunc i16 %5 to i12
  %trunc.i = and i12 %9, -1024
  %10 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.103)
  switch i12 %trunc.i, label %if.end10.i [
    i12 0, label %if.end.i._rtl_mac_to_hwqueue.exit_crit_edge
    i12 1024, label %if.end.i._rtl_mac_to_hwqueue.exit_crit_edge240
  ]

if.end.i._rtl_mac_to_hwqueue.exit_crit_edge240:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_mac_to_hwqueue.exit

if.end.i._rtl_mac_to_hwqueue.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_mac_to_hwqueue.exit

if.end10.i:                                       ; preds = %if.end.i
  %hw_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %11 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_type.i, align 8
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %12, label %if.end10.i.if.end33.i_crit_edge [
    i16 2, label %if.then13.i
    i16 15, label %if.then22.i
  ]

if.end10.i.if.end33.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %8)
  %cmp.i46.i = icmp eq i16 %8, 18432
  br i1 %cmp.i46.i, label %if.then13.i._rtl_mac_to_hwqueue.exit_crit_edge, label %if.then13.i.if.end33.i_crit_edge

if.then13.i.if.end33.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then13.i._rtl_mac_to_hwqueue.exit_crit_edge:   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_mac_to_hwqueue.exit

if.then22.i:                                      ; preds = %if.end10.i
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr1.i, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false26.i, label %if.then22.i._rtl_mac_to_hwqueue.exit_crit_edge

if.then22.i._rtl_mac_to_hwqueue.exit_crit_edge:   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_mac_to_hwqueue.exit

lor.lhs.false26.i:                                ; preds = %if.then22.i
  %17 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr1.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %20, %18
  %add.ptr3.i.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i47.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i47.i, label %lor.lhs.false26.i._rtl_mac_to_hwqueue.exit_crit_edge, label %lor.lhs.false26.i.if.end33.i_crit_edge

lor.lhs.false26.i.if.end33.i_crit_edge:           ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.lhs.false26.i._rtl_mac_to_hwqueue.exit_crit_edge: ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_mac_to_hwqueue.exit

if.end33.i:                                       ; preds = %lor.lhs.false26.i.if.end33.i_crit_edge, %if.then13.i.if.end33.i_crit_edge, %if.end10.i.if.end33.i_crit_edge
  %23 = and i16 %7, 255
  %idxprom.i = zext i16 %23 to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @ac_to_hwq, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  br label %_rtl_mac_to_hwqueue.exit

_rtl_mac_to_hwqueue.exit:                         ; preds = %if.end33.i, %lor.lhs.false26.i._rtl_mac_to_hwqueue.exit_crit_edge, %if.then22.i._rtl_mac_to_hwqueue.exit_crit_edge, %if.then13.i._rtl_mac_to_hwqueue.exit_crit_edge, %if.end.i._rtl_mac_to_hwqueue.exit_crit_edge, %if.end.i._rtl_mac_to_hwqueue.exit_crit_edge240, %entry._rtl_mac_to_hwqueue.exit_crit_edge
  %retval.0.i = phi i8 [ %25, %if.end33.i ], [ 4, %entry._rtl_mac_to_hwqueue.exit_crit_edge ], [ 6, %if.end.i._rtl_mac_to_hwqueue.exit_crit_edge ], [ 7, %if.then13.i._rtl_mac_to_hwqueue.exit_crit_edge ], [ 7, %lor.lhs.false26.i._rtl_mac_to_hwqueue.exit_crit_edge ], [ 7, %if.then22.i._rtl_mac_to_hwqueue.exit_crit_edge ], [ 6, %if.end.i._rtl_mac_to_hwqueue.exit_crit_edge240 ]
  %26 = ptrtoint ptr %hw_queue to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %retval.0.i, ptr %hw_queue, align 1
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp_one) #6
  %27 = ptrtoint ptr %temp_one to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %temp_one, align 1
  %28 = and i16 %5, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i = icmp eq i16 %28, 0
  br i1 %cmp.i, label %if.end.thread, label %if.end

if.end:                                           ; preds = %_rtl_mac_to_hwqueue.exit
  %sw_ps_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 25
  %29 = ptrtoint ptr %sw_ps_enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sw_ps_enabled, align 8, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %28)
  %cmp.i226 = icmp ne i16 %28, 2048
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.i226
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %8)
  %cmp.i227 = icmp eq i16 %8, 18432
  %or.cond237 = select i1 %or.cond, i1 true, i1 %cmp.i227
  %31 = and i16 %5, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i228 = icmp ne i16 %31, 0
  %or.cond238 = select i1 %or.cond237, i1 true, i1 %cmp.i228
  br i1 %or.cond238, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end.thread:                                    ; preds = %_rtl_mac_to_hwqueue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call zeroext i1 @rtl_tx_mgmt_proc(ptr noundef %hw, ptr noundef %skb) #6
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %3, align 2
  %34 = or i16 %33, 16
  store i16 %34, ptr %3, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.thread, %if.end.if.end17_crit_edge
  %call18 = tail call zeroext i1 @rtl_action_proc(ptr noundef %hw, ptr noundef %skb, i8 noundef zeroext 1) #6
  %35 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr1, align 4
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not = icmp eq i32 %37, 0
  br i1 %tobool.i.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %txbytesmulticast = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 24, i32 1
  br label %do.body35

if.else:                                          ; preds = %if.end17
  %40 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %43, %41
  %add.ptr3.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %45
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i229 = icmp eq i16 %and510.i, -1
  %len24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len24, align 4
  br i1 %cmp.i229, label %if.then23, label %if.else28

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %txbytesbroadcast = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 24, i32 2
  br label %do.body35

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %stats31 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 24
  br label %do.body35

do.body35:                                        ; preds = %if.else28, %if.then23, %if.then20
  %txbytesbroadcast.sink239 = phi ptr [ %txbytesbroadcast, %if.then23 ], [ %stats31, %if.else28 ], [ %txbytesmulticast, %if.then20 ]
  %conv25.sink.in = phi i32 [ %47, %if.then23 ], [ %47, %if.else28 ], [ %39, %if.then20 ]
  %conv25.sink = zext i32 %conv25.sink.in to i64
  %48 = ptrtoint ptr %txbytesbroadcast.sink239 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %txbytesbroadcast.sink239, align 8
  %add27 = add i64 %49, %conv25.sink
  store i64 %add27, ptr %txbytesbroadcast.sink239, align 8
  %irq_th_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 3
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock) #6
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %50 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hw_queue, align 1
  %idxprom = zext i8 %51 to i32
  %arrayidx = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp42.not = icmp eq i8 %51, 4
  br i1 %cmp42.not, label %do.body35.if.end54_crit_edge, label %if.then44

do.body35.if.end54_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then44:                                        ; preds = %do.body35
  %use_new_trx_flow = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %52 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool45.not = icmp eq i8 %53, 0
  br i1 %tobool45.not, label %if.else47, label %if.then46

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %cur_tx_wp = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 7
  %54 = ptrtoint ptr %cur_tx_wp to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cur_tx_wp, align 4
  br label %if.end54

if.else47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %idx48 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 2
  %56 = ptrtoint ptr %idx48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %idx48, align 4
  %qlen.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 4, i32 1
  %58 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qlen.i, align 4
  %add50 = add i32 %59, %57
  %entries = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 3
  %60 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entries, align 4
  %rem = urem i32 %add50, %61
  %conv51 = trunc i32 %rem to i16
  br label %if.end54

if.end54:                                         ; preds = %if.else47, %if.then46, %do.body35.if.end54_crit_edge
  %idx.0 = phi i16 [ %55, %if.then46 ], [ %conv51, %if.else47 ], [ 0, %do.body35.if.end54_crit_edge ]
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  %idxprom55 = zext i16 %idx.0 to i32
  %arrayidx56 = getelementptr %struct.rtl_tx_desc, ptr %63, i32 %idxprom55
  %use_new_trx_flow57 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %64 = ptrtoint ptr %use_new_trx_flow57 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %use_new_trx_flow57, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool58.not = icmp eq i8 %65, 0
  br i1 %tobool58.not, label %if.else62, label %if.then59

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %buffer_desc = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 5
  %66 = ptrtoint ptr %buffer_desc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer_desc, align 4
  %arrayidx61 = getelementptr %struct.rtl_tx_buffer_desc, ptr %67, i32 %idxprom55
  br label %if.end82

if.else62:                                        ; preds = %if.end54
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %68 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops, align 4
  %get_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %71, i32 0, i32 38
  %72 = ptrtoint ptr %get_desc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %get_desc, align 4
  %call63 = tail call i64 %73(ptr noundef %hw, ptr noundef %arrayidx56, i1 noundef zeroext true, i8 noundef zeroext 0) #6
  %conv65225 = and i64 %call63, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %conv65225)
  %cmp66 = icmp eq i64 %conv65225, 1
  br i1 %cmp66, label %land.lhs.true68, label %if.else62.if.end82_crit_edge

if.else62.if.end82_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

land.lhs.true68:                                  ; preds = %if.else62
  %74 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %hw_queue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %75)
  %cmp70.not = icmp eq i8 %75, 4
  br i1 %cmp70.not, label %land.lhs.true68.if.end82_crit_edge, label %if.then72

land.lhs.true68.if.end82_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then72:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #8
  %conv69 = zext i8 %75 to i32
  %idx74 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 2
  %76 = ptrtoint ptr %idx74 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %idx74, align 4
  %qlen.i230 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 4, i32 1
  %78 = ptrtoint ptr %qlen.i230 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %qlen.i230, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %conv69, i32 noundef %77, i32 noundef %idxprom55, i32 noundef %79) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call38) #6
  %len80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %80 = ptrtoint ptr %len80 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len80, align 4
  br label %cleanup

if.end82:                                         ; preds = %land.lhs.true68.if.end82_crit_edge, %if.else62.if.end82_crit_edge, %if.then59
  %ptx_bd_desc.0 = phi ptr [ %arrayidx61, %if.then59 ], [ null, %land.lhs.true68.if.end82_crit_edge ], [ null, %if.else62.if.end82_crit_edge ]
  %cfg83 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %82 = ptrtoint ptr %cfg83 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg83, align 8
  %ops84 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %ops84 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops84, align 4
  %get_available_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %85, i32 0, i32 69
  %86 = ptrtoint ptr %get_available_desc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %get_available_desc, align 4
  %tobool85.not = icmp eq ptr %87, null
  br i1 %tobool85.not, label %if.end82.if.end98_crit_edge, label %land.lhs.true86

if.end82.if.end98_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

land.lhs.true86:                                  ; preds = %if.end82
  %88 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hw_queue, align 1
  %call90 = tail call zeroext i16 %87(ptr noundef %hw, i8 noundef zeroext %89) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call90)
  %cmp92 = icmp eq i16 %call90, 0
  br i1 %cmp92, label %if.then94, label %land.lhs.true86.if.end98_crit_edge

land.lhs.true86.if.end98_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then94:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.94) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call38) #6
  %len97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %90 = ptrtoint ptr %len97 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len97, align 4
  br label %cleanup

if.end98:                                         ; preds = %land.lhs.true86.if.end98_crit_edge, %if.end82.if.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %28)
  %cmp.i231 = icmp eq i16 %28, 2048
  br i1 %cmp.i231, label %if.then100, label %if.end98.if.end103_crit_edge

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %cfg83 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg83, align 8
  %ops102 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %ops102 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops102, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %95, i32 0, i32 36
  %96 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %led_control, align 4
  tail call void %97(ptr noundef %hw, i32 noundef 4) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end98.if.end103_crit_edge
  %98 = ptrtoint ptr %cfg83 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg83, align 8
  %ops105 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %ops105 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops105, align 4
  %fill_tx_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %101, i32 0, i32 26
  %102 = ptrtoint ptr %fill_tx_desc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fill_tx_desc, align 4
  %104 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %hw_queue, align 1
  tail call void %103(ptr noundef %hw, ptr noundef %3, ptr noundef %arrayidx56, ptr noundef %ptx_bd_desc.0, ptr noundef %cb.i, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %105, ptr noundef %ptcb_desc) #6
  %queue106 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 4
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %queue106, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i, align 4
  %108 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %queue106, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %skb, i32 0, i32 1
  %109 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %skb, ptr %107, align 4
  %qlen.i.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 4, i32 1
  %111 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %112, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %113 = ptrtoint ptr %use_new_trx_flow57 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %use_new_trx_flow57, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool108.not = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %cfg83 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg83, align 8
  %ops114 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %ops114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops114, align 4
  %set_desc115 = getelementptr inbounds %struct.rtl_hal_ops, ptr %118, i32 0, i32 37
  %119 = ptrtoint ptr %set_desc115 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %set_desc115, align 4
  %temp_one.hw_queue = select i1 %tobool108.not, ptr %temp_one, ptr %hw_queue
  call void %120(ptr noundef %hw, ptr noundef %arrayidx56, i1 noundef zeroext true, i8 noundef zeroext 0, ptr noundef nonnull %temp_one.hw_queue) #6
  %entries117 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 3
  %121 = ptrtoint ptr %entries117 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %entries117, align 4
  %123 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qlen.i.i.i, align 4
  %sub = sub i32 %122, %124
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp120 = icmp ult i32 %sub, 2
  br i1 %cmp120, label %land.lhs.true122, label %if.end103.if.end134_crit_edge

if.end103.if.end134_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

land.lhs.true122:                                 ; preds = %if.end103
  %125 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %hw_queue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %126)
  %cmp124.not = icmp eq i8 %126, 4
  br i1 %cmp124.not, label %land.lhs.true122.if.end134_crit_edge, label %if.then126

land.lhs.true122.if.end134_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then126:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #8
  %conv123 = zext i8 %126 to i32
  %idx128 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 2
  %127 = ptrtoint ptr %idx128 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %idx128, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.95, i32 noundef %conv123, i32 noundef %128, i32 noundef %idxprom55, i32 noundef %124) #6
  %129 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %queue_mapping.i.i, align 8
  %conv133 = zext i16 %130 to i32
  call void @ieee80211_stop_queue(ptr noundef %hw, i32 noundef %conv133) #6
  br label %if.end134

if.end134:                                        ; preds = %if.then126, %land.lhs.true122.if.end134_crit_edge, %if.end103.if.end134_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call38) #6
  %131 = ptrtoint ptr %cfg83 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg83, align 8
  %ops138 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %ops138 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops138, align 4
  %tx_polling = getelementptr inbounds %struct.rtl_hal_ops, ptr %134, i32 0, i32 40
  %135 = ptrtoint ptr %tx_polling to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx_polling, align 4
  %137 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %hw_queue, align 1
  call void %136(ptr noundef %hw, i8 noundef zeroext %138) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.then94, %if.then72
  %retval.0 = phi i32 [ %91, %if.then94 ], [ 0, %if.end134 ], [ %81, %if.then72 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp_one) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hw_queue) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_pci_flush(ptr nocapture noundef readonly %hw, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %skip_scan = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 22
  %2 = ptrtoint ptr %skip_scan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %skip_scan, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

for.cond.preheader:                               ; preds = %entry
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %queue_id.049 = phi i32 [ 8, %for.cond.preheader ], [ %queue_id.1, %cleanup.for.body_crit_edge ]
  %i.048 = phi i16 [ 0, %for.cond.preheader ], [ %i.1, %cleanup.for.body_crit_edge ]
  %4 = shl nuw i32 1, %queue_id.049
  %5 = and i32 %4, %queues
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add nsw i32 %queue_id.049, -1
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %qlen.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %queue_id.049, i32 4, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue_id.049)
  %cmp10 = icmp eq i32 %queue_id.049, 4
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %queue_id.049)
  %cmp12 = icmp eq i32 %queue_id.049, 5
  %or.cond43 = select i1 %or.cond, i1 true, i1 %cmp12
  br i1 %or.cond43, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dec14 = add nsw i32 %queue_id.049, -1
  br label %cleanup

if.else:                                          ; preds = %if.end8
  tail call void @msleep(i32 noundef 20) #6
  %8 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp16 = icmp eq i32 %9, 2
  br i1 %cmp16, label %if.else.cleanup24_crit_edge, label %lor.lhs.false17

if.else.cleanup24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

lor.lhs.false17:                                  ; preds = %if.else
  %inc = add i16 %i.048, 1
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 199, i16 %inc)
  %cmp20 = icmp ugt i16 %inc, 199
  %or.cond44 = select i1 %cmp.i, i1 true, i1 %cmp20
  br i1 %or.cond44, label %lor.lhs.false17.cleanup24_crit_edge, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false17.cleanup24_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

cleanup:                                          ; preds = %lor.lhs.false17.cleanup_crit_edge, %if.then13, %if.then7
  %i.1 = phi i16 [ %i.048, %if.then7 ], [ %i.048, %if.then13 ], [ %inc, %lor.lhs.false17.cleanup_crit_edge ]
  %queue_id.1 = phi i32 [ %dec, %if.then7 ], [ %dec14, %if.then13 ], [ %queue_id.049, %lor.lhs.false17.cleanup_crit_edge ]
  %cmp = icmp sgt i32 %queue_id.1, -1
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup24_crit_edge

cleanup.cleanup24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup24:                                        ; preds = %cleanup.cleanup24_crit_edge, %lor.lhs.false17.cleanup24_crit_edge, %if.else.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rtl_pci_tx_chk_waitq_insert(ptr nocapture noundef readonly %hw, ptr noundef readonly %sta, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = and i16 %5, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.i.i.i.i = icmp eq i16 %6, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %3, i32 %retval.0.v.i.i.i
  %7 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %retval.0.i.i.i, align 1
  %9 = and i8 %8, 15
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %10 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %earlymode_enable, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = and i16 %5, -1024
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %12, label %if.end13 [
    i16 18432, label %if.end4.cleanup_crit_edge
    i16 -14336, label %if.end4.cleanup_crit_edge63
    i16 -23552, label %if.end4.cleanup_crit_edge64
  ]

if.end4.cleanup_crit_edge64:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.cleanup_crit_edge63:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %tids = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %idxprom = zext i8 %9 to i32
  %agg_state = getelementptr [9 x %struct.rtl_tid_data], ptr %tids, i32 0, i32 %idxprom, i32 0, i32 5
  %14 = ptrtoint ptr %agg_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %agg_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.not = icmp ne i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %12)
  %cmp.i.i = icmp eq i16 %12, -32768
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp.i.i
  br i1 %or.cond, label %if.end13.cleanup_crit_edge, label %if.end.i, !prof !228

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %16 = trunc i16 %5 to i12
  %trunc.i = and i12 %16, -1024
  %17 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.106)
  switch i12 %trunc.i, label %if.end10.i [
    i12 0, label %if.end.i.cleanup_crit_edge
    i12 1024, label %if.end.i.cleanup_crit_edge65
  ]

if.end.i.cleanup_crit_edge65:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %hw_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %18 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hw_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %19)
  %cond = icmp eq i16 %19, 15
  br i1 %cond, label %if.then22.i, label %_rtl_mac_to_hwqueue.exit

if.then22.i:                                      ; preds = %if.end10.i
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr1.i, align 4
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false26.i, label %if.then22.i.cleanup_crit_edge

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false26.i:                                ; preds = %if.then22.i
  %23 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr1.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %26, %24
  %add.ptr3.i.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i47.i = icmp eq i16 %and510.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp25 = icmp ugt i8 %9, 7
  %or.cond62 = select i1 %cmp.i47.i, i1 true, i1 %cmp25
  br i1 %or.cond62, label %lor.lhs.false26.i.cleanup_crit_edge, label %lor.lhs.false26.i.if.end28_crit_edge

lor.lhs.false26.i.if.end28_crit_edge:             ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

lor.lhs.false26.i.cleanup_crit_edge:              ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

_rtl_mac_to_hwqueue.exit:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp25.old = icmp ugt i8 %9, 7
  br i1 %cmp25.old, label %_rtl_mac_to_hwqueue.exit.cleanup_crit_edge, label %_rtl_mac_to_hwqueue.exit.if.end28_crit_edge

_rtl_mac_to_hwqueue.exit.if.end28_crit_edge:      ; preds = %_rtl_mac_to_hwqueue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

_rtl_mac_to_hwqueue.exit.cleanup_crit_edge:       ; preds = %_rtl_mac_to_hwqueue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %_rtl_mac_to_hwqueue.exit.if.end28_crit_edge, %lor.lhs.false26.i.if.end28_crit_edge
  %arrayidx30 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 13, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool31.not = icmp eq i8 %30, 0
  br i1 %tobool31.not, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %waitq_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %waitq_lock) #6
  %arrayidx35 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 %idxprom
  tail call void @skb_queue_tail(ptr noundef %arrayidx35, ptr noundef %skb) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %waitq_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end28.cleanup_crit_edge, %_rtl_mac_to_hwqueue.exit.cleanup_crit_edge, %lor.lhs.false26.i.cleanup_crit_edge, %if.then22.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge65, %if.end13.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end4.cleanup_crit_edge63, %if.end4.cleanup_crit_edge64, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end33 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ], [ false, %_rtl_mac_to_hwqueue.exit.cleanup_crit_edge ], [ false, %if.end28.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge65 ], [ false, %lor.lhs.false26.i.cleanup_crit_edge ], [ false, %if.then22.i.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge63 ], [ false, %if.end4.cleanup_crit_edge64 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_pci_enable_aspm(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %ndis_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 7
  %num4bytes9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 24, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %num4bytes9 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num4bytes9, align 4
  %support_aspm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 5
  %4 = ptrtoint ptr %support_aspm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %support_aspm, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcibridge_vendor7 = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter, i32 0, i32 7
  %6 = ptrtoint ptr %pcibridge_vendor7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pcibridge_vendor7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp = icmp eq i8 %7, 4
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.86) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %pcibridge_linkctrlreg = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter, i32 0, i32 12
  %8 = ptrtoint ptr %pcibridge_linkctrlreg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pcibridge_linkctrlreg, align 2
  %const_hostpci_aspm_setting = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %const_hostpci_aspm_setting to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %const_hostpci_aspm_setting, align 4
  %or71 = or i8 %11, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp18 = icmp eq i8 %7, 0
  %12 = and i8 %or71, -2
  %spec.select = select i1 %cmp18, i8 %12, i8 %or71
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %conv24 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv24, 2
  %call = tail call i32 @pci_write_config_byte(ptr noundef %14, i32 noundef %shl, i8 noundef zeroext %spec.select) #6
  %pcibridge_pciehdr_offset = getelementptr inbounds %struct.mp_adapter, ptr %ndis_adapter, i32 0, i32 11
  %15 = ptrtoint ptr %pcibridge_pciehdr_offset to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pcibridge_pciehdr_offset, align 1
  %conv26 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv26, 16
  %conv27 = zext i8 %spec.select to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.96, i32 noundef %add, i32 noundef %conv27) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #6
  %const_devicepci_aspm_setting = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 23
  %18 = ptrtoint ptr %const_devicepci_aspm_setting to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %const_devicepci_aspm_setting, align 1
  %20 = ptrtoint ptr %ndis_adapter to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ndis_adapter, align 4
  %or3272 = or i8 %21, %19
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %hw_type.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 10, i32 10
  %24 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hw_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp.not.i = icmp eq i16 %25, 2
  %26 = or i8 %or3272, 64
  %spec.select.i = select i1 %cmp.not.i, i8 %or3272, i8 %26
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %28, i32 noundef 128, i8 noundef zeroext %spec.select.i) #6
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %29 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_rfps_level, align 4
  %and35 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end12.if.end43_crit_edge, label %if.then37

if.end12.if.end43_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then37:                                        ; preds = %if.end12
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %dev.i74 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %33 = ptrtoint ptr %dev.i74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i74, align 4
  %call.i75 = tail call i32 @pci_write_config_byte(ptr noundef %34, i32 noundef 129, i8 noundef zeroext 1) #6
  %hw_type.i76 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 10, i32 10
  %35 = ptrtoint ptr %hw_type.i76 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hw_type.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %36)
  %cmp.i = icmp eq i16 %36, 2
  br i1 %cmp.i, label %if.then.i, label %if.then37._rtl_pci_switch_clk_req.exit_crit_edge

if.then37._rtl_pci_switch_clk_req.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_switch_clk_req.exit

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 21474800) #6
  br label %_rtl_pci_switch_clk_req.exit

_rtl_pci_switch_clk_req.exit:                     ; preds = %if.then.i, %if.then37._rtl_pci_switch_clk_req.exit_crit_edge
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %38 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_ps_level, align 4
  %or42 = or i32 %39, 2
  store i32 %or42, ptr %cur_ps_level, align 4
  br label %if.end43

if.end43:                                         ; preds = %_rtl_pci_switch_clk_req.exit, %if.end12.if.end43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 21474800) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_write8_async(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr, i8 noundef zeroext %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %pci_mem_start = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pci_mem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !230
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_write16_async(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr, i16 noundef zeroext %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %pci_mem_start = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 3
  %1 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pci_mem_start, align 4
  %3 = inttoptr i32 %2 to ptr
  %add.ptr = getelementptr i8, ptr %3, i32 %addr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #6, !srcloc !232
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_write32_async(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr, i32 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %pci_mem_start = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 3
  %1 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pci_mem_start, align 4
  %3 = inttoptr i32 %2 to ptr
  %add.ptr = getelementptr i8, ptr %3, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !234
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pci_read8_sync(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %pci_mem_start = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pci_mem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  ret i8 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @pci_read16_sync(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %pci_mem_start = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pci_mem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !237
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  ret i16 %4
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_read32_sync(ptr nocapture noundef readonly %rtlpriv, i32 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %pci_mem_start = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %pci_mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pci_mem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 %addr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !239
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl_pci_irq_tasklet(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %tcb_desc.i = alloca %struct.rtl_tcb_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1056
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %earlymode_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 10, i32 58
  %4 = ptrtoint ptr %earlymode_enable.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %earlymode_enable.i, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry._rtl_pci_tx_chk_waitq.exit_crit_edge, label %if.end.i

entry._rtl_pci_tx_chk_waitq.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_tx_chk_waitq.exit

if.end.i:                                         ; preds = %entry
  %supp_phymode_switch.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 15, i32 71
  %6 = ptrtoint ptr %supp_phymode_switch.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %supp_phymode_switch.i, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not.i = icmp eq i8 %7, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end16.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %switch_in_process.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %switch_in_process.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %switch_in_process.i, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i, label %land.lhs.true.i._rtl_pci_tx_chk_waitq.exit_crit_edge

land.lhs.true.i._rtl_pci_tx_chk_waitq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_tx_chk_waitq.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %buddy_priv.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %buddy_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buddy_priv.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %land.lhs.true10.i

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

land.lhs.true10.i:                                ; preds = %lor.lhs.false.i
  %switch_in_process13.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %switch_in_process13.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %switch_in_process13.i, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not.i = icmp eq i8 %13, 0
  br i1 %tobool14.not.i, label %land.lhs.true10.i.if.end16.i_crit_edge, label %land.lhs.true10.i._rtl_pci_tx_chk_waitq.exit_crit_edge

land.lhs.true10.i._rtl_pci_tx_chk_waitq.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_tx_chk_waitq.exit

land.lhs.true10.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true10.i.if.end16.i_crit_edge, %lor.lhs.false.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %tx_ring.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %act_scanning.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 9, i32 20
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 21, i32 24
  %waitq_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 7, i32 7
  %max_earlymode_num.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 10, i32 59
  %empkt_num.i.i = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc.i, i32 0, i32 8
  %intf_ops.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 33
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %if.end16.i
  %tid.082.i = phi i32 [ 7, %if.end16.i ], [ %dec.i, %while.end.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %tid.082.i to i8
  %call.i = call zeroext i8 @rtl_tid_to_ac(i8 noundef zeroext %conv.i) #6
  %14 = ptrtoint ptr %act_scanning.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %act_scanning.i, align 2, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not81.i = icmp eq i8 %15, 0
  br i1 %tobool19.not81.i, label %land.rhs.lr.ph.i, label %for.body.i.while.end.i_crit_edge

for.body.i.while.end.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %for.body.i
  %idxprom.i = zext i8 %call.i to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @ac_to_hwq, i32 0, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %idxprom17.i = zext i8 %17 to i32
  %arrayidx22.i = getelementptr %struct.rtl_priv, ptr %3, i32 0, i32 9, i32 23, i32 %tid.082.i
  %entries.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i, i32 0, i32 %idxprom17.i, i32 3
  %qlen.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i, i32 0, i32 %idxprom17.i, i32 4, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %18 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp20.i = icmp eq i32 %19, 0
  br i1 %cmp20.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tcb_desc.i) #6
  %20 = call ptr @memset(ptr %tcb_desc.i, i32 0, i32 56)
  call void @_raw_spin_lock(ptr noundef %waitq_lock.i) #6
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx22.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %arrayidx22.i
  br i1 %cmp.i.not.i, label %while.body.i.cleanup.thread.i_crit_edge, label %land.lhs.true25.i

while.body.i.cleanup.thread.i_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

land.lhs.true25.i:                                ; preds = %while.body.i
  %23 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entries.i, align 4
  %25 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i.i, align 4
  %sub.i = sub i32 %24, %26
  %27 = ptrtoint ptr %max_earlymode_num.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_earlymode_num.i, align 2
  %conv27.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv27.i)
  %cmp28.i = icmp ugt i32 %sub.i, %conv27.i
  br i1 %cmp28.i, label %if.then30.i, label %land.lhs.true25.i.cleanup.thread.i_crit_edge

land.lhs.true25.i.cleanup.thread.i_crit_edge:     ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.then30.i:                                      ; preds = %land.lhs.true25.i
  %call33.i = call ptr @skb_dequeue(ptr noundef %arrayidx22.i) #6
  call void @_raw_spin_unlock(ptr noundef %waitq_lock.i) #6
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call33.i, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool40.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool40.not.i, label %if.then30.i.cleanup.i_crit_edge, label %if.then41.i

if.then30.i.cleanup.i_crit_edge:                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %land.lhs.true25.i.cleanup.thread.i_crit_edge, %while.body.i.cleanup.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %waitq_lock.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tcb_desc.i) #6
  br label %while.end.i

if.then41.i:                                      ; preds = %if.then30.i
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  %hw_key.i.i = getelementptr inbounds %struct.sk_buff, ptr %call33.i, i32 0, i32 3, i32 28
  %33 = ptrtoint ptr %hw_key.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_key.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.then41.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then41.i.if.end.i.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  %icv_len.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %icv_len.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %icv_len.i.i, align 4
  %37 = add i8 %36, 4
  %phi.cast.i.i = zext i8 %37 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then41.i.if.end.i.i_crit_edge
  %additionlen.0.i.i = phi i32 [ %phi.cast.i.i, %if.then.i.i ], [ 4, %if.then41.i.if.end.i.i_crit_edge ]
  %38 = ptrtoint ptr %empkt_num.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %empkt_num.i.i, align 1
  %waitq_lock.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 7, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %waitq_lock.i.i) #6
  %arrayidx.i.i = getelementptr %struct.rtl_priv, ptr %32, i32 0, i32 9, i32 23, i32 %tid.082.i
  %max_earlymode_num.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 10, i32 59
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end27.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %next_skb.0.in.i.i = phi ptr [ %arrayidx.i.i, %if.end.i.i ], [ %next_skb.0.i.i, %if.end27.i.i.for.cond.i.i_crit_edge ]
  %39 = ptrtoint ptr %next_skb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %next_skb.0.i.i = load ptr, ptr %next_skb.0.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %next_skb.0.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i._rtl_update_earlymode_info.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i._rtl_update_earlymode_info.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_update_earlymode_info.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cb.i1.i.i = getelementptr inbounds %struct.sk_buff, ptr %next_skb.0.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %cb.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cb.i1.i.i, align 8
  %and.i.i = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool12.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool12.not.i.i, label %for.body.i.i._rtl_update_earlymode_info.exit.i_crit_edge, label %if.then13.i.i

for.body.i.i._rtl_update_earlymode_info.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_update_earlymode_info.exit.i

if.then13.i.i:                                    ; preds = %for.body.i.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %next_skb.0.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i, align 4
  %add15.i.i = add i32 %43, %additionlen.0.i.i
  %44 = ptrtoint ptr %empkt_num.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %empkt_num.i.i, align 1
  %idxprom17.i.i = zext i8 %45 to i32
  %arrayidx18.i.i = getelementptr %struct.rtl_tcb_desc, ptr %tcb_desc.i, i32 0, i32 9, i32 %idxprom17.i.i
  %46 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add15.i.i, ptr %arrayidx18.i.i, align 4
  %inc.i.i = add i8 %45, 1
  store i8 %inc.i.i, ptr %empkt_num.i.i, align 1
  %47 = ptrtoint ptr %next_skb.0.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %next_skb.0.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %48, %arrayidx.i.i
  br i1 %cmp.i.i.i, label %if.then13.i.i._rtl_update_earlymode_info.exit.i_crit_edge, label %if.end27.i.i

if.then13.i.i._rtl_update_earlymode_info.exit.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_update_earlymode_info.exit.i

if.end27.i.i:                                     ; preds = %if.then13.i.i
  %49 = ptrtoint ptr %max_earlymode_num.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %max_earlymode_num.i.i, align 2
  %cmp31.not.i.i = icmp ult i8 %inc.i.i, %50
  br i1 %cmp31.not.i.i, label %if.end27.i.i.for.cond.i.i_crit_edge, label %if.end27.i.i._rtl_update_earlymode_info.exit.i_crit_edge

if.end27.i.i._rtl_update_earlymode_info.exit.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_update_earlymode_info.exit.i

if.end27.i.i.for.cond.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

_rtl_update_earlymode_info.exit.i:                ; preds = %if.end27.i.i._rtl_update_earlymode_info.exit.i_crit_edge, %if.then13.i.i._rtl_update_earlymode_info.exit.i_crit_edge, %for.body.i.i._rtl_update_earlymode_info.exit.i_crit_edge, %for.cond.i.i._rtl_update_earlymode_info.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %waitq_lock.i.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %_rtl_update_earlymode_info.exit.i, %if.then30.i.cleanup.i_crit_edge
  %51 = ptrtoint ptr %intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %intf_ops.i, align 4
  %adapter_tx.i = getelementptr inbounds %struct.rtl_intf_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %adapter_tx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter_tx.i, align 4
  %call45.i = call i32 %54(ptr noundef %1, ptr noundef null, ptr noundef %call33.i, ptr noundef nonnull %tcb_desc.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tcb_desc.i) #6
  %55 = ptrtoint ptr %act_scanning.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %act_scanning.i, align 2, !range !225
  %tobool19.not.i = icmp eq i8 %56, 0
  br i1 %tobool19.not.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %cleanup.thread.i, %land.rhs.i.while.end.i_crit_edge, %for.body.i.while.end.i_crit_edge
  %dec.i = add nsw i32 %tid.082.i, -1
  %cmp.i.not = icmp eq i32 %tid.082.i, 0
  br i1 %cmp.i.not, label %while.end.i._rtl_pci_tx_chk_waitq.exit_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

while.end.i._rtl_pci_tx_chk_waitq.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl_pci_tx_chk_waitq.exit

_rtl_pci_tx_chk_waitq.exit:                       ; preds = %while.end.i._rtl_pci_tx_chk_waitq.exit_crit_edge, %land.lhs.true10.i._rtl_pci_tx_chk_waitq.exit_crit_edge, %land.lhs.true.i._rtl_pci_tx_chk_waitq.exit_crit_edge, %entry._rtl_pci_tx_chk_waitq.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl_pci_prepare_bcn_tasklet(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %tcb_desc = alloca %struct.rtl_tcb_desc, align 4
  %temp_one = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1080
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tcb_desc) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp_one) #6
  %4 = ptrtoint ptr %temp_one to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %temp_one, align 1
  %5 = call ptr @memset(ptr %tcb_desc, i32 0, i32 56)
  %arrayidx = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 5, i32 0, i32 0, i32 2
  %queue = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %7, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %7
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %entry.__skb_dequeue.exit_crit_edge, label %if.then.i

entry.__skb_dequeue.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %qlen.i.i = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %10 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %prev17.i.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %13, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %entry.__skb_dequeue.exit_crit_edge
  %use_new_trx_flow = getelementptr i8, ptr %t, i32 48564
  %16 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %buffer_desc = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 6, i32 0, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %buffer_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_desc, align 4
  %idx = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  %arrayidx5 = getelementptr %struct.rtl_tx_buffer_desc, ptr %19, i32 %21
  br label %if.end

if.else:                                          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %idx6 = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4
  %24 = ptrtoint ptr %idx6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx6, align 4
  %arrayidx7 = getelementptr %struct.rtl_tx_desc, ptr %23, i32 %25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %entry4.0 = phi ptr [ %arrayidx5, %if.then ], [ %arrayidx7, %if.else ]
  br i1 %tobool.not.i, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %cfg = getelementptr i8, ptr %t, i32 48288
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %get_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 38
  %32 = ptrtoint ptr %get_desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_desc, align 4
  %call11 = tail call i64 %33(ptr noundef %1, ptr noundef %entry4.0, i1 noundef zeroext true, i8 noundef zeroext 3) #6
  %conv = trunc i64 %call11 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %conv, i32 noundef %35, i32 noundef 1, i32 noundef 0) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %spec.store.select.i.i, i32 noundef 0) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %vif = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 9, i32 7
  %36 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vif, align 4
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %1, ptr noundef %37, ptr noundef null, ptr noundef null) #6
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool22.not = icmp eq i8 %43, 0
  br i1 %tobool22.not, label %if.end16.if.end26_crit_edge, label %if.then23

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %buffer_desc24 = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 6, i32 0, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %buffer_desc24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer_desc24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end16.if.end26_crit_edge
  %pbuffer_desc.0 = phi ptr [ %45, %if.then23 ], [ null, %if.end16.if.end26_crit_edge ]
  %cfg27 = getelementptr i8, ptr %t, i32 48288
  %46 = ptrtoint ptr %cfg27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg27, align 8
  %ops28 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ops28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops28, align 4
  %fill_tx_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %49, i32 0, i32 26
  %50 = ptrtoint ptr %fill_tx_desc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fill_tx_desc, align 4
  call void %51(ptr noundef %1, ptr noundef %39, ptr noundef %41, ptr noundef %pbuffer_desc.0, ptr noundef %cb.i, ptr noundef null, ptr noundef nonnull %call.i, i8 noundef zeroext 4, ptr noundef nonnull %tcb_desc) #6
  %prev.i.i = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %queue, ptr %call.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call.i, ptr %53, align 4
  %qlen.i.i.i = getelementptr %struct.rtl_priv, ptr %3, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %57 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %59 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool31.not = icmp eq i8 %60, 0
  br i1 %tobool31.not, label %if.end26.cleanup.sink.split_crit_edge, label %if.then32

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %temp_one to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %temp_one, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then32, %if.end26.cleanup.sink.split_crit_edge
  %pbuffer_desc.0.sink = phi ptr [ %pbuffer_desc.0, %if.then32 ], [ %41, %if.end26.cleanup.sink.split_crit_edge ]
  %62 = ptrtoint ptr %cfg27 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg27, align 8
  %ops34 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops34, align 4
  %set_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %65, i32 0, i32 37
  %66 = ptrtoint ptr %set_desc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_desc, align 4
  call void %67(ptr noundef %1, ptr noundef %pbuffer_desc.0.sink, i1 noundef zeroext true, i8 noundef zeroext 0, ptr noundef nonnull %temp_one) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp_one) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tcb_desc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_lps_change_work_callback(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_tid_to_ac(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl_pci_free_rx_ring(ptr nocapture noundef readonly %hw, i32 noundef %rxring_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %rxringcount = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxringcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp56 = icmp sgt i32 %3, 0
  br i1 %cmp56, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4
  %rxbuffersize = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx3 = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring, i32 0, i32 %rxring_idx, i32 3, i32 %i.057
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %cb = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb, align 8
  %10 = ptrtoint ptr %rxbuffersize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rxbuffersize, align 4
  %conv = zext i16 %11 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev4, i32 noundef %9, i32 noundef %conv, i32 noundef 2, i32 noundef 0) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %12 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxringcount, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %3, %entry.for.end_crit_edge ], [ %13, %cleanup.for.end_crit_edge ]
  %use_new_trx_flow = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %14 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %.lcssa, 4
  %rx_ring11 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4
  %buffer_desc = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring11, i32 0, i32 %rxring_idx, i32 4
  br label %if.end30

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul21 = shl i32 %.lcssa, 5
  %rx_ring22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4
  %arrayidx23 = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring22, i32 0, i32 %rxring_idx
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then7
  %arrayidx23.sink61 = phi ptr [ %arrayidx23, %if.else ], [ %buffer_desc, %if.then7 ]
  %mul21.sink = phi i32 [ %mul21, %if.else ], [ %mul, %if.then7 ]
  %18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %19 = ptrtoint ptr %arrayidx23.sink61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx23.sink61, align 4
  %dma26 = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %18, i32 0, i32 %rxring_idx, i32 1
  %21 = ptrtoint ptr %dma26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma26, align 4
  tail call void @dma_free_attrs(ptr noundef %dev19, i32 noundef %mul21.sink, ptr noundef %20, i32 noundef %22, i32 noundef 0) #6
  %23 = ptrtoint ptr %arrayidx23.sink61 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx23.sink61, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl_pci_free_tx_ring(ptr noundef %hw, i32 noundef %prio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %arrayidx = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio
  %qlen.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 4, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not53 = icmp eq i32 %3, 0
  br i1 %tobool.not53, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %queue = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 4
  %use_new_trx_flow = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %buffer_desc = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 5
  %idx = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 2
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %entries = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %39, %if.end.while.body_crit_edge ]
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %6, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %6
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %4, -1
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %8 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %prev17.i.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %11, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %while.body.__skb_dequeue.exit_crit_edge
  %14 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.else, label %if.then

if.then:                                          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %buffer_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer_desc, align 4
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  %arrayidx7 = getelementptr %struct.rtl_tx_buffer_desc, ptr %17, i32 %19
  br label %if.end

if.else:                                          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  %arrayidx9 = getelementptr %struct.rtl_tx_desc, ptr %21, i32 %23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %entry3.0 = phi ptr [ %arrayidx7, %if.then ], [ %arrayidx9, %if.else ]
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %get_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 38
  %30 = ptrtoint ptr %get_desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_desc, align 4
  %call11 = tail call i64 %31(ptr noundef %hw, ptr noundef %entry3.0, i1 noundef zeroext true, i8 noundef zeroext 3) #6
  %conv = trunc i64 %call11 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %conv, i32 noundef %33, i32 noundef 1, i32 noundef 0) #6
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #6
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 4
  %add = add i32 %35, 1
  %36 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %37
  store i32 %rem, ptr %idx, align 4
  %38 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i, align 4
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %entries16 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 3
  %42 = ptrtoint ptr %entries16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %entries16, align 4
  %mul = shl i32 %43, 6
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %dma = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 1
  %46 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev15, i32 noundef %mul, ptr noundef %45, i32 noundef %47, i32 noundef 0) #6
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx, align 4
  %use_new_trx_flow19 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %49 = ptrtoint ptr %use_new_trx_flow19 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %use_new_trx_flow19, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool20.not = icmp eq i8 %50, 0
  br i1 %tobool20.not, label %while.end.if.end28_crit_edge, label %if.then21

while.end.if.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %entries16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %entries16, align 4
  %mul25 = shl i32 %54, 6
  %buffer_desc26 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 5
  %55 = ptrtoint ptr %buffer_desc26 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer_desc26, align 4
  %buffer_desc_dma = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 6
  %57 = ptrtoint ptr %buffer_desc_dma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buffer_desc_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev23, i32 noundef %mul25, ptr noundef %56, i32 noundef %58, i32 noundef 0) #6
  %59 = ptrtoint ptr %buffer_desc26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %buffer_desc26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %while.end.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl_pci_init_one_rxdesc(ptr noundef %hw, ptr noundef %new_skb, ptr noundef %entry1, i32 noundef %rxring_idx, i32 noundef %desc_idx) unnamed_addr #0 align 64 {
entry:
  %bufferaddress = alloca i32, align 4
  %tmp_one = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bufferaddress) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_one) #6
  %2 = ptrtoint ptr %tmp_one to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tmp_one, align 1
  %tobool.not = icmp eq ptr %new_skb, null
  br i1 %tobool.not, label %if.end, label %entry.remap_crit_edge, !prof !227

entry.remap_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %remap

if.end:                                           ; preds = %entry
  %rxbuffersize = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %rxbuffersize to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rxbuffersize, align 4
  %conv = zext i16 %4 to i32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv, i32 noundef 2592) #6
  %tobool6.not = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end.remap_crit_edge

if.end.remap_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %remap

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

remap:                                            ; preds = %if.end.remap_crit_edge, %entry.remap_crit_edge
  %skb.0 = phi ptr [ %call.i.i, %if.end.remap_crit_edge ], [ %new_skb, %entry.remap_crit_edge ]
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %rxbuffersize11 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %rxbuffersize11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rxbuffersize11, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %remap
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !226

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev9) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %remap
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = zext i16 %10 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev9, ptr noundef %8, i32 noundef %conv12) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev9, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %conv12, i32 noundef 2, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %cb, align 8
  %18 = ptrtoint ptr %bufferaddress to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %bufferaddress, align 4
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev18, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end22

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %dma_map_single_attrs.exit
  %rx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4
  %arrayidx23 = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring, i32 0, i32 %rxring_idx, i32 3, i32 %desc_idx
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %skb.0, ptr %arrayidx23, align 4
  %use_new_trx_flow = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %22 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  %cfg28 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %24 = ptrtoint ptr %cfg28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg28, align 8
  %ops29 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ops29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops29, align 4
  %set_desc30 = getelementptr inbounds %struct.rtl_hal_ops, ptr %27, i32 0, i32 37
  %28 = ptrtoint ptr %set_desc30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_desc30, align 4
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %29(ptr noundef %hw, ptr noundef %entry1, i1 noundef zeroext false, i8 noundef zeroext 7, ptr noundef %cb) #6
  br label %cleanup

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void %29(ptr noundef %hw, ptr noundef %entry1, i1 noundef zeroext false, i8 noundef zeroext 4, ptr noundef nonnull %bufferaddress) #6
  %30 = ptrtoint ptr %cfg28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg28, align 8
  %ops32 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ops32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops32, align 4
  %set_desc33 = getelementptr inbounds %struct.rtl_hal_ops, ptr %33, i32 0, i32 37
  %34 = ptrtoint ptr %set_desc33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_desc33, align 4
  call void %35(ptr noundef %hw, ptr noundef %entry1, i1 noundef zeroext false, i8 noundef zeroext 5, ptr noundef %rxbuffersize11) #6
  %36 = ptrtoint ptr %cfg28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg28, align 8
  %ops36 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ops36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops36, align 4
  %set_desc37 = getelementptr inbounds %struct.rtl_hal_ops, ptr %39, i32 0, i32 37
  %40 = ptrtoint ptr %set_desc37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_desc37, align 4
  call void %41(ptr noundef %hw, ptr noundef %entry1, i1 noundef zeroext false, i8 noundef zeroext 1, ptr noundef nonnull %tmp_one) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then25, %dma_map_single_attrs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.then25 ], [ 0, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_one) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufferaddress) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl_pci_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %intvec = alloca %struct.rtl_int, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %intvec) #6
  %2 = call ptr @memset(ptr %intvec, i32 0, i32 16)
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %3 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %irq_enabled, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body6:                                         ; preds = %entry
  %irq_th_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock) #6
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %disable_interrupt = getelementptr inbounds %struct.rtl_hal_ops, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %disable_interrupt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disable_interrupt, align 4
  tail call void %10(ptr noundef %dev_id) #6
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 8
  %ops13 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops13, align 4
  %interrupt_recognized = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %interrupt_recognized to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt_recognized, align 4
  call void %16(ptr noundef %dev_id, ptr noundef nonnull %intvec) #6
  %17 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %intvec, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %18, label %if.end19 [
    i32 0, label %do.body6.done_crit_edge
    i32 65535, label %do.body6.done_crit_edge325
  ]

do.body6.done_crit_edge325:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.body6.done_crit_edge:                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end19:                                         ; preds = %do.body6
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 8
  %arrayidx = getelementptr %struct.rtl_hal_cfg, ptr %21, i32 0, i32 8, i32 60
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %and = and i32 %23, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end19.if.end24_crit_edge, label %if.then23

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.64) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %24 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intvec, align 4
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg, align 8
  %arrayidx28 = getelementptr %struct.rtl_hal_cfg, ptr %27, i32 0, i32 8, i32 62
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx28, align 4
  %and29 = and i32 %29, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end24.if.end34_crit_edge, label %if.then33, !prof !226

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.65) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end24.if.end34_crit_edge
  %30 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %intvec, align 4
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg, align 8
  %arrayidx38 = getelementptr %struct.rtl_hal_cfg, ptr %33, i32 0, i32 8, i32 57
  %34 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %35, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end34.if.end42_crit_edge, label %if.then41

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.66) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end34.if.end42_crit_edge
  %36 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intvec, align 4
  %38 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg, align 8
  %arrayidx46 = getelementptr %struct.rtl_hal_cfg, ptr %39, i32 0, i32 8, i32 52
  %40 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx46, align 4
  %and47 = and i32 %41, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end42.if.end50_crit_edge, label %if.then49

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then49:                                        ; preds = %if.end42
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.67) #6
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 6, i32 1
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then49.if.end50_crit_edge

if.then49.if.end50_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then.i:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %irq_prepare_bcn_tasklet = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 6
  call void @__tasklet_schedule(ptr noundef %irq_prepare_bcn_tasklet) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then.i, %if.then49.if.end50_crit_edge, %if.end42.if.end50_crit_edge
  %intb = getelementptr inbounds %struct.rtl_int, ptr %intvec, i32 0, i32 1
  %42 = ptrtoint ptr %intb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %intb, align 4
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg, align 8
  %arrayidx53 = getelementptr %struct.rtl_hal_cfg, ptr %45, i32 0, i32 8, i32 50
  %46 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx53, align 4
  %and54 = and i32 %47, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end50.if.end63_crit_edge, label %if.then62, !prof !226

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then62:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.68) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end50.if.end63_crit_edge
  %48 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %intvec, align 4
  %50 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg, align 8
  %arrayidx67 = getelementptr %struct.rtl_hal_cfg, ptr %51, i32 0, i32 8, i32 61
  %52 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx67, align 4
  %and68 = and i32 %53, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end63.if.end71_crit_edge, label %if.then70

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.69) #6
  call fastcc void @_rtl_pci_tx_isr(ptr noundef %dev_id, i32 noundef 6)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end63.if.end71_crit_edge
  %54 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %intvec, align 4
  %56 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg, align 8
  %arrayidx75 = getelementptr %struct.rtl_hal_cfg, ptr %57, i32 0, i32 8, i32 58
  %58 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx75, align 4
  %and76 = and i32 %59, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end71.if.end79_crit_edge, label %if.then78

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then78:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.70) #6
  call fastcc void @_rtl_pci_tx_isr(ptr noundef %dev_id, i32 noundef 7)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end71.if.end79_crit_edge
  %60 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %intvec, align 4
  %62 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg, align 8
  %arrayidx83 = getelementptr %struct.rtl_hal_cfg, ptr %63, i32 0, i32 8, i32 63
  %64 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx83, align 4
  %and84 = and i32 %65, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end79.if.end87_crit_edge, label %if.then86

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then86:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %num_tx_inperiod = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 4
  %66 = ptrtoint ptr %num_tx_inperiod to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_tx_inperiod, align 8
  %inc = add i32 %67, 1
  store i32 %inc, ptr %num_tx_inperiod, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.71) #6
  call fastcc void @_rtl_pci_tx_isr(ptr noundef %dev_id, i32 noundef 0)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end79.if.end87_crit_edge
  %68 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %intvec, align 4
  %70 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg, align 8
  %arrayidx91 = getelementptr %struct.rtl_hal_cfg, ptr %71, i32 0, i32 8, i32 64
  %72 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx91, align 4
  %and92 = and i32 %73, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end87.if.end98_crit_edge, label %if.then94

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then94:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %num_tx_inperiod96 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 4
  %74 = ptrtoint ptr %num_tx_inperiod96 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_tx_inperiod96, align 8
  %inc97 = add i32 %75, 1
  store i32 %inc97, ptr %num_tx_inperiod96, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.72) #6
  call fastcc void @_rtl_pci_tx_isr(ptr noundef %dev_id, i32 noundef 1)
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end87.if.end98_crit_edge
  %76 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %intvec, align 4
  %78 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg, align 8
  %arrayidx102 = getelementptr %struct.rtl_hal_cfg, ptr %79, i32 0, i32 8, i32 65
  %80 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx102, align 4
  %and103 = and i32 %81, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end98.if.end109_crit_edge, label %if.then105

if.end98.if.end109_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then105:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %num_tx_inperiod107 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 4
  %82 = ptrtoint ptr %num_tx_inperiod107 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_tx_inperiod107, align 8
  %inc108 = add i32 %83, 1
  store i32 %inc108, ptr %num_tx_inperiod107, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.73) #6
  call fastcc void @_rtl_pci_tx_isr(ptr noundef %dev_id, i32 noundef 2)
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %if.end98.if.end109_crit_edge
  %84 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %intvec, align 4
  %86 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg, align 8
  %arrayidx113 = getelementptr %struct.rtl_hal_cfg, ptr %87, i32 0, i32 8, i32 66
  %88 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx113, align 4
  %and114 = and i32 %89, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end109.if.end120_crit_edge, label %if.then116

if.end109.if.end120_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then116:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  %num_tx_inperiod118 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 4
  %90 = ptrtoint ptr %num_tx_inperiod118 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_tx_inperiod118, align 8
  %inc119 = add i32 %91, 1
  store i32 %inc119, ptr %num_tx_inperiod118, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.74) #6
  call fastcc void @_rtl_pci_tx_isr(ptr noundef %dev_id, i32 noundef 3)
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end109.if.end120_crit_edge
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %92 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %93)
  %cmp122 = icmp eq i16 %93, 15
  br i1 %cmp122, label %if.then124, label %if.end120.if.end135_crit_edge

if.end120.if.end135_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then124:                                       ; preds = %if.end120
  %intd = getelementptr inbounds %struct.rtl_int, ptr %intvec, i32 0, i32 3
  %94 = ptrtoint ptr %intd to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %intd, align 4
  %96 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg, align 8
  %arrayidx127 = getelementptr %struct.rtl_hal_cfg, ptr %97, i32 0, i32 8, i32 56
  %98 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx127, align 4
  %and128 = and i32 %99, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.then124.if.end135thread-pre-split_crit_edge, label %if.then130

if.then124.if.end135thread-pre-split_crit_edge:   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135thread-pre-split

if.then130:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  %num_tx_inperiod132 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 4
  %100 = ptrtoint ptr %num_tx_inperiod132 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_tx_inperiod132, align 8
  %inc133 = add i32 %101, 1
  store i32 %inc133, ptr %num_tx_inperiod132, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.75) #6
  call fastcc void @_rtl_pci_tx_isr(ptr noundef %dev_id, i32 noundef 5)
  br label %if.end135thread-pre-split

if.end135thread-pre-split:                        ; preds = %if.then130, %if.then124.if.end135thread-pre-split_crit_edge
  %102 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %102)
  %.pr = load i16, ptr %hw_type, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.end135thread-pre-split, %if.end120.if.end135_crit_edge
  %103 = phi i16 [ %.pr, %if.end135thread-pre-split ], [ %93, %if.end120.if.end135_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %103)
  %cmp138 = icmp eq i16 %103, 2
  br i1 %cmp138, label %if.then140, label %if.end135.if.end152_crit_edge

if.end135.if.end152_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then140:                                       ; preds = %if.end135
  %104 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %intvec, align 4
  %106 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg, align 8
  %arrayidx144 = getelementptr %struct.rtl_hal_cfg, ptr %107, i32 0, i32 8, i32 59
  %108 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx144, align 4
  %and145 = and i32 %109, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.then140.if.end152_crit_edge, label %if.then147

if.then140.if.end152_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then147:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  %num_tx_inperiod149 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 4
  %110 = ptrtoint ptr %num_tx_inperiod149 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_tx_inperiod149, align 8
  %inc150 = add i32 %111, 1
  store i32 %inc150, ptr %num_tx_inperiod149, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.76) #6
  call fastcc void @_rtl_pci_tx_isr(ptr noundef %dev_id, i32 noundef 5)
  br label %if.end152

if.end152:                                        ; preds = %if.then147, %if.then140.if.end152_crit_edge, %if.end135.if.end152_crit_edge
  %112 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %intvec, align 4
  %114 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg, align 8
  %arrayidx156 = getelementptr %struct.rtl_hal_cfg, ptr %115, i32 0, i32 8, i32 67
  %116 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx156, align 4
  %and157 = and i32 %117, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end152.if.end160_crit_edge, label %if.then159

if.end152.if.end160_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

if.then159:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.77) #6
  call fastcc void @_rtl_pci_rx_interrupt(ptr noundef %dev_id)
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end152.if.end160_crit_edge
  %118 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %intvec, align 4
  %120 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg, align 8
  %arrayidx164 = getelementptr %struct.rtl_hal_cfg, ptr %121, i32 0, i32 8, i32 54
  %122 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx164, align 4
  %and165 = and i32 %123, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end160.if.end174_crit_edge, label %if.then173, !prof !226

if.end160.if.end174_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then173:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.78) #6
  call fastcc void @_rtl_pci_rx_interrupt(ptr noundef %dev_id)
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %if.end160.if.end174_crit_edge
  %124 = ptrtoint ptr %intb to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %intb, align 4
  %126 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cfg, align 8
  %arrayidx178 = getelementptr %struct.rtl_hal_cfg, ptr %127, i32 0, i32 8, i32 53
  %128 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx178, align 4
  %and179 = and i32 %129, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end174.if.end188_crit_edge, label %if.then187, !prof !226

if.end174.if.end188_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

if.then187:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.79) #6
  call fastcc void @_rtl_pci_rx_interrupt(ptr noundef %dev_id)
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %if.end174.if.end188_crit_edge
  %130 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %131)
  %cmp191 = icmp eq i16 %131, 8
  br i1 %cmp191, label %if.then193, label %if.end188.if.end205_crit_edge

if.end188.if.end205_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end205

if.then193:                                       ; preds = %if.end188
  %132 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %intvec, align 4
  %134 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cfg, align 8
  %arrayidx197 = getelementptr %struct.rtl_hal_cfg, ptr %135, i32 0, i32 8, i32 70
  %136 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx197, align 4
  %and198 = and i32 %137, %133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.then193.if.end205_crit_edge, label %if.then200

if.then193.if.end205_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end205

if.then200:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.80) #6
  %rtl_wq = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 7
  %138 = ptrtoint ptr %rtl_wq to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rtl_wq, align 4
  %fwevt_wq = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 13
  %call.i319 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %139, ptr noundef %fwevt_wq, i32 noundef 0) #6
  br label %if.end205

if.end205:                                        ; preds = %if.then200, %if.then193.if.end205_crit_edge, %if.end188.if.end205_crit_edge
  %140 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %hw_type, align 8
  %142 = and i16 %141, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %142)
  %switch = icmp eq i16 %142, 10
  br i1 %switch, label %if.then215, label %if.end205.if.end230_crit_edge

if.end205.if.end230_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230

if.then215:                                       ; preds = %if.end205
  %143 = ptrtoint ptr %intvec to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %intvec, align 4
  %145 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg, align 8
  %arrayidx219 = getelementptr %struct.rtl_hal_cfg, ptr %146, i32 0, i32 8, i32 68
  %147 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx219, align 4
  %and220 = and i32 %148, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %if.then215.if.end230_crit_edge, label %if.then228, !prof !226

if.then215.if.end230_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230

if.then228:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 5, ptr noundef nonnull @.str.81) #6
  call fastcc void @_rtl_pci_hs_interrupt(ptr noundef %dev_id)
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.then215.if.end230_crit_edge, %if.end205.if.end230_crit_edge
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %149 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %earlymode_enable, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool232.not = icmp eq i8 %150, 0
  br i1 %tobool232.not, label %if.end230.done_crit_edge, label %if.then233

if.end230.done_crit_edge:                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then233:                                       ; preds = %if.end230
  %state.i320 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 5, i32 1
  %call.i321 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i320) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool.not.i322 = icmp eq i32 %call.i321, 0
  br i1 %tobool.not.i322, label %if.then.i323, label %if.then233.done_crit_edge

if.then233.done_crit_edge:                        ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then.i323:                                     ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  %irq_tasklet = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 5
  call void @__tasklet_schedule(ptr noundef %irq_tasklet) #6
  br label %done

done:                                             ; preds = %if.then.i323, %if.then233.done_crit_edge, %if.end230.done_crit_edge, %do.body6.done_crit_edge, %do.body6.done_crit_edge325
  %151 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg, align 8
  %ops237 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %ops237 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops237, align 4
  %enable_interrupt = getelementptr inbounds %struct.rtl_hal_ops, ptr %154, i32 0, i32 9
  %155 = ptrtoint ptr %enable_interrupt to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %enable_interrupt, align 4
  call void %156(ptr noundef %dev_id) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %intvec) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl_pci_tx_isr(ptr noundef %hw, i32 noundef %prio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %arrayidx = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio
  %queue = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 4
  %qlen.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 4, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not172 = icmp eq i32 %3, 0
  br i1 %tobool.not172, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %use_new_trx_flow = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %buffer_desc = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 5
  %idx = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 2
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %conv = trunc i32 %prio to i8
  %entries = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %prio, i32 3
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %prio)
  %cmp = icmp eq i32 %prio, 5
  %offchan_delay = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 13
  %state_inap = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 27
  br label %while.body

while.body:                                       ; preds = %cleanup81.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %buffer_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_desc, align 4
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  %arrayidx5 = getelementptr %struct.rtl_tx_buffer_desc, ptr %7, i32 %9
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  %arrayidx7 = getelementptr %struct.rtl_tx_desc, ptr %11, i32 %13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %entry3.0 = phi ptr [ %arrayidx5, %if.then ], [ %arrayidx7, %if.else ]
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %is_tx_desc_closed = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 39
  %18 = ptrtoint ptr %is_tx_desc_closed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %is_tx_desc_closed, align 4
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  %conv9 = trunc i32 %21 to i16
  %call10 = tail call zeroext i1 %19(ptr noundef %hw, i8 noundef zeroext %conv, i16 noundef zeroext %conv9) #6
  br i1 %call10, label %if.end12, label %if.end.cleanup99_crit_edge

if.end.cleanup99_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

if.end12:                                         ; preds = %if.end
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  %add = add i32 %23, 1
  %24 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %25
  store i32 %rem, ptr %idx, align 4
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %27, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %27
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %if.end12.__skb_dequeue.exit_crit_edge, label %if.then.i

if.end12.__skb_dequeue.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %30 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %33, ptr %prev17.i.i, align 4
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %31, ptr %33, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %if.end12.__skb_dequeue.exit_crit_edge
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg, align 8
  %ops19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops19, align 4
  %get_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %41, i32 0, i32 38
  %42 = ptrtoint ptr %get_desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_desc, align 4
  %call20 = tail call i64 %43(ptr noundef %hw, ptr noundef %entry3.0, i1 noundef zeroext true, i8 noundef zeroext 3) #6
  %conv21 = trunc i64 %call20 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev17, i32 noundef %conv21, i32 noundef %45, i32 noundef 1, i32 noundef 0) #6
  %46 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %earlymode_enable, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool22.not = icmp eq i8 %47, 0
  br i1 %tobool22.not, label %__skb_dequeue.exit.if.end25_crit_edge, label %if.then23

__skb_dequeue.exit.if.end25_crit_edge:            ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call ptr @skb_pull(ptr noundef %spec.store.select.i.i, i32 noundef 8) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %__skb_dequeue.exit.if.end25_crit_edge
  %48 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idx, align 4
  %50 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %53, i32 22
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr, align 2
  %conv29 = zext i16 %55 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 144, i32 noundef 5, ptr noundef nonnull @.str.82, i32 noundef %49, i32 noundef %51, i32 noundef %conv29) #6
  br i1 %cmp, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %spec.store.select.i.i) #6
  br label %cleanup81thread-pre-split

if.end32:                                         ; preds = %if.end25
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 2
  %60 = and i16 %59, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %60)
  %cmp.i = icmp eq i16 %60, 18432
  br i1 %cmp.i, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end32
  %61 = and i16 %59, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp.i161.not = icmp eq i16 %61, 0
  br i1 %cmp.i161.not, label %if.then35.if.end52.sink.split_crit_edge, label %if.then37

if.then35.if.end52.sink.split_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.sink.split

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %offchan_delay to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %offchan_delay, align 4
  br label %if.end52.sink.split

if.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %60)
  %cmp.i162 = icmp eq i16 %60, -12288
  br i1 %cmp.i162, label %if.then44, label %if.end42.if.end52_crit_edge

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then44:                                        ; preds = %if.end42
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %64, i32 0, i32 6
  %u46 = getelementptr inbounds %struct.anon.162, ptr %u, i32 0, i32 1
  %65 = ptrtoint ptr %u46 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %u46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp48 = icmp eq i8 %66, 1
  br i1 %cmp48, label %cleanup, label %if.then44.if.end52_crit_edge

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

cleanup:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %spec.store.select.i.i) #6
  br label %cleanup81thread-pre-split

if.end52.sink.split:                              ; preds = %if.then37, %if.then35.if.end52.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then37 ], [ 0, %if.then35.if.end52.sink.split_crit_edge ]
  %67 = ptrtoint ptr %state_inap to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink, ptr %state_inap, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.then44.if.end52_crit_edge, %if.end42.if.end52_crit_edge
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %69, align 2
  %72 = and i16 %71, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %72)
  %cmp.i.i.i.i = icmp eq i16 %72, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %69, i32 %retval.0.v.i.i.i
  %73 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %retval.0.i.i.i, align 1
  %75 = and i8 %74, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %75)
  %cmp56 = icmp ult i8 %75, 8
  br i1 %cmp56, label %if.then58, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %conv55 = zext i8 %75 to i32
  %arrayidx59 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 12, i32 %conv55
  %76 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx59, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %arrayidx59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end52.if.end60_crit_edge
  br i1 %cmp.i, label %if.else67, label %if.then66, !prof !227

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3
  %count.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 9
  %78 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 12
  %79 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 15
  %80 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 18
  %81 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 20
  %82 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %83 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cb.i, align 8
  %or = or i32 %84, 512
  store i32 %or, ptr %cb.i, align 8
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %hw, ptr noundef %spec.store.select.i.i) #6
  br label %if.end68

if.else67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl_tx_ackqueue(ptr noundef %hw, ptr noundef %spec.store.select.i.i) #6
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  %85 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %entries, align 4
  %87 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %qlen.i, align 4
  %sub = sub i32 %86, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp72 = icmp ult i32 %sub, 5
  br i1 %cmp72, label %if.then74, label %if.end68.cleanup81_crit_edge

if.end68.cleanup81_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup81

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %idx, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.83, i32 noundef %prio, i32 noundef %90, i32 noundef %88) #6
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 10
  %91 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %queue_mapping.i, align 8
  %conv79 = zext i16 %92 to i32
  tail call void @ieee80211_wake_queue(ptr noundef %hw, i32 noundef %conv79) #6
  br label %cleanup81thread-pre-split

cleanup81thread-pre-split:                        ; preds = %if.then74, %cleanup, %if.then31
  %93 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr = load i32, ptr %qlen.i, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %cleanup81thread-pre-split, %if.end68.cleanup81_crit_edge
  %94 = phi i32 [ %.pr, %cleanup81thread-pre-split ], [ %88, %if.end68.cleanup81_crit_edge ]
  %tobool.not = icmp eq i32 %94, 0
  br i1 %tobool.not, label %cleanup81.while.end_crit_edge, label %cleanup81.while.body_crit_edge

cleanup81.while.body_crit_edge:                   ; preds = %cleanup81
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup81.while.end_crit_edge:                    ; preds = %cleanup81
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup81.while.end_crit_edge, %entry.while.end_crit_edge
  %num_rx_inperiod = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 5
  %95 = ptrtoint ptr %num_rx_inperiod to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_rx_inperiod, align 4
  %num_tx_inperiod = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 4
  %97 = ptrtoint ptr %num_tx_inperiod to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_tx_inperiod, align 8
  %add90 = add i32 %98, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add90)
  %cmp91 = icmp ugt i32 %add90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp95 = icmp ugt i32 %96, 2
  %or.cond = or i1 %cmp95, %cmp91
  br i1 %or.cond, label %if.then97, label %while.end.cleanup99_crit_edge

while.end.cleanup99_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup99

if.then97:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl_lps_leave(ptr noundef %hw, i1 noundef zeroext false) #6
  br label %cleanup99

cleanup99:                                        ; preds = %if.then97, %while.end.cleanup99_crit_edge, %if.end.cleanup99_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl_pci_rx_interrupt(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %rx_status = alloca %struct.ieee80211_rx_status, align 8
  %tmp_one = alloca i8, align 1
  %stats = alloca %struct.rtl_stats, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_status) #6
  %2 = call ptr @memset(ptr %rx_status, i32 0, i32 48)
  %rxringcount = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rxringcount, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_one) #6
  %5 = ptrtoint ptr %tmp_one to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %tmp_one, align 1, !annotation !224
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %stats) #6
  %6 = call ptr @memset(ptr %stats, i32 0, i32 152)
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %rx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not383 = icmp eq i32 %4, 0
  br i1 %tobool.not383, label %entry.cleanup220_crit_edge, label %while.body.lr.ph

entry.cleanup220_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup220

while.body.lr.ph:                                 ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4, i32 2
  %idx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4, i32 1, i32 1
  %use_new_trx_flow = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 50
  %buffer_desc14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 9, i32 23, i32 5, i32 2, i32 0, i32 0, i32 4, i32 2
  %rxbuffersize = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 2
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 23
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 24
  %packet_report_type = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 49
  %crc = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 19
  %rxbytesunicast = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 24, i32 3
  %num_rx_inperiod = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 5
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %.fca.1.gep = getelementptr inbounds [6 x i64], ptr %rx_status, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [6 x i64], ptr %rx_status, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [6 x i64], ptr %rx_status, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [6 x i64], ptr %rx_status, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [6 x i64], ptr %rx_status, i32 0, i32 5
  %next_rx_rp = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 9, i32 23, i32 5, i32 2, i32 0, i32 0, i32 4, i32 3
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %num_tx_inperiod = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dec386.in = phi i32 [ %4, %while.body.lr.ph ], [ %dec386, %cleanup.while.body_crit_edge ]
  %rx_remained_cnt.0385 = phi i32 [ 0, %while.body.lr.ph ], [ %rx_remained_cnt.4, %cleanup.while.body_crit_edge ]
  %unicast.0.off0384 = phi i1 [ false, %while.body.lr.ph ], [ %unicast.3.off0, %cleanup.while.body_crit_edge ]
  %dec386 = add i32 %dec386.in, -1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %arrayidx5 = getelementptr [512 x ptr], ptr %rx_buf, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5, align 4
  %11 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_remained_cnt.0385)
  %cmp = icmp eq i32 %rx_remained_cnt.0385, 0
  br i1 %cmp, label %if.end, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %rx_desc_buff_remained_cnt = getelementptr inbounds %struct.rtl_hal_ops, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %rx_desc_buff_remained_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_desc_buff_remained_cnt, align 4
  %call = call zeroext i16 %18(ptr noundef %hw, i8 noundef zeroext 0) #6
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp8 = icmp eq i16 %call, 0
  br i1 %cmp8, label %if.end.cleanup220_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.cleanup220_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup220

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %rx_remained_cnt.1378 = phi i32 [ %conv, %if.end.if.end11_crit_edge ], [ %rx_remained_cnt.0385, %if.then.if.end11_crit_edge ]
  %19 = ptrtoint ptr %buffer_desc14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer_desc14, align 4
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx, align 4
  %arrayidx18 = getelementptr %struct.rtl_rx_buffer_desc, ptr %20, i32 %22
  %data = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  br label %if.end32

if.else:                                          ; preds = %while.body
  %25 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_ring, align 4
  %arrayidx24 = getelementptr %struct.rtl_rx_desc, ptr %26, i32 %8
  %27 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg, align 8
  %ops26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ops26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops26, align 4
  %get_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %30, i32 0, i32 38
  %31 = ptrtoint ptr %get_desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_desc, align 4
  %call27 = call i64 %32(ptr noundef %hw, ptr noundef %arrayidx24, i1 noundef zeroext false, i8 noundef zeroext 0) #6
  %conv28 = trunc i64 %call27 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv28)
  %tobool29.not = icmp eq i8 %conv28, 0
  br i1 %tobool29.not, label %if.else.if.end32_crit_edge, label %if.else.cleanup220_crit_edge

if.else.cleanup220_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup220

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.end11
  %rx_remained_cnt.2 = phi i32 [ %rx_remained_cnt.1378, %if.end11 ], [ %rx_remained_cnt.0385, %if.else.if.end32_crit_edge ]
  %buffer_desc.0 = phi ptr [ %arrayidx18, %if.end11 ], [ null, %if.else.if.end32_crit_edge ]
  %pdesc.0 = phi ptr [ %24, %if.end11 ], [ %arrayidx24, %if.else.if.end32_crit_edge ]
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %cb = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %35 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cb, align 8
  %37 = ptrtoint ptr %rxbuffersize to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rxbuffersize, align 4
  %conv35 = zext i16 %38 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev33, i32 noundef %36, i32 noundef %conv35, i32 noundef 2, i32 noundef 0) #6
  %39 = ptrtoint ptr %rxbuffersize to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rxbuffersize, align 4
  %conv37 = zext i16 %40 to i32
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv37, i32 noundef 2592) #6
  %tobool39.not = icmp eq ptr %call.i.i, null
  br i1 %tobool39.not, label %if.end32.no_new_crit_edge, label %if.end44, !prof !227

if.end32.no_new_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_new

if.end44:                                         ; preds = %if.end32
  %41 = call ptr @memset(ptr %rx_status, i32 0, i32 48)
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg, align 8
  %ops46 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops46, align 4
  %query_rx_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 30
  %46 = ptrtoint ptr %query_rx_desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %query_rx_desc, align 4
  %call47 = call zeroext i1 %47(ptr noundef %hw, ptr noundef nonnull %stats, ptr noundef nonnull %rx_status, ptr noundef %pdesc.0, ptr noundef %10) #6
  %48 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool49.not = icmp eq i8 %49, 0
  br i1 %tobool49.not, label %if.end44.if.end53_crit_edge, label %if.then50

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg, align 8
  %ops52 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops52, align 4
  %rx_check_dma_ok = getelementptr inbounds %struct.rtl_hal_ops, ptr %53, i32 0, i32 25
  %54 = ptrtoint ptr %rx_check_dma_ok to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_check_dma_ok, align 4
  call void %55(ptr noundef %hw, ptr noundef %buffer_desc.0, i8 noundef zeroext 0) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end44.if.end53_crit_edge
  %56 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg, align 8
  %ops55 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ops55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops55, align 4
  %get_desc56 = getelementptr inbounds %struct.rtl_hal_ops, ptr %59, i32 0, i32 38
  %60 = ptrtoint ptr %get_desc56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_desc56, align 4
  %call57 = call i64 %61(ptr noundef %hw, ptr noundef %pdesc.0, i1 noundef zeroext false, i8 noundef zeroext 5) #6
  %conv58 = trunc i64 %call57 to i32
  %end = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %62 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end, align 4
  %tail = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 16
  %64 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %65 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv59 = and i32 %conv58, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %conv59)
  %cmp60 = icmp sgt i32 %sub.ptr.sub, %conv59
  br i1 %cmp60, label %if.then62, label %if.else78

if.then62:                                        ; preds = %if.end53
  %call64 = call ptr @skb_put(ptr noundef %10, i32 noundef %conv59) #6
  %66 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool66.not = icmp eq i8 %67, 0
  %68 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rx_drvinfo_size, align 1
  %conv73 = zext i8 %69 to i32
  %70 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rx_bufshift, align 2
  %conv75 = zext i8 %71 to i32
  %add = add nuw nsw i32 %conv73, 24
  %add70.sink387.v = select i1 %tobool66.not, i32 %conv73, i32 %add
  %add70.sink387 = add nuw nsw i32 %add70.sink387.v, %conv75
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %73, i32 %add70.sink387
  store ptr %add.ptr.i, ptr %data.i, align 4
  %74 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail, align 8
  %add.ptr1.i = getelementptr i8, ptr %75, i32 %add70.sink387
  store ptr %add.ptr1.i, ptr %tail, align 8
  %76 = ptrtoint ptr %packet_report_type to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %packet_report_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %77)
  %cmp87 = icmp eq i8 %77, 4
  br i1 %cmp87, label %if.then89, label %if.end90

if.else78:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef %sub.ptr.sub, i32 noundef %conv59) #6
  call void @__dev_kfree_skb_any(ptr noundef %10, i32 noundef 1) #6
  br label %new_trx_end

if.then89:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl_c2hcmd_enqueue(ptr noundef %hw, ptr noundef %10) #6
  br label %new_trx_end

if.end90:                                         ; preds = %if.then62
  %data.i367 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %78 = ptrtoint ptr %data.i367 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i367, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %79, align 2
  %82 = ptrtoint ptr %crc to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load = load i8, ptr %crc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %83 = icmp ult i8 %bf.load, 64
  br i1 %83, label %land.lhs.true98, label %if.end90.if.else147_crit_edge

if.end90.if.else147_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else147

land.lhs.true98:                                  ; preds = %if.end90
  %len99 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %84 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %85)
  %cmp100 = icmp ugt i32 %85, 4
  br i1 %cmp100, label %if.then102, label %land.lhs.true98.if.else147_crit_edge

land.lhs.true98.if.else147_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else147

if.then102:                                       ; preds = %land.lhs.true98
  %86 = call ptr @memcpy(ptr %cb, ptr %rx_status, i32 48)
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %79, i32 0, i32 2
  %87 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %addr1, align 2
  %add.ptr1.i368 = getelementptr %struct.ieee80211_hdr, ptr %79, i32 0, i32 2, i32 2
  %89 = ptrtoint ptr %add.ptr1.i368 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr1.i368, align 2
  %and9.i = and i16 %90, %88
  %add.ptr3.i = getelementptr %struct.ieee80211_hdr, ptr %79, i32 0, i32 2, i32 4
  %91 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %92
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.then102.if.end118_crit_edge, label %if.else107

if.then102.if.end118_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.else107:                                       ; preds = %if.then102
  %93 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %addr1, align 4
  %95 = and i32 %94, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.i.not = icmp eq i32 %95, 0
  br i1 %tobool.i.not, label %if.else112, label %if.else107.if.end118_crit_edge

if.else107.if.end118_crit_edge:                   ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.else112:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #8
  %conv114 = zext i32 %85 to i64
  %96 = ptrtoint ptr %rxbytesunicast to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %rxbytesunicast, align 8
  %add116 = add i64 %97, %conv114
  store i64 %add116, ptr %rxbytesunicast, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.else112, %if.else107.if.end118_crit_edge, %if.then102.if.end118_crit_edge
  %unicast.1.off0 = phi i1 [ %unicast.0.off0384, %if.then102.if.end118_crit_edge ], [ %unicast.0.off0384, %if.else107.if.end118_crit_edge ], [ true, %if.else112 ]
  %call119 = call zeroext i8 @rtl_is_special_data(ptr noundef %hw, ptr noundef %10, i8 noundef zeroext 0, i1 noundef zeroext true) #6
  %98 = and i16 %81, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %98)
  %cmp.i369 = icmp eq i16 %98, 2048
  br i1 %cmp.i369, label %if.then121, label %if.end118.if.end127_crit_edge

if.end118.if.end127_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then121:                                       ; preds = %if.end118
  %99 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg, align 8
  %ops123 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %ops123 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops123, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %102, i32 0, i32 36
  %103 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %led_control, align 4
  call void %104(ptr noundef %hw, i32 noundef 5) #6
  br i1 %unicast.1.off0, label %if.then125, label %if.then121.if.end127_crit_edge

if.then121.if.end127_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then125:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %num_rx_inperiod to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_rx_inperiod, align 4
  %inc = add i32 %106, 1
  store i32 %inc, ptr %num_rx_inperiod, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.then121.if.end127_crit_edge, %if.end118.if.end127_crit_edge
  call void @rtl_collect_scan_list(ptr noundef %hw, ptr noundef %10) #6
  call void @rtl_beacon_statistic(ptr noundef %hw, ptr noundef %10) #6
  %107 = ptrtoint ptr %data.i367 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i367, align 4
  %109 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len99, align 4
  call void @rtl_p2p_info(ptr noundef %hw, ptr noundef %108, i32 noundef %110) #6
  %111 = ptrtoint ptr %data.i367 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i367, align 4
  %113 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len99, align 4
  call void @rtl_swlps_beacon(ptr noundef %hw, ptr noundef %112, i32 noundef %114) #6
  %115 = ptrtoint ptr %data.i367 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i367, align 4
  %117 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len99, align 4
  call void @rtl_recognize_peer(ptr noundef %hw, ptr noundef %116, i32 noundef %118) #6
  %119 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %120)
  %cmp134 = icmp eq i32 %120, 3
  br i1 %cmp134, label %land.lhs.true136, label %if.end127.if.else145_crit_edge

if.end127.if.else145_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else145

land.lhs.true136:                                 ; preds = %if.end127
  %121 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp137 = icmp eq i32 %122, 0
  br i1 %cmp137, label %land.lhs.true139, label %land.lhs.true136.if.else145_crit_edge

land.lhs.true136.if.else145_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else145

land.lhs.true139:                                 ; preds = %land.lhs.true136
  %123 = and i16 %81, -1024
  %124 = zext i16 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %123, label %land.lhs.true139.if.else145_crit_edge [
    i16 -32768, label %land.lhs.true139.if.then144_crit_edge
    i16 20480, label %land.lhs.true139.if.then144_crit_edge389
  ]

land.lhs.true139.if.then144_crit_edge389:         ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then144

land.lhs.true139.if.then144_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then144

land.lhs.true139.if.else145_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else145

if.then144:                                       ; preds = %land.lhs.true139.if.then144_crit_edge, %land.lhs.true139.if.then144_crit_edge389
  call void @__dev_kfree_skb_any(ptr noundef %10, i32 noundef 1) #6
  br label %new_trx_end

if.else145:                                       ; preds = %land.lhs.true139.if.else145_crit_edge, %land.lhs.true136.if.else145_crit_edge, %if.end127.if.else145_crit_edge
  %125 = ptrtoint ptr %rx_status to i32
  call void @__asan_load8_noabort(i32 %125)
  %.fca.0.load = load i64, ptr %rx_status, align 8
  %126 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %126)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %127 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load8_noabort(i32 %127)
  %.fca.2.load = load i64, ptr %.fca.2.gep, align 8
  %128 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load8_noabort(i32 %128)
  %.fca.3.load = load i64, ptr %.fca.3.gep, align 8
  %129 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load8_noabort(i32 %129)
  %.fca.4.load = load i64, ptr %.fca.4.gep, align 8
  %130 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load8_noabort(i32 %130)
  %.fca.5.load = load i64, ptr %.fca.5.gep, align 8
  %call.i = call zeroext i1 @rtl_action_proc(ptr noundef %hw, ptr noundef %10, i8 noundef zeroext 0) #6
  br i1 %call.i, label %if.else.i, label %if.then.i, !prof !226

if.then.i:                                        ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dev_kfree_skb_any(ptr noundef %10, i32 noundef 1) #6
  br label %new_trx_end

if.else.i:                                        ; preds = %if.else145
  %131 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len99, align 4
  %add.i = add i32 %132, 128
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #6
  %tobool4.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i, label %if.else15.i, label %if.then11.i, !prof !227

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %133 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %.fca.0.load, ptr %cb.i.i, align 8
  %rx_status.sroa.2.0.call12.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %134 = ptrtoint ptr %rx_status.sroa.2.0.call12.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %.fca.1.load, ptr %rx_status.sroa.2.0.call12.sroa_idx.i, align 8
  %rx_status.sroa.3.0.call12.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %135 = ptrtoint ptr %rx_status.sroa.3.0.call12.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %.fca.2.load, ptr %rx_status.sroa.3.0.call12.sroa_idx.i, align 8
  %rx_status.sroa.4.0.call12.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 24
  %136 = ptrtoint ptr %rx_status.sroa.4.0.call12.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %.fca.3.load, ptr %rx_status.sroa.4.0.call12.sroa_idx.i, align 8
  %rx_status.sroa.5.0.call12.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 32
  %137 = ptrtoint ptr %rx_status.sroa.5.0.call12.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %.fca.4.load, ptr %rx_status.sroa.5.0.call12.sroa_idx.i, align 8
  %rx_status.sroa.6.0.call12.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 40
  %138 = ptrtoint ptr %rx_status.sroa.6.0.call12.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %.fca.5.load, ptr %rx_status.sroa.6.0.call12.sroa_idx.i, align 8
  %139 = ptrtoint ptr %data.i367 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i367, align 4
  %141 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len99, align 4
  %call.i.i373 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %142) #6
  %143 = call ptr @memcpy(ptr %call.i.i373, ptr %140, i32 %142)
  call void @__dev_kfree_skb_any(ptr noundef %10, i32 noundef 1) #6
  call void @ieee80211_rx_irqsafe(ptr noundef %hw, ptr noundef nonnull %call.i.i.i) #6
  br label %new_trx_end

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ieee80211_rx_irqsafe(ptr noundef %hw, ptr noundef %10) #6
  br label %new_trx_end

if.else147:                                       ; preds = %land.lhs.true98.if.else147_crit_edge, %if.end90.if.else147_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %10, i32 noundef 1) #6
  br label %new_trx_end

new_trx_end:                                      ; preds = %if.else147, %if.else15.i, %if.then11.i, %if.then.i, %if.then144, %if.then89, %if.else78
  %unicast.2.off0 = phi i1 [ %unicast.0.off0384, %if.then89 ], [ %unicast.0.off0384, %if.else147 ], [ %unicast.1.off0, %if.then144 ], [ %unicast.0.off0384, %if.else78 ], [ %unicast.1.off0, %if.then.i ], [ %unicast.1.off0, %if.then11.i ], [ %unicast.1.off0, %if.else15.i ]
  %144 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool150.not = icmp eq i8 %145, 0
  br i1 %tobool150.not, label %new_trx_end.if.end168_crit_edge, label %if.then151

new_trx_end.if.end168_crit_edge:                  ; preds = %new_trx_end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

if.then151:                                       ; preds = %new_trx_end
  %146 = ptrtoint ptr %next_rx_rp to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %next_rx_rp, align 4
  %add155 = add i16 %147, 1
  %148 = and i16 %add155, 511
  store i16 %148, ptr %next_rx_rp, align 4
  %dec163 = add i32 %rx_remained_cnt.2, -1
  %149 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write16_async.i, align 4
  call void %150(ptr noundef %1, i32 noundef 948, i16 noundef zeroext %148) #6
  %151 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %write_readback.i, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i = icmp eq i8 %154, 0
  br i1 %tobool.not.i, label %if.then151.if.end168_crit_edge, label %if.then.i375

if.then151.if.end168_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

if.then.i375:                                     ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read16_sync.i, align 4
  %call.i374 = call zeroext i16 %156(ptr noundef %1, i32 noundef 948) #6
  br label %if.end168

if.end168:                                        ; preds = %if.then.i375, %if.then151.if.end168_crit_edge, %new_trx_end.if.end168_crit_edge
  %rx_remained_cnt.3 = phi i32 [ %rx_remained_cnt.2, %new_trx_end.if.end168_crit_edge ], [ %dec163, %if.then151.if.end168_crit_edge ], [ %dec163, %if.then.i375 ]
  %157 = ptrtoint ptr %num_rx_inperiod to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_rx_inperiod, align 4
  %159 = ptrtoint ptr %num_tx_inperiod to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_tx_inperiod, align 8
  %add172 = add i32 %160, %158
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add172)
  %cmp173 = icmp ugt i32 %add172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %158)
  %cmp178 = icmp ugt i32 %158, 2
  %or.cond362 = or i1 %cmp178, %cmp173
  br i1 %or.cond362, label %if.then180, label %if.end168.no_new_crit_edge

if.end168.no_new_crit_edge:                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_new

if.then180:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl_lps_leave(ptr noundef %hw, i1 noundef zeroext false) #6
  br label %no_new

no_new:                                           ; preds = %if.then180, %if.end168.no_new_crit_edge, %if.end32.no_new_crit_edge
  %unicast.3.off0 = phi i1 [ %unicast.0.off0384, %if.end32.no_new_crit_edge ], [ %unicast.2.off0, %if.end168.no_new_crit_edge ], [ %unicast.2.off0, %if.then180 ]
  %rx_remained_cnt.4 = phi i32 [ %rx_remained_cnt.2, %if.end32.no_new_crit_edge ], [ %rx_remained_cnt.3, %if.end168.no_new_crit_edge ], [ %rx_remained_cnt.3, %if.then180 ]
  %skb.0 = phi ptr [ %10, %if.end32.no_new_crit_edge ], [ %call.i.i, %if.end168.no_new_crit_edge ], [ %call.i.i, %if.then180 ]
  %161 = ptrtoint ptr %use_new_trx_flow to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %use_new_trx_flow, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool183.not = icmp eq i8 %162, 0
  %163 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %idx, align 4
  br i1 %tobool183.not, label %if.else189, label %if.then184

if.then184:                                       ; preds = %no_new
  call void @__sanitizer_cov_trace_pc() #8
  %call188 = call fastcc i32 @_rtl_pci_init_one_rxdesc(ptr noundef %hw, ptr noundef %skb.0, ptr noundef %buffer_desc.0, i32 noundef 0, i32 noundef %164)
  br label %cleanup

if.else189:                                       ; preds = %no_new
  %call193 = call fastcc i32 @_rtl_pci_init_one_rxdesc(ptr noundef %hw, ptr noundef %skb.0, ptr noundef %pdesc.0, i32 noundef 0, i32 noundef %164)
  %165 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %idx, align 4
  %167 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rxringcount, align 4
  %sub = add i32 %168, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %sub)
  %cmp198 = icmp eq i32 %166, %sub
  br i1 %cmp198, label %if.then200, label %if.else189.cleanup_crit_edge

if.else189.cleanup_crit_edge:                     ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then200:                                       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cfg, align 8
  %ops202 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %ops202 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ops202, align 4
  %set_desc = getelementptr inbounds %struct.rtl_hal_ops, ptr %172, i32 0, i32 37
  %173 = ptrtoint ptr %set_desc to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %set_desc, align 4
  call void %174(ptr noundef %hw, ptr noundef %pdesc.0, i1 noundef zeroext false, i8 noundef zeroext 6, ptr noundef nonnull %tmp_one) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then200, %if.else189.cleanup_crit_edge, %if.then184
  %175 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %idx, align 4
  %add208 = add i32 %176, 1
  %177 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rxringcount, align 4
  %rem210 = urem i32 %add208, %178
  store i32 %rem210, ptr %idx, align 4
  %tobool.not = icmp eq i32 %dec386, 0
  br i1 %tobool.not, label %cleanup.cleanup220_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.cleanup220_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup220

cleanup220:                                       ; preds = %cleanup.cleanup220_crit_edge, %if.else.cleanup220_crit_edge, %if.end.cleanup220_crit_edge, %entry.cleanup220_crit_edge
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %stats) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_one) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_status) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl_pci_hs_interrupt(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %arrayidx = getelementptr %struct.rtl_hal_cfg, ptr %3, i32 0, i32 8, i32 10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %6 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %7(ptr noundef %1, i32 noundef %5) #6
  %sys_irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1
  %8 = ptrtoint ptr %sys_irq_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys_irq_mask, align 4
  %10 = trunc i32 %9 to i8
  %conv6 = or i8 %call.i, %10
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %11 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write8_async.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv6) #6
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i, align 4
  %call.i12 = tail call zeroext i8 %18(ptr noundef %1, i32 noundef %5) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_tx_ackqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_lps_leave(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_c2hcmd_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_is_special_data(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_collect_scan_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_beacon_statistic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_p2p_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_swlps_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_recognize_peer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_action_proc(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_init_rx_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_tx_mgmt_proc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !29, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !121, !123, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !203, !205, !207, !209, !211, !213}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !{ptr @__UNIQUE_ID_author356, !1, !"__UNIQUE_ID_author356", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_author357, !3, !"__UNIQUE_ID_author357", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_author358, !5, !"__UNIQUE_ID_author358", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_file359, !7, !"__UNIQUE_ID_file359", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 17, i32 1}
!8 = !{ptr @__UNIQUE_ID_license360, !7, !"__UNIQUE_ID_license360", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description361, !10, !"__UNIQUE_ID_description361", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 18, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2161, i32 3}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2169, i32 4}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2178, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2192, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2220, i32 34}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2222, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2235, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2240, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2265, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rtl_pci_probe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtl_pci_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2277, i32 3}
!41 = !{ptr @rtl_pci_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rtl_pci_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2284, i32 3}
!45 = !{ptr @rtl_pci_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rtl_pci_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2290, i32 3}
!49 = !{ptr @rtl_pci_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rtl_pci_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2305, i32 3}
!53 = !{ptr @__ksymtab_rtl_pci_probe, !54, !"__ksymtab_rtl_pci_probe", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2333, i32 1}
!55 = !{ptr @__ksymtab_rtl_pci_disconnect, !56, !"__ksymtab_rtl_pci_disconnect", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2389, i32 1}
!57 = !{ptr @__ksymtab_rtl_pci_suspend, !58, !"__ksymtab_rtl_pci_suspend", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2417, i32 1}
!59 = !{ptr @__ksymtab_rtl_pci_resume, !60, !"__ksymtab_rtl_pci_resume", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2428, i32 1}
!61 = !{ptr @rtl_pci_ops, !62, !"rtl_pci_ops", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2431, i32 27}
!63 = !{ptr @init_completion.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/completion.h", i32 87, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1904, i32 4}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1910, i32 4}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1916, i32 4}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1924, i32 3}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1932, i32 3}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1938, i32 3}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1943, i32 3}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1947, i32 3}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1951, i32 3}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1955, i32 3}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1959, i32 3}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1964, i32 3}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1977, i32 5}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1981, i32 5}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1986, i32 4}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2021, i32 5}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2051, i32 2}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2058, i32 2}
!102 = !{ptr @pcibridge_vendors, !103, !"pcibridge_vendors", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 20, i32 18}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 391, i32 2}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 146, i32 3}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @_rtl_pci_update_default_setting._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @_rtl_pci_update_default_setting._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1757, i32 3}
!113 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rtl_pci_init._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rtl_pci_init._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @_rtl_pci_init_struct.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1201, i32 2}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ac_to_hwq, !120, !"ac_to_hwq", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 27, i32 17}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1287, i32 4}
!123 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @_rtl_pci_init_rx_ring._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @_rtl_pci_init_rx_ring._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @_rtl_pci_init_rx_ring._entry.53, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1310, i32 4}
!128 = !{ptr @_rtl_pci_init_rx_ring._entry_ptr.54, !127, !"_entry_ptr", i1 false, i1 false}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!131 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1224, i32 4}
!135 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @_rtl_pci_init_tx_ring._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @_rtl_pci_init_tx_ring._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @_rtl_pci_init_tx_ring._entry.59, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1241, i32 3}
!140 = !{ptr @_rtl_pci_init_tx_ring._entry_ptr.60, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1252, i32 2}
!143 = !{ptr @skb_queue_head_init.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!145 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2094, i32 2}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 927, i32 3}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 931, i32 3}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 935, i32 3}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 938, i32 3}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 945, i32 3}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 948, i32 3}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 954, i32 3}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 962, i32 3}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 970, i32 3}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 978, i32 3}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 986, i32 3}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 995, i32 4}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1005, i32 4}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1013, i32 3}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1018, i32 3}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1024, i32 3}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1031, i32 4}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1048, i32 4}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 559, i32 3}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 610, i32 4}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 803, i32 4}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 2112, i32 2}
!192 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 207, i32 3}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1789, i32 3}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1799, i32 2}
!198 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1810, i32 2}
!200 = !{ptr @__func__.rtl_pci_start, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 334, i32 4}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 337, i32 4}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 353, i32 2}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1645, i32 4}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1658, i32 3}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 1682, i32 3}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/realtek/rtlwifi/pci.c", i32 274, i32 2}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{!"auto-init"}
!225 = !{i8 0, i8 2}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{!"branch_weights", i32 1, i32 2000}
!228 = !{!"branch_weights", i32 2002, i32 2000}
!229 = !{i64 2158028400}
!230 = !{i64 6186274}
!231 = !{i64 2158028894}
!232 = !{i64 6185851}
!233 = !{i64 2158029510}
!234 = !{i64 6186471}
!235 = !{i64 6186669}
!236 = !{i64 2158026446}
!237 = !{i64 6186051}
!238 = !{i64 2158027217}
!239 = !{i64 6186889}
!240 = !{i64 2158027988}
