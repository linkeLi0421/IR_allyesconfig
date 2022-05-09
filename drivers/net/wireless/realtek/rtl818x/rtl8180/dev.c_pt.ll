; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.rtl818x_rf_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl818x_csr = type { [6 x i8], [2 x i8], %union.anon.129, %union.anon.131, i32, [2 x i32], %union.anon.133, %union.anon.134, i32, %union.anon.135, [6 x i8], %union.anon.137, [1 x i8], i8, [4 x i8], %union.anon.139, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, [2 x i8], i8, i8, i32, [8 x i8], i32, i16, i16, i16, i16, i8, i8, [2 x i8], [4 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i32, [4 x i8], i8, i8, i8, i8, [16 x i8], i8, [3 x i8], i8, i8, i8, [5 x i8], i8, i8, i8, i8, [24 x i8], i8, i8, i8, i8, i16, i8, [3 x i8], i16, i32, i16, [4 x i8], %union.anon.141, i32, %union.anon.142, %union.anon.143, %union.anon.145 }
%union.anon.129 = type { [2 x i32] }
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%union.anon.137 = type { i16 }
%union.anon.139 = type { i32 }
%union.anon.141 = type { i16 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.151, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.151 = type { ptr }
%struct.rtl8180_priv = type { ptr, ptr, ptr, i8, %struct.spinlock, ptr, i8, i32, i32, [32 x ptr], [5 x %struct.rtl8180_tx_ring], [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [4 x %struct.ieee80211_tx_queue_params], ptr, i32, i8, i16, i32, i32, i16, i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.rtl8180_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
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
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.rtl8180_tx_desc = type { i32, i16, i16, i32, %union.anon.149, i32, i8, i8, i8, i8, i32, i16, i16 }
%union.anon.149 = type { i32 }
%struct.anon.150 = type { i16, i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.rtl818x_rx_cmd_desc = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.146, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.146 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.147] }
%struct.anon.147 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rtl8180_vif = type { ptr, %struct.delayed_work, i8 }
%struct.anon.136 = type { i8, i8 }
%struct.anon.138 = type { i8, i8 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.anon.140 = type { i16, i16 }
%struct.rtl8187se_rx_desc = type <{ i32, i64, i32, i32, [3 x i32] }>
%struct.rtl8180_rx_desc = type { i32, i32, i64 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.167 }
%union.anon.167 = type { %struct.anon.173, [16 x i8] }
%struct.anon.173 = type { i16, i16, [6 x i8], [0 x i8] }

@__UNIQUE_ID_author350 = internal constant [56 x i8] c"rtl818x_pci.author=Michael Wu <flamingice@sourmilk.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [61 x i8] c"rtl818x_pci.author=Andrea Merello <andrea.merello@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [74 x i8] c"rtl818x_pci.description=RTL8180 / RTL8185 / RTL8187SE PCI wireless driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [74 x i8] c"rtl818x_pci.file=drivers/net/wireless/realtek/rtl818x/rtl8180/rtl818x_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [24 x i8] c"rtl818x_pci.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rtl818x_pci__365_1986_rtl8180_driver_init6 = internal global ptr @rtl8180_driver_init, section ".initcall6.init", align 4
@rtl8180_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rtl8180_table, ptr @rtl8180_probe, ptr @rtl8180_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8180_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtl8180_driver_exit = internal global ptr @rtl8180_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtl818x_pci\00", [20 x i8] zeroinitializer }, align 32
@rtl8180_table = internal constant { [11 x %struct.pci_device_id], [64 x i8] } { [11 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33177, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33157, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6041, i32 28687, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6041, i32 28703, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33152, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6041, i32 24577, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6041, i32 24608, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 13056, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 13057, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 28934, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@rtl8180_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } zeroinitializer, align 32
@rtl8180_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s (rtl8180): Cannot enable new PCI device\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl8180_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c\00", [45 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr = internal global ptr @rtl8180_probe._entry, section ".printk_index", align 4
@rtl8180_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s (rtl8180): Cannot obtain PCI resources\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.6 = internal global ptr @rtl8180_probe._entry.4, section ".printk_index", align 4
@rtl8180_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (rtl8180): Too short PCI resources\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.9 = internal global ptr @rtl8180_probe._entry.7, section ".printk_index", align 4
@rtl8180_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s (rtl8180): No suitable DMA available\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.12 = internal global ptr @rtl8180_probe._entry.10, section ".printk_index", align 4
@rtl8180_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rtl8180_tx, ptr @rtl8180_start, ptr @rtl8180_stop, ptr null, ptr null, ptr null, ptr @rtl8180_add_interface, ptr null, ptr @rtl8180_remove_interface, ptr @rtl8180_config, ptr @rtl8180_bss_info_changed, ptr null, ptr null, ptr @rtl8180_prepare_multicast, ptr @rtl8180_configure_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8180_conf_tx, ptr @rtl8180_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s (rtl8180): ieee80211 alloc failed\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.15 = internal global ptr @rtl8180_probe._entry.13, section ".printk_index", align 4
@rtl8180_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1793, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot map device memory/PIO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.20 = internal global ptr @rtl8180_probe._entry.16, section ".printk_index", align 4
@rtl818x_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@rtl818x_rates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 0 }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RTL8180\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTL8180vF\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RTL8185\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTL8185vD\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTL8187SE\00", [22 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1846, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MMIO failed. PIO not supported on RTL8187SE\0A\00", [51 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.28 = internal global ptr @rtl8180_probe._entry.26, section ".printk_index", align 4
@rtl8180_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s (rtl8180): Unknown chip! (0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.31 = internal global ptr @rtl8180_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Intersil\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RFMD\00", [27 x i8] zeroinitializer }, align 32
@sa2400_rf_ops = external dso_local constant %struct.rtl818x_rf_ops, align 4
@max2820_rf_ops = external dso_local constant %struct.rtl818x_rf_ops, align 4
@grf5101_rf_ops = external dso_local constant %struct.rtl818x_rf_ops, align 4
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RTL8255\00", [24 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 1908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s (rtl8180): Unknown RF! (0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.37 = internal global ptr @rtl8180_probe._entry.35, section ".printk_index", align 4
@rtl8180_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 1915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s (rtl8180): %s RF frontend not supported!\0A\00", [49 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.40 = internal global ptr @rtl8180_probe._entry.38, section ".printk_index", align 4
@rtl8180_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 1922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014%s (rtl8180): Invalid hwaddr! Using randomly generated MAC addr\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.43 = internal global ptr @rtl8180_probe._entry.41, section ".printk_index", align 4
@rtl8180_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 1932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s (rtl8180): Cannot register device\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.47 = internal global ptr @rtl8180_probe._entry.45, section ".printk_index", align 4
@rtl8180_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 1937, ptr @.str.50, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwaddr %pm, %s + %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtl8180_probe._entry_ptr.51 = internal global ptr @rtl8180_probe._entry.48, section ".printk_index", align 4
@rtl8180_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 481, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX DMA mapping error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtl8180_tx\00", [21 x i8] zeroinitializer }, align 32
@rtl8180_tx._entry_ptr = internal global ptr @rtl8180_tx._entry, section ".printk_index", align 4
@rtl8187se_queues_map = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 5, i32 4, i32 3, i32 2, i32 7], [44 x i8] zeroinitializer }, align 32
@rtl8180_queues_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 7], [24 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@rtl8180_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1148, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register IRQ handler\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl8180_start\00", [18 x i8] zeroinitializer }, align 32
@rtl8180_start._entry_ptr = internal global ptr @rtl8180_start._entry, section ".printk_index", align 4
@rtl8180_init_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1011, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot allocate RX ring\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8180_init_rx_ring\00", [43 x i8] zeroinitializer }, align 32
@rtl8180_init_rx_ring._entry_ptr = internal global ptr @rtl8180_init_rx_ring._entry, section ".printk_index", align 4
@rtl8180_init_rx_ring._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 1025, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate RX skb\0A\00", [40 x i8] zeroinitializer }, align 32
@rtl8180_init_rx_ring._entry_ptr.63 = internal global ptr @rtl8180_init_rx_ring._entry.61, section ".printk_index", align 4
@rtl8180_init_rx_ring._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 1039, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot map DMA for RX skb\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8180_init_rx_ring._entry_ptr.66 = internal global ptr @rtl8180_init_rx_ring._entry.64, section ".printk_index", align 4
@rtl8180_init_tx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 1083, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot allocate TX ring (prio = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8180_init_tx_ring\00", [43 x i8] zeroinitializer }, align 32
@rtl8180_init_tx_ring._entry_ptr = internal global ptr @rtl8180_init_tx_ring._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rtl8180_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 835, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl8180_init_hw\00", [16 x i8] zeroinitializer }, align 32
@rtl8180_init_hw._entry_ptr = internal global ptr @rtl8180_init_hw._entry, section ".printk_index", align 4
@rtl8187se_interrupt.desc_err = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtl8187se_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 419, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No RX DMA Descriptor avail\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl8187se_interrupt\00", [44 x i8] zeroinitializer }, align 32
@rtl8187se_interrupt._entry_ptr = internal global ptr @rtl8187se_interrupt._entry, section ".printk_index", align 4
@rtl8180_handle_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 269, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX DMA map error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8180_handle_rx\00", [46 x i8] zeroinitializer }, align 32
@rtl8180_handle_rx._entry_ptr = internal global ptr @rtl8180_handle_rx._entry, section ".printk_index", align 4
@rtl8187se_lna_gain = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\11\1D'", [28 x i8] zeroinitializer }, align 32
@rtl8180_add_interface.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&vif_priv->beacon_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@rtl8180_add_interface.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&vif_priv->beacon_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 10]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"rtl8180_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1978, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1986, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"rtl8180_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 67, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"rtl8180_pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1976, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1738, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1745, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1755, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1763, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"rtl8180_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1604, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1772, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1793, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"rtl818x_channels\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 104, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"rtl818x_rates\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 89, i32 36 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1823, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1828, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1833, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1838, i32 15 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1843, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1845, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1854, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1887, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1889, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1904, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1907, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1914, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1921, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1927, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1931, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1936, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 481, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [21 x i8] c"rtl8187se_queues_map\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 165, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant [19 x i8] c"rtl8180_queues_map\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 190, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 326, i32 6 }
@___asan_gen_.252 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 2737, i32 6 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1148, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1011, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1025, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1039, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1082, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1984, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 835, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [9 x i8] c"desc_err\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 382, i32 13 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 419, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 269, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant [19 x i8] c"rtl8187se_lna_gain\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 193, i32 17 }
@___asan_gen_.338 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private constant [54 x i8] c"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1349, i32 2 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_rtl8180_driver_exit, ptr @__initcall__kmod_rtl818x_pci__365_1986_rtl8180_driver_init6, ptr @rtl8180_driver_exit, ptr @rtl8180_handle_rx._entry, ptr @rtl8180_handle_rx._entry_ptr, ptr @rtl8180_init_hw._entry, ptr @rtl8180_init_hw._entry_ptr, ptr @rtl8180_init_rx_ring._entry, ptr @rtl8180_init_rx_ring._entry.61, ptr @rtl8180_init_rx_ring._entry.64, ptr @rtl8180_init_rx_ring._entry_ptr, ptr @rtl8180_init_rx_ring._entry_ptr.63, ptr @rtl8180_init_rx_ring._entry_ptr.66, ptr @rtl8180_init_tx_ring._entry, ptr @rtl8180_init_tx_ring._entry_ptr, ptr @rtl8180_probe._entry, ptr @rtl8180_probe._entry.10, ptr @rtl8180_probe._entry.13, ptr @rtl8180_probe._entry.16, ptr @rtl8180_probe._entry.26, ptr @rtl8180_probe._entry.29, ptr @rtl8180_probe._entry.35, ptr @rtl8180_probe._entry.38, ptr @rtl8180_probe._entry.4, ptr @rtl8180_probe._entry.41, ptr @rtl8180_probe._entry.45, ptr @rtl8180_probe._entry.48, ptr @rtl8180_probe._entry.7, ptr @rtl8180_probe._entry_ptr, ptr @rtl8180_probe._entry_ptr.12, ptr @rtl8180_probe._entry_ptr.15, ptr @rtl8180_probe._entry_ptr.20, ptr @rtl8180_probe._entry_ptr.28, ptr @rtl8180_probe._entry_ptr.31, ptr @rtl8180_probe._entry_ptr.37, ptr @rtl8180_probe._entry_ptr.40, ptr @rtl8180_probe._entry_ptr.43, ptr @rtl8180_probe._entry_ptr.47, ptr @rtl8180_probe._entry_ptr.51, ptr @rtl8180_probe._entry_ptr.6, ptr @rtl8180_probe._entry_ptr.9, ptr @rtl8180_start._entry, ptr @rtl8180_start._entry_ptr, ptr @rtl8180_tx._entry, ptr @rtl8180_tx._entry_ptr, ptr @rtl8187se_interrupt._entry, ptr @rtl8187se_interrupt._entry_ptr, ptr @rtl8180_driver, ptr @.str, ptr @rtl8180_table, ptr @rtl8180_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @rtl8180_ops, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @rtl818x_channels, ptr @rtl818x_rates, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @rtl8180_probe.__key, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @rtl8187se_queues_map, ptr @rtl8180_queues_map, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @skb_queue_head_init.__key, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @rtl8187se_interrupt.desc_err, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @rtl8187se_lna_gain, ptr @rtl8180_add_interface.__key, ptr @.str.76, ptr @rtl8180_add_interface.__key.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_table to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl818x_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl818x_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187se_queues_map to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_queues_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_init_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_init_rx_ring._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_init_rx_ring._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_init_tx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187se_interrupt.desc_err to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187se_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_handle_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8187se_lna_gain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_add_interface.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_add_interface.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8180_write_phy(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %shl = shl i32 %data, 8
  %conv = zext i8 %addr to i32
  %or = or i32 %shl, %conv
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %PHY = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 42
  %or2 = or i32 %or, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or2) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY, i32 %4) #8, !srcloc !177
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %6 = trunc i32 %data to i8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 10, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool.not = icmp eq i32 %i.0, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %i.0, -1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %PHY4 = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4, i32 %5) #8, !srcloc !177
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %arrayidx8 = getelementptr %struct.rtl818x_csr, ptr %10, i32 0, i32 42, i32 2
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp = icmp eq i8 %11, %6
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8180_set_anaparam2(ptr nocapture noundef readonly %priv, i32 noundef %anaparam2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %1, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD, i8 -64) #8, !srcloc !181
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 26
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %CONFIG33 = getelementptr inbounds %struct.rtl818x_csr, ptr %6, i32 0, i32 26
  %or = or i8 %4, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG33, i8 %or) #8, !srcloc !181
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %ANAPARAM2 = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %anaparam2) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ANAPARAM2, i32 %9) #8, !srcloc !177
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %CONFIG37 = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 26
  %12 = and i8 %4, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG37, i8 %12) #8, !srcloc !181
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %EEPROM_CMD11 = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD11, i8 0) #8, !srcloc !181
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8180_set_anaparam(ptr nocapture noundef readonly %priv, i32 noundef %anaparam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %1, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD, i8 -64) #8, !srcloc !181
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %CONFIG3 = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 26
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %CONFIG33 = getelementptr inbounds %struct.rtl818x_csr, ptr %6, i32 0, i32 26
  %or = or i8 %4, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG33, i8 %or) #8, !srcloc !181
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %ANAPARAM = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %anaparam) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ANAPARAM, i32 %9) #8, !srcloc !177
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %CONFIG37 = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 26
  %12 = and i8 %4, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG37, i8 %12) #8, !srcloc !181
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %EEPROM_CMD11 = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD11, i8 0) #8, !srcloc !181
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8180_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl8180_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl8180_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8180_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  %init_name.i.i339 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i339 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i339, align 8
  %tobool.not.i.i340 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i340, label %if.end.i.i342, label %do.end8.pci_name.exit344_crit_edge

do.end8.pci_name.exit344_crit_edge:               ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit344

if.end.i.i342:                                    ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i341 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i341 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i341, align 4
  br label %pci_name.exit344

pci_name.exit344:                                 ; preds = %if.end.i.i342, %do.end8.pci_name.exit344_crit_edge
  %retval.0.i.i343 = phi ptr [ %7, %if.end.i.i342 ], [ %5, %do.end8.pci_name.exit344_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i343) #11
  br label %err_disable_dev

if.end12:                                         ; preds = %if.end
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end12.cond.end_crit_edge, label %cond.false

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %sub = add i32 %9, 1
  %add = sub i32 %sub, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end12.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end12.cond.end_crit_edge ]
  %end20 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %12 = ptrtoint ptr %end20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21 = icmp eq i32 %13, 0
  br i1 %cmp21, label %cond.end.do.end39_crit_edge, label %cond.end32

cond.end.do.end39_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

cond.end32:                                       ; preds = %cond.end
  %arrayidx19 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 8
  %sub30 = sub i32 %13, %15
  %add31 = add i32 %sub30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add31)
  %cmp34 = icmp ult i32 %add31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cond)
  %cmp35 = icmp ult i32 %cond, 256
  %or.cond = select i1 %cmp34, i1 true, i1 %cmp35
  br i1 %or.cond, label %cond.end32.do.end39_crit_edge, label %if.end43

cond.end32.do.end39_crit_edge:                    ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end39:                                         ; preds = %cond.end32.do.end39_crit_edge, %cond.end.do.end39_crit_edge
  %init_name.i.i345 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i.i345 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i345, align 8
  %tobool.not.i.i346 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i346, label %if.end.i.i348, label %do.end39.pci_name.exit350_crit_edge

do.end39.pci_name.exit350_crit_edge:              ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit350

if.end.i.i348:                                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i347 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %18 = ptrtoint ptr %dev.i347 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i347, align 4
  br label %pci_name.exit350

pci_name.exit350:                                 ; preds = %if.end.i.i348, %do.end39.pci_name.exit350_crit_edge
  %retval.0.i.i349 = phi ptr [ %19, %if.end.i.i348 ], [ %17, %do.end39.pci_name.exit350_crit_edge ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i349) #11
  br label %err_free_reg

if.end43:                                         ; preds = %cond.end32
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call45 = tail call i32 @dma_set_mask(ptr noundef %dev44, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %if.end43.do.end54_crit_edge

if.end43.do.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

lor.lhs.false47:                                  ; preds = %if.end43
  %call49 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev44, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end58, label %lor.lhs.false47.do.end54_crit_edge

lor.lhs.false47.do.end54_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

do.end54:                                         ; preds = %lor.lhs.false47.do.end54_crit_edge, %if.end43.do.end54_crit_edge
  %err.0 = phi i32 [ %call45, %if.end43.do.end54_crit_edge ], [ %call49, %lor.lhs.false47.do.end54_crit_edge ]
  %init_name.i.i351 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i351 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i351, align 8
  %tobool.not.i.i352 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i352, label %if.end.i.i354, label %do.end54.pci_name.exit356_crit_edge

do.end54.pci_name.exit356_crit_edge:              ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit356

if.end.i.i354:                                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev44, align 4
  br label %pci_name.exit356

pci_name.exit356:                                 ; preds = %if.end.i.i354, %do.end54.pci_name.exit356_crit_edge
  %retval.0.i.i355 = phi ptr [ %23, %if.end.i.i354 ], [ %21, %do.end54.pci_name.exit356_crit_edge ]
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i355) #11
  br label %err_free_reg

if.end58:                                         ; preds = %lor.lhs.false47
  tail call void @pci_set_master(ptr noundef %pdev) #8
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 1680, ptr noundef nonnull @rtl8180_ops, ptr noundef null) #8
  %tobool60.not = icmp eq ptr %call.i, null
  br i1 %tobool60.not, label %do.end64, label %if.end68

do.end64:                                         ; preds = %if.end58
  %init_name.i.i357 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %24 = ptrtoint ptr %init_name.i.i357 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i357, align 8
  %tobool.not.i.i358 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i358, label %if.end.i.i360, label %do.end64.pci_name.exit362_crit_edge

do.end64.pci_name.exit362_crit_edge:              ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit362

if.end.i.i360:                                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev44, align 4
  br label %pci_name.exit362

pci_name.exit362:                                 ; preds = %if.end.i.i360, %do.end64.pci_name.exit362_crit_edge
  %retval.0.i.i361 = phi ptr [ %27, %if.end.i.i360 ], [ %25, %do.end64.pci_name.exit362_crit_edge ]
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i361) #11
  br label %err_free_reg

if.end68:                                         ; preds = %if.end58
  %priv69 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %priv69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv69, align 8
  %pdev70 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %pdev70 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pdev, ptr %pdev70, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 14
  %31 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %max_rates, align 1
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56, i32 1
  %34 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev44, ptr %parent.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %map_pio = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 3
  %36 = ptrtoint ptr %map_pio to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %map_pio, align 4
  %call72 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef %add31) #8
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call72, ptr %29, align 4
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %if.end79, label %if.end68.do.end93_crit_edge

if.end68.do.end93_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

if.end79:                                         ; preds = %if.end68
  %call76 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %cond) #8
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call76, ptr %29, align 4
  %39 = ptrtoint ptr %map_pio to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %map_pio, align 4
  %tobool81.not = icmp eq ptr %call76, null
  br i1 %tobool81.not, label %do.end85, label %if.end79.do.end93_crit_edge

if.end79.do.end93_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.17) #11
  br label %err_free_dev

do.end93:                                         ; preds = %if.end79.do.end93_crit_edge, %if.end68.do.end93_crit_edge
  %channels = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 11
  %40 = call ptr @memcpy(ptr %channels, ptr @rtl818x_channels, i32 784)
  %rates = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 12
  %41 = call ptr @memcpy(ptr %rates, ptr @rtl818x_rates, i32 144)
  %band = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 13
  %band95 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 13, i32 2
  %42 = ptrtoint ptr %band95 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %band95, align 4
  %43 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %channels, ptr %band, align 4
  %n_channels = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 13, i32 3
  %44 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 14, ptr %n_channels, align 4
  %bitrates = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 13, i32 1
  %45 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rates, ptr %bitrates, align 4
  %n_bitrates = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 13, i32 4
  %46 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %n_bitrates, align 4
  %47 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wiphy.i, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %48, i32 0, i32 53
  %49 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %band, ptr %bands, align 16
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 4
  %or.i.i364 = or i32 %51, 6
  store i32 %or.i.i364, ptr %flags.i, align 4
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 7
  %52 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 108, ptr %vif_data_size, align 4
  %53 = load ptr, ptr %wiphy.i, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 6, ptr %interface_modes, align 4
  %max_signal = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 13
  %55 = ptrtoint ptr %max_signal to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 65, ptr %max_signal, align 8
  %56 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %29, align 4
  %TX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %57, i32 0, i32 16
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TX_CONF) #8, !srcloc !182
  %59 = shl i32 %58, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %and = and i32 %59, 234881024
  %60 = add nsw i32 %and, -67108864
  %61 = lshr exact i32 %60, 25
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %do.end128 [
    i32 0, label %do.end93.sw.epilog_crit_edge
    i32 1, label %sw.bb110
    i32 2, label %sw.bb112
    i32 3, label %sw.bb114
    i32 4, label %sw.bb116
  ]

do.end93.sw.epilog_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb110:                                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb112:                                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb114:                                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb116:                                         ; preds = %do.end93
  %63 = ptrtoint ptr %map_pio to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %map_pio, align 4, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool118.not = icmp eq i8 %64, 0
  br i1 %tobool118.not, label %sw.bb116.sw.epilog_crit_edge, label %do.end122

sw.bb116.sw.epilog_crit_edge:                     ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end122:                                        ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.27) #11
  br label %err_iounmap

do.end128:                                        ; preds = %do.end93
  %init_name.i.i365 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %65 = ptrtoint ptr %init_name.i.i365 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i365, align 8
  %tobool.not.i.i366 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i366, label %if.end.i.i368, label %do.end128.pci_name.exit370_crit_edge

do.end128.pci_name.exit370_crit_edge:             ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit370

if.end.i.i368:                                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev44, align 4
  br label %pci_name.exit370

pci_name.exit370:                                 ; preds = %if.end.i.i368, %do.end128.pci_name.exit370_crit_edge
  %retval.0.i.i369 = phi ptr [ %68, %if.end.i.i368 ], [ %66, %do.end128.pci_name.exit370_crit_edge ]
  %shr = lshr exact i32 %and, 25
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i369, i32 noundef %shr) #11
  br label %err_iounmap

sw.epilog:                                        ; preds = %sw.bb116.sw.epilog_crit_edge, %sw.bb114, %sw.bb112, %sw.bb110, %do.end93.sw.epilog_crit_edge
  %cmp133 = phi i16 [ 4, %sw.bb116.sw.epilog_crit_edge ], [ 1, %do.end93.sw.epilog_crit_edge ], [ 1, %sw.bb114 ], [ 1, %sw.bb112 ], [ 1, %sw.bb110 ]
  %.sink407 = phi i32 [ 2, %sw.bb116.sw.epilog_crit_edge ], [ %61, %do.end93.sw.epilog_crit_edge ], [ 1, %sw.bb114 ], [ 1, %sw.bb112 ], [ 0, %sw.bb110 ]
  %chip_name.0 = phi ptr [ @.str.25, %sw.bb116.sw.epilog_crit_edge ], [ @.str.21, %do.end93.sw.epilog_crit_edge ], [ @.str.24, %sw.bb114 ], [ @.str.23, %sw.bb112 ], [ @.str.22, %sw.bb110 ]
  %chip_family125 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 19
  %69 = ptrtoint ptr %chip_family125 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink407, ptr %chip_family125, align 4
  %chip_family132 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 19
  %70 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 11
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %cmp133, ptr %70, align 4
  %72 = ptrtoint ptr %chip_family132 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %chip_family132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp138.not = icmp eq i32 %73, 0
  br i1 %cmp138.not, label %sw.epilog.if.else147_crit_edge, label %if.end143

sw.epilog.if.else147_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else147

if.end143:                                        ; preds = %sw.epilog
  %74 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 12, ptr %n_bitrates, align 4
  %call142 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #8
  %75 = ptrtoint ptr %chip_family132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr = load i32, ptr %chip_family132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp145.not = icmp eq i32 %.pr, 0
  br i1 %cmp145.not, label %if.end143.if.else147_crit_edge, label %if.end143.if.end148_crit_edge

if.end143.if.end148_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.end143.if.else147_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else147

if.else147:                                       ; preds = %if.end143.if.else147_crit_edge, %sw.epilog.if.else147_crit_edge
  br label %if.end148

