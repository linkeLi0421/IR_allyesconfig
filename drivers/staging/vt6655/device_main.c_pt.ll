; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/device_main.c_pt.bc'
source_filename = "../drivers/staging/vt6655/device_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.125 = type { i64, i64, i8 }
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
%struct.vnt_tx_desc = type { %struct.vnt_tdes0, %struct.vnt_tdes1, i32, i32, ptr, [4 x i8], ptr, [4 x i8] }
%struct.vnt_tdes0 = type { i8, i8, %union.anon.133 }
%union.anon.133 = type { i16 }
%struct.vnt_tdes1 = type { i16, i8, i8 }
%struct.vnt_td_info = type { ptr, ptr, ptr, i32, i16, i8 }
%struct.anon.134 = type { i8, i8 }
%struct.vnt_rx_desc = type { %struct.vnt_rdes0, %struct.vnt_rdes1, i32, i32, ptr, [4 x i8], ptr, [4 x i8] }
%struct.vnt_rdes0 = type { i16, %union.anon.135 }
%union.anon.135 = type { i16 }
%struct.vnt_rdes1 = type { i16, i16 }
%struct.vnt_rd_info = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.anon.136 = type { i8, i8 }
%struct.vnt_tx_fifo_head = type { [16 x i8], i16, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }

@__UNIQUE_ID_author350 = internal constant [68 x i8] c"author=VIA Networking Technologies, Inc., <lyndonchen@vntek.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [69 x i8] c"description=VIA Networking Solomon-A/B/G Wireless LAN Adapter Driver\00", section ".modinfo", align 1
@vt6655_pci_id_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12883, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@device_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @vt6655_pci_id_table, ptr @vt6655_probe, ptr @vt6655_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt6655_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6655_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt6655\00", [25 x i8] zeroinitializer }, align 32
@vt6655_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vt6655_suspend, ptr @vt6655_resume, ptr @vt6655_suspend, ptr @vt6655_resume, ptr @vt6655_suspend, ptr @vt6655_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vt6655_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1669, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Ver. %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6655_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/vt6655/device_main.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vt6655_probe._entry_ptr = internal global ptr @vt6655_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"VIA Networking Solomon-A/B/G Wireless LAN Adapter Driver\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1.19.12\00", [24 x i8] zeroinitializer }, align 32
@vt6655_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1672, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Copyright (c) 2003 VIA Networking Technologies, Inc.\0A\00", [42 x i8] zeroinitializer }, align 32
@vt6655_probe._entry_ptr.11 = internal global ptr @vt6655_probe._entry.9, section ".printk_index", align 4
@vnt_mac_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @vnt_tx_80211, ptr @vnt_start, ptr @vnt_stop, ptr null, ptr null, ptr null, ptr @vnt_add_interface, ptr null, ptr @vnt_remove_interface, ptr @vnt_config, ptr @vnt_bss_info_changed, ptr null, ptr null, ptr @vnt_prepare_multicast, ptr @vnt_configure, ptr null, ptr null, ptr @vnt_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vnt_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vnt_get_tsf, ptr @vnt_set_tsf, ptr null, ptr @vnt_reset_tsf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@vt6655_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1676, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register ieee80211_hw\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vt6655_probe._entry_ptr.15 = internal global ptr @vt6655_probe._entry.12, section ".printk_index", align 4
@vt6655_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@vt6655_probe.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 1, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Before get pci_info memaddr is %x\0A\00", [61 x i8] zeroinitializer }, align 32
@vt6655_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1704, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c": Failed to IO remapping ..\0A\00", [35 x i8] zeroinitializer }, align 32
@vt6655_probe._entry_ptr.20 = internal global ptr @vt6655_probe._entry.18, section ".printk_index", align 4
@vt6655_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1711, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c": Failed to find PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@vt6655_probe._entry_ptr.23 = internal global ptr @vt6655_probe._entry.21, section ".printk_index", align 4
@vt6655_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1717, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c": Failed to set dma 32 bit mask\0A\00", [63 x i8] zeroinitializer }, align 32
@vt6655_probe._entry_ptr.26 = internal global ptr @vt6655_probe._entry.24, section ".printk_index", align 4
@vt6655_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&priv->interrupt_work)\00", [55 x i8] zeroinitializer }, align 32
@vt6655_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 1726, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c": Failed to access MAC hardware..\0A\00", [61 x i8] zeroinitializer }, align 32
@vt6655_probe._entry_ptr.31 = internal global ptr @vt6655_probe._entry.29, section ".printk_index", align 4
@vt6655_probe.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.32, i8 1, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RF Type = %x\0A\00", [18 x i8] zeroinitializer }, align 32
@vnt_start.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vnt_start\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to start irq\0A\00", [43 x i8] zeroinitializer }, align 32
@vnt_start.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.35, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"call device init rd0 ring\0A\00", [37 x i8] zeroinitializer }, align 32
@vnt_start.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.36, i8 1, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"call MACvIntEnable\0A\00", [44 x i8] zeroinitializer }, align 32
@device_init_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 449, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"allocate desc dma memory failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_init_rings\00", [46 x i8] zeroinitializer }, align 32
@device_init_rings._entry_ptr = internal global ptr @device_init_rings._entry, section ".printk_index", align 4
@device_init_rings._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 468, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"allocate buf dma memory failed\0A\00", [32 x i8] zeroinitializer }, align 32
@device_init_rings._entry_ptr.41 = internal global ptr @device_init_rings._entry.39, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@device_init_rd0_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 549, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can not alloc rx bufs\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device_init_rd0_ring\00", [43 x i8] zeroinitializer }, align 32
@device_init_rd0_ring._entry_ptr = internal global ptr @device_init_rd0_ring._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@device_init_rd1_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.46, ptr @.str.4, i32 595, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device_init_rd1_ring\00", [43 x i8] zeroinitializer }, align 32
@device_init_rd1_ring._entry_ptr = internal global ptr @device_init_rd1_ring._entry, section ".printk_index", align 4
@device_init_registers.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device_init_registers\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"priv->byZoneType = %x\0A\00", [41 x i8] zeroinitializer }, align 32
@device_init_registers.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.49, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Network address = %pM\0A\00", [41 x i8] zeroinitializer }, align 32
@vnt_bss_info_changed.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vnt_bss_info_changed\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"basic rates %x\0A\00", [16 x i8] zeroinitializer }, align 32
@vnt_bss_info_changed.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.4, ptr @.str.52, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Beacon enable %d\0A\00", [46 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@vnt_configure.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 1, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vnt_configure\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx mode in = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@vnt_configure.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.4, ptr @.str.55, i8 1, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx mode out= %x\0A\00", [47 x i8] zeroinitializer }, align 32
@vnt_interrupt_process.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 1, i8 3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vnt_interrupt_process\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isr = 0xffff\0A\00", [18 x i8] zeroinitializer }, align 32
@vnt_interrupt_process.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.4, ptr @.str.58, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" ISR_FETALERR\0A\00", [17 x i8] zeroinitializer }, align 32
@device_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 952, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hardware fatal error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_error\00", [19 x i8] zeroinitializer }, align 32
@device_error._entry_ptr = internal global ptr @device_error._entry, section ".printk_index", align 4
@vnt_check_bb_vga.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vnt_check_bb_vga\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"First RSSI[%d] NewGain[%d] OldGain[%d] Count[%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@vnt_check_bb_vga.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.63, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RSSI[%d] NewGain[%d] OldGain[%d] Count[%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@device_rx_srv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 772, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can not allocate rx buf\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device_rx_srv\00", [18 x i8] zeroinitializer }, align 32
@device_rx_srv._entry_ptr = internal global ptr @device_rx_srv._entry, section ".printk_index", align 4
@device_tx_srv.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device_tx_srv\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c" Tx[%d] OK but has error. tsr1[%02X] tsr0[%02X]\0A\00", [47 x i8] zeroinitializer }, align 32
@device_tx_srv.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 0, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" Tx[%d] dropped & tsr1[%02X] tsr0[%02X]\0A\00", [55 x i8] zeroinitializer }, align 32
@device_tx_srv.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.69, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c" Tx[%d] fail has error. tsr1[%02X] tsr0[%02X]\0A\00", [49 x i8] zeroinitializer }, align 32
@fallback_rate0 = internal constant { [5 x [5 x i8]], [39 x i8] } { [5 x [5 x i8]] [[5 x i8] c"\07\07\06\06\06", [5 x i8] c"\08\08\07\06\06", [5 x i8] c"\09\09\08\07\07", [5 x i8] c"\0A\0A\09\08\08", [5 x i8] c"\0B\0B\0A\09\09"], [39 x i8] zeroinitializer }, align 32
@fallback_rate1 = internal constant { [5 x [5 x i8]], [39 x i8] } { [5 x [5 x i8]] [[5 x i8] c"\07\07\06\04\04", [5 x i8] c"\08\08\07\04\04", [5 x i8] c"\09\09\08\06\06", [5 x i8] c"\0A\0A\08\06\06", [5 x i8] c"\0B\0B\09\07\07"], [39 x i8] zeroinitializer }, align 32
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@device_set_options.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device_set_options\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" byShortRetryLimit= %d\0A\00", [40 x i8] zeroinitializer }, align 32
@device_set_options.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.73, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" byLongRetryLimit= %d\0A\00", [41 x i8] zeroinitializer }, align 32
@device_set_options.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.74, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" preamble_type= %d\0A\00", [44 x i8] zeroinitializer }, align 32
@device_set_options.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.75, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" byShortPreamble= %d\0A\00", [42 x i8] zeroinitializer }, align 32
@device_set_options.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.76, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" byBBType= %d\0A\00", [17 x i8] zeroinitializer }, align 32
@device_print_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 416, ptr @.str.79, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MAC=%pM IO=0x%lx Mem=0x%lx IRQ=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_print_info\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@device_print_info._entry_ptr = internal global ptr @device_print_info._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"device_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1796, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1804, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1797, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"vt6655_pm_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1794, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1668, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1671, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"vnt_mac_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1627, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1676, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1683, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1694, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1704, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1711, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1717, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1722, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1726, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1738, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1237, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1241, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1257, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 449, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 468, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 549, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 326, i32 6 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 595, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 288, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 394, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1420, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1456, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1518, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1566, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1038, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1062, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 952, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1006, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1014, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 771, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 920, i32 7 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 925, i32 6 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 932, i32 6 }
@___asan_gen_.304 = private unnamed_addr constant [15 x i8] c"fallback_rate0\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 823, i32 17 }
@___asan_gen_.307 = private unnamed_addr constant [15 x i8] c"fallback_rate1\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 831, i32 17 }
@___asan_gen_.311 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2737, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 182, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 183, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 184, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 185, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 186, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.341 = private constant [40 x i8] c"../drivers/staging/vt6655/device_main.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 414, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_license351, ptr @device_error._entry, ptr @device_error._entry_ptr, ptr @device_init_rd0_ring._entry, ptr @device_init_rd0_ring._entry_ptr, ptr @device_init_rd1_ring._entry, ptr @device_init_rd1_ring._entry_ptr, ptr @device_init_rings._entry, ptr @device_init_rings._entry.39, ptr @device_init_rings._entry_ptr, ptr @device_init_rings._entry_ptr.41, ptr @device_print_info._entry, ptr @device_print_info._entry_ptr, ptr @device_rx_srv._entry, ptr @device_rx_srv._entry_ptr, ptr @vt6655_probe._entry, ptr @vt6655_probe._entry.12, ptr @vt6655_probe._entry.18, ptr @vt6655_probe._entry.21, ptr @vt6655_probe._entry.24, ptr @vt6655_probe._entry.29, ptr @vt6655_probe._entry.9, ptr @vt6655_probe._entry_ptr, ptr @vt6655_probe._entry_ptr.11, ptr @vt6655_probe._entry_ptr.15, ptr @vt6655_probe._entry_ptr.20, ptr @vt6655_probe._entry_ptr.23, ptr @vt6655_probe._entry_ptr.26, ptr @vt6655_probe._entry_ptr.31, ptr @device_driver, ptr @.str, ptr @.str.1, ptr @vt6655_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @vnt_mac_ops, ptr @.str.13, ptr @.str.14, ptr @vt6655_probe.__key, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @vt6655_probe.__key.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @fallback_rate0, ptr @fallback_rate1, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_mac_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6655_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_init_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_init_rings._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_init_rd0_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_init_rd1_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_rx_srv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fallback_rate0 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fallback_rate1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_print_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_pci__vt6655_pci_id_table_device_table = dso_local alias [2 x %struct.pci_device_id], ptr @vt6655_pci_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @device_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @device_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt6655_probe(ptr noundef %pcid, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #13
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.10) #13
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 992, ptr noundef nonnull @vnt_mac_ops, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end7, label %if.end

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv9 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv9, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pcid, ptr %1, align 4
  %lock = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @vt6655_probe.__key, i16 noundef signext 3) #10
  %hw15 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %hw15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %hw15, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent.i.i, align 8
  %call18 = tail call i32 @pci_enable_device(ptr noundef %pcid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body22, label %if.then20

if.then20:                                        ; preds = %if.end
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then20.cleanup_crit_edge, label %if.end.i

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then20
  %mac_hw.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %mac_hw.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mac_hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw15, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %10) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_offset.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %12) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool8.not.i = icmp eq ptr %14, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then9.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_release_regions(ptr noundef nonnull %14) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  %15 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw15, align 4
  %tobool13.not.i = icmp eq ptr %16, null
  br i1 %tobool13.not.i, label %if.end11.i.cleanup_crit_edge, label %if.then14.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_free_hw(ptr noundef nonnull %16) #10
  br label %cleanup

do.body22:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt6655_probe.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt6655_probe, %if.then27)) #10
          to label %do.end31 [label %if.then27], !srcloc !190

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %memaddr = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %memaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memaddr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vt6655_probe.__UNIQUE_ID_ddebug374, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %18) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body22
  tail call void @pci_set_master(ptr noundef %pcid) #10
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 47
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource, align 8
  %memaddr32 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 20
  %21 = ptrtoint ptr %memaddr32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %memaddr32, align 4
  %arrayidx34 = getelementptr %struct.pci_dev, ptr %pcid, i32 0, i32 47, i32 1
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx34, align 8
  %ioaddr = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 21
  %24 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ioaddr, align 4
  %and = and i32 %20, -16
  %call37 = tail call ptr @ioremap(i32 noundef %and, i32 noundef 256) #10
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %port_offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call37, ptr %port_offset, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %do.end31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  %tobool.not.i237 = icmp eq ptr %1, null
  br i1 %tobool.not.i237, label %do.end43.cleanup_crit_edge, label %if.end.i240

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i240:                                      ; preds = %do.end43
  %mac_hw.i238 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %mac_hw.i238 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mac_hw.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i239 = icmp eq i8 %27, 0
  br i1 %tobool1.not.i239, label %if.end.i240.if.end3.i245_crit_edge, label %if.then2.i242

if.end.i240.if.end3.i245_crit_edge:               ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i245

if.then2.i242:                                    ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw15, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %29) #10
  br label %if.end3.i245

if.end3.i245:                                     ; preds = %if.then2.i242, %if.end.i240.if.end3.i245_crit_edge
  %30 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port_offset, align 4
  %tobool4.not.i244 = icmp eq ptr %31, null
  br i1 %tobool4.not.i244, label %if.end3.i245.if.end7.i248_crit_edge, label %if.then5.i246

if.end3.i245.if.end7.i248_crit_edge:              ; preds = %if.end3.i245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i248

if.then5.i246:                                    ; preds = %if.end3.i245
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %31) #10
  br label %if.end7.i248

if.end7.i248:                                     ; preds = %if.then5.i246, %if.end3.i245.if.end7.i248_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %tobool8.not.i247 = icmp eq ptr %33, null
  br i1 %tobool8.not.i247, label %if.end7.i248.if.end11.i252_crit_edge, label %if.then9.i249

if.end7.i248.if.end11.i252_crit_edge:             ; preds = %if.end7.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i252

if.then9.i249:                                    ; preds = %if.end7.i248
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_release_regions(ptr noundef nonnull %33) #10
  br label %if.end11.i252

if.end11.i252:                                    ; preds = %if.then9.i249, %if.end7.i248.if.end11.i252_crit_edge
  %34 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw15, align 4
  %tobool13.not.i251 = icmp eq ptr %35, null
  br i1 %tobool13.not.i251, label %if.end11.i252.cleanup_crit_edge, label %if.then14.i253

if.end11.i252.cleanup_crit_edge:                  ; preds = %if.end11.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.i253:                                   ; preds = %if.end11.i252
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_free_hw(ptr noundef nonnull %35) #10
  br label %cleanup

if.end45:                                         ; preds = %do.end31
  %call46 = tail call i32 @pci_request_regions(ptr noundef %pcid, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  %tobool.not.i255 = icmp eq ptr %1, null
  br i1 %tobool.not.i255, label %do.end51.cleanup_crit_edge, label %if.end.i258

do.end51.cleanup_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i258:                                      ; preds = %do.end51
  %mac_hw.i256 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %mac_hw.i256 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mac_hw.i256, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool1.not.i257 = icmp eq i8 %37, 0
  br i1 %tobool1.not.i257, label %if.end.i258.if.end3.i263_crit_edge, label %if.then2.i260

if.end.i258.if.end3.i263_crit_edge:               ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i263

if.then2.i260:                                    ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw15, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %39) #10
  br label %if.end3.i263

if.end3.i263:                                     ; preds = %if.then2.i260, %if.end.i258.if.end3.i263_crit_edge
  %40 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_offset, align 4
  %tobool4.not.i262 = icmp eq ptr %41, null
  br i1 %tobool4.not.i262, label %if.end3.i263.if.end7.i266_crit_edge, label %if.then5.i264

if.end3.i263.if.end7.i266_crit_edge:              ; preds = %if.end3.i263
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i266

if.then5.i264:                                    ; preds = %if.end3.i263
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %41) #10
  br label %if.end7.i266

if.end7.i266:                                     ; preds = %if.then5.i264, %if.end3.i263.if.end7.i266_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %tobool8.not.i265 = icmp eq ptr %43, null
  br i1 %tobool8.not.i265, label %if.end7.i266.if.end11.i270_crit_edge, label %if.then9.i267

if.end7.i266.if.end11.i270_crit_edge:             ; preds = %if.end7.i266
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i270

if.then9.i267:                                    ; preds = %if.end7.i266
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_release_regions(ptr noundef nonnull %43) #10
  br label %if.end11.i270

if.end11.i270:                                    ; preds = %if.then9.i267, %if.end7.i266.if.end11.i270_crit_edge
  %44 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw15, align 4
  %tobool13.not.i269 = icmp eq ptr %45, null
  br i1 %tobool13.not.i269, label %if.end11.i270.cleanup_crit_edge, label %if.then14.i271

if.end11.i270.cleanup_crit_edge:                  ; preds = %if.end11.i270
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.i271:                                   ; preds = %if.end11.i270
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_free_hw(ptr noundef nonnull %45) #10
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %call55 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body63, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #13
  tail call fastcc void @device_free_info(ptr noundef %1)
  br label %cleanup

do.body63:                                        ; preds = %if.end53
  %interrupt_work = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 133
  tail call void @__init_work(ptr noundef %interrupt_work, i32 noundef 0) #10
  %46 = ptrtoint ptr %interrupt_work to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %interrupt_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 133, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @vt6655_probe.__key.27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry67 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 133, i32 1
  %47 = ptrtoint ptr %entry67 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry67, ptr %entry67, align 4
  %prev.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 133, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry67, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 133, i32 2
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @vnt_interrupt_work, ptr %func, align 4
  %call71 = tail call zeroext i1 @MACbSoftwareReset(ptr noundef %1) #10
  br i1 %call71, label %if.end77, label %do.end75

do.end75:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  tail call fastcc void @device_free_info(ptr noundef %1)
  br label %cleanup

if.end77:                                         ; preds = %do.body63
  tail call void @MACvInitialize(ptr noundef %1) #10
  %50 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #10, !srcloc !192
  %52 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port_offset, align 4
  %add.ptr81 = getelementptr i8, ptr %53, i32 12
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr81) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %abyCurrentNetAddr = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 42
  %55 = ptrtoint ptr %abyCurrentNetAddr to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %abyCurrentNetAddr, align 2
  %56 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port_offset, align 4
  %add.ptr85 = getelementptr i8, ptr %57, i32 13
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr85) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %add.ptr89 = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 42, i32 1
  %59 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %add.ptr89, align 1
  %60 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port_offset, align 4
  %add.ptr92 = getelementptr i8, ptr %61, i32 14
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr92) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %add.ptr96 = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 42, i32 2
  %63 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %add.ptr96, align 1
  %64 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port_offset, align 4
  %add.ptr99 = getelementptr i8, ptr %65, i32 15
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr99) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %add.ptr103 = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 42, i32 3
  %67 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %add.ptr103, align 1
  %68 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port_offset, align 4
  %add.ptr106 = getelementptr i8, ptr %69, i32 16
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr106) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %add.ptr110 = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 42, i32 4
  %71 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %add.ptr110, align 1
  %72 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %port_offset, align 4
  %add.ptr113 = getelementptr i8, ptr %73, i32 17
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr113) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %add.ptr117 = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 42, i32 5
  %75 = ptrtoint ptr %add.ptr117 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %add.ptr117, align 1
  %76 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %port_offset, align 4
  %add.ptr119 = getelementptr i8, ptr %77, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr119, i8 0) #10, !srcloc !192
  %78 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %port_offset, align 4
  %call123 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %79, i8 noundef zeroext 27) #10
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 37
  %80 = and i8 %call123, 127
  %81 = ptrtoint ptr %byRFType to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %byRFType, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt6655_probe.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vt6655_probe, %if.then139)) #10
          to label %do.end145 [label %if.then139], !srcloc !190

if.then139:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %byRFType, align 1
  %conv142 = zext i8 %83 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vt6655_probe.__UNIQUE_ID_ddebug375, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv142) #10
  br label %do.end145