if.end148:                                        ; preds = %if.else147, %if.end143.if.end148_crit_edge
  %.sink409 = phi i32 [ 8, %if.else147 ], [ 16, %if.end143.if.end148_crit_edge ]
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 4
  %or.i.i374 = or i32 %77, %.sink409
  store i32 %or.i.i374, ptr %flags.i, align 4
  %78 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %79, i32 0, i32 14, i32 1
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i, align 1
  %82 = or i8 %81, 32
  store i8 %82, ptr %arrayidx.i, align 1
  tail call fastcc void @rtl8180_eeprom_read(ptr noundef %29)
  %rf_type = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 24
  %83 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rf_type, align 1
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %84, label %do.end172 [
    i8 1, label %if.end148.sw.epilog178_crit_edge
    i8 2, label %sw.bb151
    i8 3, label %sw.bb152
    i8 4, label %sw.bb153
    i8 5, label %sw.bb155
    i8 9, label %sw.bb157
    i8 10, label %sw.bb168
  ]

if.end148.sw.epilog178_crit_edge:                 ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog178

sw.bb151:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog178

sw.bb152:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %rf = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 1
  %86 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @sa2400_rf_ops, ptr %rf, align 4
  br label %sw.epilog178

sw.bb153:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %rf154 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 1
  %87 = ptrtoint ptr %rf154 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @max2820_rf_ops, ptr %rf154, align 4
  br label %sw.epilog178

sw.bb155:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %rf156 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 1
  %88 = ptrtoint ptr %rf156 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @grf5101_rf_ops, ptr %rf156, align 4
  br label %sw.epilog178

sw.bb157:                                         ; preds = %if.end148
  %89 = ptrtoint ptr %chip_family132 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %chip_family132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp159 = icmp eq i32 %90, 2
  br i1 %cmp159, label %if.then161, label %if.else164

if.then161:                                       ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #10
  %call162 = tail call ptr @rtl8187se_detect_rf(ptr noundef nonnull %call.i) #8
  %rf163 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 1
  %91 = ptrtoint ptr %rf163 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call162, ptr %rf163, align 4
  br label %sw.epilog178

if.else164:                                       ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #10
  %call165 = tail call ptr @rtl8180_detect_rf(ptr noundef nonnull %call.i) #8
  %rf166 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 1
  %92 = ptrtoint ptr %rf166 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call165, ptr %rf166, align 4
  br label %sw.epilog178

sw.bb168:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog178

do.end172:                                        ; preds = %if.end148
  %init_name.i.i375 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %93 = ptrtoint ptr %init_name.i.i375 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i.i375, align 8
  %tobool.not.i.i376 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i376, label %if.end.i.i378, label %do.end172.pci_name.exit380_crit_edge

do.end172.pci_name.exit380_crit_edge:             ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit380

if.end.i.i378:                                    ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev44, align 4
  br label %pci_name.exit380

pci_name.exit380:                                 ; preds = %if.end.i.i378, %do.end172.pci_name.exit380_crit_edge
  %retval.0.i.i379 = phi ptr [ %96, %if.end.i.i378 ], [ %94, %do.end172.pci_name.exit380_crit_edge ]
  %conv176 = zext i8 %84 to i32
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i.i379, i32 noundef %conv176) #11
  br label %err_iounmap

sw.epilog178:                                     ; preds = %sw.bb168, %if.else164, %if.then161, %sw.bb155, %sw.bb153, %sw.bb152, %sw.bb151, %if.end148.sw.epilog178_crit_edge
  %rf_name.0 = phi ptr [ @.str.34, %sw.bb168 ], [ null, %if.then161 ], [ null, %if.else164 ], [ null, %sw.bb155 ], [ null, %sw.bb153 ], [ null, %sw.bb152 ], [ @.str.33, %sw.bb151 ], [ @.str.32, %if.end148.sw.epilog178_crit_edge ]
  %rf179 = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 1
  %97 = ptrtoint ptr %rf179 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rf179, align 4
  %tobool180.not = icmp eq ptr %98, null
  br i1 %tobool180.not, label %do.end184, label %if.end188

do.end184:                                        ; preds = %sw.epilog178
  %init_name.i.i381 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %99 = ptrtoint ptr %init_name.i.i381 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i.i381, align 8
  %tobool.not.i.i382 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i382, label %if.end.i.i384, label %do.end184.pci_name.exit386_crit_edge

do.end184.pci_name.exit386_crit_edge:             ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit386

if.end.i.i384:                                    ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev44, align 4
  br label %pci_name.exit386

pci_name.exit386:                                 ; preds = %if.end.i.i384, %do.end184.pci_name.exit386_crit_edge
  %retval.0.i.i385 = phi ptr [ %102, %if.end.i.i384 ], [ %100, %do.end184.pci_name.exit386_crit_edge ]
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %retval.0.i.i385, ptr noundef %rf_name.0) #11
  br label %err_iounmap

if.end188:                                        ; preds = %sw.epilog178
  %mac_addr = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 23
  %103 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mac_addr, align 4
  %105 = and i32 %104, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.i.not.i = icmp eq i32 %105, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end188.do.end194_crit_edge

if.end188.do.end194_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end194

is_valid_ether_addr.exit:                         ; preds = %if.end188
  %add.ptr.i.i = getelementptr %struct.rtl8180_priv, ptr %29, i32 0, i32 23, i32 4
  %106 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %107 to i32
  %or.i.i387 = or i32 %104, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i387)
  %cmp.i.i.not = icmp eq i32 %or.i.i387, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end194_crit_edge, label %is_valid_ether_addr.exit.if.end200_crit_edge

is_valid_ether_addr.exit.if.end200_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

is_valid_ether_addr.exit.do.end194_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end194

do.end194:                                        ; preds = %is_valid_ether_addr.exit.do.end194_crit_edge, %if.end188.do.end194_crit_edge
  %init_name.i.i388 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %108 = ptrtoint ptr %init_name.i.i388 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_name.i.i388, align 8
  %tobool.not.i.i389 = icmp eq ptr %109, null
  br i1 %tobool.not.i.i389, label %if.end.i.i391, label %do.end194.pci_name.exit393_crit_edge

do.end194.pci_name.exit393_crit_edge:             ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit393

if.end.i.i391:                                    ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev44, align 4
  br label %pci_name.exit393

pci_name.exit393:                                 ; preds = %if.end.i.i391, %do.end194.pci_name.exit393_crit_edge
  %retval.0.i.i392 = phi ptr [ %111, %if.end.i.i391 ], [ %109, %do.end194.pci_name.exit393_crit_edge ]
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %retval.0.i.i392) #11
  tail call void @get_random_bytes(ptr noundef %mac_addr, i32 noundef 6) #8
  %112 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %mac_addr, align 1
  %114 = and i8 %113, -4
  %115 = or i8 %114, 2
  store i8 %115, ptr %mac_addr, align 1
  br label %if.end200

if.end200:                                        ; preds = %pci_name.exit393, %is_valid_ether_addr.exit.if.end200_crit_edge
  %116 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %117, i32 0, i32 1
  %118 = call ptr @memcpy(ptr %perm_addr.i, ptr %mac_addr, i32 6)
  %lock = getelementptr inbounds %struct.rtl8180_priv, ptr %29, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.44, ptr noundef nonnull @rtl8180_probe.__key, i16 noundef signext 3) #8
  %call207 = tail call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %do.end219, label %do.end212

do.end212:                                        ; preds = %if.end200
  %init_name.i.i395 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %119 = ptrtoint ptr %init_name.i.i395 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i.i395, align 8
  %tobool.not.i.i396 = icmp eq ptr %120, null
  br i1 %tobool.not.i.i396, label %if.end.i.i398, label %do.end212.pci_name.exit400_crit_edge

do.end212.pci_name.exit400_crit_edge:             ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit400

if.end.i.i398:                                    ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev44, align 4
  br label %pci_name.exit400

pci_name.exit400:                                 ; preds = %if.end.i.i398, %do.end212.pci_name.exit400_crit_edge
  %retval.0.i.i399 = phi ptr [ %122, %if.end.i.i398 ], [ %120, %do.end212.pci_name.exit400_crit_edge ]
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %retval.0.i.i399) #11
  br label %err_iounmap

do.end219:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wiphy.i, align 8
  %dev221 = getelementptr inbounds %struct.wiphy, ptr %124, i32 0, i32 56
  %125 = ptrtoint ptr %rf179 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rf179, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev221, ptr noundef nonnull @.str.49, ptr noundef %mac_addr, ptr noundef nonnull %chip_name.0, ptr noundef %128) #11
  br label %cleanup

err_iounmap:                                      ; preds = %pci_name.exit400, %pci_name.exit386, %pci_name.exit380, %pci_name.exit370, %do.end122
  %err.1 = phi i32 [ -19, %pci_name.exit370 ], [ -12, %do.end122 ], [ -19, %pci_name.exit380 ], [ %call207, %pci_name.exit400 ], [ -19, %pci_name.exit386 ]
  %129 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %29, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %130) #8
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_iounmap, %do.end85
  %err.2 = phi i32 [ %err.1, %err_iounmap ], [ -12, %do.end85 ]
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #8
  br label %err_free_reg

err_free_reg:                                     ; preds = %err_free_dev, %pci_name.exit362, %pci_name.exit356, %pci_name.exit350
  %err.3 = phi i32 [ -12, %pci_name.exit350 ], [ %err.0, %pci_name.exit356 ], [ %err.2, %err_free_dev ], [ -12, %pci_name.exit362 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #8
  br label %err_disable_dev

err_disable_dev:                                  ; preds = %err_free_reg, %pci_name.exit344
  %err.4 = phi i32 [ %call3, %pci_name.exit344 ], [ %err.3, %err_free_reg ]
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_dev, %do.end219, %pci_name.exit
  %retval.0 = phi i32 [ %call, %pci_name.exit ], [ %err.4, %err_disable_dev ], [ 0, %do.end219 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_unregister_hw(ptr noundef nonnull %1) #8
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %5) #8
  tail call void @pci_release_regions(ptr noundef %pdev) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  tail call void @ieee80211_free_hw(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8180_eeprom_read(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %eeprom = alloca %struct.eeprom_93cx6, align 4
  %eeprom_val = alloca i16, align 2
  %txpwr = alloca i16, align 2
  %txpwr38 = alloca i16, align 2
  %anaparam = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom) #8
  %0 = getelementptr inbounds i8, ptr %eeprom, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eeprom_val) #8
  %2 = ptrtoint ptr %eeprom_val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %eeprom_val, align 2, !annotation !185
  %3 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %eeprom, align 4
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %register_read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rtl8180_eeprom_register_read, ptr %register_read, align 4
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %5 = ptrtoint ptr %register_write to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rtl8180_eeprom_register_write, ptr %register_write, align 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %RX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RX_CONF) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %9 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not, i32 6, i32 8
  %10 = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %13, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD, i8 -128) #8, !srcloc !181
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %EEPROM_CMD4 = getelementptr inbounds %struct.rtl818x_csr, ptr %15, i32 0, i32 20
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD4) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #8
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 6, ptr noundef nonnull %eeprom_val) #8
  %18 = ptrtoint ptr %eeprom_val to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %eeprom_val, align 2
  %20 = and i16 %19, 255
  store i16 %20, ptr %eeprom_val, align 2
  %conv8 = trunc i16 %19 to i8
  %rf_type = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 24
  %21 = ptrtoint ptr %rf_type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8, ptr %rf_type, align 1
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 23, ptr noundef nonnull %eeprom_val) #8
  %22 = ptrtoint ptr %eeprom_val to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %eeprom_val, align 2
  %24 = lshr i16 %23, 8
  %conv10 = trunc i16 %24 to i8
  %csthreshold = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 22
  %25 = ptrtoint ptr %csthreshold to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10, ptr %csthreshold, align 2
  %mac_addr = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 23
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom, i8 noundef zeroext 7, ptr noundef %mac_addr, i16 noundef zeroext 3) #8
  %chip_family = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 19
  %26 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp = icmp eq i32 %27, 2
  %. = select i1 %cmp, i32 48, i32 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr) #8
  %28 = ptrtoint ptr %txpwr to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %txpwr, align 2, !annotation !185
  %conv18 = trunc i32 %. to i8
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext %conv18, ptr noundef nonnull %txpwr) #8
  %29 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %txpwr, align 2
  %31 = and i16 %30, 255
  %hw_value = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 0, i32 3
  %32 = ptrtoint ptr %hw_value to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %hw_value, align 2
  %33 = lshr i16 %30, 8
  %hw_value28 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 1, i32 3
  %34 = ptrtoint ptr %hw_value28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %hw_value28, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr) #8
  %35 = ptrtoint ptr %txpwr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %txpwr, align 2, !annotation !185
  %36 = trunc i32 %. to i8
  %conv18.1 = or i8 %36, 1
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext %conv18.1, ptr noundef nonnull %txpwr) #8
  %37 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %txpwr, align 2
  %39 = and i16 %38, 255
  %hw_value.1 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 2, i32 3
  %40 = ptrtoint ptr %hw_value.1 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %hw_value.1, align 2
  %41 = lshr i16 %38, 8
  %hw_value28.1 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 3, i32 3
  %42 = ptrtoint ptr %hw_value28.1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %hw_value28.1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr) #8
  %43 = ptrtoint ptr %txpwr to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %txpwr, align 2, !annotation !185
  %44 = trunc i32 %. to i8
  %conv18.2 = or i8 %44, 2
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext %conv18.2, ptr noundef nonnull %txpwr) #8
  %45 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %txpwr, align 2
  %47 = and i16 %46, 255
  %hw_value.2 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 4, i32 3
  %48 = ptrtoint ptr %hw_value.2 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %hw_value.2, align 2
  %49 = lshr i16 %46, 8
  %hw_value28.2 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 5, i32 3
  %50 = ptrtoint ptr %hw_value28.2 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %hw_value28.2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr) #8
  %51 = ptrtoint ptr %txpwr to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %txpwr, align 2, !annotation !185
  %52 = trunc i32 %. to i8
  %conv18.3 = or i8 %52, 3
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext %conv18.3, ptr noundef nonnull %txpwr) #8
  %53 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %txpwr, align 2
  %55 = and i16 %54, 255
  %hw_value.3 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 6, i32 3
  %56 = ptrtoint ptr %hw_value.3 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %hw_value.3, align 2
  %57 = lshr i16 %54, 8
  %hw_value28.3 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 7, i32 3
  %58 = ptrtoint ptr %hw_value28.3 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %hw_value28.3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr) #8
  %59 = ptrtoint ptr %txpwr to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %txpwr, align 2, !annotation !185
  %60 = trunc i32 %. to i8
  %conv18.4 = or i8 %60, 4
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext %conv18.4, ptr noundef nonnull %txpwr) #8
  %61 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %txpwr, align 2
  %63 = and i16 %62, 255
  %hw_value.4 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 8, i32 3
  %64 = ptrtoint ptr %hw_value.4 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %hw_value.4, align 2
  %65 = lshr i16 %62, 8
  %hw_value28.4 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 9, i32 3
  %66 = ptrtoint ptr %hw_value28.4 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %hw_value28.4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr) #8
  %67 = ptrtoint ptr %txpwr to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -1, ptr %txpwr, align 2, !annotation !185
  %68 = trunc i32 %. to i8
  %conv18.5 = or i8 %68, 5
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext %conv18.5, ptr noundef nonnull %txpwr) #8
  %69 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %txpwr, align 2
  %71 = and i16 %70, 255
  %hw_value.5 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 10, i32 3
  %72 = ptrtoint ptr %hw_value.5 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %hw_value.5, align 2
  %73 = lshr i16 %70, 8
  %hw_value28.5 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 11, i32 3
  %74 = ptrtoint ptr %hw_value28.5 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %hw_value28.5, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr) #8
  %75 = ptrtoint ptr %txpwr to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -1, ptr %txpwr, align 2, !annotation !185
  %76 = trunc i32 %. to i8
  %conv18.6 = or i8 %76, 6
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext %conv18.6, ptr noundef nonnull %txpwr) #8
  %77 = ptrtoint ptr %txpwr to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %txpwr, align 2
  %79 = and i16 %78, 255
  %hw_value.6 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 12, i32 3
  %80 = ptrtoint ptr %hw_value.6 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %hw_value.6, align 2
  %81 = lshr i16 %78, 8
  %hw_value28.6 = getelementptr %struct.rtl8180_priv, ptr %priv, i32 0, i32 11, i32 13, i32 3
  %82 = ptrtoint ptr %hw_value28.6 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %hw_value28.6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr) #8
  %83 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp31.not = icmp eq i32 %84, 0
  br i1 %cmp31.not, label %entry.if.then65_crit_edge, label %for.body37.preheader

entry.if.then65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

for.body37.preheader:                             ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr38) #8
  %85 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 -1, ptr %txpwr38, align 2, !annotation !185
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 32, ptr noundef nonnull %txpwr38) #8
  %86 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %txpwr38, align 2
  %88 = shl i16 %87, 8
  %89 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %hw_value, align 2
  %or149 = or i16 %90, %88
  store i16 %or149, ptr %hw_value, align 2
  %91 = and i16 %87, -256
  %92 = ptrtoint ptr %hw_value28 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %hw_value28, align 2
  %or56150 = or i16 %93, %91
  store i16 %or56150, ptr %hw_value28, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr38) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr38) #8
  %94 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %txpwr38, align 2, !annotation !185
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 33, ptr noundef nonnull %txpwr38) #8
  %95 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %txpwr38, align 2
  %97 = shl i16 %96, 8
  %98 = ptrtoint ptr %hw_value.1 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %hw_value.1, align 2
  %or149.1 = or i16 %99, %97
  store i16 %or149.1, ptr %hw_value.1, align 2
  %100 = and i16 %96, -256
  %101 = ptrtoint ptr %hw_value28.1 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %hw_value28.1, align 2
  %or56150.1 = or i16 %102, %100
  store i16 %or56150.1, ptr %hw_value28.1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr38) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr38) #8
  %103 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -1, ptr %txpwr38, align 2, !annotation !185
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 34, ptr noundef nonnull %txpwr38) #8
  %104 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %txpwr38, align 2
  %106 = shl i16 %105, 8
  %107 = ptrtoint ptr %hw_value.2 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hw_value.2, align 2
  %or149.2 = or i16 %108, %106
  store i16 %or149.2, ptr %hw_value.2, align 2
  %109 = and i16 %105, -256
  %110 = ptrtoint ptr %hw_value28.2 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %hw_value28.2, align 2
  %or56150.2 = or i16 %111, %109
  store i16 %or56150.2, ptr %hw_value28.2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr38) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr38) #8
  %112 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %txpwr38, align 2, !annotation !185
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 35, ptr noundef nonnull %txpwr38) #8
  %113 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %txpwr38, align 2
  %115 = shl i16 %114, 8
  %116 = ptrtoint ptr %hw_value.3 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %hw_value.3, align 2
  %or149.3 = or i16 %117, %115
  store i16 %or149.3, ptr %hw_value.3, align 2
  %118 = and i16 %114, -256
  %119 = ptrtoint ptr %hw_value28.3 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %hw_value28.3, align 2
  %or56150.3 = or i16 %120, %118
  store i16 %or56150.3, ptr %hw_value28.3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr38) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr38) #8
  %121 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -1, ptr %txpwr38, align 2, !annotation !185
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 36, ptr noundef nonnull %txpwr38) #8
  %122 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %txpwr38, align 2
  %124 = shl i16 %123, 8
  %125 = ptrtoint ptr %hw_value.4 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %hw_value.4, align 2
  %or149.4 = or i16 %126, %124
  store i16 %or149.4, ptr %hw_value.4, align 2
  %127 = and i16 %123, -256
  %128 = ptrtoint ptr %hw_value28.4 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %hw_value28.4, align 2
  %or56150.4 = or i16 %129, %127
  store i16 %or56150.4, ptr %hw_value28.4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr38) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr38) #8
  %130 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -1, ptr %txpwr38, align 2, !annotation !185
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 37, ptr noundef nonnull %txpwr38) #8
  %131 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %txpwr38, align 2
  %133 = shl i16 %132, 8
  %134 = ptrtoint ptr %hw_value.5 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %hw_value.5, align 2
  %or149.5 = or i16 %135, %133
  store i16 %or149.5, ptr %hw_value.5, align 2
  %136 = and i16 %132, -256
  %137 = ptrtoint ptr %hw_value28.5 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %hw_value28.5, align 2
  %or56150.5 = or i16 %138, %136
  store i16 %or56150.5, ptr %hw_value28.5, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr38) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpwr38) #8
  %139 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -1, ptr %txpwr38, align 2, !annotation !185
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 38, ptr noundef nonnull %txpwr38) #8
  %140 = ptrtoint ptr %txpwr38 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %txpwr38, align 2
  %142 = shl i16 %141, 8
  %143 = ptrtoint ptr %hw_value.6 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %hw_value.6, align 2
  %or149.6 = or i16 %144, %142
  store i16 %or149.6, ptr %hw_value.6, align 2
  %145 = and i16 %141, -256
  %146 = ptrtoint ptr %hw_value28.6 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %hw_value28.6, align 2
  %or56150.6 = or i16 %147, %145
  store i16 %or56150.6, ptr %hw_value28.6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpwr38) #8
  %148 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %148)
  %.pr = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp63 = icmp eq i32 %.pr, 0
  br i1 %cmp63, label %for.body37.preheader.if.then65_crit_edge, label %for.body37.preheader.if.end67_crit_edge

for.body37.preheader.if.end67_crit_edge:          ; preds = %for.body37.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.body37.preheader.if.then65_crit_edge:         ; preds = %for.body37.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.then65:                                        ; preds = %for.body37.preheader.if.then65_crit_edge, %entry.if.then65_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anaparam) #8
  %149 = ptrtoint ptr %anaparam to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %anaparam, align 4, !annotation !185
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom, i8 noundef zeroext 13, ptr noundef nonnull %anaparam, i16 noundef zeroext 2) #8
  %150 = ptrtoint ptr %anaparam to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %anaparam, align 4
  %152 = call i32 @llvm.bswap.i32(i32 %151)
  %anaparam66 = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 20
  %153 = ptrtoint ptr %anaparam66 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %anaparam66, align 4
  %rfparam = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 21
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 25, ptr noundef %rfparam) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anaparam) #8
  %154 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pr152 = load i32, ptr %chip_family, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %for.body37.preheader.if.end67_crit_edge
  %155 = phi i32 [ %.pr152, %if.then65 ], [ %.pr, %for.body37.preheader.if.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %155)
  %cmp69 = icmp eq i32 %155, 2
  br i1 %cmp69, label %if.then71, label %if.end67.if.end109_crit_edge

if.end67.if.end109_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 63, ptr noundef nonnull %eeprom_val) #8
  %156 = ptrtoint ptr %eeprom_val to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %eeprom_val, align 2
  %158 = lshr i16 %157, 8
  %159 = trunc i16 %158 to i8
  %160 = and i8 %159, 1
  %antenna_diversity_en = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 30
  %161 = ptrtoint ptr %antenna_diversity_en to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %antenna_diversity_en, align 1
  %162 = and i16 %157, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %162)
  %cmp79 = icmp eq i16 %162, 1024
  %conv81 = zext i1 %cmp79 to i8
  %antenna_diversity_default = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 31
  %163 = ptrtoint ptr %antenna_diversity_default to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv81, ptr %antenna_diversity_default, align 4
  call void @eeprom_93cx6_read(ptr noundef nonnull %eeprom, i8 noundef zeroext 124, ptr noundef nonnull %eeprom_val) #8
  %164 = ptrtoint ptr %eeprom_val to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %eeprom_val, align 2
  %166 = trunc i16 %165 to i8
  %conv84 = and i8 %166, 15
  %xtal_out = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 25
  %167 = ptrtoint ptr %xtal_out to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv84, ptr %xtal_out, align 2
  %168 = lshr i8 %166, 4
  %xtal_in = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 26
  %169 = ptrtoint ptr %xtal_in to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %xtal_in, align 1
  %170 = lshr i16 %165, 12
  %171 = trunc i16 %170 to i8
  %172 = and i8 %171, 1
  %xtal_cal = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 27
  %173 = ptrtoint ptr %xtal_cal to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %xtal_cal, align 4
  %174 = lshr i16 %165, 8
  %175 = trunc i16 %174 to i8
  %conv100 = and i8 %175, 15
  %thermal_meter_val = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 28
  %176 = ptrtoint ptr %thermal_meter_val to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv100, ptr %thermal_meter_val, align 1
  %177 = lshr i16 %165, 13
  %178 = trunc i16 %177 to i8
  %179 = and i8 %178, 1
  %thermal_meter_en = getelementptr inbounds %struct.rtl8180_priv, ptr %priv, i32 0, i32 29
  %180 = ptrtoint ptr %thermal_meter_en to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %thermal_meter_en, align 2
  br label %if.end109

if.end109:                                        ; preds = %if.then71, %if.end67.if.end109_crit_edge
  %181 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %priv, align 4
  %EEPROM_CMD111 = getelementptr inbounds %struct.rtl818x_csr, ptr %182, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD111, i8 0) #8, !srcloc !181
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom_val) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtl8187se_detect_rf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtl8180_detect_rf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_tx(ptr noundef %dev, ptr nocapture noundef readnone %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %5 to i32
  %arrayidx = getelementptr %struct.rtl8180_priv, ptr %3, i32 0, i32 10, i32 %conv
  %pdev = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !186

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev4) #8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev4, ptr noundef %1, i32 noundef %9) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %1 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev8, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.52) #11
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i281 = icmp slt i8 %22, 0
  br i1 %cmp.i281, label %land.rhs.i282, label %if.end39.i284

land.rhs.i282:                                    ; preds = %if.end
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i282.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i283, !prof !186

land.rhs.i282.ieee80211_get_tx_rate.exit_crit_edge: ; preds = %land.rhs.i282
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_tx_rate.exit

if.then.i283:                                     ; preds = %land.rhs.i282
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 2737, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_tx_rate.exit

if.end39.i284:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %24, i32 0, i32 53, i32 %bf.lshr.i
  %26 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %22 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %29, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i284, %if.then.i283, %land.rhs.i282.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i285 = phi ptr [ %arrayidx44.i, %if.end39.i284 ], [ null, %if.then.i283 ], [ null, %land.rhs.i282.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i285, i32 0, i32 2
  %30 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_value, align 2
  %conv13 = zext i16 %31 to i32
  %shl = shl i32 %conv13, 24
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %or = or i32 %shl, %33
  %chip_family = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 19
  %34 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not = icmp eq i32 %35, 0
  %spec.select.v = select i1 %cmp.not, i32 -1342177280, i32 -268402688
  %spec.select = or i32 %or, %spec.select.v
  %flags21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %36 = ptrtoint ptr %flags21 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %bf.load = load i16, ptr %flags21, align 1
  %37 = and i16 %bf.load, 255
  %conv23 = zext i16 %37 to i32
  %and = and i32 %conv23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %ieee80211_get_tx_rate.exit
  %rts_cts_rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %rts_cts_rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rts_cts_rate_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.i286 = icmp slt i8 %39, 0
  br i1 %cmp.i286, label %if.then25.ieee80211_get_rts_cts_rate.exit_crit_edge, label %if.end.i

if.then25.ieee80211_get_rts_cts_rate.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_rts_cts_rate.exit

if.end.i:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i = zext i8 %39 to i32
  %wiphy.i287 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %40 = ptrtoint ptr %wiphy.i287 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy.i287, align 8
  %band.i288 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %band.i288 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i289 = load i32, ptr %band.i288, align 4
  %bf.lshr.i290 = lshr i32 %bf.load.i289, 29
  %arrayidx.i = getelementptr %struct.wiphy, ptr %41, i32 0, i32 53, i32 %bf.lshr.i290
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %bitrates.i291 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %bitrates.i291 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bitrates.i291, align 4
  %arrayidx3.i = getelementptr %struct.ieee80211_rate, ptr %46, i32 %conv6.i
  br label %ieee80211_get_rts_cts_rate.exit

ieee80211_get_rts_cts_rate.exit:                  ; preds = %if.end.i, %if.then25.ieee80211_get_rts_cts_rate.exit_crit_edge
  %retval.0.i292 = phi ptr [ %arrayidx3.i, %if.end.i ], [ null, %if.then25.ieee80211_get_rts_cts_rate.exit_crit_edge ]
  %hw_value28 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i292, i32 0, i32 2
  %47 = ptrtoint ptr %hw_value28 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hw_value28, align 2
  %conv29 = zext i16 %48 to i32
  %shl30 = shl i32 %conv29, 19
  %or26 = or i32 %spec.select, %shl30
  %or31 = or i32 %or26, 8388608
  %vif = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vif, align 4
  %call33 = tail call zeroext i16 @ieee80211_rts_duration(ptr noundef %dev, ptr noundef %50, i32 noundef %33, ptr noundef %cb.i) #8
  br label %if.end48

if.else:                                          ; preds = %ieee80211_get_tx_rate.exit
  %and35 = and i32 %conv23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else.if.end48_crit_edge, label %if.then37

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then37:                                        ; preds = %if.else
  %rts_cts_rate_idx.i293 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %51 = ptrtoint ptr %rts_cts_rate_idx.i293 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %rts_cts_rate_idx.i293, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp.i294 = icmp slt i8 %52, 0
  br i1 %cmp.i294, label %if.then37.ieee80211_get_rts_cts_rate.exit305_crit_edge, label %if.end.i303

if.then37.ieee80211_get_rts_cts_rate.exit305_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_rts_cts_rate.exit305

if.end.i303:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i295 = zext i8 %52 to i32
  %wiphy.i296 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %53 = ptrtoint ptr %wiphy.i296 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wiphy.i296, align 8
  %band.i297 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %55 = ptrtoint ptr %band.i297 to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i298 = load i32, ptr %band.i297, align 4
  %bf.lshr.i299 = lshr i32 %bf.load.i298, 29
  %arrayidx.i300 = getelementptr %struct.wiphy, ptr %54, i32 0, i32 53, i32 %bf.lshr.i299
  %56 = ptrtoint ptr %arrayidx.i300 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i300, align 4
  %bitrates.i301 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %bitrates.i301 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bitrates.i301, align 4
  %arrayidx3.i302 = getelementptr %struct.ieee80211_rate, ptr %59, i32 %conv6.i295
  br label %ieee80211_get_rts_cts_rate.exit305

ieee80211_get_rts_cts_rate.exit305:               ; preds = %if.end.i303, %if.then37.ieee80211_get_rts_cts_rate.exit305_crit_edge
  %retval.0.i304 = phi ptr [ %arrayidx3.i302, %if.end.i303 ], [ null, %if.then37.ieee80211_get_rts_cts_rate.exit305_crit_edge ]
  %hw_value40 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i304, i32 0, i32 2
  %60 = ptrtoint ptr %hw_value40 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hw_value40, align 2
  %conv41 = zext i16 %61 to i32
  %shl42 = shl i32 %conv41, 19
  %or38 = or i32 %spec.select, %shl42
  %or43 = or i32 %or38, 8650752
  %vif44 = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 2
  %62 = ptrtoint ptr %vif44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vif44, align 4
  %call46 = tail call zeroext i16 @ieee80211_ctstoself_duration(ptr noundef %dev, ptr noundef %63, i32 noundef %33, ptr noundef %cb.i) #8
  br label %if.end48

if.end48:                                         ; preds = %ieee80211_get_rts_cts_rate.exit305, %if.else.if.end48_crit_edge, %ieee80211_get_rts_cts_rate.exit
  %tx_flags.1 = phi i32 [ %or31, %ieee80211_get_rts_cts_rate.exit ], [ %or43, %ieee80211_get_rts_cts_rate.exit305 ], [ %spec.select, %if.else.if.end48_crit_edge ]
  %rts_duration.0 = phi i16 [ %call33, %ieee80211_get_rts_cts_rate.exit ], [ %call46, %ieee80211_get_rts_cts_rate.exit305 ], [ 0, %if.else.if.end48_crit_edge ]
  %64 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp50 = icmp eq i32 %65, 0
  br i1 %cmp50, label %if.then52, label %if.end48.if.end80_crit_edge

if.end48.if.end80_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then52:                                        ; preds = %if.end48
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 4
  %add = shl i32 %67, 4
  %68 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.i306 = icmp slt i8 %69, 0
  br i1 %cmp.i306, label %land.rhs.i308, label %if.end39.i318

land.rhs.i308:                                    ; preds = %if.then52
  %.b49.i307 = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i307, label %land.rhs.i308.ieee80211_get_tx_rate.exit320_crit_edge, label %if.then.i309, !prof !186

land.rhs.i308.ieee80211_get_tx_rate.exit320_crit_edge: ; preds = %land.rhs.i308
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_tx_rate.exit320

if.then.i309:                                     ; preds = %land.rhs.i308
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 2737, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_tx_rate.exit320

if.end39.i318:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i310 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %70 = ptrtoint ptr %wiphy.i310 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wiphy.i310, align 8
  %band.i311 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %72 = ptrtoint ptr %band.i311 to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load.i312 = load i32, ptr %band.i311, align 4
  %bf.lshr.i313 = lshr i32 %bf.load.i312, 29
  %arrayidx40.i314 = getelementptr %struct.wiphy, ptr %71, i32 0, i32 53, i32 %bf.lshr.i313
  %73 = ptrtoint ptr %arrayidx40.i314 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx40.i314, align 4
  %bitrates.i315 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %bitrates.i315 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bitrates.i315, align 4
  %idxprom51.i316 = zext i8 %69 to i32
  %arrayidx44.i317 = getelementptr %struct.ieee80211_rate, ptr %76, i32 %idxprom51.i316
  br label %ieee80211_get_tx_rate.exit320

ieee80211_get_tx_rate.exit320:                    ; preds = %if.end39.i318, %if.then.i309, %land.rhs.i308.ieee80211_get_tx_rate.exit320_crit_edge
  %retval.0.i319 = phi ptr [ %arrayidx44.i317, %if.end39.i318 ], [ null, %if.then.i309 ], [ null, %land.rhs.i308.ieee80211_get_tx_rate.exit320_crit_edge ]
  %bitrate = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i319, i32 0, i32 1
  %77 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %bitrate, align 4
  %79 = udiv i16 %78, 5
  %div = zext i16 %79 to i32
  %add57 = add i32 %add, 63
  %sub = add i32 %add57, %div
  %80 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp.i321 = icmp slt i8 %81, 0
  br i1 %cmp.i321, label %land.rhs.i323, label %if.end39.i333

land.rhs.i323:                                    ; preds = %ieee80211_get_tx_rate.exit320
  %.b49.i322 = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i322, label %land.rhs.i323.ieee80211_get_tx_rate.exit335_crit_edge, label %if.then.i324, !prof !186

land.rhs.i323.ieee80211_get_tx_rate.exit335_crit_edge: ; preds = %land.rhs.i323
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_tx_rate.exit335

if.then.i324:                                     ; preds = %land.rhs.i323
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 2737, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_tx_rate.exit335

if.end39.i333:                                    ; preds = %ieee80211_get_tx_rate.exit320
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i325 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %82 = ptrtoint ptr %wiphy.i325 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy.i325, align 8
  %band.i326 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %84 = ptrtoint ptr %band.i326 to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load.i327 = load i32, ptr %band.i326, align 4
  %bf.lshr.i328 = lshr i32 %bf.load.i327, 29
  %arrayidx40.i329 = getelementptr %struct.wiphy, ptr %83, i32 0, i32 53, i32 %bf.lshr.i328
  %85 = ptrtoint ptr %arrayidx40.i329 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx40.i329, align 4
  %bitrates.i330 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %bitrates.i330 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bitrates.i330, align 4
  %idxprom51.i331 = zext i8 %81 to i32
  %arrayidx44.i332 = getelementptr %struct.ieee80211_rate, ptr %88, i32 %idxprom51.i331
  br label %ieee80211_get_tx_rate.exit335

ieee80211_get_tx_rate.exit335:                    ; preds = %if.end39.i333, %if.then.i324, %land.rhs.i323.ieee80211_get_tx_rate.exit335_crit_edge
  %retval.0.i334 = phi ptr [ %arrayidx44.i332, %if.end39.i333 ], [ null, %if.then.i324 ], [ null, %land.rhs.i323.ieee80211_get_tx_rate.exit335_crit_edge ]
  %bitrate59 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i334, i32 0, i32 1
  %89 = ptrtoint ptr %bitrate59 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %bitrate59, align 4
  %91 = udiv i16 %90, 5
  %div62 = zext i16 %91 to i32
  %div63 = udiv i32 %sub, %div62
  %conv64 = trunc i32 %div63 to i16
  %92 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len, align 4
  %add66 = shl i32 %93, 4
  %mul67 = add i32 %add66, 64
  %94 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp.i336 = icmp slt i8 %95, 0
  br i1 %cmp.i336, label %land.rhs.i338, label %if.end39.i348

land.rhs.i338:                                    ; preds = %ieee80211_get_tx_rate.exit335
  %.b49.i337 = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i337, label %land.rhs.i338.ieee80211_get_tx_rate.exit350_crit_edge, label %if.then.i339, !prof !186

land.rhs.i338.ieee80211_get_tx_rate.exit350_crit_edge: ; preds = %land.rhs.i338
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_tx_rate.exit350

if.then.i339:                                     ; preds = %land.rhs.i338
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 2737, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_tx_rate.exit350

if.end39.i348:                                    ; preds = %ieee80211_get_tx_rate.exit335
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i340 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %96 = ptrtoint ptr %wiphy.i340 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wiphy.i340, align 8
  %band.i341 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %98 = ptrtoint ptr %band.i341 to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load.i342 = load i32, ptr %band.i341, align 4
  %bf.lshr.i343 = lshr i32 %bf.load.i342, 29
  %arrayidx40.i344 = getelementptr %struct.wiphy, ptr %97, i32 0, i32 53, i32 %bf.lshr.i343
  %99 = ptrtoint ptr %arrayidx40.i344 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx40.i344, align 4
  %bitrates.i345 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %bitrates.i345 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bitrates.i345, align 4
  %idxprom51.i346 = zext i8 %95 to i32
  %arrayidx44.i347 = getelementptr %struct.ieee80211_rate, ptr %102, i32 %idxprom51.i346
  br label %ieee80211_get_tx_rate.exit350

ieee80211_get_tx_rate.exit350:                    ; preds = %if.end39.i348, %if.then.i339, %land.rhs.i338.ieee80211_get_tx_rate.exit350_crit_edge
  %retval.0.i349 = phi ptr [ %arrayidx44.i347, %if.end39.i348 ], [ null, %if.then.i339 ], [ null, %land.rhs.i338.ieee80211_get_tx_rate.exit350_crit_edge ]
  %bitrate69 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i349, i32 0, i32 1
  %103 = ptrtoint ptr %bitrate69 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %bitrate69, align 4
  %105 = udiv i16 %104, 5
  %div72 = zext i16 %105 to i32
  %rem = urem i32 %mul67, %div72
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rem)
  %cmp73 = icmp ult i32 %rem, 7
  %conv78 = or i16 %conv64, -32768
  %plcp_len.0 = select i1 %cmp73, i16 %conv78, i16 %conv64
  %106 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr = load i32, ptr %chip_family, align 4
  br label %if.end80

if.end80:                                         ; preds = %ieee80211_get_tx_rate.exit350, %if.end48.if.end80_crit_edge
  %107 = phi i32 [ %.pr, %ieee80211_get_tx_rate.exit350 ], [ %65, %if.end48.if.end80_crit_edge ]
  %plcp_len.1 = phi i16 [ %plcp_len.0, %ieee80211_get_tx_rate.exit350 ], [ 0, %if.end48.if.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp82 = icmp eq i32 %107, 2
  br i1 %cmp82, label %if.then84, label %if.end80.do.body95_crit_edge

if.end80.do.body95_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95

if.then84:                                        ; preds = %if.end80
  %vif85 = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 2
  %108 = ptrtoint ptr %vif85 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %vif85, align 4
  %110 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len, align 4
  %112 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp.i351 = icmp slt i8 %113, 0
  br i1 %cmp.i351, label %land.rhs.i353, label %if.end39.i363

land.rhs.i353:                                    ; preds = %if.then84
  %.b49.i352 = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i352, label %land.rhs.i353.ieee80211_get_tx_rate.exit365_crit_edge, label %if.then.i354, !prof !186

land.rhs.i353.ieee80211_get_tx_rate.exit365_crit_edge: ; preds = %land.rhs.i353
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_tx_rate.exit365

if.then.i354:                                     ; preds = %land.rhs.i353
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 2737, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_tx_rate.exit365

if.end39.i363:                                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i355 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %114 = ptrtoint ptr %wiphy.i355 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wiphy.i355, align 8
  %band.i356 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %116 = ptrtoint ptr %band.i356 to i32
  call void @__asan_load4_noabort(i32 %116)
  %bf.load.i357 = load i32, ptr %band.i356, align 4
  %bf.lshr.i358 = lshr i32 %bf.load.i357, 29
  %arrayidx40.i359 = getelementptr %struct.wiphy, ptr %115, i32 0, i32 53, i32 %bf.lshr.i358
  %117 = ptrtoint ptr %arrayidx40.i359 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx40.i359, align 4
  %bitrates.i360 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %bitrates.i360 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bitrates.i360, align 4
  %idxprom51.i361 = zext i8 %113 to i32
  %arrayidx44.i362 = getelementptr %struct.ieee80211_rate, ptr %120, i32 %idxprom51.i361
  br label %ieee80211_get_tx_rate.exit365

ieee80211_get_tx_rate.exit365:                    ; preds = %if.end39.i363, %if.then.i354, %land.rhs.i353.ieee80211_get_tx_rate.exit365_crit_edge
  %retval.0.i364 = phi ptr [ %arrayidx44.i362, %if.end39.i363 ], [ null, %if.then.i354 ], [ null, %land.rhs.i353.ieee80211_get_tx_rate.exit365_crit_edge ]
  %call88 = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %dev, ptr noundef %109, i32 noundef 0, i32 noundef %111, ptr noundef %retval.0.i364) #8
  %ack_time = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 18
  %121 = ptrtoint ptr %ack_time to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %ack_time, align 2
  %123 = tail call i16 @llvm.bswap.i16(i16 %call88)
  %add91 = add i16 %122, %123
  br label %do.body95

do.body95:                                        ; preds = %ieee80211_get_tx_rate.exit365, %if.end80.do.body95_crit_edge
  %frame_duration.0 = phi i16 [ %add91, %ieee80211_get_tx_rate.exit365 ], [ 0, %if.end80.do.body95_crit_edge ]
  %lock = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 4
  %call99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %124 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cb.i, align 8
  %and105 = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body95.if.end125_crit_edge, label %if.then107

do.body95.if.end125_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then107:                                       ; preds = %do.body95
  %and109 = and i32 %125, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then107.if.end115_crit_edge, label %if.then111

if.then107.if.end115_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then111:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %seqno = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 32
  %126 = ptrtoint ptr %seqno to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %seqno, align 2
  %add113 = add i16 %127, 16
  store i16 %add113, ptr %seqno, align 2
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.then107.if.end115_crit_edge
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %128 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %seq_ctrl, align 2
  %130 = and i16 %129, 3840
  store i16 %130, ptr %seq_ctrl, align 2
  %seqno119 = getelementptr inbounds %struct.rtl8180_priv, ptr %3, i32 0, i32 32
  %131 = ptrtoint ptr %seqno119 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %seqno119, align 2
  %133 = tail call i16 @llvm.bswap.i16(i16 %132)
  %or123280 = or i16 %133, %130
  %134 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %or123280, ptr %seq_ctrl, align 2
  br label %if.end125

if.end125:                                        ; preds = %if.end115, %do.body95.if.end125_crit_edge
  %idx126 = getelementptr %struct.rtl8180_priv, ptr %3, i32 0, i32 10, i32 %conv, i32 2
  %135 = ptrtoint ptr %idx126 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %idx126, align 4
  %queue = getelementptr %struct.rtl8180_priv, ptr %3, i32 0, i32 10, i32 %conv, i32 4
  %qlen.i = getelementptr %struct.rtl8180_priv, ptr %3, i32 0, i32 10, i32 %conv, i32 4, i32 1
  %137 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %qlen.i, align 4
  %add128 = add i32 %138, %136
  %entries = getelementptr %struct.rtl8180_priv, ptr %3, i32 0, i32 10, i32 %conv, i32 3
  %139 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %entries, align 4
  %rem129 = urem i32 %add128, %140
  %141 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx, align 4
  %arrayidx130 = getelementptr %struct.rtl8180_tx_desc, ptr %142, i32 %rem129
  %143 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp132 = icmp eq i32 %144, 2
  br i1 %cmp132, label %if.then134, label %if.else138

if.then134:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %145 = tail call i16 @llvm.bswap.i16(i16 %frame_duration.0)
  %146 = getelementptr %struct.rtl8180_tx_desc, ptr %142, i32 %rem129, i32 4
  %frame_duration135 = getelementptr inbounds %struct.anon.150, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %frame_duration135 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 %145, ptr %frame_duration135, align 1
  %148 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %len, align 4
  %conv137 = trunc i32 %149 to i16
  %150 = tail call i16 @llvm.bswap.i16(i16 %conv137)
  %151 = ptrtoint ptr %146 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 %150, ptr %146, align 1
  %flags3 = getelementptr %struct.rtl8180_tx_desc, ptr %142, i32 %rem129, i32 11
  %152 = ptrtoint ptr %flags3 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 4096, ptr %flags3, align 1
  br label %if.end140

if.else138:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len, align 4
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  %156 = getelementptr %struct.rtl8180_tx_desc, ptr %142, i32 %rem129, i32 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 %155, ptr %156, align 1
  br label %if.end140

if.end140:                                        ; preds = %if.else138, %if.then134
  %rts_duration141 = getelementptr %struct.rtl8180_tx_desc, ptr %142, i32 %rem129, i32 1
  %158 = ptrtoint ptr %rts_duration141 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 %rts_duration.0, ptr %rts_duration141, align 1
  %159 = tail call i16 @llvm.bswap.i16(i16 %plcp_len.1)
  %plcp_len142 = getelementptr %struct.rtl8180_tx_desc, ptr %142, i32 %rem129, i32 2
  %160 = ptrtoint ptr %plcp_len142 to i32
  call void @__asan_storeN_noabort(i32 %160, i32 2)
  store i16 %159, ptr %plcp_len142, align 1
  %161 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %tx_buf = getelementptr %struct.rtl8180_tx_desc, ptr %142, i32 %rem129, i32 3
  %162 = ptrtoint ptr %tx_buf to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %161, ptr %tx_buf, align 1
  %163 = ptrtoint ptr %flags21 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %bf.load145 = load i16, ptr %flags21, align 1
  %bf.lshr = lshr i16 %bf.load145, 11
  %conv146 = trunc i16 %bf.lshr to i8
  %sub147 = add nsw i8 %conv146, -1
  %retry_limit = getelementptr %struct.rtl8180_tx_desc, ptr %142, i32 %rem129, i32 7
  %164 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %sub147, ptr %retry_limit, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  tail call void @arm_heavy_mb() #8
  %165 = tail call i32 @llvm.bswap.i32(i32 %tx_flags.1)
  %166 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_storeN_noabort(i32 %166, i32 4)
  store i32 %165, ptr %arrayidx130, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %queue, i32 0, i32 1
  %167 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i.i, align 4
  %169 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %skb, i32 0, i32 1
  %170 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %168, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %171 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %skb, ptr %168, align 4
  %172 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %173, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %174 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %entries, align 4
  %sub160 = sub i32 %175, %add.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub160)
  %cmp161 = icmp ult i32 %sub160, 2
  br i1 %cmp161, label %if.then163, label %if.end140.if.end164_crit_edge

if.end140.if.end164_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then163:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_stop_queue(ptr noundef %dev, i32 noundef %conv) #8
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %if.end140.if.end164_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call99) #8
  %176 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %177)
  %cmp167 = icmp eq i32 %177, 2
  br i1 %cmp167, label %if.then169, label %if.else173

if.then169:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx170 = getelementptr [5 x i32], ptr @rtl8187se_queues_map, i32 0, i32 %conv
  %178 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx170, align 4
  %180 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %3, align 4
  %TX_DMA_POLLING = getelementptr inbounds %struct.rtl818x_csr, ptr %181, i32 0, i32 72
  %shl171 = shl nuw i32 1, %179
  %conv172 = trunc i32 %shl171 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_DMA_POLLING, i8 %conv172) #8, !srcloc !181
  br label %cleanup

if.else173:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx174 = getelementptr [2 x i32], ptr @rtl8180_queues_map, i32 0, i32 %conv
  %182 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx174, align 4
  %184 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %3, align 4
  %TX_DMA_POLLING176 = getelementptr inbounds %struct.rtl818x_csr, ptr %185, i32 0, i32 72
  %shl177 = shl nuw i32 1, %183
  %186 = trunc i32 %shl177 to i8
  %conv180 = or i8 %186, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_DMA_POLLING176, i8 %conv180) #8, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %if.else173, %if.then169, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8180_start(ptr noundef %dev) #0 align 64 {
entry:
  %dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %chip_family.i = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  %spec.select.i = select i1 %cmp.i, i8 32, i8 16
  %4 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select.i, ptr %4, align 4
  %pdev.i = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %conv.i = zext i8 %spec.select.i to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %rx_ring_dma.i = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 7
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev4.i, i32 noundef %mul.i, ptr noundef %rx_ring_dma.i, i32 noundef 3264, i32 noundef 0) #8
  %rx_ring.i = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %rx_ring.i, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %9 = ptrtoint ptr %call.i.i to i32
  %and.i = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool8.not.i, i1 false
  br i1 %or.cond.i, label %if.end11.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 8
  %dev10.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.59) #11
  br label %cleanup

if.end11.i:                                       ; preds = %entry
  %rx_idx.i = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %rx_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_idx.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end55.i.for.body.i_crit_edge, %if.end11.i
  %i.0106.i = phi i32 [ 0, %if.end11.i ], [ %inc.i, %if.end55.i.for.body.i_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2353, i32 noundef 2592) #8
  %13 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_ring.i, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %4, align 4
  %conv17.i = zext i8 %16 to i32
  %mul18.i = mul i32 %i.0106.i, %conv17.i
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul18.i
  %tobool19.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end33.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv17.i.le = zext i8 %16 to i32
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 4
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %mul25.i = shl nuw nsw i32 %conv17.i.le, 5
  %19 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev22.i, i32 noundef %mul25.i, ptr noundef %14, i32 noundef %20, i32 noundef 0) #8
  %wiphy31.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy31.i, align 8
  %dev32.i = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.62) #11
  br label %cleanup

if.end33.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 9, i32 %i.0106.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i, ptr %arrayidx.i, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 4
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %call.i98.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %27) #8
  br i1 %call.i98.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end33.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !186

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev35.i) #8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %28 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev35.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %31, %if.end.i.i.i ], [ %29, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev35.i, ptr noundef %27, i32 noundef 2353) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %27 to i32
  %sub.i.i = add i32 %33, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %32, i32 %shr.i.i
  %and.i.i = and i32 %33, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev35.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 2353, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %34 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i.i, ptr %cb.i, align 4
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 4
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev39.i, i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then42.i, label %if.end55.i

if.then42.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 4
  %dev44.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %4, align 4
  %conv46.i = zext i8 %40 to i32
  %mul47.i = shl nuw nsw i32 %conv46.i, 5
  %41 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_ring.i, align 4
  %43 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev44.i, i32 noundef %mul47.i, ptr noundef %42, i32 noundef %44, i32 noundef 0) #8
  %wiphy53.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %45 = ptrtoint ptr %wiphy53.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wiphy53.i, align 8
  %dev54.i = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54.i, ptr noundef nonnull @.str.65) #11
  br label %cleanup

if.end55.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %47 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cb.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %rx_buf56.i = getelementptr inbounds %struct.rtl818x_rx_cmd_desc, ptr %add.ptr.i, i32 0, i32 2
  %50 = ptrtoint ptr %rx_buf56.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %rx_buf56.i, align 1
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 822673536, ptr %add.ptr.i, align 1
  %inc.i = add nuw nsw i32 %i.0106.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %rtl8180_init_rx_ring.exit, label %if.end55.i.for.body.i_crit_edge