do.end145:                                        ; preds = %if.then139, %if.end77
  %opts1.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31
  %84 = ptrtoint ptr %opts1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 32, ptr %opts1.i, align 4
  %rx_descs1.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 1
  %85 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 32, ptr %rx_descs1.i, align 4
  %tx_descs.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 2
  %86 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 32, ptr %tx_descs.i, align 4
  %arrayidx3.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 31, i32 2, i32 1
  %87 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 64, ptr %arrayidx3.i, align 4
  %int_works.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 3
  %88 = ptrtoint ptr %int_works.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 20, ptr %int_works.i, align 4
  %short_retry.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 4
  %89 = ptrtoint ptr %short_retry.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 8, ptr %short_retry.i, align 4
  %long_retry.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 5
  %90 = ptrtoint ptr %long_retry.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %long_retry.i, align 4
  %bbp_type.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 6
  %91 = ptrtoint ptr %bbp_type.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %bbp_type.i, align 4
  tail call fastcc void @device_set_options(ptr noundef %1)
  %92 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw15, align 4
  %wiphy147 = getelementptr inbounds %struct.ieee80211_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wiphy147 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wiphy147, align 8
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 35
  %96 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2346, ptr %frag_threshold, align 16
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 36
  %97 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2347, ptr %rts_threshold, align 4
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 9
  %98 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 14, ptr %interface_modes, align 4
  %99 = load ptr, ptr %hw15, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %101, 16777216
  store i32 %or.i.i, ptr %flags.i, align 4
  %102 = load ptr, ptr %hw15, align 4
  %flags.i273 = getelementptr inbounds %struct.ieee80211_hw, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %flags.i273 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i273, align 4
  %or.i.i274 = or i32 %104, 16
  store i32 %or.i.i274, ptr %flags.i273, align 4
  %105 = load ptr, ptr %hw15, align 4
  %flags.i275 = getelementptr inbounds %struct.ieee80211_hw, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %flags.i275 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags.i275, align 4
  %or.i.i276 = or i32 %107, 2
  store i32 %or.i.i276, ptr %flags.i275, align 4
  %108 = load ptr, ptr %hw15, align 4
  %flags.i277 = getelementptr inbounds %struct.ieee80211_hw, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %flags.i277 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i277, align 4
  %or.i.i278 = or i32 %110, 65536
  store i32 %or.i.i278, ptr %flags.i277, align 4
  %111 = load ptr, ptr %hw15, align 4
  %flags.i279 = getelementptr inbounds %struct.ieee80211_hw, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %flags.i279 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags.i279, align 4
  %or.i.i280 = or i32 %113, 256
  store i32 %or.i.i280, ptr %flags.i279, align 4
  %114 = load ptr, ptr %hw15, align 4
  %max_signal = getelementptr inbounds %struct.ieee80211_hw, ptr %114, i32 0, i32 13
  %115 = ptrtoint ptr %max_signal to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 100, ptr %max_signal, align 8
  %116 = load ptr, ptr %hw15, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wiphy.i.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %118, i32 0, i32 1
  %119 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %abyCurrentNetAddr, i32 6)
  tail call void @vnt_init_bands(ptr noundef %1) #10
  %120 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw15, align 4
  %call.i282 = tail call i32 @ieee80211_register_hw(ptr noundef %121) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %tobool.not.i283 = icmp eq i32 %call.i282, 0
  br i1 %tobool.not.i283, label %if.end157, label %if.then156

if.then156:                                       ; preds = %do.end145
  %tobool.not.i287 = icmp eq ptr %1, null
  br i1 %tobool.not.i287, label %if.then156.cleanup_crit_edge, label %if.end.i290

if.then156.cleanup_crit_edge:                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i290:                                      ; preds = %if.then156
  %mac_hw.i288 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 7
  %122 = ptrtoint ptr %mac_hw.i288 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %mac_hw.i288, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool1.not.i289 = icmp eq i8 %123, 0
  br i1 %tobool1.not.i289, label %if.end.i290.if.end3.i295_crit_edge, label %if.then2.i292

if.end.i290.if.end3.i295_crit_edge:               ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i295

if.then2.i292:                                    ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw15, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %125) #10
  br label %if.end3.i295

if.end3.i295:                                     ; preds = %if.then2.i292, %if.end.i290.if.end3.i295_crit_edge
  %126 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %port_offset, align 4
  %tobool4.not.i294 = icmp eq ptr %127, null
  br i1 %tobool4.not.i294, label %if.end3.i295.if.end7.i298_crit_edge, label %if.then5.i296

if.end3.i295.if.end7.i298_crit_edge:              ; preds = %if.end3.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i298

if.then5.i296:                                    ; preds = %if.end3.i295
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %127) #10
  br label %if.end7.i298

if.end7.i298:                                     ; preds = %if.then5.i296, %if.end3.i295.if.end7.i298_crit_edge
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %tobool8.not.i297 = icmp eq ptr %129, null
  br i1 %tobool8.not.i297, label %if.end7.i298.if.end11.i302_crit_edge, label %if.then9.i299

if.end7.i298.if.end11.i302_crit_edge:             ; preds = %if.end7.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i302

if.then9.i299:                                    ; preds = %if.end7.i298
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_release_regions(ptr noundef nonnull %129) #10
  br label %if.end11.i302

if.end11.i302:                                    ; preds = %if.then9.i299, %if.end7.i298.if.end11.i302_crit_edge
  %130 = ptrtoint ptr %hw15 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw15, align 4
  %tobool13.not.i301 = icmp eq ptr %131, null
  br i1 %tobool13.not.i301, label %if.end11.i302.cleanup_crit_edge, label %if.then14.i303

if.end11.i302.cleanup_crit_edge:                  ; preds = %if.end11.i302
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.i303:                                   ; preds = %if.end11.i302
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_free_hw(ptr noundef nonnull %131) #10
  br label %cleanup

if.end157:                                        ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #12
  %mac_hw.i284 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 7
  %132 = ptrtoint ptr %mac_hw.i284 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %mac_hw.i284, align 4
  tail call void @CARDbRadioPowerOff(ptr noundef %1) #10
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %135 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ioaddr, align 4
  %137 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %port_offset, align 4
  %139 = ptrtoint ptr %138 to i32
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 46
  %140 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.77, ptr noundef %abyCurrentNetAddr, i32 noundef %136, i32 noundef %139, i32 noundef %141) #13
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 44, i32 8
  %142 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %1, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.then14.i303, %if.end11.i302.cleanup_crit_edge, %if.then156.cleanup_crit_edge, %do.end75, %do.end60, %if.then14.i271, %if.end11.i270.cleanup_crit_edge, %do.end51.cleanup_crit_edge, %if.then14.i253, %if.end11.i252.cleanup_crit_edge, %do.end43.cleanup_crit_edge, %if.then14.i, %if.end11.i.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -19, %do.end60 ], [ 0, %if.end157 ], [ -19, %do.end75 ], [ -12, %do.end7 ], [ -19, %if.then20.cleanup_crit_edge ], [ -19, %if.end11.i.cleanup_crit_edge ], [ -19, %if.then14.i ], [ -19, %do.end43.cleanup_crit_edge ], [ -19, %if.end11.i252.cleanup_crit_edge ], [ -19, %if.then14.i253 ], [ -19, %do.end51.cleanup_crit_edge ], [ -19, %if.end11.i270.cleanup_crit_edge ], [ -19, %if.then14.i271 ], [ -19, %if.then156.cleanup_crit_edge ], [ -19, %if.end11.i302.cleanup_crit_edge ], [ -19, %if.then14.i303 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt6655_remove(ptr nocapture noundef readonly %pcid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %mac_hw.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mac_hw.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %5) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_offset.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %7) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool8.not.i = icmp eq ptr %9, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then9.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_release_regions(ptr noundef nonnull %9) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  %hw12.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %hw12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw12.i, align 4
  %tobool13.not.i = icmp eq ptr %11, null
  br i1 %tobool13.not.i, label %if.end11.i.cleanup_crit_edge, label %if.then14.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_free_hw(ptr noundef nonnull %11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i, %if.end11.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_free_info(ptr noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.end

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end:                                           ; preds = %entry
  %mac_hw = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %mac_hw to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_hw, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %3) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %4 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_offset, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %5) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_release_regions(ptr noundef nonnull %7) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %hw12 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %hw12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw12, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_free_hw(ptr noundef nonnull %9) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_interrupt_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr i8, ptr %work, i32 -924
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %work, i32 -932
  tail call fastcc void @vnt_interrupt_process(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %port_offset = getelementptr i8, ptr %work, i32 -856
  %2 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -14737408) #10, !srcloc !196
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @MACbSoftwareReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvInitialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @SROMbyReadEmbedded(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_set_options(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %short_retry = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 4
  %0 = ptrtoint ptr %short_retry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %short_retry, align 4
  %conv = trunc i32 %1 to i8
  %byShortRetryLimit = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 75
  %2 = ptrtoint ptr %byShortRetryLimit to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %byShortRetryLimit, align 4
  %long_retry = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 5
  %3 = ptrtoint ptr %long_retry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %long_retry, align 4
  %conv2 = trunc i32 %4 to i8
  %byLongRetryLimit = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 76
  %5 = ptrtoint ptr %byLongRetryLimit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %byLongRetryLimit, align 1
  %bbp_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 6
  %6 = ptrtoint ptr %bbp_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bbp_type, align 4
  %conv4 = trunc i32 %7 to i8
  %byBBType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 64
  %8 = ptrtoint ptr %byBBType to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %byBBType, align 1
  %byPacketType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 65
  %9 = ptrtoint ptr %byPacketType to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %byPacketType, align 2
  %byAutoFBCtrl = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 105
  %10 = ptrtoint ptr %byAutoFBCtrl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %byAutoFBCtrl, align 1
  %bUpdateBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 106
  %11 = ptrtoint ptr %bUpdateBBVGA to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bUpdateBBVGA, align 2
  %preamble_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 72
  %12 = ptrtoint ptr %preamble_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %preamble_type, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_set_options.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_set_options, %if.then)) #10
          to label %do.body10 [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %byShortRetryLimit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %byShortRetryLimit, align 4
  %conv9 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_set_options.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.72, i32 noundef %conv9) #10
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_set_options.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_set_options, %if.then22)) #10
          to label %do.body27 [label %if.then22], !srcloc !190

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %byLongRetryLimit to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %byLongRetryLimit, align 1
  %conv24 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_set_options.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.73, i32 noundef %conv24) #10
  br label %do.body27

do.body27:                                        ; preds = %if.then22, %do.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_set_options.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_set_options, %if.then39)) #10
          to label %do.body44 [label %if.then39], !srcloc !190

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %preamble_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %preamble_type, align 1
  %conv41 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_set_options.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.74, i32 noundef %conv41) #10
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_set_options.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_set_options, %if.then56)) #10
          to label %do.body60 [label %if.then56], !srcloc !190

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  %byShortPreamble = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 73
  %19 = ptrtoint ptr %byShortPreamble to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %byShortPreamble, align 4
  %conv57 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_set_options.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.75, i32 noundef %conv57) #10
  br label %do.body60

do.body60:                                        ; preds = %if.then56, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_set_options.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_set_options, %if.then72)) #10
          to label %do.end76 [label %if.then72], !srcloc !190

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %byBBType to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %byBBType, align 1
  %conv74 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_set_options.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.76, i32 noundef %conv74) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %do.body60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_tx_80211(ptr noundef %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %lock.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 22
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = and i16 %5, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp.i.i = icmp eq i16 %6, 2048
  %..i = zext i1 %cmp.i.i to i32
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 31, i32 2, i32 %..i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 23, i32 %..i
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx6.i, align 4
  %sub.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp7.i = icmp slt i32 %sub.i, 1
  br i1 %cmp7.i, label %if.then, label %if.end11.i

if.end11.i:                                       ; preds = %entry
  %arrayidx12.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 24, i32 %..i
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12.i, align 4
  %td1.i = getelementptr inbounds %struct.vnt_tx_desc, ptr %12, i32 0, i32 1
  %tcr.i = getelementptr inbounds %struct.vnt_tx_desc, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %tcr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 0, ptr %tcr.i, align 2
  %td_info.i = getelementptr inbounds %struct.vnt_tx_desc, ptr %12, i32 0, i32 6
  %14 = ptrtoint ptr %td_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %td_info.i, align 8
  %skb13.i = getelementptr inbounds %struct.vnt_td_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %skb13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %skb, ptr %skb13.i, align 4
  br i1 %cmp.i.i, label %if.then16.i, label %if.end11.i.if.end19.i_crit_edge

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %td_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %td_info.i, align 8
  %flags18.i = getelementptr inbounds %struct.vnt_td_info, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %flags18.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end11.i.if.end19.i_crit_edge
  %next.i = getelementptr inbounds %struct.vnt_tx_desc, ptr %12, i32 0, i32 4
  %20 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next.i, align 8
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %arrayidx12.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %call23.i = tail call i32 @vnt_generate_fifo_header(ptr noundef %1, i32 noundef %..i, ptr noundef %12, ptr noundef %skb) #10
  %call33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %bPWBitOn.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 90
  %23 = ptrtoint ptr %bPWBitOn.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bPWBitOn.i, align 4
  %24 = ptrtoint ptr %tcr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %tcr.i, align 2
  %26 = or i8 %25, 7
  store volatile i8 %26, ptr %tcr.i, align 2
  %27 = ptrtoint ptr %td_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %td_info.i, align 8
  %req_count.i = getelementptr inbounds %struct.vnt_td_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %req_count.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %req_count.i, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #10
  %32 = ptrtoint ptr %td1.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store volatile i16 %31, ptr %td1.i, align 4
  %buf_dma.i = getelementptr inbounds %struct.vnt_td_info, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_dma.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  %buff_addr.i = getelementptr inbounds %struct.vnt_tx_desc, ptr %12, i32 0, i32 2
  %36 = ptrtoint ptr %buff_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %35, ptr %buff_addr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %37 = getelementptr inbounds %struct.vnt_tdes0, ptr %12, i32 0, i32 2
  %owner.i = getelementptr inbounds %struct.anon.134, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load volatile i8, ptr %owner.i, align 1
  %bf.set.i = or i8 %bf.load.i, -128
  store volatile i8 %bf.set.i, ptr %owner.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %td_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %td_info.i, align 8
  %flags53.i = getelementptr inbounds %struct.vnt_td_info, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %flags53.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags53.i, align 2
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  %port_offset72.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %44 = ptrtoint ptr %port_offset72.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port_offset72.i, align 4
  br i1 %tobool.not.i, label %do.body70.i, label %do.body56.i

do.body56.i:                                      ; preds = %if.end19.i
  %add.ptr.i = getelementptr i8, ptr %45, i32 132
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %47 = and i32 %46, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool59.not.i = icmp eq i32 %47, 0
  %48 = ptrtoint ptr %port_offset72.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port_offset72.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %49, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool59.not.i, label %if.else63.i, label %if.then60.i

if.then60.i:                                      ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 67108864) #10, !srcloc !196
  br label %vnt_tx_packet.exit.thread

if.else63.i:                                      ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 134217728) #10, !srcloc !196
  br label %vnt_tx_packet.exit.thread

do.body70.i:                                      ; preds = %if.end19.i
  %add.ptr73.i = getelementptr i8, ptr %45, i32 124
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i) #10, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %51 = and i32 %50, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool76.not.i = icmp eq i32 %51, 0
  %52 = ptrtoint ptr %port_offset72.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port_offset72.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %53, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool76.not.i, label %if.else80.i, label %if.then77.i

if.then77.i:                                      ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 67108864) #10, !srcloc !196
  br label %vnt_tx_packet.exit.thread

if.else80.i:                                      ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 134217728) #10, !srcloc !196
  br label %vnt_tx_packet.exit.thread

vnt_tx_packet.exit.thread:                        ; preds = %if.else80.i, %if.then77.i, %if.else63.i, %if.then60.i
  %54 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx6.i, align 4
  %inc.i = add i32 %55, 1
  store volatile i32 %inc.i, ptr %arrayidx6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call33.i) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %hw.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %57) #10
  tail call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef %skb) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %vnt_tx_packet.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_start(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rx_buf_sz = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2390, ptr %rx_buf_sz, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %opts.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opts.i, align 4
  %rx_descs1.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 1
  %7 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_descs1.i, align 4
  %mul182.i = add i32 %8, %6
  %tx_descs.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 2
  %9 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_descs.i, align 4
  %add183.i = add i32 %mul182.i, %10
  %arrayidx8.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 31, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.i, align 4
  %add5184.i = add i32 %add183.i, %12
  %add10.i = shl i32 %add5184.i, 5
  %pool_dma.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 8
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add10.i, ptr noundef %pool_dma.i, i32 noundef 2592, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %aRD0Ring.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %aRD0Ring.i, align 4
  %16 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opts.i, align 4
  %mul15.i = shl i32 %17, 5
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %mul15.i
  %aRD1Ring.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %aRD1Ring.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %aRD1Ring.i, align 4
  %19 = ptrtoint ptr %pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pool_dma.i, align 4
  %rd0_pool_dma.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %rd0_pool_dma.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rd0_pool_dma.i, align 4
  %add21.i = add i32 %20, %mul15.i
  %rd1_pool_dma.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %rd1_pool_dma.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add21.i, ptr %rd1_pool_dma.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_descs.i, align 4
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.i, align 4
  %mul27185.i = add i32 %28, %26
  %add32.i = mul i32 %mul27185.i, 2390
  %add34.i = add i32 %add32.i, 3412
  %tx_bufs_dma0.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 13
  %call.i189.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev23.i, i32 noundef %add34.i, ptr noundef %tx_bufs_dma0.i, i32 noundef 2592, i32 noundef 0) #10
  %tx0_bufs.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %tx0_bufs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i189.i, ptr %tx0_bufs.i, align 4
  %tobool37.not.i = icmp eq ptr %call.i189.i, null
  br i1 %tobool37.not.i, label %do.end41.i, label %if.end

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i, ptr noundef nonnull @.str.40) #13
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %opts.i, align 4
  %36 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_descs1.i, align 4
  %mul48186.i = add i32 %37, %35
  %38 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_descs.i, align 4
  %add52187.i = add i32 %mul48186.i, %39
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx8.i, align 4
  %add57188.i = add i32 %add52187.i, %41
  %add62.i = shl i32 %add57188.i, 5
  %42 = ptrtoint ptr %pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pool_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev45.i, i32 noundef %add62.i, ptr noundef nonnull %call.i.i, i32 noundef %43, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %44 = ptrtoint ptr %rd1_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rd1_pool_dma.i, align 4
  %46 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_descs1.i, align 4
  %mul68.i = shl i32 %47, 5
  %add69.i = add i32 %mul68.i, %45
  %td0_pool_dma.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %td0_pool_dma.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add69.i, ptr %td0_pool_dma.i, align 4
  %49 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_descs.i, align 4
  %mul74.i = shl i32 %50, 5
  %add75.i = add i32 %mul74.i, %add69.i
  %td1_pool_dma.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %td1_pool_dma.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add75.i, ptr %td1_pool_dma.i, align 4
  %52 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %opts.i, align 4
  %mul78.i = shl i32 %53, 5
  %add.ptr79.i = getelementptr i8, ptr %call.i.i, i32 %mul78.i
  %add.ptr83.i = getelementptr i8, ptr %add.ptr79.i, i32 %mul68.i
  %apTD0Rings.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 26
  %54 = ptrtoint ptr %apTD0Rings.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr83.i, ptr %apTD0Rings.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %add.ptr83.i, i32 %mul74.i
  %apTD1Rings.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 27
  %55 = ptrtoint ptr %apTD1Rings.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr96.i, ptr %apTD1Rings.i, align 4
  %mul101.i = mul i32 %50, 2390
  %add.ptr102.i = getelementptr i8, ptr %call.i189.i, i32 %mul101.i
  %tx1_bufs.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 17
  %56 = ptrtoint ptr %tx1_bufs.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr102.i, ptr %tx1_bufs.i, align 4
  %57 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx8.i, align 4
  %mul107.i = mul i32 %58, 2390
  %add.ptr108.i = getelementptr i8, ptr %add.ptr102.i, i32 %mul107.i
  %tx_beacon_bufs.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 18
  %59 = ptrtoint ptr %tx_beacon_bufs.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr108.i, ptr %tx_beacon_bufs.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %add.ptr108.i, i32 512
  %pbyTmpBuff.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 52
  %60 = ptrtoint ptr %pbyTmpBuff.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr110.i, ptr %pbyTmpBuff.i, align 4
  %61 = ptrtoint ptr %tx_bufs_dma0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_bufs_dma0.i, align 4
  %add116.i = add i32 %62, %mul101.i
  %tx_bufs_dma1.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %tx_bufs_dma1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add116.i, ptr %tx_bufs_dma1.i, align 4
  %add122.i = add i32 %add116.i, %mul107.i
  %tx_beacon_dma.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 15
  %64 = ptrtoint ptr %tx_beacon_dma.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add122.i, ptr %tx_beacon_dma.i, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %68, ptr noundef nonnull @vnt_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body12, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start, %if.then8)) #10
          to label %err_free_rings [label %if.then8], !srcloc !190

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start.__UNIQUE_ID_ddebug367, ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  br label %err_free_rings

do.body12:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start, %if.then24)) #10
          to label %do.end29 [label %if.then24], !srcloc !190

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start.__UNIQUE_ID_ddebug368, ptr noundef %dev26, ptr noundef nonnull @.str.35) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body12
  %73 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %opts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp62.i = icmp sgt i32 %74, 0
  br i1 %cmp62.i, label %for.body.lr.ph.i, label %do.end29.if.end33_crit_edge

do.end29.if.end33_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

for.body.lr.ph.i:                                 ; preds = %do.end29
  %75 = ptrtoint ptr %rd0_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rd0_pool_dma.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %curr.064.i = phi i32 [ %76, %for.body.lr.ph.i ], [ %add9.i, %if.end4.i.for.body.i_crit_edge ]
  %i.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %if.end4.i.for.body.i_crit_edge ]
  %77 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %aRD0Ring.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 8) #14
  %rd_info.i = getelementptr %struct.vnt_rx_desc, ptr %78, i32 %i.063.i, i32 6
  %80 = ptrtoint ptr %rd_info.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i, ptr %rd_info.i, align 8
  %tobool.not.i102 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i102, label %for.body.i.err_free_desc.i_crit_edge, label %if.end.i103