if.end55.i.for.body.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rtl8180_init_rx_ring.exit:                        ; preds = %if.end55.i
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 822673600, ptr %add.ptr.i, align 1
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rtl8180_init_rx_ring.exit
  %i.0270 = phi i32 [ 0, %rtl8180_init_rx_ring.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %53 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i) #8
  %55 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %dma.i, align 4, !annotation !185
  %pdev.i202 = getelementptr inbounds %struct.rtl8180_priv, ptr %54, i32 0, i32 15
  %56 = ptrtoint ptr %pdev.i202 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i202, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %call.i.i203 = call ptr @dma_alloc_attrs(ptr noundef %dev2.i, i32 noundef 512, ptr noundef nonnull %dma.i, i32 noundef 3264, i32 noundef 0) #8
  %tobool.not.i204 = icmp ne ptr %call.i.i203, null
  %58 = ptrtoint ptr %call.i.i203 to i32
  %and.i205 = and i32 %58, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool3.not.i = icmp eq i32 %and.i205, 0
  %or.cond.i206 = select i1 %tobool.not.i204, i1 %tobool3.not.i, i1 false
  br i1 %or.cond.i206, label %for.inc, label %rtl8180_init_tx_ring.exit

rtl8180_init_tx_ring.exit:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i207 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %59 = ptrtoint ptr %wiphy.i207 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wiphy.i207, align 8
  %dev4.i208 = getelementptr inbounds %struct.wiphy, ptr %60, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i208, ptr noundef nonnull @.str.67, i32 noundef %i.0270) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i) #8
  br label %err_free_rings

for.inc:                                          ; preds = %for.body
  %arrayidx.i210 = getelementptr %struct.rtl8180_priv, ptr %54, i32 0, i32 10, i32 %i.0270
  %61 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i.i203, ptr %arrayidx.i210, align 4
  %62 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma.i, align 4
  %dma7.i = getelementptr %struct.rtl8180_priv, ptr %54, i32 0, i32 10, i32 %i.0270, i32 1
  %64 = ptrtoint ptr %dma7.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %dma7.i, align 4
  %idx.i = getelementptr %struct.rtl8180_priv, ptr %54, i32 0, i32 10, i32 %i.0270, i32 2
  %65 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %idx.i, align 4
  %entries12.i = getelementptr %struct.rtl8180_priv, ptr %54, i32 0, i32 10, i32 %i.0270, i32 3
  %66 = ptrtoint ptr %entries12.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16, ptr %entries12.i, align 4
  %queue.i = getelementptr %struct.rtl8180_priv, ptr %54, i32 0, i32 10, i32 %i.0270, i32 4
  %lock.i.i = getelementptr %struct.rtl8180_priv, ptr %54, i32 0, i32 10, i32 %i.0270, i32 4, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %67 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.62, ptr %queue.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.rtl8180_priv, ptr %54, i32 0, i32 10, i32 %i.0270, i32 4, i32 1
  %69 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %qlen.i.i.i, align 4
  %70 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma.i, align 4
  %add16.i = add i32 %71, 32
  %72 = call i32 @llvm.bswap.i32(i32 %add16.i) #8
  %next_tx_desc.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 0, i32 5
  %73 = ptrtoint ptr %next_tx_desc.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %next_tx_desc.i, align 1
  %74 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma.i, align 4
  %add16.1.i = add i32 %75, 64
  %76 = call i32 @llvm.bswap.i32(i32 %add16.1.i) #8
  %next_tx_desc.1.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 1, i32 5
  %77 = ptrtoint ptr %next_tx_desc.1.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %next_tx_desc.1.i, align 1
  %78 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma.i, align 4
  %add16.2.i = add i32 %79, 96
  %80 = call i32 @llvm.bswap.i32(i32 %add16.2.i) #8
  %next_tx_desc.2.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 2, i32 5
  %81 = ptrtoint ptr %next_tx_desc.2.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %next_tx_desc.2.i, align 1
  %82 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma.i, align 4
  %add16.3.i = add i32 %83, 128
  %84 = call i32 @llvm.bswap.i32(i32 %add16.3.i) #8
  %next_tx_desc.3.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 3, i32 5
  %85 = ptrtoint ptr %next_tx_desc.3.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %next_tx_desc.3.i, align 1
  %86 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma.i, align 4
  %add16.4.i = add i32 %87, 160
  %88 = call i32 @llvm.bswap.i32(i32 %add16.4.i) #8
  %next_tx_desc.4.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 4, i32 5
  %89 = ptrtoint ptr %next_tx_desc.4.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %next_tx_desc.4.i, align 1
  %90 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma.i, align 4
  %add16.5.i = add i32 %91, 192
  %92 = call i32 @llvm.bswap.i32(i32 %add16.5.i) #8
  %next_tx_desc.5.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 5, i32 5
  %93 = ptrtoint ptr %next_tx_desc.5.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %next_tx_desc.5.i, align 1
  %94 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma.i, align 4
  %add16.6.i = add i32 %95, 224
  %96 = call i32 @llvm.bswap.i32(i32 %add16.6.i) #8
  %next_tx_desc.6.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 6, i32 5
  %97 = ptrtoint ptr %next_tx_desc.6.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %96, ptr %next_tx_desc.6.i, align 1
  %98 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dma.i, align 4
  %add16.7.i = add i32 %99, 256
  %100 = call i32 @llvm.bswap.i32(i32 %add16.7.i) #8
  %next_tx_desc.7.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 7, i32 5
  %101 = ptrtoint ptr %next_tx_desc.7.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %next_tx_desc.7.i, align 1
  %102 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dma.i, align 4
  %add16.8.i = add i32 %103, 288
  %104 = call i32 @llvm.bswap.i32(i32 %add16.8.i) #8
  %next_tx_desc.8.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 8, i32 5
  %105 = ptrtoint ptr %next_tx_desc.8.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %next_tx_desc.8.i, align 1
  %106 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma.i, align 4
  %add16.9.i = add i32 %107, 320
  %108 = call i32 @llvm.bswap.i32(i32 %add16.9.i) #8
  %next_tx_desc.9.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 9, i32 5
  %109 = ptrtoint ptr %next_tx_desc.9.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %next_tx_desc.9.i, align 1
  %110 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma.i, align 4
  %add16.10.i = add i32 %111, 352
  %112 = call i32 @llvm.bswap.i32(i32 %add16.10.i) #8
  %next_tx_desc.10.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 10, i32 5
  %113 = ptrtoint ptr %next_tx_desc.10.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %next_tx_desc.10.i, align 1
  %114 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma.i, align 4
  %add16.11.i = add i32 %115, 384
  %116 = call i32 @llvm.bswap.i32(i32 %add16.11.i) #8
  %next_tx_desc.11.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 11, i32 5
  %117 = ptrtoint ptr %next_tx_desc.11.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %next_tx_desc.11.i, align 1
  %118 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma.i, align 4
  %add16.12.i = add i32 %119, 416
  %120 = call i32 @llvm.bswap.i32(i32 %add16.12.i) #8
  %next_tx_desc.12.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 12, i32 5
  %121 = ptrtoint ptr %next_tx_desc.12.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %next_tx_desc.12.i, align 1
  %122 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma.i, align 4
  %add16.13.i = add i32 %123, 448
  %124 = call i32 @llvm.bswap.i32(i32 %add16.13.i) #8
  %next_tx_desc.13.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 13, i32 5
  %125 = ptrtoint ptr %next_tx_desc.13.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %next_tx_desc.13.i, align 1
  %126 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dma.i, align 4
  %add16.14.i = add i32 %127, 480
  %128 = call i32 @llvm.bswap.i32(i32 %add16.14.i) #8
  %next_tx_desc.14.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 14, i32 5
  %129 = ptrtoint ptr %next_tx_desc.14.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %next_tx_desc.14.i, align 1
  %130 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dma.i, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131) #8
  %next_tx_desc.15.i = getelementptr %struct.rtl8180_tx_desc, ptr %call.i.i203, i32 15, i32 5
  %133 = ptrtoint ptr %next_tx_desc.15.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %next_tx_desc.15.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i) #8
  %inc = add nuw nsw i32 %i.0270, 1
  %134 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %queues, align 4
  %conv = zext i16 %135 to i32
  %cmp.not.not = icmp ult i32 %i.0270, %conv
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %136 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %priv1, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %CMD.i = getelementptr inbounds %struct.rtl818x_csr, ptr %139, i32 0, i32 13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CMD.i, i8 0) #8, !srcloc !181
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %137, align 4
  %CMD3.i = getelementptr inbounds %struct.rtl818x_csr, ptr %141, i32 0, i32 13
  %142 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CMD3.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @msleep(i32 noundef 10) #8
  %143 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %priv1, align 8
  %chip_family.i.i = getelementptr inbounds %struct.rtl8180_priv, ptr %144, i32 0, i32 19
  %145 = ptrtoint ptr %chip_family.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %chip_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %cmp.i.i212 = icmp eq i32 %146, 2
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %144, align 4
  br i1 %cmp.i.i212, label %if.then.i.i213, label %if.else.i.i

if.then.i.i213:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %IMR.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %148, i32 0, i32 34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IMR.i.i, i32 0) #8, !srcloc !177
  br label %rtl8180_int_disable.exit.i

if.else.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %149 = getelementptr inbounds %struct.rtl818x_csr, ptr %148, i32 0, i32 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %149, i16 0) #8, !srcloc !190
  br label %rtl8180_int_disable.exit.i

rtl8180_int_disable.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i213
  %150 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %137, align 4
  %CMD5.i = getelementptr inbounds %struct.rtl818x_csr, ptr %151, i32 0, i32 13
  %152 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CMD5.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %153 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %137, align 4
  %CMD8.i = getelementptr inbounds %struct.rtl818x_csr, ptr %154, i32 0, i32 13
  %155 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CMD8.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %156 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %137, align 4
  %CMD15.i = getelementptr inbounds %struct.rtl818x_csr, ptr %157, i32 0, i32 13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CMD15.i, i8 16) #8, !srcloc !181
  %158 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %137, align 4
  %CMD17.i = getelementptr inbounds %struct.rtl818x_csr, ptr %159, i32 0, i32 13
  %160 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CMD17.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @msleep(i32 noundef 200) #8
  %161 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %137, align 4
  %CMD20.i = getelementptr inbounds %struct.rtl818x_csr, ptr %162, i32 0, i32 13
  %163 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CMD20.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %164 = and i8 %163, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i214 = icmp eq i8 %164, 0
  br i1 %tobool.not.i214, label %if.end.i217, label %rtl8180_init_hw.exit

if.end.i217:                                      ; preds = %rtl8180_int_disable.exit.i
  %165 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %137, align 4
  %EEPROM_CMD.i = getelementptr inbounds %struct.rtl818x_csr, ptr %166, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD.i, i8 64) #8, !srcloc !181
  %167 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %137, align 4
  %CMD27.i = getelementptr inbounds %struct.rtl818x_csr, ptr %168, i32 0, i32 13
  %169 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CMD27.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @msleep(i32 noundef 200) #8
  %170 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %137, align 4
  %CONFIG3.i = getelementptr inbounds %struct.rtl818x_csr, ptr %171, i32 0, i32 26
  %172 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %173 = and i8 %172, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool33.not.i = icmp eq i8 %173, 0
  br i1 %tobool33.not.i, label %if.end.i217.if.end35.i_crit_edge, label %if.then34.i

if.end.i217.if.end35.i_crit_edge:                 ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then34.i:                                      ; preds = %if.end.i217
  %174 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %priv1, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %CONFIG3.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %177, i32 0, i32 26
  %178 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %179 = or i8 %178, 2
  %180 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %175, align 4
  %CONFIG34.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %181, i32 0, i32 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG34.i.i, i8 %179) #8, !srcloc !181
  %chip_family.i387.i = getelementptr inbounds %struct.rtl8180_priv, ptr %175, i32 0, i32 19
  %182 = ptrtoint ptr %chip_family.i387.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %chip_family.i387.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %183)
  %cmp.i388.i = icmp eq i32 %183, 2
  %184 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %175, align 4
  br i1 %cmp.i388.i, label %if.then.i389.i, label %if.else.i390.i

if.then.i389.i:                                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i218 = getelementptr i16, ptr %185, i32 234
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i218, i16 -1) #8, !srcloc !190
  br label %if.end35.i

if.else.i390.i:                                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %186 = getelementptr inbounds %struct.rtl818x_csr, ptr %185, i32 0, i32 84
  %187 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %186) #8, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %188 = or i16 %187, 4288
  %189 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %175, align 4
  %191 = getelementptr inbounds %struct.rtl818x_csr, ptr %190, i32 0, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %191, i16 %188) #8, !srcloc !190
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i390.i, %if.then.i389.i, %if.end.i217.if.end35.i_crit_edge
  %chip_family.i219 = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 19
  %192 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %chip_family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %193)
  %cmp.i220 = icmp eq i32 %193, 2
  %194 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %137, align 4
  %MSR.i = getelementptr inbounds %struct.rtl818x_csr, ptr %195, i32 0, i32 25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %cmp.i220, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MSR.i, i8 16) #8, !srcloc !181
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MSR.i, i8 0) #8, !srcloc !181
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else.i, %if.then37.i
  %196 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %chip_family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp43.i = icmp eq i32 %197, 0
  br i1 %cmp43.i, label %if.then45.i, label %if.end41.i.if.end46.i_crit_edge

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %anaparam.i = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 20
  %198 = ptrtoint ptr %anaparam.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %anaparam.i, align 4
  %200 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %137, align 4
  %EEPROM_CMD.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %201, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD.i.i, i8 -64) #8, !srcloc !181
  %202 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %137, align 4
  %CONFIG3.i391.i = getelementptr inbounds %struct.rtl818x_csr, ptr %203, i32 0, i32 26
  %204 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3.i391.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %205 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %137, align 4
  %CONFIG33.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %206, i32 0, i32 26
  %or.i.i = or i8 %204, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG33.i.i, i8 %or.i.i) #8, !srcloc !181
  %207 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %137, align 4
  %ANAPARAM.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %208, i32 0, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %209 = call i32 @llvm.bswap.i32(i32 %199) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ANAPARAM.i.i, i32 %209) #8, !srcloc !177
  %210 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %137, align 4
  %CONFIG37.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %211, i32 0, i32 26
  %212 = and i8 %204, -65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG37.i.i, i8 %212) #8, !srcloc !181
  %213 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %137, align 4
  %EEPROM_CMD11.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %214, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD11.i.i, i8 0) #8, !srcloc !181
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %if.end41.i.if.end46.i_crit_edge
  %215 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %137, align 4
  %RDSAR.i = getelementptr inbounds %struct.rtl818x_csr, ptr %216, i32 0, i32 79
  %rx_ring_dma.i221 = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 7
  %217 = ptrtoint ptr %rx_ring_dma.i221 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rx_ring_dma.i221, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %219 = call i32 @llvm.bswap.i32(i32 %218) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RDSAR.i, i32 %219) #8, !srcloc !177
  %220 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %chip_family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %221)
  %cmp49.not.i = icmp eq i32 %221, 2
  %222 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %137, align 4
  %TBDA59.i = getelementptr inbounds %struct.rtl818x_csr, ptr %223, i32 0, i32 19
  br i1 %cmp49.not.i, label %if.else57.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma.i222 = getelementptr %struct.rtl8180_priv, ptr %137, i32 0, i32 10, i32 1, i32 1
  %224 = ptrtoint ptr %dma.i222 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dma.i222, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %226 = call i32 @llvm.bswap.i32(i32 %225) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TBDA59.i, i32 %226) #8, !srcloc !177
  %227 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %137, align 4
  %229 = getelementptr inbounds %struct.rtl818x_csr, ptr %228, i32 0, i32 6
  %dma56.i = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 10, i32 0, i32 1
  %230 = ptrtoint ptr %dma56.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %dma56.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %232 = call i32 @llvm.bswap.i32(i32 %231) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %232) #8, !srcloc !177
  br label %if.end79.i

if.else57.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma62.i = getelementptr %struct.rtl8180_priv, ptr %137, i32 0, i32 10, i32 4, i32 1
  %233 = ptrtoint ptr %dma62.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %dma62.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %235 = call i32 @llvm.bswap.i32(i32 %234) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TBDA59.i, i32 %235) #8, !srcloc !177
  %236 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %137, align 4
  %238 = getelementptr inbounds %struct.rtl818x_csr, ptr %237, i32 0, i32 7
  %dma66.i = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 10, i32 0, i32 1
  %239 = ptrtoint ptr %dma66.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %dma66.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %241 = call i32 @llvm.bswap.i32(i32 %240) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %241) #8, !srcloc !177
  %242 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %137, align 4
  %244 = getelementptr inbounds %struct.rtl818x_csr, ptr %243, i32 0, i32 6
  %dma70.i = getelementptr %struct.rtl8180_priv, ptr %137, i32 0, i32 10, i32 1, i32 1
  %245 = ptrtoint ptr %dma70.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %dma70.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %247 = call i32 @llvm.bswap.i32(i32 %246) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %247) #8, !srcloc !177
  %248 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %137, align 4
  %TBEDA.i = getelementptr inbounds %struct.rtl818x_csr, ptr %249, i32 0, i32 4
  %dma74.i = getelementptr %struct.rtl8180_priv, ptr %137, i32 0, i32 10, i32 2, i32 1
  %250 = ptrtoint ptr %dma74.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %dma74.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %252 = call i32 @llvm.bswap.i32(i32 %251) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TBEDA.i, i32 %252) #8, !srcloc !177
  %253 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %137, align 4
  %255 = getelementptr inbounds %struct.rtl818x_csr, ptr %254, i32 0, i32 3
  %dma78.i = getelementptr %struct.rtl8180_priv, ptr %137, i32 0, i32 10, i32 3, i32 1
  %256 = ptrtoint ptr %dma78.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %dma78.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %258 = call i32 @llvm.bswap.i32(i32 %257) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %258) #8, !srcloc !177
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else57.i, %if.then51.i
  %259 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %137, align 4
  %EEPROM_CMD81.i = getelementptr inbounds %struct.rtl818x_csr, ptr %260, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD81.i, i8 -64) #8, !srcloc !181
  %261 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %137, align 4
  %CONFIG2.i = getelementptr inbounds %struct.rtl818x_csr, ptr %262, i32 0, i32 23
  %263 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG2.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %264 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %137, align 4
  %CONFIG286.i = getelementptr inbounds %struct.rtl818x_csr, ptr %265, i32 0, i32 23
  %266 = and i8 %263, -9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG286.i, i8 %266) #8, !srcloc !181
  %267 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %chip_family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %268)
  %cmp91.i = icmp eq i32 %268, 1
  br i1 %cmp91.i, label %if.then93.i, label %if.end79.i.if.end103.i_crit_edge

if.end79.i.if.end103.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then93.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  %269 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %137, align 4
  %CONFIG295.i = getelementptr inbounds %struct.rtl818x_csr, ptr %270, i32 0, i32 23
  %271 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG295.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %272 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %137, align 4
  %CONFIG299.i = getelementptr inbounds %struct.rtl818x_csr, ptr %273, i32 0, i32 23
  %274 = or i8 %271, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG299.i, i8 %274) #8, !srcloc !181
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then93.i, %if.end79.i.if.end103.i_crit_edge
  %275 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %137, align 4
  %EEPROM_CMD105.i = getelementptr inbounds %struct.rtl818x_csr, ptr %276, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD105.i, i8 0) #8, !srcloc !181
  %277 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %137, align 4
  %INT_TIMEOUT.i = getelementptr inbounds %struct.rtl818x_csr, ptr %278, i32 0, i32 18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %INT_TIMEOUT.i, i32 0) #8, !srcloc !177
  %279 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %chip_family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp108.not.i = icmp eq i32 %280, 0
  %281 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %137, align 4
  br i1 %cmp108.not.i, label %if.else113.i, label %if.then110.i

if.then110.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  %WPA_CONF.i = getelementptr inbounds %struct.rtl818x_csr, ptr %282, i32 0, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %WPA_CONF.i, i8 0) #8, !srcloc !181
  %283 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %137, align 4
  %RATE_FALLBACK.i = getelementptr inbounds %struct.rtl818x_csr, ptr %284, i32 0, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RATE_FALLBACK.i, i8 0) #8, !srcloc !181
  br label %if.end117.i

if.else113.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  %SECURITY.i = getelementptr inbounds %struct.rtl818x_csr, ptr %282, i32 0, i32 31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %SECURITY.i, i8 0) #8, !srcloc !181
  %285 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %137, align 4
  %PHY_DELAY.i = getelementptr inbounds %struct.rtl818x_csr, ptr %286, i32 0, i32 39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %PHY_DELAY.i, i8 6) #8, !srcloc !181
  %287 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %137, align 4
  %CARRIER_SENSE_COUNTER.i = getelementptr inbounds %struct.rtl818x_csr, ptr %288, i32 0, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CARRIER_SENSE_COUNTER.i, i8 76) #8, !srcloc !181
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else113.i, %if.then110.i
  %289 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %chip_family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %290)
  %cmp119.i = icmp eq i32 %290, 1
  br i1 %cmp119.i, label %if.then121.i, label %if.end117.i.if.end160.i_crit_edge

if.end117.i.if.end160.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160.i

if.then121.i:                                     ; preds = %if.end117.i
  %291 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %137, align 4
  %GP_ENABLE.i = getelementptr inbounds %struct.rtl818x_csr, ptr %292, i32 0, i32 49
  %293 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %GP_ENABLE.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %294 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %137, align 4
  %GP_ENABLE126.i = getelementptr inbounds %struct.rtl818x_csr, ptr %295, i32 0, i32 49
  %296 = and i8 %293, -65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %GP_ENABLE126.i, i8 %296) #8, !srcloc !181
  %297 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %137, align 4
  %EEPROM_CMD131.i = getelementptr inbounds %struct.rtl818x_csr, ptr %298, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD131.i, i8 -64) #8, !srcloc !181
  %299 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %137, align 4
  %CONFIG3133.i = getelementptr inbounds %struct.rtl818x_csr, ptr %300, i32 0, i32 26
  %301 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3133.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %302 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %137, align 4
  %CONFIG3137.i = getelementptr inbounds %struct.rtl818x_csr, ptr %303, i32 0, i32 26
  %304 = or i8 %301, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG3137.i, i8 %304) #8, !srcloc !181
  %305 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %137, align 4
  %EEPROM_CMD142.i = getelementptr inbounds %struct.rtl818x_csr, ptr %306, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD142.i, i8 0) #8, !srcloc !181
  %map_pio.i = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 3
  %307 = ptrtoint ptr %map_pio.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %map_pio.i, align 4, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool143.not.i = icmp eq i8 %308, 0
  %309 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %137, align 4
  br i1 %tobool143.not.i, label %if.else156.i, label %if.then144.i

if.then144.i:                                     ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #10
  %PGSELECT.i = getelementptr inbounds %struct.rtl818x_csr, ptr %310, i32 0, i32 30
  %311 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PGSELECT.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %312 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %137, align 4
  %PGSELECT149.i = getelementptr inbounds %struct.rtl818x_csr, ptr %313, i32 0, i32 30
  %314 = or i8 %311, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %PGSELECT149.i, i8 %314) #8, !srcloc !181
  %315 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %137, align 4
  %add.ptr.i223 = getelementptr i8, ptr %316, i32 255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i223, i8 53) #8, !srcloc !181
  %317 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %137, align 4
  %PGSELECT155.i = getelementptr inbounds %struct.rtl818x_csr, ptr %318, i32 0, i32 30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %PGSELECT155.i, i8 %311) #8, !srcloc !181
  br label %if.end160thread-pre-split.i

if.else156.i:                                     ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr158.i = getelementptr i8, ptr %310, i32 511
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr158.i, i8 53) #8, !srcloc !181
  br label %if.end160thread-pre-split.i

if.end160thread-pre-split.i:                      ; preds = %if.else156.i, %if.then144.i
  %319 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %319)
  %.pr.i = load i32, ptr %chip_family.i219, align 4
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.end160thread-pre-split.i, %if.end117.i.if.end160.i_crit_edge
  %320 = phi i32 [ %.pr.i, %if.end160thread-pre-split.i ], [ %290, %if.end117.i.if.end160.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %320)
  %cmp162.i = icmp eq i32 %320, 2
  %321 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %137, align 4
  br i1 %cmp162.i, label %if.then164.i, label %if.else204.i

if.then164.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr166.i = getelementptr i16, ptr %322, i32 240
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr166.i, i16 -241) #8, !srcloc !190
  %323 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %137, align 4
  %add.ptr168.i = getelementptr i16, ptr %324, i32 240
  %325 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr168.i) #8, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %326 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %137, align 4
  %TPPOLL_STOP.i = getelementptr inbounds %struct.rtl818x_csr, ptr %327, i32 0, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TPPOLL_STOP.i, i8 66) #8, !srcloc !181
  %328 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %137, align 4
  %ACM_CONTROL.i = getelementptr inbounds %struct.rtl818x_csr, ptr %329, i32 0, i32 69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ACM_CONTROL.i, i8 0) #8, !srcloc !181
  %330 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %137, align 4
  %TID_AC_MAP.i = getelementptr inbounds %struct.rtl818x_csr, ptr %331, i32 0, i32 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %TID_AC_MAP.i, i16 20730) #8, !srcloc !190
  %332 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %137, align 4
  %INT_MIG.i = getelementptr inbounds %struct.rtl818x_csr, ptr %333, i32 0, i32 78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %INT_MIG.i, i16 0) #8, !srcloc !190
  %334 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %priv1, align 8
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %335, align 4
  %add.ptr.i393.i = getelementptr i32, ptr %337, i32 124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i393.i, i32 0) #8, !srcloc !177
  %338 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %335, align 4
  %add.ptr3.i.i = getelementptr i32, ptr %339, i32 124
  %340 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #8, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %341 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %335, align 4
  %add.ptr5.i.i = getelementptr i32, ptr %342, i32 125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #8, !srcloc !177
  %343 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %335, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %344, i32 125
  %345 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #8, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %346 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %335, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %347, i32 504
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.i, i8 0) #8, !srcloc !181
  %348 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %335, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %349, i32 504
  %350 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %351 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %335, align 4
  %PHY_PR.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %352, i32 0, i32 73
  %353 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PHY_PR.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %354 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %335, align 4
  %PHY_PR17.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %355, i32 0, i32 73
  %356 = or i8 %353, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %PHY_PR17.i.i, i8 %356) #8, !srcloc !181
  %357 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %335, align 4
  %add.ptr20.i.i = getelementptr i16, ptr %358, i32 432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20.i.i, i16 16) #8, !srcloc !190
  %359 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %335, align 4
  %add.ptr22.i.i = getelementptr i16, ptr %360, i32 433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i.i, i16 16) #8, !srcloc !190
  %361 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %335, align 4
  %add.ptr24.i.i = getelementptr i16, ptr %362, i32 440
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24.i.i, i16 24581) #8, !srcloc !190
  %363 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %335, align 4
  %add.ptr26.i.i = getelementptr i16, ptr %364, i32 441
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26.i.i, i16 24581) #8, !srcloc !190
  %365 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %335, align 4
  %add.ptr28.i.i = getelementptr i16, ptr %366, i32 442
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.i.i, i16 -23539) #8, !srcloc !190
  %367 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %335, align 4
  %add.ptr30.i.i = getelementptr i16, ptr %368, i32 443
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30.i.i, i16 -23539) #8, !srcloc !190
  %369 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %335, align 4
  %add.ptr32.i.i = getelementptr i16, ptr %370, i32 444
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr32.i.i, i16 24581) #8, !srcloc !190
  %371 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %335, align 4
  %add.ptr34.i.i = getelementptr i16, ptr %372, i32 445
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34.i.i, i16 24581) #8, !srcloc !190
  %373 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %335, align 4
  %add.ptr36.i.i = getelementptr i16, ptr %374, i32 446
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36.i.i, i16 -5120) #8, !srcloc !190
  %375 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %335, align 4
  %add.ptr38.i.i = getelementptr i16, ptr %376, i32 447
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38.i.i, i16 -5120) #8, !srcloc !190
  %377 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %335, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %378, i32 590
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40.i.i, i8 1) #8, !srcloc !181
  %379 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %335, align 4
  %add.ptr42.i.i = getelementptr i8, ptr %380, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.i.i, i8 114) #8, !srcloc !181
  %381 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %137, align 4
  %add.ptr175.i = getelementptr i16, ptr %382, i32 313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr175.i, i16 -26026) #8, !srcloc !190
  %383 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %137, align 4
  %add.ptr177.i = getelementptr i16, ptr %384, i32 313
  %385 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr177.i) #8, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %386 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %137, align 4
  %EEPROM_CMD.i394.i = getelementptr inbounds %struct.rtl818x_csr, ptr %387, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD.i394.i, i8 -64) #8, !srcloc !181
  %388 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %137, align 4
  %CONFIG3.i395.i = getelementptr inbounds %struct.rtl818x_csr, ptr %389, i32 0, i32 26
  %390 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3.i395.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %391 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %137, align 4
  %CONFIG33.i396.i = getelementptr inbounds %struct.rtl818x_csr, ptr %392, i32 0, i32 26
  %or.i397.i = or i8 %390, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG33.i396.i, i8 %or.i397.i) #8, !srcloc !181
  %393 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %137, align 4
  %ANAPARAM.i398.i = getelementptr inbounds %struct.rtl818x_csr, ptr %394, i32 0, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ANAPARAM.i398.i, i32 5047728) #8, !srcloc !177
  %395 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %137, align 4
  %CONFIG37.i399.i = getelementptr inbounds %struct.rtl818x_csr, ptr %396, i32 0, i32 26
  %397 = and i8 %390, -65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG37.i399.i, i8 %397) #8, !srcloc !181
  %398 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %137, align 4
  %EEPROM_CMD11.i400.i = getelementptr inbounds %struct.rtl818x_csr, ptr %399, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD11.i400.i, i8 0) #8, !srcloc !181
  %400 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %137, align 4
  %EEPROM_CMD.i401.i = getelementptr inbounds %struct.rtl818x_csr, ptr %401, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD.i401.i, i8 -64) #8, !srcloc !181
  %402 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %137, align 4
  %CONFIG3.i402.i = getelementptr inbounds %struct.rtl818x_csr, ptr %403, i32 0, i32 26
  %404 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3.i402.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %405 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %137, align 4
  %CONFIG33.i403.i = getelementptr inbounds %struct.rtl818x_csr, ptr %406, i32 0, i32 26
  %or.i404.i = or i8 %404, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG33.i403.i, i8 %or.i404.i) #8, !srcloc !181
  %407 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %137, align 4
  %ANAPARAM2.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %408, i32 0, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ANAPARAM2.i.i, i32 -972816384) #8, !srcloc !177
  %409 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %137, align 4
  %CONFIG37.i405.i = getelementptr inbounds %struct.rtl818x_csr, ptr %410, i32 0, i32 26
  %411 = and i8 %404, -65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG37.i405.i, i8 %411) #8, !srcloc !181
  %412 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %137, align 4
  %EEPROM_CMD11.i406.i = getelementptr inbounds %struct.rtl818x_csr, ptr %413, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD11.i406.i, i8 0) #8, !srcloc !181
  %414 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %137, align 4
  %EEPROM_CMD.i407.i = getelementptr inbounds %struct.rtl818x_csr, ptr %415, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD.i407.i, i8 -64) #8, !srcloc !181
  %416 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %137, align 4
  %CONFIG3.i408.i = getelementptr inbounds %struct.rtl818x_csr, ptr %417, i32 0, i32 26
  %418 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG3.i408.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %419 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %137, align 4
  %CONFIG33.i409.i = getelementptr inbounds %struct.rtl818x_csr, ptr %420, i32 0, i32 26
  %or.i410.i = or i8 %418, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG33.i409.i, i8 %or.i410.i) #8, !srcloc !181
  %421 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %137, align 4
  %423 = getelementptr inbounds %struct.rtl818x_csr, ptr %422, i32 0, i32 82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %423, i16 4096) #8, !srcloc !190
  %424 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %137, align 4
  %CONFIG37.i411.i = getelementptr inbounds %struct.rtl818x_csr, ptr %425, i32 0, i32 26
  %426 = and i8 %418, -65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG37.i411.i, i8 %426) #8, !srcloc !181
  %427 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %137, align 4
  %EEPROM_CMD11.i412.i = getelementptr inbounds %struct.rtl818x_csr, ptr %428, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD11.i412.i, i8 0) #8, !srcloc !181
  %429 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %137, align 4
  %CONFIG5.i = getelementptr inbounds %struct.rtl818x_csr, ptr %430, i32 0, i32 71
  %431 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG5.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %432 = and i8 %431, 127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG5.i, i8 %432) #8, !srcloc !181
  %433 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %137, align 4
  %PGSELECT187.i = getelementptr inbounds %struct.rtl818x_csr, ptr %434, i32 0, i32 30
  %435 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PGSELECT187.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %436 = or i8 %435, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %PGSELECT187.i, i8 %436) #8, !srcloc !181
  %437 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %137, align 4
  %RFPinsOutput.i = getelementptr inbounds %struct.rtl818x_csr, ptr %438, i32 0, i32 43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsOutput.i, i16 -32764) #8, !srcloc !190
  %439 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %137, align 4
  %RFPinsEnable.i = getelementptr inbounds %struct.rtl818x_csr, ptr %440, i32 0, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsEnable.i, i16 -229) #8, !srcloc !190
  %441 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %137, align 4
  %RFPinsSelect.i = getelementptr inbounds %struct.rtl818x_csr, ptr %442, i32 0, i32 45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RFPinsSelect.i, i16 -30684) #8, !srcloc !190
  %443 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %137, align 4
  %RF_TIMING.i = getelementptr inbounds %struct.rtl818x_csr, ptr %444, i32 0, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RF_TIMING.i, i32 54525952) #8, !srcloc !177
  %445 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %137, align 4
  %RF_PARA.i = getelementptr inbounds %struct.rtl818x_csr, ptr %446, i32 0, i32 47
  %447 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RF_PARA.i) #8, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %448 = and i32 %447, 16776960
  %449 = or i32 %448, 1409286328
  %450 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %137, align 4
  %RF_PARA203.i = getelementptr inbounds %struct.rtl818x_csr, ptr %451, i32 0, i32 47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RF_PARA203.i, i32 %449) #8, !srcloc !177
  br label %if.end206.i

if.else204.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #10
  %TX_DMA_POLLING.i = getelementptr inbounds %struct.rtl818x_csr, ptr %322, i32 0, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_DMA_POLLING.i, i8 6) #8, !srcloc !181
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.else204.i, %if.then164.i
  %rf.i = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 1
  %452 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %rf.i, align 4
  %init.i = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %453, i32 0, i32 1
  %454 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %init.i, align 4
  call void %455(ptr noundef %dev) #8
  %456 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %chip_family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %457)
  %cmp208.i = icmp eq i32 %457, 0
  %..i = select i1 %cmp208.i, i32 3, i32 499
  call fastcc void @rtl8180_conf_basic_rates(ptr noundef %dev, i32 noundef %..i) #8
  %458 = ptrtoint ptr %chip_family.i219 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %chip_family.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %459)
  %cmp214.i = icmp eq i32 %459, 2
  br i1 %cmp214.i, label %if.then216.i, label %if.end206.i.if.end10_crit_edge

if.end206.i.if.end10_crit_edge:                   ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then216.i:                                     ; preds = %if.end206.i
  %antenna_diversity_default.i = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 31
  %460 = ptrtoint ptr %antenna_diversity_default.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %antenna_diversity_default.i, align 4
  %antenna_diversity_en.i = getelementptr inbounds %struct.rtl8180_priv, ptr %137, i32 0, i32 30
  %462 = ptrtoint ptr %antenna_diversity_en.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %antenna_diversity_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %463)
  %tobool217.not.i = icmp eq i8 %463, 0
  %464 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %priv1, align 8
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %465, align 4
  %PHY.i.i.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %467, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i.i.i, i32 -1945567231) #8, !srcloc !177
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge, %if.then216.i
  %i.0.i.i.i.i = phi i32 [ 10, %if.then216.i ], [ %dec.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %i.0.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %while.cond.i.i.i.i.rtl8225_write_phy_cck.exit.i.i_crit_edge, label %while.body.i.i.i.i

while.cond.i.i.i.i.rtl8225_write_phy_cck.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit.i.i

while.body.i.i.i.i:                               ; preds = %while.cond.i.i.i.i
  %dec.i.i.i.i = add nsw i32 %i.0.i.i.i.i, -1
  %468 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %465, align 4
  %PHY4.i.i.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %469, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i.i.i, i32 201916417) #8, !srcloc !177
  %470 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %465, align 4
  %arrayidx8.i.i.i.i = getelementptr %struct.rtl818x_csr, ptr %471, i32 0, i32 42, i32 2
  %472 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i.i.i = icmp eq i8 %472, 9
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i.rtl8225_write_phy_cck.exit.i.i_crit_edge, label %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge

while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i.i

while.body.i.i.i.i.rtl8225_write_phy_cck.exit.i.i_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit.i.i

rtl8225_write_phy_cck.exit.i.i:                   ; preds = %while.body.i.i.i.i.rtl8225_write_phy_cck.exit.i.i_crit_edge, %while.cond.i.i.i.i.rtl8225_write_phy_cck.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %461)
  %cmp.i414.i = icmp eq i8 %461, 1
  %473 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %465, align 4
  %TX_ANTENNA.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %474, i32 0, i32 58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool217.not.i, label %if.else6.i.i, label %if.then.i415.i

if.then.i415.i:                                   ; preds = %rtl8225_write_phy_cck.exit.i.i
  br i1 %cmp.i414.i, label %if.then3.i.i, label %if.else.i416.i

if.then3.i.i:                                     ; preds = %if.then.i415.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_ANTENNA.i.i, i8 0) #8, !srcloc !181
  %475 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %priv1, align 8
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %476, align 4
  %PHY.i.i44.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %478, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i44.i.i, i32 -1850015743) #8, !srcloc !177
  br label %while.cond.i.i47.i.i

while.cond.i.i47.i.i:                             ; preds = %while.body.i.i52.i.i.while.cond.i.i47.i.i_crit_edge, %if.then3.i.i
  %i.0.i.i45.i.i = phi i32 [ 10, %if.then3.i.i ], [ %dec.i.i48.i.i, %while.body.i.i52.i.i.while.cond.i.i47.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i45.i.i)
  %tobool.not.i.i46.i.i = icmp eq i32 %i.0.i.i45.i.i, 0
  br i1 %tobool.not.i.i46.i.i, label %while.cond.i.i47.i.i.rtl8225_write_phy_cck.exit53.i.i_crit_edge, label %while.body.i.i52.i.i

while.cond.i.i47.i.i.rtl8225_write_phy_cck.exit53.i.i_crit_edge: ; preds = %while.cond.i.i47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit53.i.i

while.body.i.i52.i.i:                             ; preds = %while.cond.i.i47.i.i
  %dec.i.i48.i.i = add nsw i32 %i.0.i.i45.i.i, -1
  %479 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %476, align 4
  %PHY4.i.i49.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %480, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i49.i.i, i32 297467905) #8, !srcloc !177
  %481 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %476, align 4
  %arrayidx8.i.i50.i.i = getelementptr %struct.rtl818x_csr, ptr %482, i32 0, i32 42, i32 2
  %483 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i50.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i51.i.i = icmp eq i8 %483, -69
  br i1 %cmp.i.i51.i.i, label %while.body.i.i52.i.i.rtl8225_write_phy_cck.exit53.i.i_crit_edge, label %while.body.i.i52.i.i.while.cond.i.i47.i.i_crit_edge

while.body.i.i52.i.i.while.cond.i.i47.i.i_crit_edge: ; preds = %while.body.i.i52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i47.i.i

while.body.i.i52.i.i.rtl8225_write_phy_cck.exit53.i.i_crit_edge: ; preds = %while.body.i.i52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit53.i.i

rtl8225_write_phy_cck.exit53.i.i:                 ; preds = %while.body.i.i52.i.i.rtl8225_write_phy_cck.exit53.i.i_crit_edge, %while.cond.i.i47.i.i.rtl8225_write_phy_cck.exit53.i.i_crit_edge
  %484 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %priv1, align 8
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %485, align 4
  %PHY.i.i55.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %487, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i55.i.i, i32 -2117664767) #8, !srcloc !177
  br label %while.cond.i.i58.i.i

while.cond.i.i58.i.i:                             ; preds = %while.body.i.i63.i.i.while.cond.i.i58.i.i_crit_edge, %rtl8225_write_phy_cck.exit53.i.i
  %i.0.i.i56.i.i = phi i32 [ 10, %rtl8225_write_phy_cck.exit53.i.i ], [ %dec.i.i59.i.i, %while.body.i.i63.i.i.while.cond.i.i58.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i56.i.i)
  %tobool.not.i.i57.i.i = icmp eq i32 %i.0.i.i56.i.i, 0
  br i1 %tobool.not.i.i57.i.i, label %while.cond.i.i58.i.i.rtl8225_write_phy_cck.exit64.i.i_crit_edge, label %while.body.i.i63.i.i

while.cond.i.i58.i.i.rtl8225_write_phy_cck.exit64.i.i_crit_edge: ; preds = %while.cond.i.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit64.i.i

while.body.i.i63.i.i:                             ; preds = %while.cond.i.i58.i.i
  %dec.i.i59.i.i = add nsw i32 %i.0.i.i56.i.i, -1
  %488 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %485, align 4
  %PHY4.i.i60.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %489, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i60.i.i, i32 29818881) #8, !srcloc !177
  %490 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %485, align 4
  %arrayidx8.i.i61.i.i = getelementptr %struct.rtl818x_csr, ptr %491, i32 0, i32 42, i32 2
  %492 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i61.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i62.i.i = icmp eq i8 %492, -57
  br i1 %cmp.i.i62.i.i, label %while.body.i.i63.i.i.rtl8225_write_phy_cck.exit64.i.i_crit_edge, label %while.body.i.i63.i.i.while.cond.i.i58.i.i_crit_edge

while.body.i.i63.i.i.while.cond.i.i58.i.i_crit_edge: ; preds = %while.body.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i58.i.i

while.body.i.i63.i.i.rtl8225_write_phy_cck.exit64.i.i_crit_edge: ; preds = %while.body.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit64.i.i

rtl8225_write_phy_cck.exit64.i.i:                 ; preds = %while.body.i.i63.i.i.rtl8225_write_phy_cck.exit64.i.i_crit_edge, %while.cond.i.i58.i.i.rtl8225_write_phy_cck.exit64.i.i_crit_edge
  %493 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %priv1, align 8
  %495 = ptrtoint ptr %494 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %494, align 4
  %PHY.i.i66.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %496, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i66.i.i, i32 -1923874816) #8, !srcloc !177
  br label %while.cond.i.i69.i.i

while.cond.i.i69.i.i:                             ; preds = %while.body.i.i74.i.i.while.cond.i.i69.i.i_crit_edge, %rtl8225_write_phy_cck.exit64.i.i
  %i.0.i.i67.i.i = phi i32 [ 10, %rtl8225_write_phy_cck.exit64.i.i ], [ %dec.i.i70.i.i, %while.body.i.i74.i.i.while.cond.i.i69.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i67.i.i)
  %tobool.not.i.i68.i.i = icmp eq i32 %i.0.i.i67.i.i, 0
  br i1 %tobool.not.i.i68.i.i, label %while.cond.i.i69.i.i.rtl8225_write_phy_ofdm.exit.i.i_crit_edge, label %while.body.i.i74.i.i

while.cond.i.i69.i.i.rtl8225_write_phy_ofdm.exit.i.i_crit_edge: ; preds = %while.cond.i.i69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_ofdm.exit.i.i

while.body.i.i74.i.i:                             ; preds = %while.cond.i.i69.i.i
  %dec.i.i70.i.i = add nsw i32 %i.0.i.i67.i.i, -1
  %497 = ptrtoint ptr %494 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %494, align 4
  %PHY4.i.i71.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %498, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i71.i.i, i32 223608832) #8, !srcloc !177
  %499 = ptrtoint ptr %494 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %494, align 4
  %arrayidx8.i.i72.i.i = getelementptr %struct.rtl818x_csr, ptr %500, i32 0, i32 42, i32 2
  %501 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i72.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i73.i.i = icmp eq i8 %501, 84
  br i1 %cmp.i.i73.i.i, label %while.body.i.i74.i.i.rtl8225_write_phy_ofdm.exit.i.i_crit_edge, label %while.body.i.i74.i.i.while.cond.i.i69.i.i_crit_edge

while.body.i.i74.i.i.while.cond.i.i69.i.i_crit_edge: ; preds = %while.body.i.i74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i69.i.i

while.body.i.i74.i.i.rtl8225_write_phy_ofdm.exit.i.i_crit_edge: ; preds = %while.body.i.i74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_ofdm.exit.i.i

rtl8225_write_phy_ofdm.exit.i.i:                  ; preds = %while.body.i.i74.i.i.rtl8225_write_phy_ofdm.exit.i.i_crit_edge, %while.cond.i.i69.i.i.rtl8225_write_phy_ofdm.exit.i.i_crit_edge
  %502 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %priv1, align 8
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %503, align 4
  %PHY.i.i76.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %505, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i76.i.i, i32 -1733165056) #8, !srcloc !177
  br label %while.cond.i.i79.i.i

while.cond.i.i79.i.i:                             ; preds = %while.body.i.i84.i.i.while.cond.i.i79.i.i_crit_edge, %rtl8225_write_phy_ofdm.exit.i.i
  %i.0.i.i77.i.i = phi i32 [ 10, %rtl8225_write_phy_ofdm.exit.i.i ], [ %dec.i.i80.i.i, %while.body.i.i84.i.i.while.cond.i.i79.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i77.i.i)
  %tobool.not.i.i78.i.i = icmp eq i32 %i.0.i.i77.i.i, 0
  br i1 %tobool.not.i.i78.i.i, label %while.cond.i.i79.i.i.if.end10_crit_edge, label %while.body.i.i84.i.i

while.cond.i.i79.i.i.if.end10_crit_edge:          ; preds = %while.cond.i.i79.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body.i.i84.i.i:                             ; preds = %while.cond.i.i79.i.i
  %dec.i.i80.i.i = add nsw i32 %i.0.i.i77.i.i, -1
  %506 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %503, align 4
  %PHY4.i.i81.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %507, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i81.i.i, i32 414318592) #8, !srcloc !177
  %508 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %503, align 4
  %arrayidx8.i.i82.i.i = getelementptr %struct.rtl818x_csr, ptr %509, i32 0, i32 42, i32 2
  %510 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i82.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i83.i.i = icmp eq i8 %510, -78
  br i1 %cmp.i.i83.i.i, label %while.body.i.i84.i.i.if.end10_crit_edge, label %while.body.i.i84.i.i.while.cond.i.i79.i.i_crit_edge

while.body.i.i84.i.i.while.cond.i.i79.i.i_crit_edge: ; preds = %while.body.i.i84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i79.i.i

while.body.i.i84.i.i.if.end10_crit_edge:          ; preds = %while.body.i.i84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.i416.i:                                   ; preds = %if.then.i415.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_ANTENNA.i.i, i8 3) #8, !srcloc !181
  %511 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %priv1, align 8
  %513 = ptrtoint ptr %512 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %512, align 4
  %PHY.i.i87.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %514, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i87.i.i, i32 -1852112895) #8, !srcloc !177
  br label %while.cond.i.i90.i.i

while.cond.i.i90.i.i:                             ; preds = %while.body.i.i95.i.i.while.cond.i.i90.i.i_crit_edge, %if.else.i416.i
  %i.0.i.i88.i.i = phi i32 [ 10, %if.else.i416.i ], [ %dec.i.i91.i.i, %while.body.i.i95.i.i.while.cond.i.i90.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i88.i.i)
  %tobool.not.i.i89.i.i = icmp eq i32 %i.0.i.i88.i.i, 0
  br i1 %tobool.not.i.i89.i.i, label %while.cond.i.i90.i.i.rtl8225_write_phy_cck.exit96.i.i_crit_edge, label %while.body.i.i95.i.i

while.cond.i.i90.i.i.rtl8225_write_phy_cck.exit96.i.i_crit_edge: ; preds = %while.cond.i.i90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit96.i.i

while.body.i.i95.i.i:                             ; preds = %while.cond.i.i90.i.i
  %dec.i.i91.i.i = add nsw i32 %i.0.i.i88.i.i, -1
  %515 = ptrtoint ptr %512 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %512, align 4
  %PHY4.i.i92.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %516, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i92.i.i, i32 295370753) #8, !srcloc !177
  %517 = ptrtoint ptr %512 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %512, align 4
  %arrayidx8.i.i93.i.i = getelementptr %struct.rtl818x_csr, ptr %518, i32 0, i32 42, i32 2
  %519 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i93.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i94.i.i = icmp eq i8 %519, -101
  br i1 %cmp.i.i94.i.i, label %while.body.i.i95.i.i.rtl8225_write_phy_cck.exit96.i.i_crit_edge, label %while.body.i.i95.i.i.while.cond.i.i90.i.i_crit_edge

while.body.i.i95.i.i.while.cond.i.i90.i.i_crit_edge: ; preds = %while.body.i.i95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i90.i.i

while.body.i.i95.i.i.rtl8225_write_phy_cck.exit96.i.i_crit_edge: ; preds = %while.body.i.i95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit96.i.i

rtl8225_write_phy_cck.exit96.i.i:                 ; preds = %while.body.i.i95.i.i.rtl8225_write_phy_cck.exit96.i.i_crit_edge, %while.cond.i.i90.i.i.rtl8225_write_phy_cck.exit96.i.i_crit_edge
  %520 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %priv1, align 8
  %522 = ptrtoint ptr %521 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %521, align 4
  %PHY.i.i98.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %523, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i98.i.i, i32 -2117664767) #8, !srcloc !177
  br label %while.cond.i.i101.i.i

while.cond.i.i101.i.i:                            ; preds = %while.body.i.i106.i.i.while.cond.i.i101.i.i_crit_edge, %rtl8225_write_phy_cck.exit96.i.i
  %i.0.i.i99.i.i = phi i32 [ 10, %rtl8225_write_phy_cck.exit96.i.i ], [ %dec.i.i102.i.i, %while.body.i.i106.i.i.while.cond.i.i101.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i99.i.i)
  %tobool.not.i.i100.i.i = icmp eq i32 %i.0.i.i99.i.i, 0
  br i1 %tobool.not.i.i100.i.i, label %while.cond.i.i101.i.i.rtl8225_write_phy_cck.exit107.i.i_crit_edge, label %while.body.i.i106.i.i

while.cond.i.i101.i.i.rtl8225_write_phy_cck.exit107.i.i_crit_edge: ; preds = %while.cond.i.i101.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit107.i.i

while.body.i.i106.i.i:                            ; preds = %while.cond.i.i101.i.i
  %dec.i.i102.i.i = add nsw i32 %i.0.i.i99.i.i, -1
  %524 = ptrtoint ptr %521 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %521, align 4
  %PHY4.i.i103.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %525, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i103.i.i, i32 29818881) #8, !srcloc !177
  %526 = ptrtoint ptr %521 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %521, align 4
  %arrayidx8.i.i104.i.i = getelementptr %struct.rtl818x_csr, ptr %527, i32 0, i32 42, i32 2
  %528 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i104.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i105.i.i = icmp eq i8 %528, -57
  br i1 %cmp.i.i105.i.i, label %while.body.i.i106.i.i.rtl8225_write_phy_cck.exit107.i.i_crit_edge, label %while.body.i.i106.i.i.while.cond.i.i101.i.i_crit_edge

while.body.i.i106.i.i.while.cond.i.i101.i.i_crit_edge: ; preds = %while.body.i.i106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i101.i.i

while.body.i.i106.i.i.rtl8225_write_phy_cck.exit107.i.i_crit_edge: ; preds = %while.body.i.i106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit107.i.i

rtl8225_write_phy_cck.exit107.i.i:                ; preds = %while.body.i.i106.i.i.rtl8225_write_phy_cck.exit107.i.i_crit_edge, %while.cond.i.i101.i.i.rtl8225_write_phy_cck.exit107.i.i_crit_edge
  %529 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %priv1, align 8
  %531 = ptrtoint ptr %530 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %530, align 4
  %PHY.i.i109.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %532, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i109.i.i, i32 -1923350528) #8, !srcloc !177
  br label %while.cond.i.i112.i.i

while.cond.i.i112.i.i:                            ; preds = %while.body.i.i117.i.i.while.cond.i.i112.i.i_crit_edge, %rtl8225_write_phy_cck.exit107.i.i
  %i.0.i.i110.i.i = phi i32 [ 10, %rtl8225_write_phy_cck.exit107.i.i ], [ %dec.i.i113.i.i, %while.body.i.i117.i.i.while.cond.i.i112.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i110.i.i)
  %tobool.not.i.i111.i.i = icmp eq i32 %i.0.i.i110.i.i, 0
  br i1 %tobool.not.i.i111.i.i, label %while.cond.i.i112.i.i.rtl8225_write_phy_ofdm.exit118.i.i_crit_edge, label %while.body.i.i117.i.i