for.body.i.err_free_desc.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_desc.i

if.end.i103:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.vnt_rx_desc, ptr %78, i32 %i.063.i
  %call2.i = tail call fastcc zeroext i1 @device_alloc_rx_buf(ptr noundef %1, ptr noundef %arrayidx.i) #10
  br i1 %call2.i, label %if.end4.i, label %do.end.i105

do.end.i105:                                      ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %dev.i104 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i104, ptr noundef nonnull @.str.42) #13
  %83 = ptrtoint ptr %rd_info.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rd_info.i, align 8
  tail call void @kfree(ptr noundef %84) #10
  br label %err_free_desc.i

if.end4.i:                                        ; preds = %if.end.i103
  %85 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %aRD0Ring.i, align 4
  %add.i = add nuw nsw i32 %i.063.i, 1
  %87 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %opts.i, align 4
  %rem.i = srem i32 %add.i, %88
  %arrayidx8.i106 = getelementptr %struct.vnt_rx_desc, ptr %86, i32 %rem.i
  %next.i = getelementptr %struct.vnt_rx_desc, ptr %78, i32 %i.063.i, i32 4
  %89 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx8.i106, ptr %next.i, align 8
  %add9.i = add i32 %curr.064.i, 32
  %90 = tail call i32 @llvm.bswap.i32(i32 %add9.i) #10
  %next_desc.i = getelementptr %struct.vnt_rx_desc, ptr %78, i32 %i.063.i, i32 3
  %91 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 %90, ptr %next_desc.i, align 4
  %92 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %opts.i, align 4
  %cmp.i = icmp slt i32 %add.i, %93
  br i1 %cmp.i, label %if.end4.i.for.body.i_crit_edge, label %if.then12.i

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then12.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %rd0_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rd0_pool_dma.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #10
  %97 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %aRD0Ring.i, align 4
  %next_desc16.i = getelementptr %struct.vnt_rx_desc, ptr %98, i32 %i.063.i, i32 3
  %99 = ptrtoint ptr %next_desc16.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %96, ptr %next_desc16.i, align 4
  br label %if.end33

err_free_desc.i:                                  ; preds = %do.end.i105, %for.body.i.err_free_desc.i_crit_edge
  %dec65.i = add nsw i32 %i.063.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec65.i)
  %tobool22.not66.i = icmp eq i32 %dec65.i, 0
  br i1 %tobool22.not66.i, label %err_free_desc.i.err_free_irq_crit_edge, label %err_free_desc.i.while.body.i_crit_edge

err_free_desc.i.while.body.i_crit_edge:           ; preds = %err_free_desc.i
  br label %while.body.i

err_free_desc.i.err_free_irq_crit_edge:           ; preds = %err_free_desc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_irq

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %err_free_desc.i.while.body.i_crit_edge
  %dec67.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec65.i, %err_free_desc.i.while.body.i_crit_edge ]
  %100 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %aRD0Ring.i, align 4
  %rd_info1.i.i = getelementptr %struct.vnt_rx_desc, ptr %101, i32 %dec67.i, i32 6
  %102 = ptrtoint ptr %rd_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rd_info1.i.i, align 8
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %skb_dma.i.i = getelementptr inbounds %struct.vnt_rd_info, ptr %103, i32 0, i32 1
  %106 = ptrtoint ptr %skb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %skb_dma.i.i, align 4
  %108 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %107, i32 noundef %109, i32 noundef 2, i32 noundef 0) #10
  %110 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %103, align 4
  tail call void @consume_skb(ptr noundef %111) #10
  %112 = ptrtoint ptr %rd_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rd_info1.i.i, align 8
  tail call void @kfree(ptr noundef %113) #10
  %dec.i = add i32 %dec67.i, -1
  %tobool22.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool22.not.i, label %while.body.i.err_free_irq_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.err_free_irq_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_irq

if.end33:                                         ; preds = %if.then12.i, %do.end29.if.end33_crit_edge
  %114 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %aRD0Ring.i, align 4
  %pCurrRD.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 30
  %116 = ptrtoint ptr %pCurrRD.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %pCurrRD.i, align 4
  %117 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_descs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp62.i110 = icmp sgt i32 %118, 0
  br i1 %cmp62.i110, label %for.body.lr.ph.i112, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

for.body.lr.ph.i112:                              ; preds = %if.end33
  %119 = ptrtoint ptr %rd1_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rd1_pool_dma.i, align 4
  br label %for.body.i118

for.body.i118:                                    ; preds = %if.end4.i131.for.body.i118_crit_edge, %for.body.lr.ph.i112
  %curr.064.i113 = phi i32 [ %120, %for.body.lr.ph.i112 ], [ %add9.i128, %if.end4.i131.for.body.i118_crit_edge ]
  %i.063.i114 = phi i32 [ 0, %for.body.lr.ph.i112 ], [ %add.i124, %if.end4.i131.for.body.i118_crit_edge ]
  %121 = ptrtoint ptr %aRD1Ring.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %aRD1Ring.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %123 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i115 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3520, i32 noundef 8) #14
  %rd_info.i116 = getelementptr %struct.vnt_rx_desc, ptr %122, i32 %i.063.i114, i32 6
  %124 = ptrtoint ptr %rd_info.i116 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i.i115, ptr %rd_info.i116, align 8
  %tobool.not.i117 = icmp eq ptr %call7.i.i.i115, null
  br i1 %tobool.not.i117, label %for.body.i118.err_free_desc.i137_crit_edge, label %if.end.i121

for.body.i118.err_free_desc.i137_crit_edge:       ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_desc.i137

if.end.i121:                                      ; preds = %for.body.i118
  %arrayidx.i119 = getelementptr %struct.vnt_rx_desc, ptr %122, i32 %i.063.i114
  %call2.i120 = tail call fastcc zeroext i1 @device_alloc_rx_buf(ptr noundef %1, ptr noundef %arrayidx.i119) #10
  br i1 %call2.i120, label %if.end4.i131, label %do.end.i123

do.end.i123:                                      ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %dev.i122 = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i122, ptr noundef nonnull @.str.42) #13
  %127 = ptrtoint ptr %rd_info.i116 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rd_info.i116, align 8
  tail call void @kfree(ptr noundef %128) #10
  br label %err_free_desc.i137

if.end4.i131:                                     ; preds = %if.end.i121
  %129 = ptrtoint ptr %aRD1Ring.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %aRD1Ring.i, align 4
  %add.i124 = add nuw nsw i32 %i.063.i114, 1
  %131 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_descs1.i, align 4
  %rem.i125 = srem i32 %add.i124, %132
  %arrayidx8.i126 = getelementptr %struct.vnt_rx_desc, ptr %130, i32 %rem.i125
  %next.i127 = getelementptr %struct.vnt_rx_desc, ptr %122, i32 %i.063.i114, i32 4
  %133 = ptrtoint ptr %next.i127 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx8.i126, ptr %next.i127, align 8
  %add9.i128 = add i32 %curr.064.i113, 32
  %134 = tail call i32 @llvm.bswap.i32(i32 %add9.i128) #10
  %next_desc.i129 = getelementptr %struct.vnt_rx_desc, ptr %122, i32 %i.063.i114, i32 3
  %135 = ptrtoint ptr %next_desc.i129 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 %134, ptr %next_desc.i129, align 4
  %136 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_descs1.i, align 4
  %cmp.i130 = icmp slt i32 %add.i124, %137
  br i1 %cmp.i130, label %if.end4.i131.for.body.i118_crit_edge, label %if.then12.i133

if.end4.i131.for.body.i118_crit_edge:             ; preds = %if.end4.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i118

if.then12.i133:                                   ; preds = %if.end4.i131
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %rd1_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rd1_pool_dma.i, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #10
  %141 = ptrtoint ptr %aRD1Ring.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %aRD1Ring.i, align 4
  %next_desc16.i132 = getelementptr %struct.vnt_rx_desc, ptr %142, i32 %i.063.i114, i32 3
  %143 = ptrtoint ptr %next_desc16.i132 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 %140, ptr %next_desc16.i132, align 4
  br label %if.end37

err_free_desc.i137:                               ; preds = %do.end.i123, %for.body.i118.err_free_desc.i137_crit_edge
  %dec65.i135 = add nsw i32 %i.063.i114, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec65.i135)
  %tobool22.not66.i136 = icmp eq i32 %dec65.i135, 0
  br i1 %tobool22.not66.i136, label %err_free_desc.i137.err_free_rd0_ring_crit_edge, label %err_free_desc.i137.while.body.i146_crit_edge

err_free_desc.i137.while.body.i146_crit_edge:     ; preds = %err_free_desc.i137
  br label %while.body.i146

err_free_desc.i137.err_free_rd0_ring_crit_edge:   ; preds = %err_free_desc.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_rd0_ring

while.body.i146:                                  ; preds = %while.body.i146.while.body.i146_crit_edge, %err_free_desc.i137.while.body.i146_crit_edge
  %dec67.i140 = phi i32 [ %dec.i144, %while.body.i146.while.body.i146_crit_edge ], [ %dec65.i135, %err_free_desc.i137.while.body.i146_crit_edge ]
  %144 = ptrtoint ptr %aRD1Ring.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %aRD1Ring.i, align 4
  %rd_info1.i.i141 = getelementptr %struct.vnt_rx_desc, ptr %145, i32 %dec67.i140, i32 6
  %146 = ptrtoint ptr %rd_info1.i.i141 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rd_info1.i.i141, align 8
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %dev.i.i142 = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  %skb_dma.i.i143 = getelementptr inbounds %struct.vnt_rd_info, ptr %147, i32 0, i32 1
  %150 = ptrtoint ptr %skb_dma.i.i143 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %skb_dma.i.i143, align 4
  %152 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i142, i32 noundef %151, i32 noundef %153, i32 noundef 2, i32 noundef 0) #10
  %154 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %147, align 4
  tail call void @consume_skb(ptr noundef %155) #10
  %156 = ptrtoint ptr %rd_info1.i.i141 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rd_info1.i.i141, align 8
  tail call void @kfree(ptr noundef %157) #10
  %dec.i144 = add i32 %dec67.i140, -1
  %tobool22.not.i145 = icmp eq i32 %dec.i144, 0
  br i1 %tobool22.not.i145, label %while.body.i146.err_free_rd0_ring_crit_edge, label %while.body.i146.while.body.i146_crit_edge

while.body.i146.while.body.i146_crit_edge:        ; preds = %while.body.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i146

while.body.i146.err_free_rd0_ring_crit_edge:      ; preds = %while.body.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_rd0_ring

if.end37:                                         ; preds = %if.then12.i133, %if.end33.if.end37_crit_edge
  %158 = ptrtoint ptr %aRD1Ring.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %aRD1Ring.i, align 4
  %arrayidx20.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 30, i32 1
  %160 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %159, ptr %arrayidx20.i, align 4
  %161 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tx_descs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp61.i = icmp sgt i32 %162, 0
  br i1 %cmp61.i, label %for.body.lr.ph.i153, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

for.body.lr.ph.i153:                              ; preds = %if.end37
  %163 = ptrtoint ptr %td0_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %td0_pool_dma.i, align 4
  br label %for.body.i156

for.body.i156:                                    ; preds = %if.end.i163.for.body.i156_crit_edge, %for.body.lr.ph.i153
  %curr.063.i = phi i32 [ %164, %for.body.lr.ph.i153 ], [ %add12.i, %if.end.i163.for.body.i156_crit_edge ]
  %i.062.i = phi i32 [ 0, %for.body.lr.ph.i153 ], [ %add7.i, %if.end.i163.for.body.i156_crit_edge ]
  %165 = ptrtoint ptr %apTD0Rings.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %apTD0Rings.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %167 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i154 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 3520, i32 noundef 20) #14
  %td_info.i = getelementptr %struct.vnt_tx_desc, ptr %166, i32 %i.062.i, i32 6
  %168 = ptrtoint ptr %td_info.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call7.i.i.i154, ptr %td_info.i, align 8
  %tobool.not.i155 = icmp eq ptr %call7.i.i.i154, null
  br i1 %tobool.not.i155, label %while.cond.preheader.i, label %if.end.i163

while.cond.preheader.i:                           ; preds = %for.body.i156
  %dec64.i = add nsw i32 %i.062.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec64.i)
  %tobool25.not65.i = icmp eq i32 %dec64.i, 0
  br i1 %tobool25.not65.i, label %while.cond.preheader.i.err_free_rd1_ring_crit_edge, label %while.cond.preheader.i.while.body.i165_crit_edge

while.cond.preheader.i.while.body.i165_crit_edge: ; preds = %while.cond.preheader.i
  br label %while.body.i165

while.cond.preheader.i.err_free_rd1_ring_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_rd1_ring

if.end.i163:                                      ; preds = %for.body.i156
  %169 = ptrtoint ptr %tx0_bufs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tx0_bufs.i, align 4
  %mul.i = mul i32 %i.062.i, 2390
  %add.ptr.i157 = getelementptr i8, ptr %170, i32 %mul.i
  %buf.i = getelementptr inbounds %struct.vnt_td_info, ptr %call7.i.i.i154, i32 0, i32 2
  %171 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %add.ptr.i157, ptr %buf.i, align 8
  %172 = ptrtoint ptr %tx_bufs_dma0.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tx_bufs_dma0.i, align 4
  %add.i158 = add i32 %173, %mul.i
  %174 = ptrtoint ptr %td_info.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %td_info.i, align 8
  %buf_dma.i = getelementptr inbounds %struct.vnt_td_info, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add.i158, ptr %buf_dma.i, align 4
  %177 = ptrtoint ptr %apTD0Rings.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %apTD0Rings.i, align 4
  %add7.i = add nuw nsw i32 %i.062.i, 1
  %179 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx_descs.i, align 4
  %rem.i159 = srem i32 %add7.i, %180
  %arrayidx11.i = getelementptr %struct.vnt_tx_desc, ptr %178, i32 %rem.i159
  %next.i160 = getelementptr %struct.vnt_tx_desc, ptr %166, i32 %i.062.i, i32 4
  %181 = ptrtoint ptr %next.i160 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %arrayidx11.i, ptr %next.i160, align 8
  %add12.i = add i32 %curr.063.i, 32
  %182 = tail call i32 @llvm.bswap.i32(i32 %add12.i) #10
  %next_desc.i161 = getelementptr %struct.vnt_tx_desc, ptr %166, i32 %i.062.i, i32 3
  %183 = ptrtoint ptr %next_desc.i161 to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile i32 %182, ptr %next_desc.i161, align 4
  %184 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tx_descs.i, align 4
  %cmp.i162 = icmp slt i32 %add7.i, %185
  br i1 %cmp.i162, label %if.end.i163.for.body.i156_crit_edge, label %if.then15.i

if.end.i163.for.body.i156_crit_edge:              ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i156

if.then15.i:                                      ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #12
  %186 = ptrtoint ptr %td0_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %td0_pool_dma.i, align 4
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #10
  %189 = ptrtoint ptr %apTD0Rings.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %apTD0Rings.i, align 4
  %next_desc19.i = getelementptr %struct.vnt_tx_desc, ptr %190, i32 %i.062.i, i32 3
  %191 = ptrtoint ptr %next_desc19.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile i32 %188, ptr %next_desc19.i, align 4
  br label %if.end41

while.body.i165:                                  ; preds = %while.body.i165.while.body.i165_crit_edge, %while.cond.preheader.i.while.body.i165_crit_edge
  %dec66.i = phi i32 [ %dec.i164, %while.body.i165.while.body.i165_crit_edge ], [ %dec64.i, %while.cond.preheader.i.while.body.i165_crit_edge ]
  %192 = ptrtoint ptr %apTD0Rings.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %apTD0Rings.i, align 4
  %td_info28.i = getelementptr %struct.vnt_tx_desc, ptr %193, i32 %dec66.i, i32 6
  %194 = ptrtoint ptr %td_info28.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %td_info28.i, align 8
  tail call void @kfree(ptr noundef %195) #10
  %dec.i164 = add i32 %dec66.i, -1
  %tobool25.not.i = icmp eq i32 %dec.i164, 0
  br i1 %tobool25.not.i, label %while.body.i165.err_free_rd1_ring_crit_edge, label %while.body.i165.while.body.i165_crit_edge

while.body.i165.while.body.i165_crit_edge:        ; preds = %while.body.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i165

while.body.i165.err_free_rd1_ring_crit_edge:      ; preds = %while.body.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_rd1_ring

if.end41:                                         ; preds = %if.then15.i, %if.end37.if.end41_crit_edge
  %196 = ptrtoint ptr %apTD0Rings.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %apTD0Rings.i, align 4
  %apCurrTD.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 24
  %198 = ptrtoint ptr %apCurrTD.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %197, ptr %apCurrTD.i, align 4
  %apTailTD.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 25
  %199 = ptrtoint ptr %apTailTD.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %197, ptr %apTailTD.i, align 4
  %call42 = tail call fastcc i32 @device_init_td1_ring(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %err_free_td0_ring

if.end45:                                         ; preds = %if.end41
  tail call fastcc void @device_init_registers(ptr noundef %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start, %if.then58)) #10
          to label %do.end63 [label %if.then58], !srcloc !190

if.then58:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 4
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %201, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start.__UNIQUE_ID_ddebug369, ptr noundef %dev60, ptr noundef nonnull @.str.36) #10
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %if.end45
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %202 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %203, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -14737408) #10, !srcloc !196
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #10
  br label %cleanup

err_free_td0_ring:                                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @device_free_td0_ring(ptr noundef %1)
  br label %err_free_rd1_ring

err_free_rd1_ring:                                ; preds = %err_free_td0_ring, %while.body.i165.err_free_rd1_ring_crit_edge, %while.cond.preheader.i.err_free_rd1_ring_crit_edge
  %ret.0 = phi i32 [ %call42, %err_free_td0_ring ], [ -12, %while.cond.preheader.i.err_free_rd1_ring_crit_edge ], [ -12, %while.body.i165.err_free_rd1_ring_crit_edge ]
  %204 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %rx_descs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp6.i = icmp sgt i32 %205, 0
  br i1 %cmp6.i, label %err_free_rd1_ring.for.body.i175_crit_edge, label %err_free_rd1_ring.err_free_rd0_ring_crit_edge

err_free_rd1_ring.err_free_rd0_ring_crit_edge:    ; preds = %err_free_rd1_ring
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_rd0_ring

err_free_rd1_ring.for.body.i175_crit_edge:        ; preds = %err_free_rd1_ring
  br label %for.body.i175

for.body.i175:                                    ; preds = %for.body.i175.for.body.i175_crit_edge, %err_free_rd1_ring.for.body.i175_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i175.for.body.i175_crit_edge ], [ 0, %err_free_rd1_ring.for.body.i175_crit_edge ]
  %206 = ptrtoint ptr %aRD1Ring.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %aRD1Ring.i, align 4
  %rd_info1.i.i171 = getelementptr %struct.vnt_rx_desc, ptr %207, i32 %i.07.i, i32 6
  %208 = ptrtoint ptr %rd_info1.i.i171 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rd_info1.i.i171, align 8
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 4
  %dev.i.i172 = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 44
  %skb_dma.i.i173 = getelementptr inbounds %struct.vnt_rd_info, ptr %209, i32 0, i32 1
  %212 = ptrtoint ptr %skb_dma.i.i173 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %skb_dma.i.i173, align 4
  %214 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i172, i32 noundef %213, i32 noundef %215, i32 noundef 2, i32 noundef 0) #10
  %216 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %209, align 4
  tail call void @consume_skb(ptr noundef %217) #10
  %218 = ptrtoint ptr %rd_info1.i.i171 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %rd_info1.i.i171, align 8
  tail call void @kfree(ptr noundef %219) #10
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %220 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %rx_descs1.i, align 4
  %cmp.i174 = icmp slt i32 %inc.i, %221
  br i1 %cmp.i174, label %for.body.i175.for.body.i175_crit_edge, label %for.body.i175.err_free_rd0_ring_crit_edge

for.body.i175.err_free_rd0_ring_crit_edge:        ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_rd0_ring

for.body.i175.for.body.i175_crit_edge:            ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i175

err_free_rd0_ring:                                ; preds = %for.body.i175.err_free_rd0_ring_crit_edge, %err_free_rd1_ring.err_free_rd0_ring_crit_edge, %while.body.i146.err_free_rd0_ring_crit_edge, %err_free_desc.i137.err_free_rd0_ring_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_rd1_ring.err_free_rd0_ring_crit_edge ], [ -12, %err_free_desc.i137.err_free_rd0_ring_crit_edge ], [ -12, %while.body.i146.err_free_rd0_ring_crit_edge ], [ %ret.0, %for.body.i175.err_free_rd0_ring_crit_edge ]
  %222 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %opts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp6.i177 = icmp sgt i32 %223, 0
  br i1 %cmp6.i177, label %err_free_rd0_ring.for.body.i187_crit_edge, label %err_free_rd0_ring.err_free_irq_crit_edge

err_free_rd0_ring.err_free_irq_crit_edge:         ; preds = %err_free_rd0_ring
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_irq

err_free_rd0_ring.for.body.i187_crit_edge:        ; preds = %err_free_rd0_ring
  br label %for.body.i187