while.cond.i.i112.i.i.rtl8225_write_phy_ofdm.exit118.i.i_crit_edge: ; preds = %while.cond.i.i112.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_ofdm.exit118.i.i

while.body.i.i117.i.i:                            ; preds = %while.cond.i.i112.i.i
  %dec.i.i113.i.i = add nsw i32 %i.0.i.i110.i.i, -1
  %533 = ptrtoint ptr %530 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %530, align 4
  %PHY4.i.i114.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %534, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i114.i.i, i32 224133120) #8, !srcloc !177
  %535 = ptrtoint ptr %530 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %530, align 4
  %arrayidx8.i.i115.i.i = getelementptr %struct.rtl818x_csr, ptr %536, i32 0, i32 42, i32 2
  %537 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i115.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i116.i.i = icmp eq i8 %537, 92
  br i1 %cmp.i.i116.i.i, label %while.body.i.i117.i.i.rtl8225_write_phy_ofdm.exit118.i.i_crit_edge, label %while.body.i.i117.i.i.while.cond.i.i112.i.i_crit_edge

while.body.i.i117.i.i.while.cond.i.i112.i.i_crit_edge: ; preds = %while.body.i.i117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i112.i.i

while.body.i.i117.i.i.rtl8225_write_phy_ofdm.exit118.i.i_crit_edge: ; preds = %while.body.i.i117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_ofdm.exit118.i.i

rtl8225_write_phy_ofdm.exit118.i.i:               ; preds = %while.body.i.i117.i.i.rtl8225_write_phy_ofdm.exit118.i.i_crit_edge, %while.cond.i.i112.i.i.rtl8225_write_phy_ofdm.exit118.i.i_crit_edge
  %538 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %priv1, align 8
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %539, align 4
  %PHY.i.i120.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %541, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i120.i.i, i32 -1733165056) #8, !srcloc !177
  br label %while.cond.i.i123.i.i

while.cond.i.i123.i.i:                            ; preds = %while.body.i.i128.i.i.while.cond.i.i123.i.i_crit_edge, %rtl8225_write_phy_ofdm.exit118.i.i
  %i.0.i.i121.i.i = phi i32 [ 10, %rtl8225_write_phy_ofdm.exit118.i.i ], [ %dec.i.i124.i.i, %while.body.i.i128.i.i.while.cond.i.i123.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i121.i.i)
  %tobool.not.i.i122.i.i = icmp eq i32 %i.0.i.i121.i.i, 0
  br i1 %tobool.not.i.i122.i.i, label %while.cond.i.i123.i.i.if.end10_crit_edge, label %while.body.i.i128.i.i

while.cond.i.i123.i.i.if.end10_crit_edge:         ; preds = %while.cond.i.i123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body.i.i128.i.i:                            ; preds = %while.cond.i.i123.i.i
  %dec.i.i124.i.i = add nsw i32 %i.0.i.i121.i.i, -1
  %542 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %539, align 4
  %PHY4.i.i125.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %543, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i125.i.i, i32 414318592) #8, !srcloc !177
  %544 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %539, align 4
  %arrayidx8.i.i126.i.i = getelementptr %struct.rtl818x_csr, ptr %545, i32 0, i32 42, i32 2
  %546 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i126.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i127.i.i = icmp eq i8 %546, -78
  br i1 %cmp.i.i127.i.i, label %while.body.i.i128.i.i.if.end10_crit_edge, label %while.body.i.i128.i.i.while.cond.i.i123.i.i_crit_edge

while.body.i.i128.i.i.while.cond.i.i123.i.i_crit_edge: ; preds = %while.body.i.i128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i123.i.i

while.body.i.i128.i.i.if.end10_crit_edge:         ; preds = %while.body.i.i128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else6.i.i:                                     ; preds = %rtl8225_write_phy_cck.exit.i.i
  br i1 %cmp.i414.i, label %if.then10.i.i, label %if.else13.i.i

if.then10.i.i:                                    ; preds = %if.else6.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_ANTENNA.i.i, i8 0) #8, !srcloc !181
  %547 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %priv1, align 8
  %549 = ptrtoint ptr %548 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %548, align 4
  %PHY.i.i131.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %550, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i131.i.i, i32 -1850015743) #8, !srcloc !177
  br label %while.cond.i.i134.i.i

while.cond.i.i134.i.i:                            ; preds = %while.body.i.i139.i.i.while.cond.i.i134.i.i_crit_edge, %if.then10.i.i
  %i.0.i.i132.i.i = phi i32 [ 10, %if.then10.i.i ], [ %dec.i.i135.i.i, %while.body.i.i139.i.i.while.cond.i.i134.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i132.i.i)
  %tobool.not.i.i133.i.i = icmp eq i32 %i.0.i.i132.i.i, 0
  br i1 %tobool.not.i.i133.i.i, label %while.cond.i.i134.i.i.rtl8225_write_phy_cck.exit140.i.i_crit_edge, label %while.body.i.i139.i.i

while.cond.i.i134.i.i.rtl8225_write_phy_cck.exit140.i.i_crit_edge: ; preds = %while.cond.i.i134.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit140.i.i

while.body.i.i139.i.i:                            ; preds = %while.cond.i.i134.i.i
  %dec.i.i135.i.i = add nsw i32 %i.0.i.i132.i.i, -1
  %551 = ptrtoint ptr %548 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %548, align 4
  %PHY4.i.i136.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %552, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i136.i.i, i32 297467905) #8, !srcloc !177
  %553 = ptrtoint ptr %548 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %548, align 4
  %arrayidx8.i.i137.i.i = getelementptr %struct.rtl818x_csr, ptr %554, i32 0, i32 42, i32 2
  %555 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i137.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i138.i.i = icmp eq i8 %555, -69
  br i1 %cmp.i.i138.i.i, label %while.body.i.i139.i.i.rtl8225_write_phy_cck.exit140.i.i_crit_edge, label %while.body.i.i139.i.i.while.cond.i.i134.i.i_crit_edge

while.body.i.i139.i.i.while.cond.i.i134.i.i_crit_edge: ; preds = %while.body.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i134.i.i

while.body.i.i139.i.i.rtl8225_write_phy_cck.exit140.i.i_crit_edge: ; preds = %while.body.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit140.i.i

rtl8225_write_phy_cck.exit140.i.i:                ; preds = %while.body.i.i139.i.i.rtl8225_write_phy_cck.exit140.i.i_crit_edge, %while.cond.i.i134.i.i.rtl8225_write_phy_cck.exit140.i.i_crit_edge
  %556 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %priv1, align 8
  %558 = ptrtoint ptr %557 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %557, align 4
  %PHY.i.i142.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %559, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i142.i.i, i32 -2126053375) #8, !srcloc !177
  br label %while.cond.i.i145.i.i

while.cond.i.i145.i.i:                            ; preds = %while.body.i.i150.i.i.while.cond.i.i145.i.i_crit_edge, %rtl8225_write_phy_cck.exit140.i.i
  %i.0.i.i143.i.i = phi i32 [ 10, %rtl8225_write_phy_cck.exit140.i.i ], [ %dec.i.i146.i.i, %while.body.i.i150.i.i.while.cond.i.i145.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i143.i.i)
  %tobool.not.i.i144.i.i = icmp eq i32 %i.0.i.i143.i.i, 0
  br i1 %tobool.not.i.i144.i.i, label %while.cond.i.i145.i.i.rtl8225_write_phy_cck.exit151.i.i_crit_edge, label %while.body.i.i150.i.i

while.cond.i.i145.i.i.rtl8225_write_phy_cck.exit151.i.i_crit_edge: ; preds = %while.cond.i.i145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit151.i.i

while.body.i.i150.i.i:                            ; preds = %while.cond.i.i145.i.i
  %dec.i.i146.i.i = add nsw i32 %i.0.i.i143.i.i, -1
  %560 = ptrtoint ptr %557 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %557, align 4
  %PHY4.i.i147.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %561, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i147.i.i, i32 21430273) #8, !srcloc !177
  %562 = ptrtoint ptr %557 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %557, align 4
  %arrayidx8.i.i148.i.i = getelementptr %struct.rtl818x_csr, ptr %563, i32 0, i32 42, i32 2
  %564 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i148.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i149.i.i = icmp eq i8 %564, 71
  br i1 %cmp.i.i149.i.i, label %while.body.i.i150.i.i.rtl8225_write_phy_cck.exit151.i.i_crit_edge, label %while.body.i.i150.i.i.while.cond.i.i145.i.i_crit_edge

while.body.i.i150.i.i.while.cond.i.i145.i.i_crit_edge: ; preds = %while.body.i.i150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i145.i.i

while.body.i.i150.i.i.rtl8225_write_phy_cck.exit151.i.i_crit_edge: ; preds = %while.body.i.i150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit151.i.i

rtl8225_write_phy_cck.exit151.i.i:                ; preds = %while.body.i.i150.i.i.rtl8225_write_phy_cck.exit151.i.i_crit_edge, %while.cond.i.i145.i.i.rtl8225_write_phy_cck.exit151.i.i_crit_edge
  %565 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %priv1, align 8
  %567 = ptrtoint ptr %566 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %566, align 4
  %PHY.i.i153.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %568, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i153.i.i, i32 -1923874816) #8, !srcloc !177
  br label %while.cond.i.i156.i.i

while.cond.i.i156.i.i:                            ; preds = %while.body.i.i161.i.i.while.cond.i.i156.i.i_crit_edge, %rtl8225_write_phy_cck.exit151.i.i
  %i.0.i.i154.i.i = phi i32 [ 10, %rtl8225_write_phy_cck.exit151.i.i ], [ %dec.i.i157.i.i, %while.body.i.i161.i.i.while.cond.i.i156.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i154.i.i)
  %tobool.not.i.i155.i.i = icmp eq i32 %i.0.i.i154.i.i, 0
  br i1 %tobool.not.i.i155.i.i, label %while.cond.i.i156.i.i.rtl8225_write_phy_ofdm.exit162.i.i_crit_edge, label %while.body.i.i161.i.i

while.cond.i.i156.i.i.rtl8225_write_phy_ofdm.exit162.i.i_crit_edge: ; preds = %while.cond.i.i156.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_ofdm.exit162.i.i

while.body.i.i161.i.i:                            ; preds = %while.cond.i.i156.i.i
  %dec.i.i157.i.i = add nsw i32 %i.0.i.i154.i.i, -1
  %569 = ptrtoint ptr %566 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %566, align 4
  %PHY4.i.i158.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %570, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i158.i.i, i32 223608832) #8, !srcloc !177
  %571 = ptrtoint ptr %566 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %566, align 4
  %arrayidx8.i.i159.i.i = getelementptr %struct.rtl818x_csr, ptr %572, i32 0, i32 42, i32 2
  %573 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i159.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i160.i.i = icmp eq i8 %573, 84
  br i1 %cmp.i.i160.i.i, label %while.body.i.i161.i.i.rtl8225_write_phy_ofdm.exit162.i.i_crit_edge, label %while.body.i.i161.i.i.while.cond.i.i156.i.i_crit_edge

while.body.i.i161.i.i.while.cond.i.i156.i.i_crit_edge: ; preds = %while.body.i.i161.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i156.i.i

while.body.i.i161.i.i.rtl8225_write_phy_ofdm.exit162.i.i_crit_edge: ; preds = %while.body.i.i161.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_ofdm.exit162.i.i

rtl8225_write_phy_ofdm.exit162.i.i:               ; preds = %while.body.i.i161.i.i.rtl8225_write_phy_ofdm.exit162.i.i_crit_edge, %while.cond.i.i156.i.i.rtl8225_write_phy_ofdm.exit162.i.i_crit_edge
  %574 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %priv1, align 8
  %576 = ptrtoint ptr %575 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %575, align 4
  %PHY.i.i164.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %577, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i164.i.i, i32 -1741553664) #8, !srcloc !177
  br label %while.cond.i.i167.i.i

while.cond.i.i167.i.i:                            ; preds = %while.body.i.i172.i.i.while.cond.i.i167.i.i_crit_edge, %rtl8225_write_phy_ofdm.exit162.i.i
  %i.0.i.i165.i.i = phi i32 [ 10, %rtl8225_write_phy_ofdm.exit162.i.i ], [ %dec.i.i168.i.i, %while.body.i.i172.i.i.while.cond.i.i167.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i165.i.i)
  %tobool.not.i.i166.i.i = icmp eq i32 %i.0.i.i165.i.i, 0
  br i1 %tobool.not.i.i166.i.i, label %while.cond.i.i167.i.i.if.end10_crit_edge, label %while.body.i.i172.i.i

while.cond.i.i167.i.i.if.end10_crit_edge:         ; preds = %while.cond.i.i167.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body.i.i172.i.i:                            ; preds = %while.cond.i.i167.i.i
  %dec.i.i168.i.i = add nsw i32 %i.0.i.i165.i.i, -1
  %578 = ptrtoint ptr %575 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %575, align 4
  %PHY4.i.i169.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %579, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i169.i.i, i32 405929984) #8, !srcloc !177
  %580 = ptrtoint ptr %575 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %575, align 4
  %arrayidx8.i.i170.i.i = getelementptr %struct.rtl818x_csr, ptr %581, i32 0, i32 42, i32 2
  %582 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i170.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i171.i.i = icmp eq i8 %582, 50
  br i1 %cmp.i.i171.i.i, label %while.body.i.i172.i.i.if.end10_crit_edge, label %while.body.i.i172.i.i.while.cond.i.i167.i.i_crit_edge

while.body.i.i172.i.i.while.cond.i.i167.i.i_crit_edge: ; preds = %while.body.i.i172.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i167.i.i

while.body.i.i172.i.i.if.end10_crit_edge:         ; preds = %while.body.i.i172.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else13.i.i:                                    ; preds = %if.else6.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_ANTENNA.i.i, i8 3) #8, !srcloc !181
  %583 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %priv1, align 8
  %585 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %584, align 4
  %PHY.i.i175.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %586, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i175.i.i, i32 -1852112895) #8, !srcloc !177
  br label %while.cond.i.i178.i.i

while.cond.i.i178.i.i:                            ; preds = %while.body.i.i183.i.i.while.cond.i.i178.i.i_crit_edge, %if.else13.i.i
  %i.0.i.i176.i.i = phi i32 [ 10, %if.else13.i.i ], [ %dec.i.i179.i.i, %while.body.i.i183.i.i.while.cond.i.i178.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i176.i.i)
  %tobool.not.i.i177.i.i = icmp eq i32 %i.0.i.i176.i.i, 0
  br i1 %tobool.not.i.i177.i.i, label %while.cond.i.i178.i.i.rtl8225_write_phy_cck.exit184.i.i_crit_edge, label %while.body.i.i183.i.i

while.cond.i.i178.i.i.rtl8225_write_phy_cck.exit184.i.i_crit_edge: ; preds = %while.cond.i.i178.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit184.i.i

while.body.i.i183.i.i:                            ; preds = %while.cond.i.i178.i.i
  %dec.i.i179.i.i = add nsw i32 %i.0.i.i176.i.i, -1
  %587 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %584, align 4
  %PHY4.i.i180.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %588, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i180.i.i, i32 295370753) #8, !srcloc !177
  %589 = ptrtoint ptr %584 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %584, align 4
  %arrayidx8.i.i181.i.i = getelementptr %struct.rtl818x_csr, ptr %590, i32 0, i32 42, i32 2
  %591 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i181.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i182.i.i = icmp eq i8 %591, -101
  br i1 %cmp.i.i182.i.i, label %while.body.i.i183.i.i.rtl8225_write_phy_cck.exit184.i.i_crit_edge, label %while.body.i.i183.i.i.while.cond.i.i178.i.i_crit_edge

while.body.i.i183.i.i.while.cond.i.i178.i.i_crit_edge: ; preds = %while.body.i.i183.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i178.i.i

while.body.i.i183.i.i.rtl8225_write_phy_cck.exit184.i.i_crit_edge: ; preds = %while.body.i.i183.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit184.i.i

rtl8225_write_phy_cck.exit184.i.i:                ; preds = %while.body.i.i183.i.i.rtl8225_write_phy_cck.exit184.i.i_crit_edge, %while.cond.i.i178.i.i.rtl8225_write_phy_cck.exit184.i.i_crit_edge
  %592 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %priv1, align 8
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %593, align 4
  %PHY.i.i186.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %595, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i186.i.i, i32 -2126053375) #8, !srcloc !177
  br label %while.cond.i.i189.i.i

while.cond.i.i189.i.i:                            ; preds = %while.body.i.i194.i.i.while.cond.i.i189.i.i_crit_edge, %rtl8225_write_phy_cck.exit184.i.i
  %i.0.i.i187.i.i = phi i32 [ 10, %rtl8225_write_phy_cck.exit184.i.i ], [ %dec.i.i190.i.i, %while.body.i.i194.i.i.while.cond.i.i189.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i187.i.i)
  %tobool.not.i.i188.i.i = icmp eq i32 %i.0.i.i187.i.i, 0
  br i1 %tobool.not.i.i188.i.i, label %while.cond.i.i189.i.i.rtl8225_write_phy_cck.exit195.i.i_crit_edge, label %while.body.i.i194.i.i

while.cond.i.i189.i.i.rtl8225_write_phy_cck.exit195.i.i_crit_edge: ; preds = %while.cond.i.i189.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit195.i.i

while.body.i.i194.i.i:                            ; preds = %while.cond.i.i189.i.i
  %dec.i.i190.i.i = add nsw i32 %i.0.i.i187.i.i, -1
  %596 = ptrtoint ptr %593 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %593, align 4
  %PHY4.i.i191.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %597, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i191.i.i, i32 21430273) #8, !srcloc !177
  %598 = ptrtoint ptr %593 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %593, align 4
  %arrayidx8.i.i192.i.i = getelementptr %struct.rtl818x_csr, ptr %599, i32 0, i32 42, i32 2
  %600 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i192.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i193.i.i = icmp eq i8 %600, 71
  br i1 %cmp.i.i193.i.i, label %while.body.i.i194.i.i.rtl8225_write_phy_cck.exit195.i.i_crit_edge, label %while.body.i.i194.i.i.while.cond.i.i189.i.i_crit_edge

while.body.i.i194.i.i.while.cond.i.i189.i.i_crit_edge: ; preds = %while.body.i.i194.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i189.i.i

while.body.i.i194.i.i.rtl8225_write_phy_cck.exit195.i.i_crit_edge: ; preds = %while.body.i.i194.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_cck.exit195.i.i

rtl8225_write_phy_cck.exit195.i.i:                ; preds = %while.body.i.i194.i.i.rtl8225_write_phy_cck.exit195.i.i_crit_edge, %while.cond.i.i189.i.i.rtl8225_write_phy_cck.exit195.i.i_crit_edge
  %601 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %priv1, align 8
  %603 = ptrtoint ptr %602 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %602, align 4
  %PHY.i.i197.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %604, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i197.i.i, i32 -1923350528) #8, !srcloc !177
  br label %while.cond.i.i200.i.i

while.cond.i.i200.i.i:                            ; preds = %while.body.i.i205.i.i.while.cond.i.i200.i.i_crit_edge, %rtl8225_write_phy_cck.exit195.i.i
  %i.0.i.i198.i.i = phi i32 [ 10, %rtl8225_write_phy_cck.exit195.i.i ], [ %dec.i.i201.i.i, %while.body.i.i205.i.i.while.cond.i.i200.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i198.i.i)
  %tobool.not.i.i199.i.i = icmp eq i32 %i.0.i.i198.i.i, 0
  br i1 %tobool.not.i.i199.i.i, label %while.cond.i.i200.i.i.rtl8225_write_phy_ofdm.exit206.i.i_crit_edge, label %while.body.i.i205.i.i

while.cond.i.i200.i.i.rtl8225_write_phy_ofdm.exit206.i.i_crit_edge: ; preds = %while.cond.i.i200.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_ofdm.exit206.i.i

while.body.i.i205.i.i:                            ; preds = %while.cond.i.i200.i.i
  %dec.i.i201.i.i = add nsw i32 %i.0.i.i198.i.i, -1
  %605 = ptrtoint ptr %602 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %602, align 4
  %PHY4.i.i202.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %606, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i202.i.i, i32 224133120) #8, !srcloc !177
  %607 = ptrtoint ptr %602 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %602, align 4
  %arrayidx8.i.i203.i.i = getelementptr %struct.rtl818x_csr, ptr %608, i32 0, i32 42, i32 2
  %609 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i203.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i204.i.i = icmp eq i8 %609, 92
  br i1 %cmp.i.i204.i.i, label %while.body.i.i205.i.i.rtl8225_write_phy_ofdm.exit206.i.i_crit_edge, label %while.body.i.i205.i.i.while.cond.i.i200.i.i_crit_edge

while.body.i.i205.i.i.while.cond.i.i200.i.i_crit_edge: ; preds = %while.body.i.i205.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i200.i.i

while.body.i.i205.i.i.rtl8225_write_phy_ofdm.exit206.i.i_crit_edge: ; preds = %while.body.i.i205.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8225_write_phy_ofdm.exit206.i.i

rtl8225_write_phy_ofdm.exit206.i.i:               ; preds = %while.body.i.i205.i.i.rtl8225_write_phy_ofdm.exit206.i.i_crit_edge, %while.cond.i.i200.i.i.rtl8225_write_phy_ofdm.exit206.i.i_crit_edge
  %610 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %priv1, align 8
  %612 = ptrtoint ptr %611 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %611, align 4
  %PHY.i.i208.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %613, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY.i.i208.i.i, i32 -1741553664) #8, !srcloc !177
  br label %while.cond.i.i211.i.i

while.cond.i.i211.i.i:                            ; preds = %while.body.i.i216.i.i.while.cond.i.i211.i.i_crit_edge, %rtl8225_write_phy_ofdm.exit206.i.i
  %i.0.i.i209.i.i = phi i32 [ 10, %rtl8225_write_phy_ofdm.exit206.i.i ], [ %dec.i.i212.i.i, %while.body.i.i216.i.i.while.cond.i.i211.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i209.i.i)
  %tobool.not.i.i210.i.i = icmp eq i32 %i.0.i.i209.i.i, 0
  br i1 %tobool.not.i.i210.i.i, label %while.cond.i.i211.i.i.if.end10_crit_edge, label %while.body.i.i216.i.i

while.cond.i.i211.i.i.if.end10_crit_edge:         ; preds = %while.cond.i.i211.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body.i.i216.i.i:                            ; preds = %while.cond.i.i211.i.i
  %dec.i.i212.i.i = add nsw i32 %i.0.i.i209.i.i, -1
  %614 = ptrtoint ptr %611 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %611, align 4
  %PHY4.i.i213.i.i = getelementptr inbounds %struct.rtl818x_csr, ptr %615, i32 0, i32 42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PHY4.i.i213.i.i, i32 405929984) #8, !srcloc !177
  %616 = ptrtoint ptr %611 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %611, align 4
  %arrayidx8.i.i214.i.i = getelementptr %struct.rtl818x_csr, ptr %617, i32 0, i32 42, i32 2
  %618 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx8.i.i214.i.i) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %cmp.i.i215.i.i = icmp eq i8 %618, 50
  br i1 %cmp.i.i215.i.i, label %while.body.i.i216.i.i.if.end10_crit_edge, label %while.body.i.i216.i.i.while.cond.i.i211.i.i_crit_edge

while.body.i.i216.i.i.while.cond.i.i211.i.i_crit_edge: ; preds = %while.body.i.i216.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i211.i.i

while.body.i.i216.i.i.if.end10_crit_edge:         ; preds = %while.body.i.i216.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

rtl8180_init_hw.exit:                             ; preds = %rtl8180_int_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i215 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %619 = ptrtoint ptr %wiphy.i215 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %wiphy.i215, align 8
  %dev24.i = getelementptr inbounds %struct.wiphy, ptr %620, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i, ptr noundef nonnull @.str.70) #11
  br label %err_free_rings

if.end10:                                         ; preds = %while.body.i.i216.i.i.if.end10_crit_edge, %while.cond.i.i211.i.i.if.end10_crit_edge, %while.body.i.i172.i.i.if.end10_crit_edge, %while.cond.i.i167.i.i.if.end10_crit_edge, %while.body.i.i128.i.i.if.end10_crit_edge, %while.cond.i.i123.i.i.if.end10_crit_edge, %while.body.i.i84.i.i.if.end10_crit_edge, %while.cond.i.i79.i.i.if.end10_crit_edge, %if.end206.i.if.end10_crit_edge
  %621 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %chip_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %622)
  %cmp11 = icmp eq i32 %622, 2
  %623 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %pdev.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %624, i32 0, i32 46
  %625 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %irq, align 4
  %rtl8187se_interrupt.rtl8180_interrupt = select i1 %cmp11, ptr @rtl8187se_interrupt, ptr @rtl8180_interrupt
  %call.i225 = call i32 @request_threaded_irq(i32 noundef %626, ptr noundef nonnull %rtl8187se_interrupt.rtl8180_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool19.not = icmp eq i32 %call.i225, 0
  br i1 %tobool19.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %627 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %wiphy, align 8
  %dev21 = getelementptr inbounds %struct.wiphy, ptr %628, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.57) #11
  br label %err_free_rings

if.end22:                                         ; preds = %if.end10
  %629 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %priv1, align 8
  %chip_family.i227 = getelementptr inbounds %struct.rtl8180_priv, ptr %630, i32 0, i32 19
  %631 = ptrtoint ptr %chip_family.i227 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %chip_family.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %632)
  %cmp.i228 = icmp eq i32 %632, 2
  %633 = ptrtoint ptr %630 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %630, align 4
  br i1 %cmp.i228, label %if.then.i, label %if.else.i229

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %IMR.i = getelementptr inbounds %struct.rtl818x_csr, ptr %634, i32 0, i32 34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IMR.i, i32 -59832832) #8, !srcloc !177
  br label %rtl8180_int_enable.exit

if.else.i229:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %635 = getelementptr inbounds %struct.rtl818x_csr, ptr %634, i32 0, i32 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %635, i16 -1) #8, !srcloc !190
  br label %rtl8180_int_enable.exit

rtl8180_int_enable.exit:                          ; preds = %if.else.i229, %if.then.i
  %636 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %chip_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %637)
  %cmp24.not = icmp eq i32 %637, 2
  br i1 %cmp24.not, label %rtl8180_int_enable.exit.if.else48_crit_edge, label %if.end29

rtl8180_int_enable.exit.if.else48_crit_edge:      ; preds = %rtl8180_int_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else48