for.body.i187:                                    ; preds = %for.body.i187.for.body.i187_crit_edge, %err_free_rd0_ring.for.body.i187_crit_edge
  %i.07.i181 = phi i32 [ %inc.i185, %for.body.i187.for.body.i187_crit_edge ], [ 0, %err_free_rd0_ring.for.body.i187_crit_edge ]
  %224 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %aRD0Ring.i, align 4
  %rd_info1.i.i182 = getelementptr %struct.vnt_rx_desc, ptr %225, i32 %i.07.i181, i32 6
  %226 = ptrtoint ptr %rd_info1.i.i182 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rd_info1.i.i182, align 8
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 4
  %dev.i.i183 = getelementptr inbounds %struct.pci_dev, ptr %229, i32 0, i32 44
  %skb_dma.i.i184 = getelementptr inbounds %struct.vnt_rd_info, ptr %227, i32 0, i32 1
  %230 = ptrtoint ptr %skb_dma.i.i184 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %skb_dma.i.i184, align 4
  %232 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i183, i32 noundef %231, i32 noundef %233, i32 noundef 2, i32 noundef 0) #10
  %234 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %227, align 4
  tail call void @consume_skb(ptr noundef %235) #10
  %236 = ptrtoint ptr %rd_info1.i.i182 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %rd_info1.i.i182, align 8
  tail call void @kfree(ptr noundef %237) #10
  %inc.i185 = add nuw nsw i32 %i.07.i181, 1
  %238 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %opts.i, align 4
  %cmp.i186 = icmp slt i32 %inc.i185, %239
  br i1 %cmp.i186, label %for.body.i187.for.body.i187_crit_edge, label %for.body.i187.err_free_irq_crit_edge

for.body.i187.err_free_irq_crit_edge:             ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_irq

for.body.i187.for.body.i187_crit_edge:            ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i187

err_free_irq:                                     ; preds = %for.body.i187.err_free_irq_crit_edge, %err_free_rd0_ring.err_free_irq_crit_edge, %while.body.i.err_free_irq_crit_edge, %err_free_desc.i.err_free_irq_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_rd0_ring.err_free_irq_crit_edge ], [ -12, %err_free_desc.i.err_free_irq_crit_edge ], [ -12, %while.body.i.err_free_irq_crit_edge ], [ %ret.1, %for.body.i187.err_free_irq_crit_edge ]
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %1, align 4
  %irq65 = getelementptr inbounds %struct.pci_dev, ptr %241, i32 0, i32 46
  %242 = ptrtoint ptr %irq65 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %irq65, align 4
  %call66 = tail call ptr @free_irq(i32 noundef %243, ptr noundef %1) #10
  br label %err_free_rings

err_free_rings:                                   ; preds = %err_free_irq, %if.then8, %do.body
  %ret.3 = phi i32 [ %call.i, %if.then8 ], [ %ret.2, %err_free_irq ], [ %call.i, %do.body ]
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %1, align 4
  %dev.i188 = getelementptr inbounds %struct.pci_dev, ptr %245, i32 0, i32 44
  %246 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %opts.i, align 4
  %248 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %rx_descs1.i, align 4
  %mul37.i = add i32 %249, %247
  %250 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %tx_descs.i, align 4
  %add38.i = add i32 %mul37.i, %251
  %252 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx8.i, align 4
  %add539.i = add i32 %add38.i, %253
  %add10.i193 = shl i32 %add539.i, 5
  %254 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %aRD0Ring.i, align 4
  %256 = ptrtoint ptr %pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %pool_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i188, i32 noundef %add10.i193, ptr noundef %255, i32 noundef %257, i32 noundef 0) #10
  %258 = ptrtoint ptr %tx0_bufs.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %tx0_bufs.i, align 4
  %tobool.not.i197 = icmp eq ptr %259, null
  br i1 %tobool.not.i197, label %err_free_rings.cleanup_crit_edge, label %if.then.i

err_free_rings.cleanup_crit_edge:                 ; preds = %err_free_rings
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %err_free_rings
  call void @__sanitizer_cov_trace_pc() #12
  %260 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %1, align 4
  %dev12.i198 = getelementptr inbounds %struct.pci_dev, ptr %261, i32 0, i32 44
  %262 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %tx_descs.i, align 4
  %264 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx8.i, align 4
  %mul1640.i = add i32 %265, %263
  %add21.i199 = mul i32 %mul1640.i, 2390
  %add23.i = add i32 %add21.i199, 3412
  %266 = ptrtoint ptr %tx_bufs_dma0.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %tx_bufs_dma0.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev12.i198, i32 noundef %add23.i, ptr noundef nonnull %259, i32 noundef %267, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err_free_rings.cleanup_crit_edge, %do.end63, %do.end41.i, %do.end.i
  %retval.0 = phi i32 [ 0, %do.end63 ], [ %ret.3, %err_free_rings.cleanup_crit_edge ], [ %ret.3, %if.then.i ], [ -12, %do.end41.i ], [ -12, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_stop(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #10
  %interrupt_work = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 133
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %interrupt_work) #10
  %call2 = tail call zeroext i1 @MACbShutdown(ptr noundef %1) #10
  %call3 = tail call zeroext i1 @MACbSoftwareReset(ptr noundef %1) #10
  tail call void @CARDbRadioPowerOff(ptr noundef %1) #10
  %tx_descs.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 2
  %2 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_descs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.device_free_td0_ring.exit_crit_edge

entry.device_free_td0_ring.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_td0_ring.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %apTD0Rings.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %apTD0Rings.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apTD0Rings.i, align 4
  %td_info2.i = getelementptr %struct.vnt_tx_desc, ptr %5, i32 %i.09.i, i32 6
  %6 = ptrtoint ptr %td_info2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %td_info2.i, align 8
  %skb.i = getelementptr inbounds %struct.vnt_td_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %9) #10
  %10 = ptrtoint ptr %td_info2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %td_info2.i, align 8
  tail call void @kfree(ptr noundef %11) #10
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %12 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_descs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.device_free_td0_ring.exit_crit_edge

for.body.i.device_free_td0_ring.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_td0_ring.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

device_free_td0_ring.exit:                        ; preds = %for.body.i.device_free_td0_ring.exit_crit_edge, %entry.device_free_td0_ring.exit_crit_edge
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 31, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i16 = icmp sgt i32 %15, 0
  br i1 %cmp8.i16, label %for.body.lr.ph.i17, label %device_free_td0_ring.exit.device_free_td1_ring.exit_crit_edge

device_free_td0_ring.exit.device_free_td1_ring.exit_crit_edge: ; preds = %device_free_td0_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_td1_ring.exit

for.body.lr.ph.i17:                               ; preds = %device_free_td0_ring.exit
  %apTD1Rings.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 27
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %for.body.lr.ph.i17
  %i.09.i18 = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %inc.i21, %for.body.i23.for.body.i23_crit_edge ]
  %16 = ptrtoint ptr %apTD1Rings.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %apTD1Rings.i, align 4
  %td_info2.i19 = getelementptr %struct.vnt_tx_desc, ptr %17, i32 %i.09.i18, i32 6
  %18 = ptrtoint ptr %td_info2.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %td_info2.i19, align 8
  %skb.i20 = getelementptr inbounds %struct.vnt_td_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %skb.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.i20, align 4
  tail call void @consume_skb(ptr noundef %21) #10
  %22 = ptrtoint ptr %td_info2.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %td_info2.i19, align 8
  tail call void @kfree(ptr noundef %23) #10
  %inc.i21 = add nuw nsw i32 %i.09.i18, 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %cmp.i22 = icmp slt i32 %inc.i21, %25
  br i1 %cmp.i22, label %for.body.i23.for.body.i23_crit_edge, label %for.body.i23.device_free_td1_ring.exit_crit_edge

for.body.i23.device_free_td1_ring.exit_crit_edge: ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_td1_ring.exit

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i23

device_free_td1_ring.exit:                        ; preds = %for.body.i23.device_free_td1_ring.exit_crit_edge, %device_free_td0_ring.exit.device_free_td1_ring.exit_crit_edge
  %opts.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31
  %26 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %opts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp6.i = icmp sgt i32 %27, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i24, label %device_free_td1_ring.exit.device_free_rd0_ring.exit_crit_edge

device_free_td1_ring.exit.device_free_rd0_ring.exit_crit_edge: ; preds = %device_free_td1_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_rd0_ring.exit

for.body.lr.ph.i24:                               ; preds = %device_free_td1_ring.exit
  %aRD0Ring.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 28
  %rx_buf_sz.i.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 33
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %for.body.lr.ph.i24
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i24 ], [ %inc.i25, %for.body.i27.for.body.i27_crit_edge ]
  %28 = ptrtoint ptr %aRD0Ring.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aRD0Ring.i, align 4
  %rd_info1.i.i = getelementptr %struct.vnt_rx_desc, ptr %29, i32 %i.07.i, i32 6
  %30 = ptrtoint ptr %rd_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rd_info1.i.i, align 8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %skb_dma.i.i = getelementptr inbounds %struct.vnt_rd_info, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %skb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %skb_dma.i.i, align 4
  %36 = ptrtoint ptr %rx_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_buf_sz.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %35, i32 noundef %37, i32 noundef 2, i32 noundef 0) #10
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %31, align 4
  tail call void @consume_skb(ptr noundef %39) #10
  %40 = ptrtoint ptr %rd_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rd_info1.i.i, align 8
  tail call void @kfree(ptr noundef %41) #10
  %inc.i25 = add nuw nsw i32 %i.07.i, 1
  %42 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %opts.i, align 4
  %cmp.i26 = icmp slt i32 %inc.i25, %43
  br i1 %cmp.i26, label %for.body.i27.for.body.i27_crit_edge, label %for.body.i27.device_free_rd0_ring.exit_crit_edge

for.body.i27.device_free_rd0_ring.exit_crit_edge: ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_rd0_ring.exit

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i27

device_free_rd0_ring.exit:                        ; preds = %for.body.i27.device_free_rd0_ring.exit_crit_edge, %device_free_td1_ring.exit.device_free_rd0_ring.exit_crit_edge
  %rx_descs1.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 31, i32 1
  %44 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_descs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp6.i28 = icmp sgt i32 %45, 0
  br i1 %cmp6.i28, label %for.body.lr.ph.i30, label %device_free_rd0_ring.exit.device_free_rd1_ring.exit_crit_edge

device_free_rd0_ring.exit.device_free_rd1_ring.exit_crit_edge: ; preds = %device_free_rd0_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_rd1_ring.exit

for.body.lr.ph.i30:                               ; preds = %device_free_rd0_ring.exit
  %aRD1Ring.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 29
  %rx_buf_sz.i.i29 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 33
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.body.i37.for.body.i37_crit_edge, %for.body.lr.ph.i30
  %i.07.i31 = phi i32 [ 0, %for.body.lr.ph.i30 ], [ %inc.i35, %for.body.i37.for.body.i37_crit_edge ]
  %46 = ptrtoint ptr %aRD1Ring.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aRD1Ring.i, align 4
  %rd_info1.i.i32 = getelementptr %struct.vnt_rx_desc, ptr %47, i32 %i.07.i31, i32 6
  %48 = ptrtoint ptr %rd_info1.i.i32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rd_info1.i.i32, align 8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev.i.i33 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %skb_dma.i.i34 = getelementptr inbounds %struct.vnt_rd_info, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %skb_dma.i.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %skb_dma.i.i34, align 4
  %54 = ptrtoint ptr %rx_buf_sz.i.i29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_buf_sz.i.i29, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i33, i32 noundef %53, i32 noundef %55, i32 noundef 2, i32 noundef 0) #10
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %49, align 4
  tail call void @consume_skb(ptr noundef %57) #10
  %58 = ptrtoint ptr %rd_info1.i.i32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rd_info1.i.i32, align 8
  tail call void @kfree(ptr noundef %59) #10
  %inc.i35 = add nuw nsw i32 %i.07.i31, 1
  %60 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_descs1.i, align 4
  %cmp.i36 = icmp slt i32 %inc.i35, %61
  br i1 %cmp.i36, label %for.body.i37.for.body.i37_crit_edge, label %for.body.i37.device_free_rd1_ring.exit_crit_edge

for.body.i37.device_free_rd1_ring.exit_crit_edge: ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_rd1_ring.exit

for.body.i37.for.body.i37_crit_edge:              ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i37

device_free_rd1_ring.exit:                        ; preds = %for.body.i37.device_free_rd1_ring.exit_crit_edge, %device_free_rd0_ring.exit.device_free_rd1_ring.exit_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %64 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %opts.i, align 4
  %66 = ptrtoint ptr %rx_descs1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_descs1.i, align 4
  %mul37.i = add i32 %67, %65
  %68 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_descs.i, align 4
  %add38.i = add i32 %mul37.i, %69
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %add539.i = add i32 %add38.i, %71
  %add10.i = shl i32 %add539.i, 5
  %aRD0Ring.i41 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 28
  %72 = ptrtoint ptr %aRD0Ring.i41 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %aRD0Ring.i41, align 4
  %pool_dma.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 8
  %74 = ptrtoint ptr %pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pool_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %add10.i, ptr noundef %73, i32 noundef %75, i32 noundef 0) #10
  %tx0_bufs.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 16
  %76 = ptrtoint ptr %tx0_bufs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx0_bufs.i, align 4
  %tobool.not.i = icmp eq ptr %77, null
  br i1 %tobool.not.i, label %device_free_rd1_ring.exit.device_free_rings.exit_crit_edge, label %if.then.i

device_free_rd1_ring.exit.device_free_rings.exit_crit_edge: ; preds = %device_free_rd1_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_rings.exit

if.then.i:                                        ; preds = %device_free_rd1_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %80 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_descs.i, align 4
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i, align 4
  %mul1640.i = add i32 %83, %81
  %add21.i = mul i32 %mul1640.i, 2390
  %add23.i = add i32 %add21.i, 3412
  %tx_bufs_dma0.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 13
  %84 = ptrtoint ptr %tx_bufs_dma0.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_bufs_dma0.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev12.i, i32 noundef %add23.i, ptr noundef nonnull %77, i32 noundef %85, i32 noundef 0) #10
  br label %device_free_rings.exit

device_free_rings.exit:                           ; preds = %if.then.i, %device_free_rd1_ring.exit.device_free_rings.exit_crit_edge
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 46
  %88 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %89, ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %vif2 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vif, ptr %vif2, align 4
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %do.body
    i32 3, label %do.body18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 86
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %9 = and i8 %8, -33
  %10 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_offset, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %9) #10, !srcloc !192
  %12 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_offset, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 84
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %15 = or i8 %14, 32
  %16 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_offset, align 4
  %add.ptr14 = getelementptr i8, ptr %17, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %15) #10, !srcloc !192
  br label %sw.epilog

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_offset20 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %port_offset20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_offset20, align 4
  %add.ptr21 = getelementptr i8, ptr %19, i32 86
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %21 = and i8 %20, -33
  %22 = ptrtoint ptr %port_offset20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_offset20, align 4
  %add.ptr27 = getelementptr i8, ptr %23, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %21) #10, !srcloc !192
  %24 = ptrtoint ptr %port_offset20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_offset20, align 4
  %add.ptr33 = getelementptr i8, ptr %25, i32 84
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %27 = or i8 %26, 16
  %28 = ptrtoint ptr %port_offset20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_offset20, align 4
  %add.ptr39 = getelementptr i8, ptr %29, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 %27) #10, !srcloc !192
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body18, %do.body, %entry.sw.epilog_crit_edge
  %30 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vif, align 8
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 77
  %32 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %op_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_remove_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 3, label %do.body30
    i32 1, label %do.body
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 87
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %8 = and i8 %7, -2
  %9 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %8) #10, !srcloc !192
  %11 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_offset, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 72
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %14 = and i8 %13, -2
  %15 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_offset, align 4
  %add.ptr14 = getelementptr i8, ptr %16, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %14) #10, !srcloc !192
  %17 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port_offset, align 4
  %add.ptr20 = getelementptr i8, ptr %18, i32 84
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %20 = and i8 %19, -33
  %21 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_offset, align 4
  %add.ptr26 = getelementptr i8, ptr %22, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 %20) #10, !srcloc !192
  br label %sw.epilog

do.body30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_offset32 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %port_offset32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port_offset32, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 87
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %26 = and i8 %25, -2
  %27 = ptrtoint ptr %port_offset32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_offset32, align 4
  %add.ptr39 = getelementptr i8, ptr %28, i32 87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 %26) #10, !srcloc !192
  %29 = ptrtoint ptr %port_offset32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_offset32, align 4
  %add.ptr45 = getelementptr i8, ptr %30, i32 72
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %32 = and i8 %31, -2
  %33 = ptrtoint ptr %port_offset32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port_offset32, align 4
  %add.ptr51 = getelementptr i8, ptr %34, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 %32) #10, !srcloc !192
  %35 = ptrtoint ptr %port_offset32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port_offset32, align 4
  %add.ptr57 = getelementptr i8, ptr %36, i32 84
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %38 = and i8 %37, -17
  %39 = ptrtoint ptr %port_offset32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port_offset32, align 4
  %add.ptr63 = getelementptr i8, ptr %40, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 %38) #10, !srcloc !192
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body30, %do.body, %entry.sw.epilog_crit_edge
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 77
  %41 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %op_mode, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw, align 4
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %listen_interval, align 4
  tail call void @PSvEnablePowerSaving(ptr noundef %1, i16 noundef zeroext %5) #10
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @PSvDisablePowerSaving(ptr noundef %1) #10
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5, %entry.if.end6_crit_edge
  %and7 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.if.then12_crit_edge

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw, align 4
  %and10 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end6.if.then12_crit_edge
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %8 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef, align 4
  %call = tail call zeroext i1 @set_channel(ptr noundef %1, ptr noundef %9) #10
  %10 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  %. = select i1 %cmp, i8 0, i8 2
  %byBBType = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 64
  %14 = ptrtoint ptr %byBBType to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %byBBType, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %.)
  %cmp19.not = icmp eq i8 %15, %.
  br i1 %cmp19.not, label %if.then12.if.end26_crit_edge, label %if.then21

if.then12.if.end26_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %byBBType to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %., ptr %byBBType, align 1
  %call24 = tail call zeroext i1 @CARDbSetPhyParameter(ptr noundef %1, i8 noundef zeroext %.) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then12.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge
  %and27 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end43_crit_edge, label %if.then29

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %byBBType30 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 64
  %17 = ptrtoint ptr %byBBType30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %byBBType30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp32 = icmp eq i8 %18, 1
  %spec.select = select i1 %cmp32, i16 0, i16 11
  %19 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 74
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %spec.select, ptr %19, align 2
  %conv39 = zext i16 %spec.select to i32
  %chandef40 = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %21 = ptrtoint ptr %chandef40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chandef40, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_value, align 2
  %call42 = tail call zeroext i1 @RFbSetPower(ptr noundef %1, i32 noundef %conv39, i16 noundef zeroext %24) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then29, %if.end26.if.end43_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %conf, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 13
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aid, align 2
  %current_aid = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %current_aid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %current_aid, align 4
  %and = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conf, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 22
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #10, !srcloc !192
  %9 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conf, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_offset, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 %12) #10, !srcloc !192
  %15 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conf, align 8
  %add.ptr12 = getelementptr i8, ptr %16, i32 1
  %17 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr12, align 1
  %19 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_offset, align 4
  %add.ptr15 = getelementptr i8, ptr %20, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %18) #10, !srcloc !192
  %21 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conf, align 8
  %add.ptr17 = getelementptr i8, ptr %22, i32 2
  %23 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr17, align 1
  %25 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_offset, align 4
  %add.ptr20 = getelementptr i8, ptr %26, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %24) #10, !srcloc !192
  %27 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %conf, align 8
  %add.ptr22 = getelementptr i8, ptr %28, i32 3
  %29 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr22, align 1
  %31 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port_offset, align 4
  %add.ptr25 = getelementptr i8, ptr %32, i32 23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 %30) #10, !srcloc !192
  %33 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %conf, align 8
  %add.ptr27 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr27, align 1
  %37 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port_offset, align 4
  %add.ptr30 = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 %36) #10, !srcloc !192
  %39 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %conf, align 8
  %add.ptr32 = getelementptr i8, ptr %40, i32 5
  %41 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr32, align 1
  %43 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port_offset, align 4
  %add.ptr35 = getelementptr i8, ptr %44, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 %42) #10, !srcloc !192
  %45 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_offset, align 4
  %add.ptr37 = getelementptr i8, ptr %46, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 0) #10, !srcloc !192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and41 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end.if.end56_crit_edge, label %if.then43

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 24
  %47 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %basic_rates, align 8
  %basic_rates44 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %basic_rates44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %basic_rates44, align 4
  tail call void @CARDvUpdateBasicTopRate(ptr noundef %1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_bss_info_changed.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_bss_info_changed, %if.then51)) #10
          to label %if.end56 [label %if.then51], !srcloc !190

if.then51:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %basic_rates, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_bss_info_changed.__UNIQUE_ID_ddebug370, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %53) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then43, %if.end.if.end56_crit_edge
  %and57 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end82_crit_edge, label %if.then59

if.end56.if.end82_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then59:                                        ; preds = %if.end56
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 15
  %54 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %use_short_preamble, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool60.not = icmp eq i8 %55, 0
  %port_offset72 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %port_offset72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port_offset72, align 4
  %add.ptr73 = getelementptr i8, ptr %57, i32 76
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool60.not, label %do.body70, label %do.body62

do.body62:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %59 = or i32 %58, 512
  %60 = ptrtoint ptr %port_offset72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port_offset72, align 4
  %add.ptr67 = getelementptr i8, ptr %61, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %59) #10, !srcloc !196
  br label %if.end82.sink.split

do.body70:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %62 = and i32 %58, -513
  %63 = ptrtoint ptr %port_offset72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port_offset72, align 4
  %add.ptr77 = getelementptr i8, ptr %64, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %62) #10, !srcloc !196
  br label %if.end82.sink.split

if.end82.sink.split:                              ; preds = %do.body70, %do.body62
  %.sink285 = phi i8 [ 1, %do.body62 ], [ 0, %do.body70 ]
  %preamble_type = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 72
  %65 = ptrtoint ptr %preamble_type to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink285, ptr %preamble_type, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.end82.sink.split, %if.end56.if.end82_crit_edge
  %and83 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end110_crit_edge, label %if.then85

if.end82.if.end110_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then85:                                        ; preds = %if.end82
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 14
  %66 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %use_cts_prot, align 4, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool86.not = icmp eq i8 %67, 0
  %port_offset101 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %68 = ptrtoint ptr %port_offset101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port_offset101, align 4
  %add.ptr102 = getelementptr i8, ptr %69, i32 76
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool86.not, label %do.body99, label %do.body88

do.body88:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  %71 = or i32 %70, 536870912
  %72 = ptrtoint ptr %port_offset101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %port_offset101, align 4
  %add.ptr95 = getelementptr i8, ptr %73, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %71) #10, !srcloc !196
  br label %if.end110

do.body99:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  %74 = and i32 %70, -536870913
  %75 = ptrtoint ptr %port_offset101 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %port_offset101, align 4
  %add.ptr106 = getelementptr i8, ptr %76, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %74) #10, !srcloc !196
  br label %if.end110

if.end110:                                        ; preds = %do.body99, %do.body88, %if.end82.if.end110_crit_edge
  %and111 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end120_crit_edge, label %if.then113

if.end110.if.end120_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 16
  %77 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %use_short_slot, align 2, !range !201
  %79 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 82
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %78, ptr %79, align 2
  %byBBType = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 64
  %81 = ptrtoint ptr %byBBType to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %byBBType, align 1
  %call119 = tail call zeroext i1 @CARDbSetPhyParameter(ptr noundef %1, i8 noundef zeroext %82) #10
  %abyBBVGA = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 110
  %83 = ptrtoint ptr %abyBBVGA to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %abyBBVGA, align 2
  tail call void @bb_set_vga_gain_offset(ptr noundef %1, i8 noundef zeroext %84) #10
  br label %if.end120

if.end120:                                        ; preds = %if.then113, %if.end110.if.end120_crit_edge
  %and121 = and i32 %changed, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end126_crit_edge, label %if.then123

if.end120.if.end126_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %wCurrentRate = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 74
  %85 = ptrtoint ptr %wCurrentRate to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %wCurrentRate, align 2
  %conv124 = zext i16 %86 to i32
  %chandef = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 32
  %87 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %hw_value, align 2
  %call125 = tail call zeroext i1 @RFbSetPower(ptr noundef %1, i32 noundef %conv124, i16 noundef zeroext %90) #10
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end120.if.end126_crit_edge
  %and127 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end126.if.end179_crit_edge, label %do.body130

if.end126.if.end179_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.body130:                                       ; preds = %if.end126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_bss_info_changed.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_bss_info_changed, %if.then142)) #10
          to label %do.end149 [label %if.then142], !srcloc !190

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %dev144 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 17
  %93 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %enable_beacon, align 1, !range !201
  %95 = zext i8 %94 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_bss_info_changed.__UNIQUE_ID_ddebug371, ptr noundef %dev144, ptr noundef nonnull @.str.52, i32 noundef %95) #10
  br label %do.end149

do.end149:                                        ; preds = %if.then142, %do.body130
  %enable_beacon150 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 17
  %96 = ptrtoint ptr %enable_beacon150 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %enable_beacon150, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool151.not = icmp eq i8 %97, 0
  br i1 %tobool151.not, label %do.body166, label %if.then152

if.then152:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #12
  %call153 = tail call i32 @vnt_beacon_enable(ptr noundef %1, ptr noundef %vif, ptr noundef %conf) #10
  %port_offset155 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %98 = ptrtoint ptr %port_offset155 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %port_offset155, align 4
  %add.ptr156 = getelementptr i8, ptr %99, i32 87
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr156) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %101 = or i8 %100, 1
  %102 = ptrtoint ptr %port_offset155 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %port_offset155, align 4
  %add.ptr162 = getelementptr i8, ptr %103, i32 87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr162, i8 %101) #10, !srcloc !192
  br label %if.end179

do.body166:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #12
  %port_offset168 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %104 = ptrtoint ptr %port_offset168 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %port_offset168, align 4
  %add.ptr169 = getelementptr i8, ptr %105, i32 87
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr169) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %107 = and i8 %106, -2
  %108 = ptrtoint ptr %port_offset168 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port_offset168, align 4
  %add.ptr175 = getelementptr i8, ptr %109, i32 87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr175, i8 %107) #10, !srcloc !192
  br label %if.end179

if.end179:                                        ; preds = %do.body166, %if.then152, %if.end126.if.end179_crit_edge
  %and180 = and i32 %changed, 1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end179.if.end203_crit_edge, label %land.lhs.true182

if.end179.if.end203_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

land.lhs.true182:                                 ; preds = %if.end179
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 77
  %110 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cmp183.not = icmp eq i32 %111, 3
  br i1 %cmp183.not, label %land.lhs.true182.if.end203_crit_edge, label %if.then185

land.lhs.true182.if.end203_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then185:                                       ; preds = %land.lhs.true182
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 10
  %112 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %assoc, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool186.not = icmp eq i8 %113, 0
  br i1 %tobool186.not, label %if.then185.if.else197_crit_edge, label %land.lhs.true188

if.then185.if.else197_crit_edge:                  ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else197

land.lhs.true188:                                 ; preds = %if.then185
  %beacon_rate = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 25
  %114 = ptrtoint ptr %beacon_rate to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %beacon_rate, align 4
  %tobool189.not = icmp eq ptr %115, null
  br i1 %tobool189.not, label %land.lhs.true188.if.else197_crit_edge, label %if.then190

land.lhs.true188.if.else197_crit_edge:            ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else197

if.then190:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #12
  %hw_value192 = getelementptr inbounds %struct.ieee80211_rate, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %hw_value192 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %hw_value192, align 2
  %conv193 = trunc i16 %117 to i8
  %sync_tsf = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 21
  %118 = ptrtoint ptr %sync_tsf to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %sync_tsf, align 8
  %call194 = tail call zeroext i1 @CARDbUpdateTSF(ptr noundef %1, i8 noundef zeroext %conv193, i64 noundef %119) #10
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 19
  %120 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %beacon_int, align 2
  %call195 = tail call zeroext i1 @CARDbSetBeaconPeriod(ptr noundef %1, i16 noundef zeroext %121) #10
  %122 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %beacon_int, align 2
  tail call void @CARDvSetFirstNextTBTT(ptr noundef %1, i16 noundef zeroext %123) #10
  br label %if.end203

if.else197:                                       ; preds = %land.lhs.true188.if.else197_crit_edge, %if.then185.if.else197_crit_edge
  %port_offset198 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %124 = ptrtoint ptr %port_offset198 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %port_offset198, align 4
  %add.ptr199 = getelementptr i8, ptr %125, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr199, i8 2) #10, !srcloc !192
  %126 = ptrtoint ptr %port_offset198 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %port_offset198, align 4
  %add.ptr201 = getelementptr i8, ptr %127, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr201, i8 1) #10, !srcloc !192
  br label %if.end203

if.end203:                                        ; preds = %if.else197, %if.then190, %land.lhs.true182.if.end203_crit_edge, %if.end179.if.end203_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vnt_prepare_multicast(ptr nocapture noundef readonly %hw, ptr noundef readonly %mc_list) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %ha.052 = load ptr, ptr %mc_list, align 4
  %cmp.not53 = icmp eq ptr %ha.052, %mc_list
  br i1 %cmp.not53, label %entry.for.end_crit_edge, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  br label %cond.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %entry.cond.end_crit_edge
  %ha.055 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.052, %entry.cond.end_crit_edge ]
  %mc_filter.054 = phi i64 [ %or29, %cond.end.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.055, i32 0, i32 2
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #15
  %3 = and i32 %call, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 1
  %6 = lshr i8 %5, 2
  %sh_prom = zext i8 %6 to i64
  %shl28 = shl nuw i64 1, %sh_prom
  %or29 = or i64 %shl28, %mc_filter.054
  %7 = ptrtoint ptr %ha.055 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0 = load ptr, ptr %ha.055, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  %mc_filter.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %or29, %cond.end.for.end_crit_edge ]
  %count = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %mc_list_count = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mc_list_count, align 4
  ret i64 %mc_filter.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_configure(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_flags, align 4
  %and = and i32 %3, 82
  store i32 %and, ptr %total_flags, align 4
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 86
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_configure.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_configure, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_configure.__UNIQUE_ID_ddebug372, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and5 = and i32 %changed_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end.if.end53_crit_edge, label %if.then7

do.end.if.end53_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then7:                                         ; preds = %do.end
  %9 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_flags, align 4
  %and8 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else48, label %if.then10

if.then10:                                        ; preds = %if.then7
  %lock = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 22
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %mc_list_count = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mc_list_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp21 = icmp sgt i32 %12, 2
  %13 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_offset, align 4
  %add.ptr25 = getelementptr i8, ptr %14, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 1) #10
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_offset, align 4
  %add.ptr27 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -1) #10, !srcloc !196
  %17 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port_offset, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 -1) #10, !srcloc !196
  %19 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_offset, align 4
  %add.ptr32 = getelementptr i8, ptr %20, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 0) #10, !srcloc !192
  br label %if.end44

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %conv35 = trunc i64 %multicast to i32
  %21 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_offset, align 4
  %add.ptr37 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv35) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %23) #10, !srcloc !196
  %shr = lshr i64 %multicast, 32
  %conv38 = trunc i64 %shr to i32
  %24 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_offset, align 4
  %add.ptr41 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv38) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %26) #10, !srcloc !196
  %27 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_offset, align 4
  %add.ptr43 = getelementptr i8, ptr %28, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 0) #10, !srcloc !192
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #10
  %29 = or i8 %6, 24
  br label %if.end53

if.else48:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %30 = and i8 %6, -25
  br label %if.end53

if.end53:                                         ; preds = %if.else48, %if.end44, %do.end.if.end53_crit_edge
  %rx_mode.0 = phi i8 [ %29, %if.end44 ], [ %30, %if.else48 ], [ %6, %do.end.if.end53_crit_edge ]
  %and54 = and i32 %changed_flags, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end71_crit_edge, label %if.then56

if.end53.if.end71_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then56:                                        ; preds = %if.end53
  %31 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_flags, align 4
  %and60 = and i32 %32, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else66, label %if.then62

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %33 = and i8 %rx_mode.0, -26
  %34 = or i8 %33, 24
  br label %if.end71

if.else66:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %35 = or i8 %rx_mode.0, 25
  br label %if.end71

if.end71:                                         ; preds = %if.else66, %if.then62, %if.end53.if.end71_crit_edge
  %rx_mode.1 = phi i8 [ %34, %if.then62 ], [ %35, %if.else66 ], [ %rx_mode.0, %if.end53.if.end71_crit_edge ]
  %36 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_offset, align 4
  %add.ptr73 = getelementptr i8, ptr %37, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr73, i8 %rx_mode.1) #10, !srcloc !192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_configure.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_configure, %if.then86)) #10
          to label %do.end92 [label %if.then86], !srcloc !190

if.then86:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %conv89 = zext i8 %rx_mode.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_configure.__UNIQUE_ID_ddebug373, ptr noundef %dev88, ptr noundef nonnull @.str.55, i32 noundef %conv89) #10
  br label %do.end92

do.end92:                                         ; preds = %if.then86, %if.end71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_set_key(ptr noundef %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @vnt_set_keys(ptr noundef %hw, ptr noundef %sta, ptr noundef %vif, ptr noundef %key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %3 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_key_idx, align 2
  %conv = zext i8 %4 to i32
  %key_entry_inuse = getelementptr inbounds %struct.vnt_private, ptr %2, i32 0, i32 3
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %key_entry_inuse, i32 %div3.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %7 = shl nuw i32 1, %and.i
  %8 = and i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then5

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %key_entry_inuse) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then5, %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -95, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vnt_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %low_stats = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 134
  %2 = call ptr @memcpy(ptr %stats, ptr %low_stats, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vnt_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #2 align 64 {
entry:
  %tsf = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tsf) #10
  %2 = ptrtoint ptr %tsf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tsf, align 8, !annotation !202
  %call = call zeroext i1 @CARDbGetCurrentTSF(ptr noundef %1, ptr noundef nonnull %tsf) #10
  %3 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tsf, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tsf) #10
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i64 noundef %tsf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %beacon_int, align 2
  tail call void @CARDvUpdateNextTBTT(ptr noundef %1, i64 noundef %tsf, i16 noundef zeroext %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_reset_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 2) #10, !srcloc !192
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_generate_fifo_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_interrupt(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_work = getelementptr inbounds %struct.vnt_private, ptr %arg, i32 0, i32 133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %interrupt_work) #10
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %arg, i32 0, i32 19
  %1 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !196
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_init_td1_ring(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %td1_pool_dma = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 12
  %arrayidx = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp61 = icmp sgt i32 %1, 0
  br i1 %cmp61, label %for.body.lr.ph, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %td1_pool_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %td1_pool_dma, align 4
  %apTD1Rings = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 27
  %tx1_bufs = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 17
  %tx_bufs_dma1 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %curr.063 = phi i32 [ %3, %for.body.lr.ph ], [ %add12, %if.end.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %add7, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %apTD1Rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apTD1Rings, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #14
  %td_info = getelementptr %struct.vnt_tx_desc, ptr %5, i32 %i.062, i32 6
  %7 = ptrtoint ptr %td_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %td_info, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %while.cond.preheader, label %if.end

while.cond.preheader:                             ; preds = %for.body
  %dec64 = add nsw i32 %i.062, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec64)
  %tobool25.not65 = icmp eq i32 %dec64, 0
  br i1 %tobool25.not65, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %tx1_bufs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx1_bufs, align 4
  %mul = mul i32 %i.062, 2390
  %add.ptr = getelementptr i8, ptr %9, i32 %mul
  %buf = getelementptr inbounds %struct.vnt_td_info, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %buf, align 8
  %11 = ptrtoint ptr %tx_bufs_dma1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_bufs_dma1, align 4
  %add = add i32 %12, %mul
  %13 = ptrtoint ptr %td_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %td_info, align 8
  %buf_dma = getelementptr inbounds %struct.vnt_td_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %buf_dma to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %buf_dma, align 4
  %16 = ptrtoint ptr %apTD1Rings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %apTD1Rings, align 4
  %add7 = add nuw nsw i32 %i.062, 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %rem = srem i32 %add7, %19
  %arrayidx11 = getelementptr %struct.vnt_tx_desc, ptr %17, i32 %rem
  %next = getelementptr %struct.vnt_tx_desc, ptr %5, i32 %i.062, i32 4
  %20 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx11, ptr %next, align 8
  %add12 = add i32 %curr.063, 32
  %21 = tail call i32 @llvm.bswap.i32(i32 %add12)
  %next_desc = getelementptr %struct.vnt_tx_desc, ptr %5, i32 %i.062, i32 3
  %22 = ptrtoint ptr %next_desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %21, ptr %next_desc, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %cmp = icmp slt i32 %add7, %24
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.then15

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %td1_pool_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %td1_pool_dma, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %apTD1Rings17 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 27
  %28 = ptrtoint ptr %apTD1Rings17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %apTD1Rings17, align 4
  %next_desc19 = getelementptr %struct.vnt_tx_desc, ptr %29, i32 %i.062, i32 3
  %30 = ptrtoint ptr %next_desc19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %27, ptr %next_desc19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %entry.if.end20_crit_edge
  %apTD1Rings21 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 27
  %31 = ptrtoint ptr %apTD1Rings21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %apTD1Rings21, align 4
  %arrayidx23 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 24, i32 1
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 25, i32 1
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %arrayidx24, align 4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec66 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec64, %while.cond.preheader.while.body_crit_edge ]
  %35 = ptrtoint ptr %apTD1Rings to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %apTD1Rings, align 4
  %td_info28 = getelementptr %struct.vnt_tx_desc, ptr %36, i32 %dec66, i32 6
  %37 = ptrtoint ptr %td_info28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %td_info28, align 8
  tail call void @kfree(ptr noundef %38) #10
  %dec = add i32 %dec66, -1
  %tobool25.not = icmp eq i32 %dec, 0
  br i1 %tobool25.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end20, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -12, %while.cond.preheader.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_init_registers(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @MACbShutdown(ptr noundef %priv) #10
  tail call void @bb_software_reset(ptr noundef %priv) #10
  %call1 = tail call zeroext i1 @MACbSoftwareReset(ptr noundef %priv) #10
  %bAES = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 104
  %0 = ptrtoint ptr %bAES to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bAES, align 4
  %bProtectMode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 83
  %1 = ptrtoint ptr %bProtectMode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bProtectMode, align 1
  %bNonERPPresent = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 84
  %2 = ptrtoint ptr %bNonERPPresent to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bNonERPPresent, align 4
  %bBarkerPreambleMd = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 85
  %3 = ptrtoint ptr %bBarkerPreambleMd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bBarkerPreambleMd, align 1
  %wCurrentRate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 74
  %4 = ptrtoint ptr %wCurrentRate to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %wCurrentRate, align 2
  %byTopOFDMBasicRate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 68
  %5 = ptrtoint ptr %byTopOFDMBasicRate to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %byTopOFDMBasicRate, align 1
  %byTopCCKBasicRate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %6 = ptrtoint ptr %byTopCCKBasicRate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %byTopCCKBasicRate, align 4
  tail call void @MACvInitialize(ptr noundef %priv) #10
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %7 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 20
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %local_id = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %10 = ptrtoint ptr %local_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %local_id, align 4
  %lock = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %11 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_offset, align 4
  %abyEEPROM = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 130
  tail call void @SROMvReadAllContents(ptr noundef %12, ptr noundef %abyEEPROM) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  %byMinChannel = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 70
  %13 = ptrtoint ptr %byMinChannel to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %byMinChannel, align 1
  %byMaxChannel = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 71
  %14 = ptrtoint ptr %byMaxChannel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 56, ptr %byMaxChannel, align 2
  %15 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_offset, align 4
  %call11 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %16, i8 noundef zeroext 22) #10
  %17 = lshr i8 %call11, 2
  %.lobit = and i8 %17, 1
  %18 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 51
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.lobit, ptr %18, align 1
  %trunc = trunc i8 %call11 to i2
  %20 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.82)
  switch i2 %trunc, label %if.else32 [
    i2 -1, label %entry.if.then25_crit_edge
    i2 0, label %entry.if.then25_crit_edge479
  ]

entry.if.then25_crit_edge479:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

entry.if.then25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.then25:                                        ; preds = %entry.if.then25_crit_edge, %entry.if.then25_crit_edge479
  %byAntennaCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 48
  %21 = ptrtoint ptr %byAntennaCount to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %byAntennaCount, align 4
  %byTxAntennaMode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 50
  %22 = ptrtoint ptr %byTxAntennaMode to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %byTxAntennaMode, align 2
  %dwTxAntennaSel = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 46
  %23 = ptrtoint ptr %dwTxAntennaSel to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %dwTxAntennaSel, align 4
  %dwRxAntennaSel = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 47
  %24 = ptrtoint ptr %dwRxAntennaSel to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %dwRxAntennaSel, align 4
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %18, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool27.not = icmp eq i8 %26, 0
  %byRxAntennaMode30 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 49
  br i1 %tobool27.not, label %if.else29, label %if.then28

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %byRxAntennaMode30 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %byRxAntennaMode30, align 1
  br label %if.end58

if.else29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %byRxAntennaMode30 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %byRxAntennaMode30, align 1
  br label %if.end58

if.else32:                                        ; preds = %entry
  %byAntennaCount33 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 48
  %29 = ptrtoint ptr %byAntennaCount33 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %byAntennaCount33, align 4
  %dwTxAntennaSel34 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 46
  %30 = ptrtoint ptr %dwTxAntennaSel34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dwTxAntennaSel34, align 4
  %dwRxAntennaSel35 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 47
  %31 = ptrtoint ptr %dwRxAntennaSel35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %dwRxAntennaSel35, align 4
  %32 = and i8 %call11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool38.not = icmp eq i8 %32, 0
  %byTxAntennaMode49 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 50
  br i1 %tobool38.not, label %if.else48, label %if.then39

if.then39:                                        ; preds = %if.else32
  %33 = ptrtoint ptr %byTxAntennaMode49 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %byTxAntennaMode49, align 2
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %18, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool42.not = icmp eq i8 %35, 0
  %byRxAntennaMode46 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 49
  br i1 %tobool42.not, label %if.else45, label %if.then43

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %byRxAntennaMode46 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %byRxAntennaMode46, align 1
  br label %if.end58

if.else45:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %byRxAntennaMode46 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %byRxAntennaMode46, align 1
  br label %if.end58

if.else48:                                        ; preds = %if.else32
  %38 = ptrtoint ptr %byTxAntennaMode49 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %byTxAntennaMode49, align 2
  %39 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %18, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool51.not = icmp eq i8 %40, 0
  %byRxAntennaMode55 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 49
  br i1 %tobool51.not, label %if.else54, label %if.then52

if.then52:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %byRxAntennaMode55 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %byRxAntennaMode55, align 1
  br label %if.end58

if.else54:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %byRxAntennaMode55 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %byRxAntennaMode55, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.then52, %if.else45, %if.then43, %if.else29, %if.then28
  %byTxAntennaMode59 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 50
  %43 = ptrtoint ptr %byTxAntennaMode59 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %byTxAntennaMode59, align 2
  tail call void @bb_set_tx_antenna_mode(ptr noundef %priv, i8 noundef zeroext %44) #10
  %byRxAntennaMode60 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 49
  %45 = ptrtoint ptr %byRxAntennaMode60 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %byRxAntennaMode60, align 1
  tail call void @bb_set_rx_antenna_mode(ptr noundef %priv, i8 noundef zeroext %46) #10
  %arrayidx = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 130, i32 31
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1
  %byOriginalZonetype = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 41
  %49 = ptrtoint ptr %byOriginalZonetype to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %byOriginalZonetype, align 1
  %bZoneRegExist = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 40
  %50 = ptrtoint ptr %bZoneRegExist to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bZoneRegExist, align 4, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool62.not = icmp eq i8 %51, 0
  br i1 %tobool62.not, label %if.then63, label %if.end58.do.body67_crit_edge

if.end58.do.body67_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %byZoneType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 39
  %52 = ptrtoint ptr %byZoneType to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %48, ptr %byZoneType, align 1
  br label %do.body67

do.body67:                                        ; preds = %if.then63, %if.end58.do.body67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_init_registers.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_init_registers, %if.then73)) #10
          to label %do.end78 [label %if.then73], !srcloc !190