if.end29:                                         ; preds = %rtl8180_int_enable.exit
  %638 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %1, align 4
  %640 = getelementptr inbounds %struct.rtl818x_csr, ptr %639, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %640, i32 -1) #8, !srcloc !177
  %641 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %1, align 4
  %arrayidx28 = getelementptr %struct.rtl818x_csr, ptr %642, i32 0, i32 2, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx28, i32 -1) #8, !srcloc !177
  %643 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %.pr = load i32, ptr %chip_family.i, align 4
  %644 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %644, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %.pr, label %if.end29.if.else48_crit_edge [
    i32 1, label %if.end29.if.end51_crit_edge
    i32 0, label %if.then38
  ]

if.end29.if.end51_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end29.if.else48_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else48

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %rfparam = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 21
  %645 = ptrtoint ptr %rfparam to i32
  call void @__asan_load2_noabort(i32 %645)
  %646 = load i16, ptr %rfparam, align 4
  %conv39 = zext i16 %646 to i32
  %and = shl i32 %conv39, 27
  %or41 = and i32 %and, 1610612736
  %or47 = or i32 %or41, -1877735670
  br label %if.end51

if.else48:                                        ; preds = %if.end29.if.else48_crit_edge, %rtl8180_int_enable.exit.if.else48_crit_edge
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then38, %if.end29.if.end51_crit_edge
  %reg.0 = phi i32 [ %or47, %if.then38 ], [ -1877735670, %if.else48 ], [ -267122934, %if.end29.if.end51_crit_edge ]
  %rx_conf = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 16
  %647 = ptrtoint ptr %rx_conf to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 %reg.0, ptr %rx_conf, align 4
  %648 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %1, align 4
  %RX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %649, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %650 = call i32 @llvm.bswap.i32(i32 %reg.0) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_CONF, i32 %650) #8, !srcloc !177
  %651 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %chip_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %652)
  %cmp54.not = icmp eq i32 %652, 0
  br i1 %cmp54.not, label %if.end51.if.end75_crit_edge, label %if.then56

if.end51.if.end75_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %653 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %1, align 4
  %CW_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %654, i32 0, i32 66
  %655 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CW_CONF) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %656 = and i8 %655, -4
  %657 = or i8 %656, 2
  %658 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %1, align 4
  %CW_CONF63 = getelementptr inbounds %struct.rtl818x_csr, ptr %659, i32 0, i32 66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CW_CONF63, i8 %657) #8, !srcloc !181
  %660 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %1, align 4
  %TX_AGC_CTL = getelementptr inbounds %struct.rtl818x_csr, ptr %661, i32 0, i32 55
  %662 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %TX_AGC_CTL) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %663 = and i8 %662, -8
  %664 = or i8 %663, 4
  %665 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %1, align 4
  %TX_AGC_CTL72 = getelementptr inbounds %struct.rtl818x_csr, ptr %666, i32 0, i32 55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TX_AGC_CTL72, i8 %664) #8, !srcloc !181
  %667 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %668, i32 236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 63) #8, !srcloc !181
  br label %if.end75

if.end75:                                         ; preds = %if.then56, %if.end51.if.end75_crit_edge
  %669 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %1, align 4
  %TX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %670, i32 0, i32 16
  %671 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TX_CONF) #8, !srcloc !182
  %672 = call i32 @llvm.bswap.i32(i32 %671) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %673 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %chip_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %674)
  %cmp80 = icmp eq i32 %674, 2
  %spec.select.v = select i1 %cmp80, i32 1086849024, i32 13107200
  %spec.select = or i32 %spec.select.v, %672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %674)
  %cmp86.not = icmp eq i32 %674, 0
  %reg.2.v = select i1 %cmp86.not, i32 -1091567617, i32 -554696705
  %reg.2 = and i32 %spec.select, %reg.2.v
  %675 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %1, align 4
  %TX_CONF96 = getelementptr inbounds %struct.rtl818x_csr, ptr %676, i32 0, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %677 = call i32 @llvm.bswap.i32(i32 %reg.2) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_CONF96, i32 %677) #8, !srcloc !177
  %678 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %1, align 4
  %CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %679, i32 0, i32 13
  %680 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CMD) #8, !srcloc !178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %681 = or i8 %680, 12
  %682 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %1, align 4
  %CMD103 = getelementptr inbounds %struct.rtl818x_csr, ptr %683, i32 0, i32 13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CMD103, i8 %681) #8, !srcloc !181
  br label %cleanup

err_free_rings:                                   ; preds = %do.end, %rtl8180_init_hw.exit, %rtl8180_init_tx_ring.exit
  %ret.1 = phi i32 [ -12, %rtl8180_init_tx_ring.exit ], [ -110, %rtl8180_init_hw.exit ], [ %call.i225, %do.end ]
  %684 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %priv1, align 8
  %pdev.i232 = getelementptr inbounds %struct.rtl8180_priv, ptr %685, i32 0, i32 15
  br label %for.body.i235

for.body.i235:                                    ; preds = %cleanup.i.for.body.i235_crit_edge, %err_free_rings
  %i.016.i = phi i32 [ 0, %err_free_rings ], [ %inc.i239, %cleanup.i.for.body.i235_crit_edge ]
  %arrayidx.i233 = getelementptr %struct.rtl8180_priv, ptr %685, i32 0, i32 9, i32 %i.016.i
  %686 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %arrayidx.i233, align 4
  %tobool.not.i234 = icmp eq ptr %687, null
  br i1 %tobool.not.i234, label %for.body.i235.cleanup.i_crit_edge, label %if.end.i238

for.body.i235.cleanup.i_crit_edge:                ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i238:                                      ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #10
  %688 = ptrtoint ptr %pdev.i232 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %pdev.i232, align 4
  %dev2.i236 = getelementptr inbounds %struct.pci_dev, ptr %689, i32 0, i32 44
  %cb.i237 = getelementptr inbounds %struct.sk_buff, ptr %687, i32 0, i32 3
  %690 = ptrtoint ptr %cb.i237 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %cb.i237, align 8
  call void @dma_unmap_page_attrs(ptr noundef %dev2.i236, i32 noundef %691, i32 noundef 2353, i32 noundef 2, i32 noundef 0) #8
  call void @kfree_skb_reason(ptr noundef nonnull %687, i32 noundef 0) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i238, %for.body.i235.cleanup.i_crit_edge
  %inc.i239 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i240 = icmp eq i32 %inc.i239, 32
  br i1 %exitcond.not.i240, label %rtl8180_free_rx_ring.exit, label %cleanup.i.for.body.i235_crit_edge

cleanup.i.for.body.i235_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i235

rtl8180_free_rx_ring.exit:                        ; preds = %cleanup.i
  %692 = ptrtoint ptr %pdev.i232 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %pdev.i232, align 4
  %dev4.i241 = getelementptr inbounds %struct.pci_dev, ptr %693, i32 0, i32 44
  %rx_ring_sz.i = getelementptr inbounds %struct.rtl8180_priv, ptr %685, i32 0, i32 6
  %694 = ptrtoint ptr %rx_ring_sz.i to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %rx_ring_sz.i, align 4
  %conv.i242 = zext i8 %695 to i32
  %mul.i243 = shl nuw nsw i32 %conv.i242, 5
  %rx_ring.i244 = getelementptr inbounds %struct.rtl8180_priv, ptr %685, i32 0, i32 5
  %696 = ptrtoint ptr %rx_ring.i244 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %rx_ring.i244, align 4
  %rx_ring_dma.i245 = getelementptr inbounds %struct.rtl8180_priv, ptr %685, i32 0, i32 7
  %698 = ptrtoint ptr %rx_ring_dma.i245 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %rx_ring_dma.i245, align 4
  call void @dma_free_attrs(ptr noundef %dev4.i241, i32 noundef %mul.i243, ptr noundef %697, i32 noundef %699, i32 noundef 0) #8
  %700 = ptrtoint ptr %rx_ring.i244 to i32
  call void @__asan_store4_noabort(i32 %700)
  store ptr null, ptr %rx_ring.i244, align 4
  br label %for.body111

for.body111:                                      ; preds = %for.inc116.for.body111_crit_edge, %rtl8180_free_rx_ring.exit
  %i.1272 = phi i32 [ 0, %rtl8180_free_rx_ring.exit ], [ %inc117, %for.inc116.for.body111_crit_edge ]
  %arrayidx112 = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %i.1272
  %701 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %arrayidx112, align 4
  %tobool113.not = icmp eq ptr %702, null
  br i1 %tobool113.not, label %for.body111.for.inc116_crit_edge, label %if.then114

for.body111.for.inc116_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc116

if.then114:                                       ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rtl8180_free_tx_ring(ptr noundef %dev, i32 noundef %i.1272)
  br label %for.inc116

for.inc116:                                       ; preds = %if.then114, %for.body111.for.inc116_crit_edge
  %inc117 = add nuw nsw i32 %i.1272, 1
  %703 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %703)
  %704 = load i16, ptr %queues, align 4
  %conv107 = zext i16 %704 to i32
  %cmp109.not.not = icmp ult i32 %i.1272, %conv107
  br i1 %cmp109.not.not, label %for.inc116.for.body111_crit_edge, label %for.inc116.cleanup_crit_edge

for.inc116.cleanup_crit_edge:                     ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc116.for.body111_crit_edge:                 ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111

cleanup:                                          ; preds = %for.inc116.cleanup_crit_edge, %if.end75, %if.then42.i, %if.then20.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end75 ], [ -12, %do.end.i ], [ -12, %if.then42.i ], [ -12, %if.then20.i ], [ %ret.1, %for.inc116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %chip_family.i = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %IMR.i = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IMR.i, i32 0) #8, !srcloc !177
  br label %rtl8180_int_disable.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.rtl818x_csr, ptr %5, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 0) #8, !srcloc !190
  br label %rtl8180_int_disable.exit

rtl8180_int_disable.exit:                         ; preds = %if.else.i, %if.then.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 13
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CMD) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %10 = and i8 %9, -13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %CMD7 = getelementptr inbounds %struct.rtl818x_csr, ptr %12, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CMD7, i8 %10) #8, !srcloc !181
  %rf = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rf, align 4
  %stop = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stop, align 4
  tail call void %16(ptr noundef %dev) #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %18, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD, i8 -64) #8, !srcloc !181
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %CONFIG4 = getelementptr inbounds %struct.rtl818x_csr, ptr %20, i32 0, i32 27
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CONFIG4) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %CONFIG412 = getelementptr inbounds %struct.rtl818x_csr, ptr %23, i32 0, i32 27
  %24 = or i8 %21, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CONFIG412, i8 %24) #8, !srcloc !181
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %EEPROM_CMD16 = getelementptr inbounds %struct.rtl818x_csr, ptr %26, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD16, i8 0) #8, !srcloc !181
  %pdev = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call17 = tail call ptr @free_irq(i32 noundef %30, ptr noundef %dev) #8
  %31 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv1, align 8
  %pdev.i = getelementptr inbounds %struct.rtl8180_priv, ptr %32, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %rtl8180_int_disable.exit
  %i.016.i = phi i32 [ 0, %rtl8180_int_disable.exit ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rtl8180_priv, ptr %32, i32 0, i32 9, i32 %i.016.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cb.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %38, i32 noundef 2353, i32 noundef 2, i32 noundef 0) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %34, i32 noundef 0) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %rtl8180_free_rx_ring.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rtl8180_free_rx_ring.exit:                        ; preds = %cleanup.i
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %rx_ring_sz.i = getelementptr inbounds %struct.rtl8180_priv, ptr %32, i32 0, i32 6
  %41 = ptrtoint ptr %rx_ring_sz.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rx_ring_sz.i, align 4
  %conv.i = zext i8 %42 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %rx_ring.i = getelementptr inbounds %struct.rtl8180_priv, ptr %32, i32 0, i32 5
  %43 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_ring.i, align 4
  %rx_ring_dma.i = getelementptr inbounds %struct.rtl8180_priv, ptr %32, i32 0, i32 7
  %45 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4.i, i32 noundef %mul.i, ptr noundef %44, i32 noundef %46, i32 noundef 0) #8
  %47 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rx_ring.i, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rtl8180_free_rx_ring.exit
  %i.046 = phi i32 [ 0, %rtl8180_free_rx_ring.exit ], [ %inc, %for.body.for.body_crit_edge ]
  tail call fastcc void @rtl8180_free_tx_ring(ptr noundef %dev, i32 noundef %i.046)
  %inc = add nuw nsw i32 %i.046, 1
  %48 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %queues, align 4
  %conv18 = zext i16 %49 to i32
  %cmp.not.not = icmp ult i32 %i.046, %conv18
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8180_add_interface(ptr noundef %dev, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %vif2 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vif, ptr %vif2, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %7 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %drv_priv, align 4
  %beacon_work = getelementptr inbounds %struct.rtl8180_vif, ptr %drv_priv, i32 0, i32 1
  tail call void @__init_work(ptr noundef %beacon_work, i32 noundef 0) #8
  %8 = ptrtoint ptr %beacon_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %beacon_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.76, ptr noundef nonnull @rtl8180_add_interface.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry12 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %9 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rtl8180_beacon_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 22
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.78, ptr noundef nonnull @rtl8180_add_interface.__key.77) #8
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %12 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enable_beacon, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD, i8 -64) #8, !srcloc !181
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %18) #8, !srcloc !177
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %arrayidx24 = getelementptr [6 x i8], ptr %20, i32 0, i32 4
  %add.ptr = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx24, i16 %22) #8, !srcloc !190
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %EEPROM_CMD28 = getelementptr inbounds %struct.rtl818x_csr, ptr %24, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD28, i8 0) #8, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtl8180_remove_interface(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %vif2 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vif2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8180_config(ptr noundef %dev, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rf = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 4
  %set_chan = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %set_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_chan, align 4
  tail call void %5(ptr noundef %dev, ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_bss_info_changed(ptr noundef %dev, ptr noundef %vif, ptr nocapture noundef readonly %info, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %and = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %BSSID = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %BSSID, i16 %7) #8, !srcloc !190
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr %struct.rtl818x_csr, ptr %9, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx4, i32 %13) #8, !srcloc !177
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

is_valid_ether_addr.exit:                         ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  %or.i.i = or i32 %17, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end10_crit_edge, label %if.then7

is_valid_ether_addr.exit.if.end10_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  %. = select i1 %cmp, i8 4, i8 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %is_valid_ether_addr.exit.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %reg.0 = phi i8 [ %., %if.then7 ], [ 0, %is_valid_ether_addr.exit.if.end10_crit_edge ], [ 0, %if.then.if.end10_crit_edge ]
  %chip_family = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp11 = icmp eq i32 %24, 2
  %25 = or i8 %reg.0, 16
  %spec.select = select i1 %cmp11, i8 %25, i8 %reg.0
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %MSR = getelementptr inbounds %struct.rtl818x_csr, ptr %27, i32 0, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MSR, i8 %spec.select) #8, !srcloc !181
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %entry.if.end16_crit_edge
  %and17 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 24
  %28 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %basic_rates, align 8
  tail call fastcc void @rtl8180_conf_basic_rates(ptr noundef %dev, i32 noundef %29)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %and21 = and i32 %changed, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end37_crit_edge, label %if.then23

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then23:                                        ; preds = %if.end20
  %vif24 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %vif24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vif24, align 4
  %rates = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 12
  %call26 = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %dev, ptr noundef %31, i32 noundef 0, i32 noundef 10, ptr noundef %rates) #8
  %32 = tail call i16 @llvm.bswap.i16(i16 %call26)
  %sub = add i16 %32, -10
  %ack_time = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 18
  %33 = ptrtoint ptr %ack_time to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %sub, ptr %ack_time, align 2
  %34 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv1, align 8
  %chip_family.i = getelementptr inbounds %struct.rtl8180_priv, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp eq i32 %37, 0
  br i1 %cmp.i, label %if.then23.rtl8180_conf_erp.exit_crit_edge, label %if.end.i

if.then23.rtl8180_conf_erp.exit_crit_edge:        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8180_conf_erp.exit

if.end.i:                                         ; preds = %if.then23
  %use_short_slot.i = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %38 = ptrtoint ptr %use_short_slot.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %use_short_slot.i, align 2, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  %spec.select.i = select i1 %tobool.not.i, i8 20, i8 9
  %40 = getelementptr inbounds %struct.rtl8180_priv, ptr %35, i32 0, i32 17
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %spec.select.i, ptr %40, align 4
  %mul.i = shl nuw nsw i8 %spec.select.i, 1
  %add.i = add nuw nsw i8 %mul.i, 10
  %conv7.i = zext i8 %add.i to i32
  %ack_time.i = getelementptr inbounds %struct.rtl8180_priv, ptr %35, i32 0, i32 18
  %42 = ptrtoint ptr %ack_time.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ack_time.i, align 2
  %conv9.i = zext i16 %43 to i32
  %add10.i = add nuw nsw i32 %conv9.i, 13
  %sub.i = add nuw nsw i32 %add10.i, %conv7.i
  %div64.i = lshr i32 %sub.i, 2
  %conv12.i = trunc i32 %div64.i to i8
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %35, align 4
  %SLOT.i = getelementptr inbounds %struct.rtl818x_csr, ptr %45, i32 0, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %SLOT.i, i8 %spec.select.i) #8, !srcloc !181
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %35, align 4
  %SIFS.i = getelementptr inbounds %struct.rtl818x_csr, ptr %47, i32 0, i32 62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %SIFS.i, i8 34) #8, !srcloc !181
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %35, align 4
  %DIFS.i = getelementptr inbounds %struct.rtl818x_csr, ptr %49, i32 0, i32 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %DIFS.i, i8 %add.i) #8, !srcloc !181
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %35, align 4
  %CARRIER_SENSE_COUNTER.i = getelementptr inbounds %struct.rtl818x_csr, ptr %51, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CARRIER_SENSE_COUNTER.i, i8 %conv12.i) #8, !srcloc !181
  %52 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chip_family.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %53, label %if.end.i.rtl8180_conf_erp.exit_crit_edge [
    i32 2, label %if.then20.i
    i32 1, label %if.then26.i
  ]

if.end.i.rtl8180_conf_erp.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8180_conf_erp.exit

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %35, align 4
  %57 = getelementptr inbounds %struct.rtl818x_csr, ptr %56, i32 0, i32 9
  %EIFS_8187SE.i = getelementptr inbounds %struct.anon.136, ptr %57, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EIFS_8187SE.i, i8 %conv12.i) #8, !srcloc !181
  br label %rtl8180_conf_erp.exit

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div3165.i = lshr i32 %add10.i, 2
  %conv32.i = trunc i32 %div3165.i to i8
  %58 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %35, align 4
  %60 = getelementptr inbounds %struct.rtl818x_csr, ptr %59, i32 0, i32 11
  %EIFS.i = getelementptr inbounds %struct.anon.138, ptr %60, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EIFS.i, i8 %conv32.i) #8, !srcloc !181
  br label %rtl8180_conf_erp.exit

rtl8180_conf_erp.exit:                            ; preds = %if.then26.i, %if.then20.i, %if.end.i.rtl8180_conf_erp.exit_crit_edge, %if.then23.rtl8180_conf_erp.exit_crit_edge
  %chip_family29 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 19
  %61 = ptrtoint ptr %chip_family29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chip_family29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp30 = icmp eq i32 %62, 2
  br i1 %cmp30, label %for.body.preheader, label %rtl8180_conf_erp.exit.if.end37_crit_edge

rtl8180_conf_erp.exit.if.end37_crit_edge:         ; preds = %rtl8180_conf_erp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.body.preheader:                               ; preds = %rtl8180_conf_erp.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8187se_conf_ac_parm(ptr noundef %dev, i8 noundef zeroext 0)
  tail call fastcc void @rtl8187se_conf_ac_parm(ptr noundef %dev, i8 noundef zeroext 1)
  tail call fastcc void @rtl8187se_conf_ac_parm(ptr noundef %dev, i8 noundef zeroext 2)
  tail call fastcc void @rtl8187se_conf_ac_parm(ptr noundef %dev, i8 noundef zeroext 3)
  br label %if.end37

if.end37:                                         ; preds = %for.body.preheader, %rtl8180_conf_erp.exit.if.end37_crit_edge, %if.end20.if.end37_crit_edge
  %and38 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %63 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enable_beacon, align 1, !range !184
  %enable_beacon42 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %65 = ptrtoint ptr %enable_beacon42 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %enable_beacon42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %and44 = and i32 %changed, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end54_crit_edge, label %if.then46

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then46:                                        ; preds = %if.end43
  %beacon_work = getelementptr inbounds %struct.rtl8180_vif, ptr %drv_priv, i32 0, i32 1
  %call47 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %beacon_work) #8
  %enable_beacon48 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %66 = ptrtoint ptr %enable_beacon48 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %enable_beacon48, align 4, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool49.not = icmp eq i8 %67, 0
  br i1 %tobool49.not, label %if.then46.if.end54_crit_edge, label %if.then50

if.then46.if.end54_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %68 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %beacon_work) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.then46.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @rtl8180_prepare_multicast(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %mc_list) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_configure_filter(ptr nocapture noundef readonly %dev, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %changed_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rx_conf = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rx_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_conf, align 4
  %xor = xor i32 %3, 32
  store i32 %xor, ptr %rx_conf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %changed_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rx_conf5 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %rx_conf5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_conf5, align 4
  %xor6 = xor i32 %5, 524288
  store i32 %xor6, ptr %rx_conf5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %and8 = and i32 %changed_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %rx_conf11 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %rx_conf11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_conf11, align 4
  %xor12 = xor i32 %7, 1
  store i32 %xor12, ptr %rx_conf11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %8 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_flags, align 4
  %and14 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %multicast)
  %cmp.not = icmp eq i64 %multicast, 0
  %or.cond = and i1 %cmp.not, %tobool15.not
  %rx_conf18 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %rx_conf18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_conf18, align 4
  %and19 = and i32 %11, -5
  %masksel = select i1 %or.cond, i32 0, i32 4
  %and19.sink = or i32 %and19, %masksel
  store i32 %and19.sink, ptr %rx_conf18, align 4
  %12 = ptrtoint ptr %total_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %total_flags, align 4
  %rx_conf21 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %rx_conf21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_conf21, align 4
  %and22 = lshr i32 %14, 3
  %15 = and i32 %and22, 4
  store i32 %15, ptr %total_flags, align 4
  %16 = load i32, ptr %rx_conf21, align 4
  %and28 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end13.if.end32_crit_edge, label %if.then30

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %or31 = or i32 %15, 32
  %17 = ptrtoint ptr %total_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or31, ptr %total_flags, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end13.if.end32_crit_edge
  %18 = ptrtoint ptr %rx_conf21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_conf21, align 4
  %and34 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end38_crit_edge, label %if.then36

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_flags, align 4
  %or37 = or i32 %21, 64
  store i32 %or37, ptr %total_flags, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  %22 = ptrtoint ptr %rx_conf21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_conf21, align 4
  %and40 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end44_crit_edge, label %if.then42

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total_flags, align 4
  %or43 = or i32 %25, 2
  store i32 %or43, ptr %total_flags, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end38.if.end44_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %RX_CONF = getelementptr inbounds %struct.rtl818x_csr, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %rx_conf21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_conf21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_CONF, i32 %30) #8, !srcloc !177
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8180_conf_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %chip_family = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_family, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %3, label %if.else [
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %if.then11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom = zext i16 %queue to i32
  %arrayidx = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 14, i32 %idxprom
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %params, i32 14)
  %conv12 = trunc i16 %queue to i8
  tail call fastcc void @rtl8187se_conf_ac_parm(ptr noundef %dev, i8 noundef zeroext %conv12)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cw_max4 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %cw_max4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cw_max4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i27 = icmp eq i16 %7, 0
  %conv5 = zext i16 %7 to i32
  %8 = tail call i32 @llvm.ctlz.i32(i32 %conv5, i1 true) #8, !range !193
  %cw_min2 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %cw_min2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cw_min2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  %conv = zext i16 %10 to i32
  %11 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #8, !range !193
  %sub.i = sub nuw nsw i32 32, %11
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %CW_VAL = getelementptr inbounds %struct.rtl818x_csr, ptr %13, i32 0, i32 67
  %.neg = mul nuw nsw i32 %8, 240
  %conv13 = select i1 %tobool.not.i27, i32 0, i32 %.neg
  %or = or i32 %cond.i, %conv13
  %conv15 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CW_VAL, i8 %conv15) #8, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @rtl8180_get_tsf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %TSFT = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TSFT) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr %struct.rtl818x_csr, ptr %6, i32 0, i32 5, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx4) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %8 = zext i32 %7 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  ret i64 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_rts_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_ctstoself_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8187se_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %lock = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 15
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !182
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp7 = icmp eq i32 %5, -1
  br i1 %cmp7, label %entry.cleanup_crit_edge, label %if.end, !prof !194

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %5) #8, !srcloc !177
  %and = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %INT_TIMEOUT = getelementptr inbounds %struct.rtl818x_csr, ptr %11, i32 0, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %INT_TIMEOUT, i32 0) #8, !srcloc !177
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %and16 = and i32 %6, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_tx(ptr noundef %dev_id, i32 noundef 4)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %and20 = and i32 %6, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_tx(ptr noundef %dev_id, i32 noundef 0)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %and24 = and i32 %6, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end27_crit_edge, label %if.then26

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_tx(ptr noundef %dev_id, i32 noundef 1)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  %and28 = and i32 %6, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_tx(ptr noundef %dev_id, i32 noundef 2)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  %and32 = and i32 %6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_tx(ptr noundef %dev_id, i32 noundef 3)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31.if.end35_crit_edge
  %and36 = and i32 %6, 2436
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_rx(ptr noundef %dev_id)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %and40 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %land.lhs.true

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end39
  %12 = load i32, ptr @rtl8187se_interrupt.desc_err, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr @rtl8187se_interrupt.desc_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp42 = icmp sgt i32 %12, 2
  br i1 %cmp42, label %if.then44, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true
  %call45 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.cleanup_crit_edge, label %do.end50

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %dev51 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.72) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.then44.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8180_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %lock = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 15
  %INT_STATUS = getelementptr inbounds %struct.anon.140, ptr %4, i32 0, i32 1
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %INT_STATUS) #8, !srcloc !191
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !194

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 15
  %INT_STATUS6 = getelementptr inbounds %struct.anon.140, ptr %9, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %INT_STATUS6, i16 %5) #8, !srcloc !190
  %and = and i32 %conv, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_tx(ptr noundef %dev_id, i32 noundef 1)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %and12 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_tx(ptr noundef %dev_id, i32 noundef 0)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  %and17 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.then19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtl8180_handle_rx(ptr noundef %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8180_free_tx_ring(ptr nocapture noundef readonly %dev, i32 noundef %prio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %arrayidx = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio
  %qlen.i = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 4, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not27 = icmp eq i32 %3, 0
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %queue = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 4
  %idx = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 2
  %pdev = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 15
  %entries = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 3
  br label %while.body

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %30, %__skb_dequeue.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %10, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %10
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %12 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %prev17.i.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %15, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %while.body.__skb_dequeue.exit_crit_edge
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %tx_buf = getelementptr %struct.rtl8180_tx_desc, ptr %6, i32 %8, i32 3
  %20 = ptrtoint ptr %tx_buf to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %tx_buf, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev6, i32 noundef %22, i32 noundef %24, i32 noundef 1, i32 noundef 0) #8
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #8
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx, align 4
  %add = add i32 %26, 1
  %27 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %28
  store i32 %rem, ptr %idx, align 4
  %29 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i, align 4
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %__skb_dequeue.exit.while.end_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

__skb_dequeue.exit.while.end_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %__skb_dequeue.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %pdev9 = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev9, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %entries11 = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 3
  %33 = ptrtoint ptr %entries11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %entries11, align 4
  %mul = shl i32 %34, 5
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %dma = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 1
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef %mul, ptr noundef %36, i32 noundef %38, i32 noundef 0) #8
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8180_conf_basic_rates(ptr nocapture noundef readonly %dev, i32 noundef %basic_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %basic_mask)
  %2 = icmp ult i32 %basic_mask, 16
  %or = or i32 %basic_mask, 336
  %spec.select = select i1 %2, i32 %or, i32 %basic_mask
  %chip_family = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_family, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %basic_mask)
  %tobool.not.i = icmp eq i32 %basic_mask, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %basic_mask, i1 true) #8, !range !193
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.rtl818x_csr, ptr %8, i32 0, i32 9
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #8, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %11 = and i16 %10, -769
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = trunc i32 %6 to i16
  %.op = xor i16 %13, 31
  %14 = select i1 %tobool.not.i, i16 255, i16 %.op
  %conv9 = or i16 %12, %14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv9) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %18) #8, !srcloc !190
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call i32 @llvm.ctlz.i32(i32 %spec.select, i1 true) #8, !range !193
  %20 = tail call i32 @llvm.cttz.i32(i32 %spec.select, i1 true), !range !193
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.rtl818x_csr, ptr %22, i32 0, i32 9
  %conv18 = trunc i32 %basic_mask to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv18) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 %24) #8, !srcloc !190
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr inbounds %struct.rtl818x_csr, ptr %26, i32 0, i32 11
  %.neg = mul nuw nsw i32 %19, 240
  %conv20 = add nuw nsw i32 %.neg, 240
  %or22 = or i32 %conv20, %20
  %conv23 = trunc i32 %or22 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %conv23) #8, !srcloc !181
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 11
  %conv26 = trunc i32 %spec.select to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv26) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %31) #8, !srcloc !190
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb11, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8180_handle_tx(ptr noundef %dev, i32 noundef %prio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %arrayidx = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio
  %queue = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 4
  %qlen.i = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 4, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not58 = icmp eq i32 %3, 0
  br i1 %tobool.not58, label %entry.cleanup32_crit_edge, label %while.body.lr.ph

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

while.body.lr.ph:                                 ; preds = %entry
  %idx = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 2
  %entries = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 10, i32 %prio, i32 3
  %pdev = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %46, %while.cond.backedge.while.body_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %arrayidx3 = getelementptr %struct.rtl8180_tx_desc, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx3, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool5.not = icmp sgt i32 %11, -1
  br i1 %tobool5.not, label %if.end, label %while.body.cleanup32_crit_edge

while.body.cleanup32_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

if.end:                                           ; preds = %while.body
  %add = add i32 %8, 1
  %12 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %13
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rem, ptr %idx, align 4
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %16, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %16
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %if.end.__skb_dequeue.exit_crit_edge, label %if.then.i

if.end.__skb_dequeue.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %prev17.i.i, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %21, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %if.end.__skb_dequeue.exit_crit_edge
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %tx_buf = getelementptr %struct.rtl8180_tx_desc, ptr %6, i32 %8, i32 3
  %26 = ptrtoint ptr %tx_buf to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %tx_buf, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %28, i32 noundef %30, i32 noundef 1, i32 noundef 0) #8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3
  %count.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 9
  %31 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 15
  %33 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 18
  %34 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3, i32 20
  %35 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %36 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cb.i, align 8
  %and13 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %and15 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %__skb_dequeue.exit.if.end19_crit_edge, label %if.then17

__skb_dequeue.exit.if.end19_crit_edge:            ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %37, 512
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %cb.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %__skb_dequeue.exit.if.end19_crit_edge
  %39 = trunc i32 %11 to i16
  %40 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %bf.load = load i16, ptr %count.i, align 1
  %conv = shl i16 %39, 11
  %bf.shl = add i16 %conv, 2048
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %count.i, align 1
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %dev, ptr noundef %spec.store.select.i.i) #8
  %41 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %entries, align 4
  %43 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i, align 4
  %sub = sub i32 %42, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp = icmp eq i32 %sub, 2
  br i1 %cmp, label %if.then27, label %if.end19.while.cond.backedge_crit_edge

if.end19.while.cond.backedge_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_wake_queue(ptr noundef %dev, i32 noundef %prio) #8
  %45 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %qlen.i, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then27, %if.end19.while.cond.backedge_crit_edge
  %46 = phi i32 [ %.pr, %if.then27 ], [ %44, %if.end19.while.cond.backedge_crit_edge ]
  %tobool.not = icmp eq i32 %46, 0
  br i1 %tobool.not, label %while.cond.backedge.cleanup32_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.cleanup32_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

cleanup32:                                        ; preds = %while.cond.backedge.cleanup32_crit_edge, %while.body.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8180_handle_rx(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rx_ring = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 5
  %rx_idx = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 8
  %rx_ring_sz = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 6
  %chip_family = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 19
  %pdev = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 15
  %rf = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 1
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup179.while.body_crit_edge, %entry
  %dec276 = phi i32 [ 31, %entry ], [ %dec, %cleanup179.while.body_crit_edge ]
  %signal.0275 = phi i8 [ 1, %entry ], [ %signal.3, %cleanup179.while.body_crit_edge ]
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %4 = ptrtoint ptr %rx_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_idx, align 4
  %6 = ptrtoint ptr %rx_ring_sz to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_ring_sz, align 4
  %conv = zext i8 %7 to i32
  %mul = mul i32 %5, %conv
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %arrayidx = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 9, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %flags36 = getelementptr inbounds %struct.rtl8187se_rx_desc, ptr %add.ptr, i32 0, i32 3
  %15 = ptrtoint ptr %flags36 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %flags36, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %flags27 = getelementptr inbounds %struct.rtl8187se_rx_desc, ptr %add.ptr, i32 0, i32 2
  %18 = ptrtoint ptr %flags27 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %flags27, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %tsft8 = getelementptr inbounds %struct.rtl8187se_rx_desc, ptr %add.ptr, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %flags211 = getelementptr inbounds %struct.rtl8180_rx_desc, ptr %add.ptr, i32 0, i32 1
  %21 = ptrtoint ptr %flags211 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %flags211, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %tsft12 = getelementptr inbounds %struct.rtl8180_rx_desc, ptr %add.ptr, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tsft12.sink = phi ptr [ %tsft12, %if.else ], [ %tsft8, %if.then ]
  %flags2.0 = phi i32 [ %23, %if.else ], [ %20, %if.then ]
  %flags3.0 = phi i32 [ 0, %if.else ], [ %17, %if.then ]
  %24 = ptrtoint ptr %tsft12.sink to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %tsft12.sink, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool13.not = icmp sgt i32 %14, -1
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup187_crit_edge

if.end.cleanup187_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup187

if.end15:                                         ; preds = %if.end
  %and16 = and i32 %14, 201359360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else21, label %if.end15.cleanup179_crit_edge, !prof !186

if.end15.cleanup179_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup179

if.else21:                                        ; preds = %if.end15
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2353, i32 noundef 2592) #8
  %tobool22.not = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not, label %if.else21.cleanup179_crit_edge, label %if.end32, !prof !194

if.else21.cleanup179_crit_edge:                   ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup179

if.end32:                                         ; preds = %if.else21
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end32
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !186

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev33) #8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev33, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev33, ptr noundef %30, i32 noundef 2353) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %30 to i32
  %sub.i = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %35, i32 %shr.i
  %and.i = and i32 %36, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev33, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 2353, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev37, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then40, label %if.end43

if.then40:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.74) #11
  br label %cleanup179

if.end43:                                         ; preds = %dma_map_single_attrs.exit
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %cb = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %43 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cb, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev45, i32 noundef %44, i32 noundef 2353, i32 noundef 2, i32 noundef 0) #8
  %and46 = and i32 %14, 4095
  %call47 = tail call ptr @skb_put(ptr noundef %9, i32 noundef %and46) #8
  %shr = lshr i32 %flags2.0, 15
  %45 = trunc i32 %shr to i8
  %conv49 = and i8 %45, 1
  %shr50 = lshr i32 %14, 20
  %46 = trunc i32 %shr50 to i8
  %conv52 = and i8 %46, 15
  %shr53 = lshr i32 %flags2.0, 17
  %47 = trunc i32 %shr53 to i8
  %conv55 = and i8 %47, 127
  %48 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip_family, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %49, label %if.end43.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb109
    i32 2, label %sw.bb113
  ]

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv52)
  %cmp59 = icmp ugt i8 %conv52, 3
  br i1 %cmp59, label %if.then61, label %if.else82

if.then61:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %51 = tail call i8 @llvm.umax.i8(i8 %conv55, i8 25)
  %52 = tail call i8 @llvm.umin.i8(i8 %51, i8 90)
  %sub80 = sub nuw nsw i8 -9, %52
  br label %sw.epilog

if.else82:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call i8 @llvm.umax.i8(i8 %conv55, i8 30)
  %54 = tail call i8 @llvm.umin.i8(i8 %53, i8 95)
  %sub106 = sub nsw i8 0, %54
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %conv111 = trunc i32 %flags2.0 to i8
  %55 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rf, align 4
  %calc_rssi = getelementptr inbounds %struct.rtl818x_rf_ops, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %calc_rssi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %calc_rssi, align 4
  %call112 = tail call zeroext i8 %58(i8 noundef zeroext %conv55, i8 noundef zeroext %conv111) #8
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv52)
  %cmp116 = icmp ugt i8 %conv52, 3
  br i1 %cmp116, label %if.then118, label %if.else125

if.then118:                                       ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #10
  %59 = lshr i32 %flags3.0, 16
  %div.lhs.trunc = trunc i32 %59 to i8
  %div273 = sdiv i8 %div.lhs.trunc, 2
  %conv124 = add nsw i8 %div273, -41
  br label %sw.epilog

if.else125:                                       ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #10
  %60 = lshr i8 %conv55, 5
  %61 = zext i8 %60 to i32
  %and130 = shl i8 %47, 1
  %mul131 = and i8 %and130, 62
  %arrayidx133 = getelementptr [4 x i8], ptr @rtl8187se_lna_gain, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx133, align 1
  %64 = add i8 %mul131, %63
  %sub135 = sub i8 4, %64
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else125, %if.then118, %sw.bb109, %if.else82, %if.then61, %if.end43.sw.epilog_crit_edge
  %signal.1 = phi i8 [ %signal.0275, %if.end43.sw.epilog_crit_edge ], [ %conv124, %if.then118 ], [ %sub135, %if.else125 ], [ %call112, %sw.bb109 ], [ %sub80, %if.then61 ], [ %sub106, %if.else82 ]
  %65 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %center_freq, align 4
  %conv139 = trunc i32 %68 to i16
  %bf.shl = shl i16 %conv139, 3
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %66, align 4
  %conv143 = trunc i32 %70 to i8
  %and145 = lshr i32 %14, 25
  %71 = trunc i32 %and145 to i8
  %72 = and i8 %71, 1
  %and152 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  %rx_status.sroa.5208.1 = select i1 %tobool153.not, i32 128, i32 160
  %73 = ptrtoint ptr %cb to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %26, ptr %cb, align 8
  %rx_status.sroa.5.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 8
  %74 = call ptr @memset(ptr %rx_status.sroa.5.0.call158.sroa_idx, i32 0, i32 16)
  %rx_status.sroa.5208.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 24
  %75 = ptrtoint ptr %rx_status.sroa.5208.0.call158.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %rx_status.sroa.5208.1, ptr %rx_status.sroa.5208.0.call158.sroa_idx, align 8
  %rx_status.sroa.9.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 28
  %76 = ptrtoint ptr %rx_status.sroa.9.0.call158.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %bf.shl, ptr %rx_status.sroa.9.0.call158.sroa_idx, align 4
  %rx_status.sroa.11.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 30
  %77 = ptrtoint ptr %rx_status.sroa.11.0.call158.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %72, ptr %rx_status.sroa.11.0.call158.sroa_idx, align 2
  %rx_status.sroa.13.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 31
  %78 = ptrtoint ptr %rx_status.sroa.13.0.call158.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 0, ptr %rx_status.sroa.13.0.call158.sroa_idx, align 1
  %rx_status.sroa.13210.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 33
  %79 = ptrtoint ptr %rx_status.sroa.13210.0.call158.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv52, ptr %rx_status.sroa.13210.0.call158.sroa_idx, align 1
  %rx_status.sroa.16.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 34
  %80 = ptrtoint ptr %rx_status.sroa.16.0.call158.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %rx_status.sroa.16.0.call158.sroa_idx, align 2
  %rx_status.sroa.16212.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 36
  %81 = ptrtoint ptr %rx_status.sroa.16212.0.call158.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv143, ptr %rx_status.sroa.16212.0.call158.sroa_idx, align 4
  %rx_status.sroa.17.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 37
  %82 = ptrtoint ptr %rx_status.sroa.17.0.call158.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv49, ptr %rx_status.sroa.17.0.call158.sroa_idx, align 1
  %rx_status.sroa.18.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 38
  %83 = ptrtoint ptr %rx_status.sroa.18.0.call158.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %signal.1, ptr %rx_status.sroa.18.0.call158.sroa_idx, align 2
  %rx_status.sroa.19.0.call158.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 39
  %84 = call ptr @memset(ptr %rx_status.sroa.19.0.call158.sroa_idx, i32 0, i32 9)
  tail call void @ieee80211_rx_irqsafe(ptr noundef %dev, ptr noundef %9) #8
  %85 = ptrtoint ptr %rx_idx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_idx, align 4
  %arrayidx161 = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 9, i32 %86
  %87 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i.i, ptr %arrayidx161, align 4
  %cb162 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %cb162 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i, ptr %cb162, align 8
  br label %cleanup179

cleanup179:                                       ; preds = %sw.epilog, %if.then40, %if.else21.cleanup179_crit_edge, %if.end15.cleanup179_crit_edge
  %skb.1 = phi ptr [ %9, %if.end15.cleanup179_crit_edge ], [ %9, %if.then40 ], [ %call.i.i, %sw.epilog ], [ %9, %if.else21.cleanup179_crit_edge ]
  %signal.3 = phi i8 [ %signal.0275, %if.end15.cleanup179_crit_edge ], [ %signal.0275, %if.then40 ], [ %signal.1, %sw.epilog ], [ %signal.0275, %if.else21.cleanup179_crit_edge ]
  %cb166 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3
  %89 = ptrtoint ptr %cb166 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cb166, align 8
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %rx_buf168 = getelementptr inbounds %struct.rtl818x_rx_cmd_desc, ptr %add.ptr, i32 0, i32 2
  %92 = ptrtoint ptr %rx_buf168 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %rx_buf168, align 1
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 822673536, ptr %add.ptr, align 1
  %94 = ptrtoint ptr %rx_idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %95)
  %cmp171 = icmp eq i32 %95, 31
  %spec.store.select = select i1 %cmp171, i32 822673600, i32 822673536
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %spec.store.select, ptr %add.ptr, align 1
  %97 = ptrtoint ptr %rx_idx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_idx, align 4
  %add = add i32 %98, 1
  %rem = and i32 %add, 31
  store i32 %rem, ptr %rx_idx, align 4
  %dec = add nsw i32 %dec276, -1
  %tobool.not = icmp eq i32 %dec276, 0
  br i1 %tobool.not, label %cleanup179.cleanup187_crit_edge, label %cleanup179.while.body_crit_edge

cleanup179.while.body_crit_edge:                  ; preds = %cleanup179
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup179.cleanup187_crit_edge:                  ; preds = %cleanup179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup187

cleanup187:                                       ; preds = %cleanup179.cleanup187_crit_edge, %if.end.cleanup187_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_beacon_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @ieee80211_queue_stopped(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %work, i32 -852
  %call.i22 = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %1, ptr noundef %add.ptr3, ptr noundef null, ptr noundef null) #8
  %tobool6.not = icmp eq ptr %call.i22, null
  br i1 %tobool6.not, label %if.end.if.else.i_crit_edge, label %if.end8

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i22, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %TSFT.i = getelementptr inbounds %struct.rtl818x_csr, ptr %7, i32 0, i32 5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TSFT.i) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %arrayidx4.i = getelementptr %struct.rtl818x_csr, ptr %10, i32 0, i32 5, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx4.i) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %12 = zext i32 %11 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %u, align 2
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i22, i32 0, i32 10
  %17 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %queue_mapping1.i, align 8
  tail call void @rtl8180_tx(ptr noundef %1, ptr noundef null, ptr noundef nonnull %call.i22)
  br label %if.else.i

if.else.i:                                        ; preds = %if.end8, %if.end.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %beacon_int = getelementptr i8, ptr %work, i32 -818
  %18 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %19 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef %call3.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_queue_stopped(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8187se_conf_ac_parm(ptr nocapture noundef readonly %dev, i8 noundef zeroext %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %idxprom = zext i8 %queue to i32
  %arrayidx = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 14, i32 %idxprom
  %cw_min2 = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 14, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %cw_min2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cw_min2, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #8, !range !193
  %cw_max4 = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 14, i32 %idxprom, i32 2
  %5 = ptrtoint ptr %cw_max4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cw_max4, align 2
  %conv5 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i46 = icmp eq i16 %6, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv5, i1 true) #8, !range !193
  %aifs8 = getelementptr %struct.rtl8180_priv, ptr %1, i32 0, i32 14, i32 %idxprom, i32 3
  %8 = ptrtoint ptr %aifs8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aifs8, align 2
  %slot_time = getelementptr inbounds %struct.rtl8180_priv, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %slot_time to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %slot_time, align 4
  %mul = mul i8 %11, %9
  %add = add i8 %mul, 10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %14 = and i16 %13, 255
  %conv14 = zext i16 %14 to i32
  %shl = shl nuw nsw i32 %conv14, 16
  %.neg = mul nuw nsw i32 %7, 1044480
  %sub.i47.op = add nuw nsw i32 %.neg, 131072
  %sub.i47.op.op = and i32 %sub.i47.op, 1044480
  %shl16 = select i1 %tobool.not.i46, i32 0, i32 %sub.i47.op.op
  %.neg49 = mul nuw nsw i32 %4, 65280
  %sub.i.op = add nuw nsw i32 %.neg49, 8192
  %sub.i.op.op = and i32 %sub.i.op, 65280
  %shl18 = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %conv20 = zext i8 %add to i32
  %or = or i32 %shl18, %conv20
  %or19 = or i32 %or, %shl16
  %or22 = or i32 %or19, %shl
  %15 = zext i8 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %queue, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 2, label %sw.bb24
    i8 1, label %sw.bb26
    i8 0, label %sw.bb28
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.rtl818x_csr, ptr %17, i32 0, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or22) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #8, !srcloc !177
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr inbounds %struct.rtl818x_csr, ptr %21, i32 0, i32 85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or22) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %23) #8, !srcloc !177
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr inbounds %struct.rtl818x_csr, ptr %25, i32 0, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %or22) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %27) #8, !srcloc !177
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %AC_VO_PARAM = getelementptr inbounds %struct.rtl818x_csr, ptr %29, i32 0, i32 83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or22) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %AC_VO_PARAM, i32 %30) #8, !srcloc !177
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_eeprom_register_read(ptr nocapture noundef %eeprom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %3, i32 0, i32 20
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %and = and i8 %4, 2
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %5 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and, ptr %reg_data_in, align 1
  %and3 = and i8 %4, 1
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %6 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %and3, ptr %reg_data_out, align 2
  %and6 = and i8 %4, 4
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %7 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and6, ptr %reg_data_clock, align 1
  %8 = and i8 %4, 8
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %9 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %reg_chip_select, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8180_eeprom_register_write(ptr nocapture noundef readonly %eeprom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %2 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_data_in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i8 -128, i8 -126
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %4 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_data_out, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp ne i8 %5, 0
  %6 = zext i1 %tobool2.not to i8
  %reg.1 = or i8 %spec.select, %6
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %7 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_data_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  %9 = or i8 %reg.1, 4
  %reg.2 = select i1 %tobool8.not, i8 %reg.1, i8 %9
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %10 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  %12 = or i8 %reg.2, 8
  %reg.3 = select i1 %tobool14.not, i8 %reg.2, i8 %12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %EEPROM_CMD = getelementptr inbounds %struct.rtl818x_csr, ptr %14, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EEPROM_CMD, i8 %reg.3) #8, !srcloc !181
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %EEPROM_CMD21 = getelementptr inbounds %struct.rtl818x_csr, ptr %16, i32 0, i32 20
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EEPROM_CMD21) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !139, !140, !141, !142, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !158, !159, !160, !161, !163, !165}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @__UNIQUE_ID_author350, !1, !"__UNIQUE_ID_author350", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_author351, !3, !"__UNIQUE_ID_author351", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_description352, !5, !"__UNIQUE_ID_description352", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_file353, !7, !"__UNIQUE_ID_file353", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 65, i32 1}
!8 = !{ptr @__UNIQUE_ID_license354, !7, !"__UNIQUE_ID_license354", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_rtl818x_pci__365_1986_rtl8180_driver_init6, !10, !"__initcall__kmod_rtl818x_pci__365_1986_rtl8180_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1986, i32 1}
!11 = !{ptr @__exitcall_rtl8180_driver_exit, !10, !"__exitcall_rtl8180_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rtl8180_driver, !14, !"rtl8180_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1978, i32 26}
!15 = !{ptr @rtl8180_table, !16, !"rtl8180_table", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 67, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1738, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rtl8180_probe._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @rtl8180_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1745, i32 3}
!25 = !{ptr @rtl8180_probe._entry.4, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl8180_probe._entry_ptr.6, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1755, i32 3}
!29 = !{ptr @rtl8180_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rtl8180_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1763, i32 3}
!33 = !{ptr @rtl8180_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rtl8180_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1772, i32 3}
!37 = !{ptr @rtl8180_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtl8180_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1793, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rtl8180_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @rtl8180_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1823, i32 15}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1828, i32 15}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1833, i32 15}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1838, i32 15}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1843, i32 15}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1845, i32 4}
!57 = !{ptr @rtl8180_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtl8180_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1854, i32 3}
!61 = !{ptr @rtl8180_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rtl8180_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1887, i32 20}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1889, i32 20}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1904, i32 13}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1907, i32 3}
!71 = !{ptr @rtl8180_probe._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rtl8180_probe._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1914, i32 3}
!75 = !{ptr @rtl8180_probe._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rtl8180_probe._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1921, i32 3}
!79 = !{ptr @rtl8180_probe._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @rtl8180_probe._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @rtl8180_probe.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1927, i32 2}
!83 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1931, i32 3}
!86 = !{ptr @rtl8180_probe._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rtl8180_probe._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1936, i32 2}
!90 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rtl8180_probe._entry.48, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @rtl8180_probe._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @rtl8180_ops, !94, !"rtl8180_ops", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1604, i32 35}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 481, i32 3}
!97 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @rtl8180_tx._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @rtl8180_tx._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!106 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rtl8187se_queues_map, !108, !"rtl8187se_queues_map", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 165, i32 18}
!109 = !{ptr @rtl8180_queues_map, !110, !"rtl8180_queues_map", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 190, i32 18}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1148, i32 3}
!113 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rtl8180_start._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rtl8180_start._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1011, i32 3}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rtl8180_init_rx_ring._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @rtl8180_init_rx_ring._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1025, i32 4}
!123 = !{ptr @rtl8180_init_rx_ring._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rtl8180_init_rx_ring._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1039, i32 4}
!127 = !{ptr @rtl8180_init_rx_ring._entry.64, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @rtl8180_init_rx_ring._entry_ptr.66, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1082, i32 3}
!131 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @rtl8180_init_tx_ring._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @rtl8180_init_tx_ring._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @skb_queue_head_init.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!136 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 835, i32 3}
!139 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @rtl8180_init_hw._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @rtl8180_init_hw._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @rtl8187se_interrupt.desc_err, !143, !"desc_err", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 382, i32 13}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 419, i32 4}
!146 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @rtl8187se_interrupt._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @rtl8187se_interrupt._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 269, i32 5}
!151 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @rtl8180_handle_rx._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @rtl8180_handle_rx._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @rtl8187se_lna_gain, !155, !"rtl8187se_lna_gain", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 193, i32 17}
!156 = !{ptr @rtl8180_add_interface.__key, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1349, i32 2}
!158 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @rtl8180_add_interface.__key.77, !157, !"__key", i1 false, i1 false}
!160 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @rtl818x_channels, !162, !"rtl818x_channels", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 104, i32 39}
!163 = !{ptr @rtl818x_rates, !164, !"rtl818x_rates", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 89, i32 36}
!165 = !{ptr @rtl8180_pm_ops, !166, !"rtl8180_pm_ops", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/realtek/rtl818x/rtl8180/dev.c", i32 1976, i32 8}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{i64 2151795690}
!177 = !{i64 4253568}
!178 = !{i64 4253766}
!179 = !{i64 2151793111}
!180 = !{i64 2151794716}
!181 = !{i64 4253371}
!182 = !{i64 4253986}
!183 = !{i64 2151794335}
!184 = !{i8 0, i8 2}
!185 = !{!"auto-init"}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 2157780156}
!188 = !{i64 2157780409}
!189 = !{i64 2151795140}
!190 = !{i64 4252948}
!191 = !{i64 4253148}
!192 = !{i64 2151793723}
!193 = !{i32 0, i32 33}
!194 = !{!"branch_weights", i32 1, i32 2000}