if.then73:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %byZoneType74 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 39
  %53 = ptrtoint ptr %byZoneType74 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %byZoneType74, align 1
  %conv75 = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_init_registers.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.48, i32 noundef %conv75) #10
  br label %do.end78

do.end78:                                         ; preds = %if.then73, %do.body67
  %call79 = tail call zeroext i1 @RFbInit(ptr noundef %priv) #10
  %byCurPwr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 118
  %55 = ptrtoint ptr %byCurPwr to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %byCurPwr, align 1
  %56 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port_offset, align 4
  %call81 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %57, i8 noundef zeroext 32) #10
  %byCCKPwr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 116
  %58 = ptrtoint ptr %byCCKPwr to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %call81, ptr %byCCKPwr, align 1
  %59 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port_offset, align 4
  %call83 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %60, i8 noundef zeroext 35) #10
  %byOFDMPwrG = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 117
  %61 = ptrtoint ptr %byOFDMPwrG to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %call83, ptr %byOFDMPwrG, align 2
  br label %for.body

for.cond125.preheader:                            ; preds = %if.end120
  %arrayidx130 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 120, i32 10
  %arrayidx134 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 121, i32 10
  %62 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx130, align 1
  %arrayidx132 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 120, i32 11
  %64 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx132, align 1
  %65 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx134, align 2
  %arrayidx136 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 121, i32 11
  %67 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx136, align 1
  %arrayidx132.1 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 120, i32 12
  %68 = ptrtoint ptr %arrayidx132.1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %63, ptr %arrayidx132.1, align 1
  %arrayidx136.1 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 121, i32 12
  %69 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %66, ptr %arrayidx136.1, align 1
  %arrayidx132.2 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 120, i32 13
  %70 = ptrtoint ptr %arrayidx132.2 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %63, ptr %arrayidx132.2, align 1
  %arrayidx136.2 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 121, i32 13
  %71 = ptrtoint ptr %arrayidx136.2 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %66, ptr %arrayidx136.2, align 1
  br label %for.body143

for.body:                                         ; preds = %if.end120.for.body_crit_edge, %do.end78
  %ii.0474 = phi i32 [ 0, %do.end78 ], [ %add89, %if.end120.for.body_crit_edge ]
  %72 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %port_offset, align 4
  %74 = trunc i32 %ii.0474 to i8
  %conv87 = add nuw nsw i8 %74, 48
  %call88 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %73, i8 noundef zeroext %conv87) #10
  %add89 = add nuw nsw i32 %ii.0474, 1
  %arrayidx90 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 120, i32 %add89
  %75 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %call88, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call88)
  %cmp95 = icmp eq i8 %call88, 0
  br i1 %cmp95, label %if.then97, label %for.body.if.end102_crit_edge

for.body.if.end102_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then97:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %byCCKPwr to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %byCCKPwr, align 1
  %78 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx90, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %for.body.if.end102_crit_edge
  %79 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %port_offset, align 4
  %conv105 = add nuw nsw i8 %74, 64
  %call106 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %80, i8 noundef zeroext %conv105) #10
  %arrayidx108 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 121, i32 %add89
  %81 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %call106, ptr %arrayidx108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call106)
  %cmp113 = icmp eq i8 %call106, 0
  br i1 %cmp113, label %if.then115, label %if.end102.if.end120_crit_edge

if.end102.if.end120_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then115:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %byOFDMPwrG to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %byOFDMPwrG, align 2
  %84 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx108, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end102.if.end120_crit_edge
  %arrayidx122 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 122, i32 %add89
  %85 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx122, align 1
  %arrayidx124 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 123, i32 %add89
  %86 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx124, align 1
  %exitcond.not = icmp eq i32 %add89, 14
  br i1 %exitcond.not, label %for.cond125.preheader, label %if.end120.for.body_crit_edge

if.end120.for.body_crit_edge:                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body143:                                      ; preds = %for.body143.for.body143_crit_edge, %for.cond125.preheader
  %ii.2476 = phi i32 [ %inc161, %for.body143.for.body143_crit_edge ], [ 0, %for.cond125.preheader ]
  %87 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port_offset, align 4
  %89 = trunc i32 %ii.2476 to i8
  %conv146 = add nuw nsw i8 %89, 80
  %call147 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %88, i8 noundef zeroext %conv146) #10
  %add150 = add nuw nsw i32 %ii.2476, 15
  %arrayidx151 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 121, i32 %add150
  %90 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %call147, ptr %arrayidx151, align 1
  %91 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port_offset, align 4
  %conv154 = add nuw nsw i8 %89, -46
  %call155 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %92, i8 noundef zeroext %conv154) #10
  %arrayidx159 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 123, i32 %add150
  %93 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %call155, ptr %arrayidx159, align 1
  %inc161 = add nuw nsw i32 %ii.2476, 1
  %exitcond478.not = icmp eq i32 %inc161, 42
  br i1 %exitcond478.not, label %for.end162, label %for.body143.for.body143_crit_edge

for.body143.for.body143_crit_edge:                ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body143

for.end162:                                       ; preds = %for.body143
  %94 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %local_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %95)
  %cmp165 = icmp ugt i8 %95, 9
  br i1 %cmp165, label %if.then167, label %for.end162.do.body176_crit_edge

for.end162.do.body176_crit_edge:                  ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body176

if.then167:                                       ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %port_offset, align 4
  %add.ptr169 = getelementptr i8, ptr %97, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr169, i8 1) #10, !srcloc !192
  %98 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %port_offset, align 4
  %add.ptr172 = getelementptr i8, ptr %99, i32 103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr172, i8 12) #10, !srcloc !192
  %100 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %port_offset, align 4
  %add.ptr174 = getelementptr i8, ptr %101, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr174, i8 0) #10, !srcloc !192
  br label %do.body176

do.body176:                                       ; preds = %if.then167, %for.end162.do.body176_crit_edge
  %102 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %port_offset, align 4
  %add.ptr178 = getelementptr i8, ptr %103, i32 80
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr178) #10, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  %105 = or i16 %104, -32256
  %106 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %port_offset, align 4
  %add.ptr183 = getelementptr i8, ptr %107, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr183, i16 %105) #10, !srcloc !206
  %byShortRetryLimit = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 75
  %108 = ptrtoint ptr %byShortRetryLimit to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %byShortRetryLimit, align 4
  tail call void @MACvSetShortRetryLimit(ptr noundef %priv, i8 noundef zeroext %109) #10
  %byLongRetryLimit = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 76
  %110 = ptrtoint ptr %byLongRetryLimit to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %byLongRetryLimit, align 1
  tail call void @MACvSetLongRetryLimit(ptr noundef %priv, i8 noundef zeroext %111) #10
  %112 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %port_offset, align 4
  %add.ptr187 = getelementptr i8, ptr %113, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr187, i8 2) #10, !srcloc !192
  %114 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %port_offset, align 4
  %add.ptr189 = getelementptr i8, ptr %115, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr189, i8 1) #10, !srcloc !192
  %call190 = tail call zeroext i1 @bb_vt3253_init(ptr noundef %priv) #10
  %bUpdateBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 106
  %116 = ptrtoint ptr %bUpdateBBVGA to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bUpdateBBVGA, align 2, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool191.not = icmp eq i8 %117, 0
  br i1 %tobool191.not, label %do.body176.if.end197_crit_edge, label %if.then192

do.body176.if.end197_crit_edge:                   ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end197

if.then192:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #12
  %abyBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %118 = ptrtoint ptr %abyBBVGA to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %abyBBVGA, align 2
  %byBBVGACurrent = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 109
  %120 = ptrtoint ptr %byBBVGACurrent to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %byBBVGACurrent, align 1
  %byBBVGANew = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 108
  %121 = ptrtoint ptr %byBBVGANew to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %119, ptr %byBBVGANew, align 4
  tail call void @bb_set_vga_gain_offset(ptr noundef %priv, i8 noundef zeroext %119) #10
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %do.body176.if.end197_crit_edge
  %122 = ptrtoint ptr %byRxAntennaMode60 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %byRxAntennaMode60, align 1
  tail call void @bb_set_rx_antenna_mode(ptr noundef %priv, i8 noundef zeroext %123) #10
  %124 = ptrtoint ptr %byTxAntennaMode59 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %byTxAntennaMode59, align 2
  tail call void @bb_set_tx_antenna_mode(ptr noundef %priv, i8 noundef zeroext %125) #10
  %126 = ptrtoint ptr %wCurrentRate to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 11, ptr %wCurrentRate, align 2
  %radio_off = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 87
  %127 = ptrtoint ptr %radio_off to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %radio_off, align 1
  %128 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %port_offset, align 4
  %call202 = tail call zeroext i8 @SROMbyReadEmbedded(ptr noundef %129, i8 noundef zeroext 23) #10
  %byRadioCtl = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 91
  %130 = ptrtoint ptr %byRadioCtl to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %call202, ptr %byRadioCtl, align 1
  %hw_radio_off = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 93
  %131 = ptrtoint ptr %hw_radio_off to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %hw_radio_off, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call202)
  %tobool206.not = icmp sgt i8 %call202, -1
  br i1 %tobool206.not, label %if.end197.lor.lhs.false235_crit_edge, label %if.then207

if.end197.lor.lhs.false235_crit_edge:             ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false235

if.then207:                                       ; preds = %if.end197
  %132 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %port_offset, align 4
  %add.ptr209 = getelementptr i8, ptr %133, i32 123
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr209) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %byGPIO = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 92
  %135 = ptrtoint ptr %byGPIO to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %byGPIO, align 2
  %136 = and i8 %134, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool214.not = icmp eq i8 %136, 0
  %137 = ptrtoint ptr %byRadioCtl to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %byRadioCtl, align 1
  %139 = and i8 %138, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool227.not = icmp eq i8 %139, 0
  br i1 %tobool214.not, label %land.lhs.true223, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then207
  br i1 %tobool227.not, label %land.lhs.true.if.end231.thread471_crit_edge, label %land.lhs.true.if.end231_crit_edge

land.lhs.true.if.end231_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

land.lhs.true.if.end231.thread471_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.thread471

land.lhs.true223:                                 ; preds = %if.then207
  br i1 %tobool227.not, label %land.lhs.true223.if.end231_crit_edge, label %land.lhs.true223.if.end231.thread471_crit_edge

land.lhs.true223.if.end231.thread471_crit_edge:   ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.thread471

land.lhs.true223.if.end231_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.end231.thread471:                              ; preds = %land.lhs.true223.if.end231.thread471_crit_edge, %land.lhs.true.if.end231.thread471_crit_edge
  %140 = ptrtoint ptr %hw_radio_off to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %hw_radio_off, align 1
  br label %if.then238

if.end231:                                        ; preds = %land.lhs.true223.if.end231_crit_edge, %land.lhs.true.if.end231_crit_edge
  %141 = ptrtoint ptr %hw_radio_off to i32
  call void @__asan_load1_noabort(i32 %141)
  %.pr = load i8, ptr %hw_radio_off, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool233.not = icmp eq i8 %.pr, 0
  br i1 %tobool233.not, label %if.end231.lor.lhs.false235_crit_edge, label %if.end231.if.then238_crit_edge

if.end231.if.then238_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then238

if.end231.lor.lhs.false235_crit_edge:             ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %if.end231.lor.lhs.false235_crit_edge, %if.end197.lor.lhs.false235_crit_edge
  %bRadioControlOff = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 86
  %142 = ptrtoint ptr %bRadioControlOff to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %bRadioControlOff, align 2, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool236.not = icmp eq i8 %143, 0
  br i1 %tobool236.not, label %lor.lhs.false235.if.end239_crit_edge, label %lor.lhs.false235.if.then238_crit_edge

lor.lhs.false235.if.then238_crit_edge:            ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then238

lor.lhs.false235.if.end239_crit_edge:             ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

if.then238:                                       ; preds = %lor.lhs.false235.if.then238_crit_edge, %if.end231.if.then238_crit_edge, %if.end231.thread471
  tail call void @CARDbRadioPowerOff(ptr noundef %priv) #10
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %lor.lhs.false235.if.end239_crit_edge
  %144 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %port_offset, align 4
  %abyCurrentNetAddr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 42
  tail call void @SROMvReadEtherAddress(ptr noundef %145, ptr noundef %abyCurrentNetAddr) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_init_registers.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_init_registers, %if.then254)) #10
          to label %do.end259 [label %if.then254], !srcloc !190

if.then254:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_init_registers.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.49, ptr noundef %abyCurrentNetAddr) #10
  br label %do.end259

do.end259:                                        ; preds = %if.then254, %if.end239
  tail call void @CARDvSafeResetRx(ptr noundef %priv) #10
  tail call void @CARDvSafeResetTx(ptr noundef %priv) #10
  %146 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %local_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %147)
  %cmp262 = icmp ult i8 %147, 2
  br i1 %cmp262, label %do.body265, label %do.end259.do.body277_crit_edge

do.end259.do.body277_crit_edge:                   ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body277

do.body265:                                       ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %port_offset, align 4
  %add.ptr267 = getelementptr i8, ptr %149, i32 86
  %150 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr267) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %151 = or i8 %150, 4
  %152 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %port_offset, align 4
  %add.ptr273 = getelementptr i8, ptr %153, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr273, i8 %151) #10, !srcloc !192
  br label %do.body277

do.body277:                                       ; preds = %do.body265, %do.end259.do.body277_crit_edge
  %154 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %port_offset, align 4
  %add.ptr279 = getelementptr i8, ptr %155, i32 148
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr279) #10, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %157 = and i32 %156, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool282.not = icmp eq i32 %157, 0
  %158 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %port_offset, align 4
  %add.ptr288 = getelementptr i8, ptr %159, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool282.not, label %if.else286, label %if.then283

if.then283:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr288, i32 67108864) #10, !srcloc !196
  br label %if.end289

if.else286:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr288, i32 134217728) #10, !srcloc !196
  br label %if.end289

if.end289:                                        ; preds = %if.else286, %if.then283
  %160 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %port_offset, align 4
  %add.ptr295 = getelementptr i8, ptr %161, i32 156
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr295) #10, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %163 = and i32 %162, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool298.not = icmp eq i32 %163, 0
  %164 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %port_offset, align 4
  %add.ptr304 = getelementptr i8, ptr %165, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool298.not, label %if.else302, label %if.then299

if.then299:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr304, i32 67108864) #10, !srcloc !196
  br label %if.end305

if.else302:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr304, i32 134217728) #10, !srcloc !196
  br label %if.end305

if.end305:                                        ; preds = %if.else302, %if.then299
  %166 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %port_offset, align 4
  %add.ptr309 = getelementptr i8, ptr %167, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr309, i8 14) #10, !srcloc !192
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_free_td0_ring(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_descs = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 2
  %0 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_descs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %apTD0Rings = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %apTD0Rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apTD0Rings, align 4
  %td_info2 = getelementptr %struct.vnt_tx_desc, ptr %3, i32 %i.09, i32 6
  %4 = ptrtoint ptr %td_info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %td_info2, align 8
  %skb = getelementptr inbounds %struct.vnt_td_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %7) #10
  %8 = ptrtoint ptr %td_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %td_info2, align 8
  tail call void @kfree(ptr noundef %9) #10
  %inc = add nuw nsw i32 %i.09, 1
  %10 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_descs, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @device_alloc_rx_buf(ptr nocapture noundef readonly %priv, ptr noundef %rd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_info1 = getelementptr inbounds %struct.vnt_rx_desc, ptr %rd, i32 0, i32 6
  %0 = ptrtoint ptr %rd_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_info1, align 8
  %rx_buf_sz = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 33
  %2 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_buf_sz, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %3, i32 noundef 2592) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %1, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end.skb_tailroom.exit_crit_edge

if.end.skb_tailroom.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end.skb_tailroom.exit_crit_edge ]
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %cond.i) #10
  %13 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_buf_sz, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %call6) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %skb_tailroom.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !207

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %call6, i32 noundef %14) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %call6 to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %14, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %skb_dma = getelementptr inbounds %struct.vnt_rd_info, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %skb_dma, align 4
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev10, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void @consume_skb(ptr noundef %25) #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %1, align 4
  br label %cleanup

if.end17:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rd, align 8
  %28 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_buf_sz, align 4
  %conv = trunc i32 %29 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %31 = ptrtoint ptr %rd to i32
  call void @__asan_store2_noabort(i32 %31)
  store volatile i16 %30, ptr %rd, align 8
  %32 = getelementptr inbounds %struct.vnt_rdes0, ptr %rd, i32 0, i32 1
  %owner = getelementptr inbounds %struct.anon.136, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load volatile i8, ptr %owner, align 1
  %bf.set = or i8 %bf.load, -128
  store volatile i8 %bf.set, ptr %owner, align 1
  %34 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_buf_sz, align 4
  %conv22 = trunc i32 %35 to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %rd1 = getelementptr inbounds %struct.vnt_rx_desc, ptr %rd, i32 0, i32 1
  %37 = ptrtoint ptr %rd1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store volatile i16 %36, ptr %rd1, align 4
  %38 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %skb_dma, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %buff_addr = getelementptr inbounds %struct.vnt_rx_desc, ptr %rd, i32 0, i32 2
  %41 = ptrtoint ptr %buff_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %40, ptr %buff_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then14 ], [ true, %if.end17 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @MACbShutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_software_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @SROMvReadAllContents(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_set_tx_antenna_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_set_rx_antenna_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @RFbInit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvSetShortRetryLimit(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvSetLongRetryLimit(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bb_vt3253_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_set_vga_gain_offset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @CARDbRadioPowerOff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @SROMvReadEtherAddress(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @CARDvSafeResetRx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @CARDvSafeResetTx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @PSvEnablePowerSaving(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @PSvDisablePowerSaving(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @CARDbSetPhyParameter(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @RFbSetPower(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @CARDvUpdateBasicTopRate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_beacon_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @CARDbUpdateTSF(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @CARDbSetBeaconPeriod(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @CARDvSetFirstNextTBTT(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @CARDbGetCurrentTSF(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @CARDvUpdateNextTBTT(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vnt_interrupt_process(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 92
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !199
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %do.body11 [
    i32 0, label %entry.cleanup_crit_edge
    i32 -1, label %do.body
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_interrupt_process.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_interrupt_process, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !190

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vnt_interrupt_process.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.57) #10
  br label %cleanup

do.body11:                                        ; preds = %entry
  %low_stats1 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 134
  %lock = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %5 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_offset, align 4
  %add.ptr21 = getelementptr i8, ptr %6, i32 44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !199
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %and = and i32 %8, 255
  %dot11RTSSuccessCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 134, i32 3
  %9 = ptrtoint ptr %dot11RTSSuccessCount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dot11RTSSuccessCount, align 4
  %add = add i32 %10, %and
  store i32 %add, ptr %dot11RTSSuccessCount, align 4
  %shr = lshr i32 %8, 8
  %and23 = and i32 %shr, 255
  %dot11RTSFailureCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 134, i32 1
  %11 = ptrtoint ptr %dot11RTSFailureCount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dot11RTSFailureCount, align 4
  %add24 = add i32 %12, %and23
  store i32 %add24, ptr %dot11RTSFailureCount, align 4
  %shr25 = lshr i32 %8, 16
  %and26 = and i32 %shr25, 255
  %13 = ptrtoint ptr %low_stats1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %low_stats1, align 4
  %add27 = add i32 %14, %and26
  store i32 %add27, ptr %low_stats1, align 4
  %shr28 = lshr i32 %8, 24
  %dot11FCSErrorCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 134, i32 2
  %15 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dot11FCSErrorCount, align 4
  %add30 = add i32 %16, %shr28
  store i32 %add30, ptr %dot11FCSErrorCount, align 4
  %vif = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 2
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 77
  %bBeaconSent = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 99
  %bEnablePSMode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 88
  %bIsBeaconBufReadySet = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 100
  %cbBeaconBufReadySetCnt = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 101
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 30, i32 0
  %arrayidx.i265 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 30, i32 1
  %tx_descs = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 2
  %iTDUsed = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 23
  %arrayidx138 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 2, i32 1
  %arrayidx140 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 23, i32 1
  %hw = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %int_works = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end179.while.cond_crit_edge, %do.body11
  %isr.0 = phi i32 [ %3, %do.body11 ], [ %94, %if.end179.while.cond_crit_edge ]
  %max_count.0 = phi i32 [ 0, %do.body11 ], [ %max_count.4, %if.end179.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isr.0)
  %tobool31.not = icmp eq i32 %isr.0, 0
  br i1 %tobool31.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %17 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vif, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %19 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_offset, align 4
  %add.ptr34 = getelementptr i8, ptr %20, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %isr.0) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %21) #10, !srcloc !196
  %and35 = and i32 %isr.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %while.body.if.end59_crit_edge, label %do.body38

while.body.if.end59_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.body38:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_interrupt_process.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_interrupt_process, %if.then50)) #10
          to label %do.end.i [label %if.then50], !srcloc !190

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vnt_interrupt_process.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.58) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then50, %do.body38
  %22 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_offset, align 4
  %add.ptr55 = getelementptr i8, ptr %23, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 0) #10, !srcloc !192
  %24 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_offset, align 4
  %add.ptr57 = getelementptr i8, ptr %25, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr57, i16 1) #10, !srcloc !206
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #13
  %call.i = tail call zeroext i1 @MACbShutdown(ptr noundef %priv) #10
  br label %if.end59

if.end59:                                         ; preds = %do.end.i, %while.body.if.end59_crit_edge
  %and60 = and i32 %isr.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end85_crit_edge, label %if.then62

if.end59.if.end85_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then62:                                        ; preds = %if.end59
  %28 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp63.not = icmp eq i32 %29, 1
  br i1 %cmp63.not, label %if.then62.if.end66_crit_edge, label %if.then65

if.then62.if.end66_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @vnt_check_bb_vga(ptr noundef %priv)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.then62.if.end66_crit_edge
  %30 = ptrtoint ptr %bBeaconSent to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %bBeaconSent, align 1
  %31 = ptrtoint ptr %bEnablePSMode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bEnablePSMode, align 4, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool67.not = icmp eq i8 %32, 0
  br i1 %tobool67.not, label %if.end66.if.end70_crit_edge, label %if.then68

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %call69 = tail call zeroext i1 @PSbIsNextTBTTWakeUp(ptr noundef %priv) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end66.if.end70_crit_edge
  %33 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %op_mode, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %34, label %if.end70.if.end85_crit_edge [
    i32 3, label %if.end70.land.lhs.true_crit_edge
    i32 1, label %if.end70.land.lhs.true_crit_edge322
  ]

if.end70.land.lhs.true_crit_edge322:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end70.land.lhs.true_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end70.land.lhs.true_crit_edge, %if.end70.land.lhs.true_crit_edge322
  %36 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vif, align 4
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %37, i32 0, i32 1, i32 17
  %38 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable_beacon, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool78.not = icmp eq i8 %39, 0
  br i1 %tobool78.not, label %land.lhs.true.if.end85_crit_edge, label %if.then80

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then80:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %37, i32 0, i32 1, i32 19
  %40 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %beacon_int, align 2
  %conv83 = zext i16 %41 to i32
  %sub = shl nuw nsw i32 %conv83, 10
  %shl = add nsw i32 %sub, -10240
  tail call void @MACvOneShotTimer1MicroSec(ptr noundef %priv, i32 noundef %shl) #10
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %land.lhs.true.if.end85_crit_edge, %if.end70.if.end85_crit_edge, %if.end59.if.end85_crit_edge
  %and86 = and i32 %isr.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end95_crit_edge, label %if.then88

if.end85.if.end95_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then88:                                        ; preds = %if.end85
  %42 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp90 = icmp eq i32 %43, 1
  br i1 %cmp90, label %if.then92, label %if.then88.if.end93_crit_edge

if.then88.if.end93_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then92:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %bIsBeaconBufReadySet to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bIsBeaconBufReadySet, align 4
  %45 = ptrtoint ptr %cbBeaconBufReadySetCnt to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cbBeaconBufReadySetCnt, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.then88.if.end93_crit_edge
  %46 = ptrtoint ptr %bBeaconSent to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %bBeaconSent, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.end93, %if.end85.if.end95_crit_edge
  %and96 = and i32 %isr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end101_crit_edge, label %if.then98

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then98:                                        ; preds = %if.end95
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %rd.030.i = load ptr, ptr %arrayidx.i, align 4
  %48 = getelementptr inbounds %struct.vnt_rdes0, ptr %rd.030.i, i32 0, i32 1
  %owner31.i = getelementptr inbounds %struct.anon.136, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %owner31.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load32.i = load volatile i8, ptr %owner31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load32.i)
  %cmp33.i = icmp sgt i8 %bf.load32.i, -1
  br i1 %cmp33.i, label %if.then98.for.body.i_crit_edge, label %if.then98.device_rx_srv.exit_crit_edge

if.then98.device_rx_srv.exit_crit_edge:           ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_rx_srv.exit

if.then98.for.body.i_crit_edge:                   ; preds = %if.then98
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.then98.for.body.i_crit_edge
  %owner37.i = phi ptr [ %owner.i, %if.end10.i.for.body.i_crit_edge ], [ %owner31.i, %if.then98.for.body.i_crit_edge ]
  %rd.035.i = phi ptr [ %rd.0.i, %if.end10.i.for.body.i_crit_edge ], [ %rd.030.i, %if.then98.for.body.i_crit_edge ]
  %works.034.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %if.then98.for.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %works.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %works.034.i)
  %exitcond.i = icmp eq i32 %works.034.i, 16
  br i1 %exitcond.i, label %for.body.i.device_rx_srv.exit_crit_edge, label %if.end.i

for.body.i.device_rx_srv.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_rx_srv.exit

if.end.i:                                         ; preds = %for.body.i
  %rd_info.i = getelementptr inbounds %struct.vnt_rx_desc, ptr %rd.035.i, i32 0, i32 6
  %50 = ptrtoint ptr %rd_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rd_info.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %tobool.not.i261 = icmp eq ptr %53, null
  br i1 %tobool.not.i261, label %if.end.i.device_rx_srv.exit_crit_edge, label %if.end5.i

if.end.i.device_rx_srv.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_rx_srv.exit

if.end5.i:                                        ; preds = %if.end.i
  %call.i262 = tail call zeroext i1 @vnt_receive_frame(ptr noundef %priv, ptr noundef %rd.035.i) #10
  br i1 %call.i262, label %if.then6.i, label %if.end5.i.if.end10.i_crit_edge

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end5.i
  %call7.i = tail call fastcc zeroext i1 @device_alloc_rx_buf(ptr noundef %priv, ptr noundef %rd.035.i) #10
  br i1 %call7.i, label %if.then6.i.if.end10.i_crit_edge, label %do.end.i264

if.then6.i.if.end10.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

do.end.i264:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 4
  %dev.i263 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i263, ptr noundef nonnull @.str.64) #13
  br label %device_rx_srv.exit

if.end10.i:                                       ; preds = %if.then6.i.if.end10.i_crit_edge, %if.end5.i.if.end10.i_crit_edge
  %56 = ptrtoint ptr %owner37.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load13.i = load volatile i8, ptr %owner37.i, align 1
  %bf.set.i = or i8 %bf.load13.i, -128
  store volatile i8 %bf.set.i, ptr %owner37.i, align 1
  %next.i = getelementptr inbounds %struct.vnt_rx_desc, ptr %rd.035.i, i32 0, i32 4
  %57 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %rd.0.i = load ptr, ptr %next.i, align 4
  %58 = getelementptr inbounds %struct.vnt_rdes0, ptr %rd.0.i, i32 0, i32 1
  %owner.i = getelementptr inbounds %struct.anon.136, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load volatile i8, ptr %owner.i, align 1
  %cmp.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp.i, label %if.end10.i.for.body.i_crit_edge, label %if.end10.i.device_rx_srv.exit_crit_edge

if.end10.i.device_rx_srv.exit_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_rx_srv.exit

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

device_rx_srv.exit:                               ; preds = %if.end10.i.device_rx_srv.exit_crit_edge, %do.end.i264, %if.end.i.device_rx_srv.exit_crit_edge, %for.body.i.device_rx_srv.exit_crit_edge, %if.then98.device_rx_srv.exit_crit_edge
  %rd.029.i = phi ptr [ %rd.035.i, %do.end.i264 ], [ %rd.030.i, %if.then98.device_rx_srv.exit_crit_edge ], [ %rd.035.i, %if.end.i.device_rx_srv.exit_crit_edge ], [ %rd.035.i, %for.body.i.device_rx_srv.exit_crit_edge ], [ %rd.0.i, %if.end10.i.device_rx_srv.exit_crit_edge ]
  %works.1.i = phi i32 [ %inc.i, %do.end.i264 ], [ 0, %if.then98.device_rx_srv.exit_crit_edge ], [ %inc.i, %if.end.i.device_rx_srv.exit_crit_edge ], [ 17, %for.body.i.device_rx_srv.exit_crit_edge ], [ %inc.i, %if.end10.i.device_rx_srv.exit_crit_edge ]
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %rd.029.i, ptr %arrayidx.i, align 4
  %add100 = add i32 %works.1.i, %max_count.0
  br label %if.end101

if.end101:                                        ; preds = %device_rx_srv.exit, %if.end95.if.end101_crit_edge
  %max_count.1 = phi i32 [ %add100, %device_rx_srv.exit ], [ %max_count.0, %if.end95.if.end101_crit_edge ]
  %and102 = and i32 %isr.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end107_crit_edge, label %if.then104

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then104:                                       ; preds = %if.end101
  %61 = ptrtoint ptr %arrayidx.i265 to i32
  call void @__asan_load4_noabort(i32 %61)
  %rd.030.i266 = load ptr, ptr %arrayidx.i265, align 4
  %62 = getelementptr inbounds %struct.vnt_rdes0, ptr %rd.030.i266, i32 0, i32 1
  %owner31.i267 = getelementptr inbounds %struct.anon.136, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %owner31.i267 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load32.i268 = load volatile i8, ptr %owner31.i267, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load32.i268)
  %cmp33.i269 = icmp sgt i8 %bf.load32.i268, -1
  br i1 %cmp33.i269, label %if.then104.for.body.i275_crit_edge, label %if.then104.device_rx_srv.exit295_crit_edge

if.then104.device_rx_srv.exit295_crit_edge:       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_rx_srv.exit295

if.then104.for.body.i275_crit_edge:               ; preds = %if.then104
  br label %for.body.i275

for.body.i275:                                    ; preds = %if.end10.i292.for.body.i275_crit_edge, %if.then104.for.body.i275_crit_edge
  %owner37.i270 = phi ptr [ %owner.i289, %if.end10.i292.for.body.i275_crit_edge ], [ %owner31.i267, %if.then104.for.body.i275_crit_edge ]
  %rd.035.i271 = phi ptr [ %rd.0.i288, %if.end10.i292.for.body.i275_crit_edge ], [ %rd.030.i266, %if.then104.for.body.i275_crit_edge ]
  %works.034.i272 = phi i32 [ %inc.i273, %if.end10.i292.for.body.i275_crit_edge ], [ 0, %if.then104.for.body.i275_crit_edge ]
  %inc.i273 = add nuw nsw i32 %works.034.i272, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %works.034.i272)
  %exitcond.i274 = icmp eq i32 %works.034.i272, 16
  br i1 %exitcond.i274, label %for.body.i275.device_rx_srv.exit295_crit_edge, label %if.end.i278

for.body.i275.device_rx_srv.exit295_crit_edge:    ; preds = %for.body.i275
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_rx_srv.exit295

if.end.i278:                                      ; preds = %for.body.i275
  %rd_info.i276 = getelementptr inbounds %struct.vnt_rx_desc, ptr %rd.035.i271, i32 0, i32 6
  %64 = ptrtoint ptr %rd_info.i276 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rd_info.i276, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool.not.i277 = icmp eq ptr %67, null
  br i1 %tobool.not.i277, label %if.end.i278.device_rx_srv.exit295_crit_edge, label %if.end5.i280

if.end.i278.device_rx_srv.exit295_crit_edge:      ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_rx_srv.exit295

if.end5.i280:                                     ; preds = %if.end.i278
  %call.i279 = tail call zeroext i1 @vnt_receive_frame(ptr noundef %priv, ptr noundef %rd.035.i271) #10
  br i1 %call.i279, label %if.then6.i282, label %if.end5.i280.if.end10.i292_crit_edge

if.end5.i280.if.end10.i292_crit_edge:             ; preds = %if.end5.i280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i292

if.then6.i282:                                    ; preds = %if.end5.i280
  %call7.i281 = tail call fastcc zeroext i1 @device_alloc_rx_buf(ptr noundef %priv, ptr noundef %rd.035.i271) #10
  br i1 %call7.i281, label %if.then6.i282.if.end10.i292_crit_edge, label %do.end.i284

if.then6.i282.if.end10.i292_crit_edge:            ; preds = %if.then6.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i292

do.end.i284:                                      ; preds = %if.then6.i282
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 4
  %dev.i283 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i283, ptr noundef nonnull @.str.64) #13
  br label %device_rx_srv.exit295

if.end10.i292:                                    ; preds = %if.then6.i282.if.end10.i292_crit_edge, %if.end5.i280.if.end10.i292_crit_edge
  %70 = ptrtoint ptr %owner37.i270 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load13.i285 = load volatile i8, ptr %owner37.i270, align 1
  %bf.set.i286 = or i8 %bf.load13.i285, -128
  store volatile i8 %bf.set.i286, ptr %owner37.i270, align 1
  %next.i287 = getelementptr inbounds %struct.vnt_rx_desc, ptr %rd.035.i271, i32 0, i32 4
  %71 = ptrtoint ptr %next.i287 to i32
  call void @__asan_load4_noabort(i32 %71)
  %rd.0.i288 = load ptr, ptr %next.i287, align 4
  %72 = getelementptr inbounds %struct.vnt_rdes0, ptr %rd.0.i288, i32 0, i32 1
  %owner.i289 = getelementptr inbounds %struct.anon.136, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %owner.i289 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i290 = load volatile i8, ptr %owner.i289, align 1
  %cmp.i291 = icmp sgt i8 %bf.load.i290, -1
  br i1 %cmp.i291, label %if.end10.i292.for.body.i275_crit_edge, label %if.end10.i292.device_rx_srv.exit295_crit_edge

if.end10.i292.device_rx_srv.exit295_crit_edge:    ; preds = %if.end10.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_rx_srv.exit295

if.end10.i292.for.body.i275_crit_edge:            ; preds = %if.end10.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i275

device_rx_srv.exit295:                            ; preds = %if.end10.i292.device_rx_srv.exit295_crit_edge, %do.end.i284, %if.end.i278.device_rx_srv.exit295_crit_edge, %for.body.i275.device_rx_srv.exit295_crit_edge, %if.then104.device_rx_srv.exit295_crit_edge
  %rd.029.i293 = phi ptr [ %rd.035.i271, %do.end.i284 ], [ %rd.030.i266, %if.then104.device_rx_srv.exit295_crit_edge ], [ %rd.035.i271, %if.end.i278.device_rx_srv.exit295_crit_edge ], [ %rd.035.i271, %for.body.i275.device_rx_srv.exit295_crit_edge ], [ %rd.0.i288, %if.end10.i292.device_rx_srv.exit295_crit_edge ]
  %works.1.i294 = phi i32 [ %inc.i273, %do.end.i284 ], [ 0, %if.then104.device_rx_srv.exit295_crit_edge ], [ %inc.i273, %if.end.i278.device_rx_srv.exit295_crit_edge ], [ 17, %for.body.i275.device_rx_srv.exit295_crit_edge ], [ %inc.i273, %if.end10.i292.device_rx_srv.exit295_crit_edge ]
  %74 = ptrtoint ptr %arrayidx.i265 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %rd.029.i293, ptr %arrayidx.i265, align 4
  %add106 = add i32 %works.1.i294, %max_count.1
  br label %if.end107

if.end107:                                        ; preds = %device_rx_srv.exit295, %if.end101.if.end107_crit_edge
  %max_count.2 = phi i32 [ %add106, %device_rx_srv.exit295 ], [ %max_count.1, %if.end101.if.end107_crit_edge ]
  %and108 = and i32 %isr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end113_crit_edge, label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %call111 = tail call fastcc i32 @device_tx_srv(ptr noundef %priv, i32 noundef 0)
  %add112 = add i32 %call111, %max_count.2
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %max_count.3 = phi i32 [ %add112, %if.then110 ], [ %max_count.2, %if.end107.if.end113_crit_edge ]
  %and114 = and i32 %isr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end119_crit_edge, label %if.then116

if.end113.if.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %call117 = tail call fastcc i32 @device_tx_srv(ptr noundef %priv, i32 noundef 1)
  %add118 = add i32 %call117, %max_count.3
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.end113.if.end119_crit_edge
  %max_count.4 = phi i32 [ %add118, %if.then116 ], [ %max_count.3, %if.end113.if.end119_crit_edge ]
  %and120 = and i32 %isr.0, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end119.if.end131_crit_edge, label %if.then122

if.end119.if.end131_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then122:                                       ; preds = %if.end119
  %75 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vif, align 4
  %enable_beacon125 = getelementptr inbounds %struct.ieee80211_vif, ptr %76, i32 0, i32 1, i32 17
  %77 = ptrtoint ptr %enable_beacon125 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %enable_beacon125, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool126.not = icmp eq i8 %78, 0
  br i1 %tobool126.not, label %if.then122.if.end131_crit_edge, label %if.then127

if.then122.if.end131_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then127:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  %call129 = tail call i32 @vnt_beacon_make(ptr noundef %priv, ptr noundef %76) #10
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.then122.if.end131_crit_edge, %if.end119.if.end131_crit_edge
  %79 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_descs, align 4
  %81 = ptrtoint ptr %iTDUsed to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %iTDUsed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %tobool134.not = icmp eq i32 %80, %82
  br i1 %tobool134.not, label %if.end131.if.end148_crit_edge, label %land.lhs.true135

if.end131.if.end148_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

land.lhs.true135:                                 ; preds = %if.end131
  %83 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx138, align 4
  %85 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %arrayidx140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %tobool142.not = icmp eq i32 %84, %86
  br i1 %tobool142.not, label %land.lhs.true135.if.end148_crit_edge, label %land.lhs.true143

land.lhs.true135.if.end148_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

land.lhs.true143:                                 ; preds = %land.lhs.true135
  %87 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw, align 4
  %call144 = tail call i32 @ieee80211_queue_stopped(ptr noundef %88, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true143.if.end148_crit_edge, label %if.then146

land.lhs.true143.if.end148_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then146:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %90) #10
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %land.lhs.true143.if.end148_crit_edge, %land.lhs.true135.if.end148_crit_edge, %if.end131.if.end148_crit_edge
  %91 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port_offset, align 4
  %add.ptr150 = getelementptr i8, ptr %92, i32 92
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #10, !srcloc !199
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %95 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %port_offset, align 4
  %add.ptr154 = getelementptr i8, ptr %96, i32 148
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr154) #10, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %98 = and i32 %97, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool157.not = icmp eq i32 %98, 0
  %99 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %port_offset, align 4
  %add.ptr162 = getelementptr i8, ptr %100, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool157.not, label %if.else, label %if.then158

if.then158:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 67108864) #10, !srcloc !196
  br label %if.end163

if.else:                                          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 134217728) #10, !srcloc !196
  br label %if.end163

if.end163:                                        ; preds = %if.else, %if.then158
  %101 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %port_offset, align 4
  %add.ptr169 = getelementptr i8, ptr %102, i32 156
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #10, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %104 = and i32 %103, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool172.not = icmp eq i32 %104, 0
  %105 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %port_offset, align 4
  %add.ptr178 = getelementptr i8, ptr %106, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool172.not, label %if.else176, label %if.then173

if.then173:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 67108864) #10, !srcloc !196
  br label %if.end179

if.else176:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 134217728) #10, !srcloc !196
  br label %if.end179

if.end179:                                        ; preds = %if.else176, %if.then173
  %107 = ptrtoint ptr %int_works to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %int_works, align 4
  %cmp183 = icmp sgt i32 %max_count.4, %108
  br i1 %cmp183, label %if.end179.while.end_crit_edge, label %if.end179.while.cond_crit_edge

if.end179.while.cond_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end179.while.end_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end179.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then7, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vnt_check_bb_vga(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %dbm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbm) #10
  %0 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dbm, align 4, !annotation !202
  %bUpdateBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 106
  %1 = ptrtoint ptr %bUpdateBBVGA to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bUpdateBBVGA, align 2, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vif = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vif, align 4
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %8, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %assoc, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %land.lhs.true

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %current_rssi = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 44
  %11 = ptrtoint ptr %current_rssi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true
  %conv = trunc i32 %12 to i8
  call void @RFvRSSITodBm(ptr noundef %priv, i8 noundef zeroext %conv, ptr noundef nonnull %dbm) #10
  %13 = ptrtoint ptr %dbm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dbm, align 4
  %arrayidx = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10 = icmp slt i32 %14, %16
  br i1 %cmp10, label %if.end7.if.then12_crit_edge, label %for.inc

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %for.inc.2.if.then12_crit_edge, %for.inc.1.if.then12_crit_edge, %for.inc.if.then12_crit_edge, %if.end7.if.then12_crit_edge
  %i.0105.lcssa = phi i32 [ 0, %if.end7.if.then12_crit_edge ], [ 1, %for.inc.if.then12_crit_edge ], [ 2, %for.inc.1.if.then12_crit_edge ], [ 3, %for.inc.2.if.then12_crit_edge ]
  %arrayidx13 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 %i.0105.lcssa
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  %byBBVGANew = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 108
  %19 = ptrtoint ptr %byBBVGANew to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %byBBVGANew, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end7
  %arrayidx.1 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %21)
  %cmp10.1 = icmp slt i32 %14, %21
  br i1 %cmp10.1, label %for.inc.if.then12_crit_edge, label %for.inc.1

for.inc.if.then12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %23)
  %cmp10.2 = icmp slt i32 %14, %23
  br i1 %cmp10.2, label %for.inc.1.if.then12_crit_edge, label %for.inc.2

for.inc.1.if.then12_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %25)
  %cmp10.3 = icmp slt i32 %14, %25
  br i1 %cmp10.3, label %for.inc.2.if.then12_crit_edge, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.2.if.then12_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %if.then12
  %byBBVGANew15 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 108
  %26 = ptrtoint ptr %byBBVGANew15 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %byBBVGANew15, align 4
  %byBBVGACurrent = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 109
  %28 = ptrtoint ptr %byBBVGACurrent to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %byBBVGACurrent, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp18 = icmp eq i8 %27, %29
  %uBBVGADiffCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 107
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %uBBVGADiffCount to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %uBBVGADiffCount, align 4
  br label %cleanup

if.end21:                                         ; preds = %for.end
  %31 = ptrtoint ptr %uBBVGADiffCount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uBBVGADiffCount, align 4
  %inc23 = add i32 %32, 1
  store i32 %inc23, ptr %uBBVGADiffCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp25 = icmp eq i32 %32, 0
  br i1 %cmp25, label %if.then27, label %if.end21.if.end39_crit_edge

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void @bb_set_vga_gain_offset(ptr noundef %priv, i8 noundef zeroext %27) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_check_bb_vga.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_check_bb_vga, %if.then32)) #10
          to label %if.end39 [label %if.then32], !srcloc !190

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %dbm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dbm, align 4
  %37 = ptrtoint ptr %byBBVGANew15 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %byBBVGANew15, align 4
  %conv34 = zext i8 %38 to i32
  %39 = ptrtoint ptr %byBBVGACurrent to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %byBBVGACurrent, align 1
  %conv36 = zext i8 %40 to i32
  %41 = ptrtoint ptr %uBBVGADiffCount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %uBBVGADiffCount, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_check_bb_vga.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %36, i32 noundef %conv34, i32 noundef %conv36, i32 noundef %42) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.then27, %if.end21.if.end39_crit_edge
  %43 = ptrtoint ptr %uBBVGADiffCount to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %uBBVGADiffCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %44)
  %cmp41 = icmp ugt i32 %44, 15
  br i1 %cmp41, label %do.body44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body44:                                        ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_check_bb_vga.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_check_bb_vga, %if.then56)) #10
          to label %do.end66 [label %if.then56], !srcloc !190

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %dbm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dbm, align 4
  %49 = ptrtoint ptr %byBBVGANew15 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %byBBVGANew15, align 4
  %conv60 = zext i8 %50 to i32
  %51 = ptrtoint ptr %byBBVGACurrent to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %byBBVGACurrent, align 1
  %conv62 = zext i8 %52 to i32
  %53 = ptrtoint ptr %uBBVGADiffCount to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %uBBVGADiffCount, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_check_bb_vga.__UNIQUE_ID_ddebug364, ptr noundef %dev58, ptr noundef nonnull @.str.63, i32 noundef %48, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %54) #10
  br label %do.end66

do.end66:                                         ; preds = %if.then56, %do.body44
  %55 = ptrtoint ptr %byBBVGANew15 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %byBBVGANew15, align 4
  call void @bb_set_vga_gain_offset(ptr noundef %priv, i8 noundef zeroext %56) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end39.cleanup_crit_edge, %if.then20, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbm) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @PSbIsNextTBTTWakeUp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @MACvOneShotTimer1MicroSec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_tx_srv(ptr noundef %priv, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 25, i32 %idx
  %arrayidx1 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 23, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %desc.0133 = load ptr, ptr %arrayidx, align 4
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp134 = icmp sgt i32 %2, 0
  br i1 %cmp134, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %desc.0136 = phi ptr [ %desc.0133, %for.body.lr.ph ], [ %desc.0, %for.inc.for.body_crit_edge ]
  %works.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = getelementptr inbounds %struct.vnt_tdes0, ptr %desc.0136, i32 0, i32 2
  %owner = getelementptr inbounds %struct.anon.134, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load volatile i8, ptr %owner, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp2 = icmp slt i8 %bf.load, 0
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %inc = add nuw nsw i32 %works.0135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %works.0135)
  %exitcond = icmp eq i32 %works.0135, 16
  br i1 %exitcond, label %if.end.for.end_crit_edge, label %if.end7

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %desc.0136 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %desc.0136, align 8
  %tsr1 = getelementptr inbounds %struct.vnt_tdes0, ptr %desc.0136, i32 0, i32 1
  %7 = ptrtoint ptr %tsr1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %tsr1, align 1
  %tcr = getelementptr inbounds %struct.vnt_tx_desc, ptr %desc.0136, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %tcr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %tcr, align 2
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end7.for.inc_crit_edge, label %if.then11

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %if.end7
  %td_info = getelementptr inbounds %struct.vnt_tx_desc, ptr %desc.0136, i32 0, i32 6
  %12 = ptrtoint ptr %td_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %td_info, align 8
  %flags = getelementptr inbounds %struct.vnt_td_info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 2
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp14.not = icmp eq i8 %16, 0
  br i1 %cmp14.not, label %if.then11.if.end52_crit_edge, label %if.then16

if.then11.if.end52_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then16:                                        ; preds = %if.then11
  %conv17 = zext i8 %8 to i32
  %and18 = and i32 %conv17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %do.body33

if.then20:                                        ; preds = %if.then16
  %conv21 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp22.not = icmp eq i8 %6, 0
  br i1 %cmp22.not, label %if.then20.if.end52_crit_edge, label %do.body

if.then20.if.end52_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_tx_srv.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_tx_srv, %if.then28)) #10
          to label %if.end52 [label %if.then28], !srcloc !190

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_tx_srv.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.67, i32 noundef %idx, i32 noundef %conv17, i32 noundef %conv21) #10
  br label %if.end52

do.body33:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_tx_srv.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_tx_srv, %if.then45)) #10
          to label %if.end52 [label %if.then45], !srcloc !190

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %conv47 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_tx_srv.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.68, i32 noundef %idx, i32 noundef %conv17, i32 noundef %conv47) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %do.body33, %if.then28, %do.body, %if.then20.if.end52_crit_edge, %if.then11.if.end52_crit_edge
  %conv53 = zext i8 %8 to i32
  %and54 = and i32 %conv53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end83_crit_edge, label %if.then56

if.end52.if.end83_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then56:                                        ; preds = %if.end52
  %17 = ptrtoint ptr %td_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %td_info, align 8
  %flags58 = getelementptr inbounds %struct.vnt_td_info, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %flags58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags58, align 2
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp61.not = icmp eq i8 %21, 0
  br i1 %cmp61.not, label %if.then56.if.end83_crit_edge, label %do.body64

if.then56.if.end83_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

do.body64:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_tx_srv.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_tx_srv, %if.then76)) #10
          to label %if.end83 [label %if.then76], !srcloc !190

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %conv78 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_tx_srv.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.69, i32 noundef %idx, i32 noundef %conv53, i32 noundef %conv78) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then76, %do.body64, %if.then56.if.end83_crit_edge, %if.end52.if.end83_crit_edge
  %22 = ptrtoint ptr %td_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %td_info, align 8
  %24 = and i8 %6, 31
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end83.vnt_int_report_rate.exit_crit_edge, label %if.end.i

if.end83.vnt_int_report_rate.exit_crit_edge:      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %vnt_int_report_rate.exit

if.end.i:                                         ; preds = %if.end83
  %skb.i = getelementptr inbounds %struct.vnt_td_info, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb.i, align 4
  %tobool2.not.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i, label %if.end.i.vnt_int_report_rate.exit_crit_edge, label %if.end4.i

if.end.i.vnt_int_report_rate.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vnt_int_report_rate.exit

if.end4.i:                                        ; preds = %if.end.i
  %buf.i = getelementptr inbounds %struct.vnt_td_info, ptr %23, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf.i, align 4
  %fifo_ctl.i = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %fifo_ctl.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %fifo_ctl.i, align 1
  %31 = shl i16 %30, 8
  %32 = and i16 %31, 6144
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3
  %33 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 8
  %conv10.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool11.not.i = icmp ne i16 %32, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool14.not.i = icmp sgt i8 %8, -1
  %or.cond.i = and i1 %tobool14.not.i, %tobool11.not.i
  br i1 %or.cond.i, label %if.then15.i, label %if.end4.i.if.end48.i_crit_edge

if.end4.i.if.end48.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then15.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i.i = icmp slt i8 %35, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then15.i
  %.b49.i.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i.i, label %land.rhs.i.i.ieee80211_get_tx_rate.exit.i_crit_edge, label %if.then.i.i, !prof !207

land.rhs.i.i.ieee80211_get_tx_rate.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_get_tx_rate.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.70, i32 noundef 2737, i32 noundef 9, ptr noundef null) #10
  br label %ieee80211_get_tx_rate.exit.i

if.end39.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy.i.i, align 8
  %band.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load.i.i = load i32, ptr %band.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 29
  %arrayidx40.i.i = getelementptr %struct.wiphy, ptr %39, i32 0, i32 53, i32 %bf.lshr.i.i
  %41 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx40.i.i, align 4
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bitrates.i.i, align 4
  %idxprom51.i.i = zext i8 %35 to i32
  %arrayidx44.i.i = getelementptr %struct.ieee80211_rate, ptr %44, i32 %idxprom51.i.i
  br label %ieee80211_get_tx_rate.exit.i

ieee80211_get_tx_rate.exit.i:                     ; preds = %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.ieee80211_get_tx_rate.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx44.i.i, %if.end39.i.i ], [ null, %if.then.i.i ], [ null, %land.rhs.i.i.ieee80211_get_tx_rate.exit.i_crit_edge ]
  %hw_value.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hw_value.i, align 2
  %conv17.i = trunc i16 %46 to i8
  %sub.i = add i8 %conv17.i, -7
  %47 = tail call i8 @llvm.umin.i8(i8 %24, i8 4) #10
  %and24.i = and i32 %conv10.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.else.i, label %ieee80211_get_tx_rate.exit.i.if.end39.sink.split.i_crit_edge

ieee80211_get_tx_rate.exit.i.if.end39.sink.split.i_crit_edge: ; preds = %ieee80211_get_tx_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.sink.split.i

if.else.i:                                        ; preds = %ieee80211_get_tx_rate.exit.i
  %and31.i = and i32 %conv10.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else.i.if.end39.i_crit_edge, label %if.else.i.if.end39.sink.split.i_crit_edge

if.else.i.if.end39.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.sink.split.i

if.else.i.if.end39.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.end39.sink.split.i:                            ; preds = %if.else.i.if.end39.sink.split.i_crit_edge, %ieee80211_get_tx_rate.exit.i.if.end39.sink.split.i_crit_edge
  %fallback_rate1.sink.i = phi ptr [ @fallback_rate0, %ieee80211_get_tx_rate.exit.i.if.end39.sink.split.i_crit_edge ], [ @fallback_rate1, %if.else.i.if.end39.sink.split.i_crit_edge ]
  %idxprom34.i = zext i8 %sub.i to i32
  %idxprom36.i = zext i8 %47 to i32
  %arrayidx37.i = getelementptr [5 x [5 x i8]], ptr %fallback_rate1.sink.i, i32 0, i32 %idxprom34.i, i32 %idxprom36.i
  %48 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx37.i, align 1
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end39.sink.split.i, %if.else.i.if.end39.i_crit_edge
  %tx_rate.0.i = phi i8 [ %sub.i, %if.else.i.if.end39.i_crit_edge ], [ %49, %if.end39.sink.split.i ]
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i)
  %cmp40.i = icmp eq i32 %bf.lshr.mask.i, 536870912
  %sub44.i = add i8 %tx_rate.0.i, -4
  %idx.0.i = select i1 %cmp40.i, i8 %sub44.i, i8 %tx_rate.0.i
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end39.i, %if.end4.i.if.end48.i_crit_edge
  %idx.1.i = phi i8 [ %idx.0.i, %if.end39.i ], [ %35, %if.end4.i.if.end48.i_crit_edge ]
  %count.i.i = getelementptr %struct.sk_buff, ptr %26, i32 0, i32 3, i32 9
  %51 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %bf.load.i1.i = load i16, ptr %count.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i1.i, 2047
  %count.1.i.i = getelementptr %struct.sk_buff, ptr %26, i32 0, i32 3, i32 12
  %52 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load.1.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.clear.1.i.i = and i16 %bf.load.1.i.i, 2047
  store i16 %bf.clear.1.i.i, ptr %count.1.i.i, align 1
  %count.2.i.i = getelementptr %struct.sk_buff, ptr %26, i32 0, i32 3, i32 15
  %53 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %bf.load.2.i.i = load i16, ptr %count.2.i.i, align 1
  %bf.clear.2.i.i = and i16 %bf.load.2.i.i, 2047
  store i16 %bf.clear.2.i.i, ptr %count.2.i.i, align 1
  %count.3.i.i = getelementptr %struct.sk_buff, ptr %26, i32 0, i32 3, i32 18
  %54 = ptrtoint ptr %count.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %bf.load.3.i.i = load i16, ptr %count.3.i.i, align 1
  %bf.clear.3.i.i = and i16 %bf.load.3.i.i, 2047
  store i16 %bf.clear.3.i.i, ptr %count.3.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %26, i32 0, i32 3, i32 20
  %55 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 28)
  %bf.value.i = zext i8 %6 to i16
  %bf.shl.i = shl i16 %bf.value.i, 11
  %bf.set.i = or i16 %bf.clear.i.i, %bf.shl.i
  store i16 %bf.set.i, ptr %count.i.i, align 1
  br i1 %tobool14.not.i, label %if.then56.i, label %if.end48.i.vnt_int_report_rate.exit_crit_edge

if.end48.i.vnt_int_report_rate.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vnt_int_report_rate.exit

if.then56.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %idx.1.i, ptr %33, align 8
  %57 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cb.i.i, align 8
  %and60.i = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  %..i = select i1 %tobool61.not.i, i32 512, i32 -2147483648
  %or66.i = or i32 %..i, %58
  %59 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or66.i, ptr %cb.i.i, align 8
  br label %vnt_int_report_rate.exit

vnt_int_report_rate.exit:                         ; preds = %if.then56.i, %if.end48.i.vnt_int_report_rate.exit_crit_edge, %if.end.i.vnt_int_report_rate.exit_crit_edge, %if.end83.vnt_int_report_rate.exit_crit_edge
  %60 = ptrtoint ptr %td_info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %td_info, align 8
  %skb2.i = getelementptr inbounds %struct.vnt_td_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb2.i, align 4
  %tobool.not.i127 = icmp eq ptr %63, null
  br i1 %tobool.not.i127, label %vnt_int_report_rate.exit.device_free_tx_buf.exit_crit_edge, label %if.then.i

vnt_int_report_rate.exit.device_free_tx_buf.exit_crit_edge: ; preds = %vnt_int_report_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_free_tx_buf.exit

if.then.i:                                        ; preds = %vnt_int_report_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %65, ptr noundef nonnull %63) #10
  br label %device_free_tx_buf.exit

device_free_tx_buf.exit:                          ; preds = %if.then.i, %vnt_int_report_rate.exit.device_free_tx_buf.exit_crit_edge
  %66 = ptrtoint ptr %skb2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %skb2.i, align 4
  %flags.i = getelementptr inbounds %struct.vnt_td_info, ptr %61, i32 0, i32 5
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %flags.i, align 2
  %68 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %arrayidx1, align 4
  %dec = add i32 %69, -1
  store volatile i32 %dec, ptr %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %device_free_tx_buf.exit, %if.end7.for.inc_crit_edge
  %next = getelementptr inbounds %struct.vnt_tx_desc, ptr %desc.0136, i32 0, i32 4
  %70 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %70)
  %desc.0 = load ptr, ptr %next, align 4
  %71 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %arrayidx1, align 4
  %cmp = icmp sgt i32 %72, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %desc.0.lcssa = phi ptr [ %desc.0133, %entry.for.end_crit_edge ], [ %desc.0136, %if.end.for.end_crit_edge ], [ %desc.0136, %for.body.for.end_crit_edge ], [ %desc.0, %for.inc.for.end_crit_edge ]
  %works.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 17, %if.end.for.end_crit_edge ], [ %works.0135, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %desc.0.lcssa, ptr %arrayidx, align 4
  ret i32 %works.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_beacon_make(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_queue_stopped(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @RFvRSSITodBm(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vnt_receive_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_init_bands(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt6655_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 22
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call6 = tail call zeroext i1 @MACbShutdown(ptr noundef %1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt6655_resume(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_wakeup_disable(ptr noundef %dev_d) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !152, !153, !155, !157, !159, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !177, !178, !179}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @__UNIQUE_ID_author350, !1, !"__UNIQUE_ID_author350", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6655/device_main.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_license351, !3, !"__UNIQUE_ID_license351", i1 false, i1 false}
!3 = !{!"../drivers/staging/vt6655/device_main.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_description352, !5, !"__UNIQUE_ID_description352", i1 false, i1 false}
!5 = !{!"../drivers/staging/vt6655/device_main.c", i32 54, i32 1}
!6 = !{ptr @vt6655_pci_id_table, !7, !"vt6655_pci_id_table", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6655/device_main.c", i32 114, i32 35}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/vt6655/device_main.c", i32 1804, i32 1}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6655/device_main.c", i32 1797, i32 10}
!12 = !{ptr @device_driver, !13, !"device_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/vt6655/device_main.c", i32 1796, i32 26}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/vt6655/device_main.c", i32 1668, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vt6655_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @vt6655_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/vt6655/device_main.c", i32 1671, i32 2}
!26 = !{ptr @vt6655_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vt6655_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/vt6655/device_main.c", i32 1676, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vt6655_probe._entry.12, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @vt6655_probe._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @vt6655_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/staging/vt6655/device_main.c", i32 1683, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/vt6655/device_main.c", i32 1694, i32 2}
!38 = !{ptr @vt6655_probe.__UNIQUE_ID_ddebug374, !37, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/vt6655/device_main.c", i32 1704, i32 3}
!41 = !{ptr @vt6655_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @vt6655_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/vt6655/device_main.c", i32 1711, i32 3}
!45 = !{ptr @vt6655_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vt6655_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/vt6655/device_main.c", i32 1717, i32 3}
!49 = !{ptr @vt6655_probe._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vt6655_probe._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @vt6655_probe.__key.27, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/staging/vt6655/device_main.c", i32 1722, i32 2}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/vt6655/device_main.c", i32 1726, i32 3}
!56 = !{ptr @vt6655_probe._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @vt6655_probe._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/vt6655/device_main.c", i32 1738, i32 2}
!60 = !{ptr @vt6655_probe.__UNIQUE_ID_ddebug375, !59, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!61 = !{ptr @vnt_mac_ops, !62, !"vnt_mac_ops", i1 false, i1 false}
!62 = !{!"../drivers/staging/vt6655/device_main.c", i32 1627, i32 35}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/vt6655/device_main.c", i32 1237, i32 3}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vnt_start.__UNIQUE_ID_ddebug367, !64, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/vt6655/device_main.c", i32 1241, i32 2}
!69 = !{ptr @vnt_start.__UNIQUE_ID_ddebug368, !68, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/vt6655/device_main.c", i32 1257, i32 2}
!72 = !{ptr @vnt_start.__UNIQUE_ID_ddebug369, !71, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/vt6655/device_main.c", i32 449, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @device_init_rings._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @device_init_rings._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/vt6655/device_main.c", i32 468, i32 3}
!80 = !{ptr @device_init_rings._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @device_init_rings._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/vt6655/device_main.c", i32 549, i32 4}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @device_init_rd0_ring._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @device_init_rd0_ring._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/vt6655/device_main.c", i32 595, i32 4}
!93 = !{ptr @device_init_rd1_ring._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @device_init_rd1_ring._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/vt6655/device_main.c", i32 288, i32 2}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @device_init_registers.__UNIQUE_ID_ddebug358, !96, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/vt6655/device_main.c", i32 394, i32 2}
!101 = !{ptr @device_init_registers.__UNIQUE_ID_ddebug359, !100, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/vt6655/device_main.c", i32 1420, i32 3}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vnt_bss_info_changed.__UNIQUE_ID_ddebug370, !103, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/vt6655/device_main.c", i32 1456, i32 3}
!108 = !{ptr @vnt_bss_info_changed.__UNIQUE_ID_ddebug371, !107, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/vt6655/device_main.c", i32 1518, i32 2}
!111 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @vnt_configure.__UNIQUE_ID_ddebug372, !110, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/vt6655/device_main.c", i32 1566, i32 2}
!115 = !{ptr @vnt_configure.__UNIQUE_ID_ddebug373, !114, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/vt6655/device_main.c", i32 1038, i32 3}
!118 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @vnt_interrupt_process.__UNIQUE_ID_ddebug365, !117, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/vt6655/device_main.c", i32 1062, i32 4}
!122 = !{ptr @vnt_interrupt_process.__UNIQUE_ID_ddebug366, !121, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/vt6655/device_main.c", i32 952, i32 3}
!125 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @device_error._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @device_error._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/vt6655/device_main.c", i32 1006, i32 3}
!130 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @vnt_check_bb_vga.__UNIQUE_ID_ddebug363, !129, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/vt6655/device_main.c", i32 1014, i32 3}
!134 = !{ptr @vnt_check_bb_vga.__UNIQUE_ID_ddebug364, !133, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/vt6655/device_main.c", i32 771, i32 5}
!137 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @device_rx_srv._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @device_rx_srv._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/vt6655/device_main.c", i32 920, i32 7}
!142 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @device_tx_srv.__UNIQUE_ID_ddebug360, !141, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/vt6655/device_main.c", i32 925, i32 6}
!146 = !{ptr @device_tx_srv.__UNIQUE_ID_ddebug361, !145, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/vt6655/device_main.c", i32 932, i32 6}
!149 = !{ptr @device_tx_srv.__UNIQUE_ID_ddebug362, !148, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!152 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @fallback_rate0, !154, !"fallback_rate0", i1 false, i1 false}
!154 = !{!"../drivers/staging/vt6655/device_main.c", i32 823, i32 17}
!155 = !{ptr @fallback_rate1, !156, !"fallback_rate1", i1 false, i1 false}
!156 = !{!"../drivers/staging/vt6655/device_main.c", i32 831, i32 17}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/vt6655/device_main.c", i32 182, i32 2}
!159 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @device_set_options.__UNIQUE_ID_ddebug353, !158, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/vt6655/device_main.c", i32 183, i32 2}
!163 = !{ptr @device_set_options.__UNIQUE_ID_ddebug354, !162, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/staging/vt6655/device_main.c", i32 184, i32 2}
!166 = !{ptr @device_set_options.__UNIQUE_ID_ddebug355, !165, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/vt6655/device_main.c", i32 185, i32 2}
!169 = !{ptr @device_set_options.__UNIQUE_ID_ddebug356, !168, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/vt6655/device_main.c", i32 186, i32 2}
!172 = !{ptr @device_set_options.__UNIQUE_ID_ddebug357, !171, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/staging/vt6655/device_main.c", i32 414, i32 2}
!175 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @device_print_info._entry, !174, !"_entry", i1 false, i1 false}
!178 = !{ptr @device_print_info._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @vt6655_pm_ops, !180, !"vt6655_pm_ops", i1 false, i1 false}
!180 = !{!"../drivers/staging/vt6655/device_main.c", i32 1794, i32 8}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{i64 2149008955, i64 2149008960, i64 2149008973, i64 2149009017, i64 2149009051, i64 2149009072}
!191 = !{i64 2152574947}
!192 = !{i64 5033602}
!193 = !{i64 5033997}
!194 = !{i64 2152573342}
!195 = !{i64 2152575921}
!196 = !{i64 5033799}
!197 = !{i64 2157840158}
!198 = !{i64 2157840308}
!199 = !{i64 5034217}
!200 = !{i64 2152574566}
!201 = !{i8 0, i8 2}
!202 = !{!"auto-init"}
!203 = !{i64 5033379}
!204 = !{i64 2152573954}
!205 = !{i64 2152575371}
!206 = !{i64 5033179}
!207 = !{!"branch_weights", i32 2000, i32 1}
