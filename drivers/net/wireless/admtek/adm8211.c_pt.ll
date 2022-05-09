; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/admtek/adm8211.c_pt.bc'
source_filename = "../drivers/net/wireless/admtek/adm8211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ieee80211_chan_range = type { i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.128 = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.adm8211_priv = type { ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, %struct.ieee80211_low_level_stats, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.adm8211_csr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.adm8211_desc = type { i32, i32, i32, i32 }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.adm8211_eeprom = type { i16, i8, i8, [4 x i8], [6 x i8], [8 x i8], i16, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i16, i16, i16, i8, i8, i16, i16, i16, [16 x i8], i8, i8, i8, i8, [14 x i8], i16, [14 x i8], [14 x i8], [14 x i8], i16, [0 x i8] }
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
%struct.adm8211_tx_hdr = type { [6 x i8], i8, i8, i16, i16, i16, i16, i16, i16, [6 x i8], i16, i16, i8, i8, i32, i32, i32, i32, i8, i8, i16, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.adm8211_tx_ring_info = type { ptr, i32, i32 }
%struct.adm8211_rx_ring_info = type { ptr, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.131, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.131 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.132] }
%struct.anon.132 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@__UNIQUE_ID_author350 = internal constant [52 x i8] c"adm8211.author=Michael Wu <flamingice@sourmilk.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [39 x i8] c"adm8211.author=Jouni Malinen <j@w1.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [83 x i8] c"adm8211.description=Driver for IEEE 802.11b wireless cards based on ADMtek ADM8211\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [49 x i8] c"adm8211.file=drivers/net/wireless/admtek/adm8211\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [20 x i8] c"adm8211.license=GPL\00", section ".modinfo", align 1
@__param_str_tx_ring_size = internal constant [21 x i8] c"adm8211.tx_ring_size\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@tx_ring_size = internal global i32 16, section ".data..read_mostly", align 4
@__param_tx_ring_size = internal constant %struct.kernel_param { ptr @__param_str_tx_ring_size, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @tx_ring_size } }, section "__param", align 4
@__UNIQUE_ID_tx_ring_sizetype355 = internal constant [35 x i8] c"adm8211.parmtype=tx_ring_size:uint\00", section ".modinfo", align 1
@__param_str_rx_ring_size = internal constant [21 x i8] c"adm8211.rx_ring_size\00", align 1
@rx_ring_size = internal global i32 16, section ".data..read_mostly", align 4
@__param_rx_ring_size = internal constant %struct.kernel_param { ptr @__param_str_rx_ring_size, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_ring_size } }, section "__param", align 4
@__UNIQUE_ID_rx_ring_sizetype356 = internal constant [35 x i8] c"adm8211.parmtype=rx_ring_size:uint\00", section ".modinfo", align 1
@__initcall__kmod_adm8211__358_1993_adm8211_driver_init6 = internal global ptr @adm8211_driver_init, section ".initcall6.init", align 4
@adm8211_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @adm8211_pci_id_table, ptr @adm8211_probe, ptr @adm8211_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adm8211_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adm8211_driver_exit = internal global ptr @adm8211_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm8211\00", [24 x i8] zeroinitializer }, align 32
@adm8211_pci_id_table = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4279, i32 24576, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4608, i32 33281, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4887, i32 33281, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4887, i32 33297, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@adm8211_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } zeroinitializer, align 32
@adm8211_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s (adm8211): Cannot enable new PCI device\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adm8211_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/admtek/adm8211.c\00", [58 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr = internal global ptr @adm8211_probe._entry, section ".printk_index", align 4
@adm8211_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (adm8211): Too short PCI resources\0A\00", [55 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.6 = internal global ptr @adm8211_probe._entry.4, section ".printk_index", align 4
@adm8211_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s (adm8211): Invalid signature (0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.9 = internal global ptr @adm8211_probe._entry.7, section ".printk_index", align 4
@adm8211_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s (adm8211): Cannot obtain PCI resources\0A\00", [51 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.12 = internal global ptr @adm8211_probe._entry.10, section ".printk_index", align 4
@adm8211_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s (adm8211): No suitable DMA available\0A\00", [53 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.15 = internal global ptr @adm8211_probe._entry.13, section ".printk_index", align 4
@adm8211_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @adm8211_tx, ptr @adm8211_start, ptr @adm8211_stop, ptr null, ptr null, ptr null, ptr @adm8211_add_interface, ptr null, ptr @adm8211_remove_interface, ptr @adm8211_config, ptr @adm8211_bss_info_changed, ptr null, ptr null, ptr @adm8211_prepare_multicast, ptr @adm8211_configure_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adm8211_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adm8211_get_tsft, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@adm8211_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s (adm8211): ieee80211 alloc failed\0A\00", [56 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.18 = internal global ptr @adm8211_probe._entry.16, section ".printk_index", align 4
@adm8211_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@adm8211_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s (adm8211): Cannot map device memory\0A\00", [54 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.22 = internal global ptr @adm8211_probe._entry.20, section ".printk_index", align 4
@adm8211_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s (adm8211): Cannot allocate TX/RX ring\0A\00", [52 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.25 = internal global ptr @adm8211_probe._entry.23, section ".printk_index", align 4
@adm8211_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s (adm8211): Invalid hwaddr in EEPROM!\0A\00", [53 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.28 = internal global ptr @adm8211_probe._entry.26, section ".printk_index", align 4
@adm8211_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s (adm8211): Can't alloc eeprom buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.31 = internal global ptr @adm8211_probe._entry.29, section ".printk_index", align 4
@adm8211_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s (adm8211): Cannot register device\0A\00", [56 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.34 = internal global ptr @adm8211_probe._entry.32, section ".printk_index", align 4
@adm8211_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 1922, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hwaddr %pM, Rev 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adm8211_probe._entry_ptr.39 = internal global ptr @adm8211_probe._entry.35, section ".printk_index", align 4
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@adm8211_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1518, ptr @.str.45, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hardware reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adm8211_start\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@adm8211_start._entry_ptr = internal global ptr @adm8211_start._entry, section ".printk_index", align 4
@adm8211_start._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.3, i32 1524, ptr @.str.45, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to initialize rings\0A\00", [36 x i8] zeroinitializer }, align 32
@adm8211_start._entry_ptr.48 = internal global ptr @adm8211_start._entry.46, section ".printk_index", align 4
@adm8211_start._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.3, i32 1535, ptr @.str.45, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register IRQ handler\0A\00", [32 x i8] zeroinitializer }, align 32
@adm8211_start._entry_ptr.51 = internal global ptr @adm8211_start._entry.49, section ".printk_index", align 4
@adm8211_rates = internal global { [5 x %struct.ieee80211_rate], [36 x i8] } { [5 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 1, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 220, i16 0, i16 0 }], [36 x i8] zeroinitializer }, align 32
@adm8211_hw_init_bbp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 1033, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported transceiver %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adm8211_hw_init_bbp\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@adm8211_hw_init_bbp._entry_ptr = internal global ptr @adm8211_hw_init_bbp._entry, section ".printk_index", align 4
@adm8211_hw_init_bbp._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.3, i32 1037, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unsupported BBP %d\0A\00", [44 x i8] zeroinitializer }, align 32
@adm8211_hw_init_bbp._entry_ptr.57 = internal global ptr @adm8211_hw_init_bbp._entry.55, section ".printk_index", align 4
@adm8211_write_bbp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 577, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"adm8211_write_bbp(%d,%d) failed prewrite (reg=0x%08x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adm8211_write_bbp\00", [46 x i8] zeroinitializer }, align 32
@adm8211_write_bbp._entry_ptr = internal global ptr @adm8211_write_bbp._entry, section ".printk_index", align 4
@adm8211_write_bbp._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 612, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"adm8211_write_bbp(%d,%d) failed postwrite (reg=0x%08x)\0A\00", [40 x i8] zeroinitializer }, align 32
@adm8211_write_bbp._entry_ptr.62 = internal global ptr @adm8211_write_bbp._entry.60, section ".printk_index", align 4
@adm8211_rf_set_channel.adm8211_rfmd2958_reg5 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8893, i32 8914, i32 8936, i32 8958, i32 8980, i32 9002, i32 9024, i32 9045, i32 9067, i32 9089, i32 9111, i32 9133, i32 9154, i32 9207], [40 x i8] zeroinitializer }, align 32
@adm8211_rf_set_channel.adm8211_rfmd2958_reg6 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 23831, i32 238312, i32 190650, i32 142987, i32 95325, i32 47662, i32 0, i32 214481, i32 166818, i32 119156, i32 71493, i32 23831, i32 238312, i32 71493], [40 x i8] zeroinitializer }, align 32
@adm8211_rf_set_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 681, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unsupported transceiver type %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adm8211_rf_set_channel\00", [41 x i8] zeroinitializer }, align 32
@adm8211_rf_set_channel._entry_ptr = internal global ptr @adm8211_rf_set_channel._entry, section ".printk_index", align 4
@adm8211_rf_set_channel._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 738, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported BBP type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@adm8211_rf_set_channel._entry_ptr.67 = internal global ptr @adm8211_rf_set_channel._entry.65, section ".printk_index", align 4
@adm8211_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 480, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adm8211_interrupt\00", [46 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr = internal global ptr @adm8211_interrupt._entry, section ".printk_index", align 4
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCF\00", [28 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 481, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.72 = internal global ptr @adm8211_interrupt._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BCNTC\00", [26 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 482, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.75 = internal global ptr @adm8211_interrupt._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPINT\00", [26 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 483, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.78 = internal global ptr @adm8211_interrupt._entry.77, section ".printk_index", align 4
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ATIMTC\00", [25 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 484, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.81 = internal global ptr @adm8211_interrupt._entry.80, section ".printk_index", align 4
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TSFTF\00", [26 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 485, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.84 = internal global ptr @adm8211_interrupt._entry.83, section ".printk_index", align 4
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TSCZ\00", [27 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 486, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.87 = internal global ptr @adm8211_interrupt._entry.86, section ".printk_index", align 4
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SQL\00", [28 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 487, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.90 = internal global ptr @adm8211_interrupt._entry.89, section ".printk_index", align 4
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WEPTD\00", [26 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 488, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.93 = internal global ptr @adm8211_interrupt._entry.92, section ".printk_index", align 4
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATIME\00", [26 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 489, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.96 = internal global ptr @adm8211_interrupt._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEIS\00", [27 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 490, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.99 = internal global ptr @adm8211_interrupt._entry.98, section ".printk_index", align 4
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FBE\00", [28 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 491, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.102 = internal global ptr @adm8211_interrupt._entry.101, section ".printk_index", align 4
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REIS\00", [27 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 492, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.105 = internal global ptr @adm8211_interrupt._entry.104, section ".printk_index", align 4
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPTT\00", [27 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 493, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.108 = internal global ptr @adm8211_interrupt._entry.107, section ".printk_index", align 4
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RPS\00", [28 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 494, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.111 = internal global ptr @adm8211_interrupt._entry.110, section ".printk_index", align 4
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RDU\00", [28 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 495, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.114 = internal global ptr @adm8211_interrupt._entry.113, section ".printk_index", align 4
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TUF\00", [28 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 496, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@adm8211_interrupt._entry_ptr.117 = internal global ptr @adm8211_interrupt._entry.116, section ".printk_index", align 4
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TPS\00", [28 x i8] zeroinitializer }, align 32
@adm8211_interrupt_rci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 373, ptr @.str.54, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"frame too long (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adm8211_interrupt_rci\00", [42 x i8] zeroinitializer }, align 32
@adm8211_interrupt_rci._entry_ptr = internal global ptr @adm8211_interrupt_rci._entry, section ".printk_index", align 4
@adm8211_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adm8211_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s (adm8211): Unknown RFtype %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adm8211_read_eeprom\00", [44 x i8] zeroinitializer }, align 32
@adm8211_read_eeprom._entry_ptr = internal global ptr @adm8211_read_eeprom._entry, section ".printk_index", align 4
@adm8211_read_eeprom._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s (adm8211): Unknown BBPtype: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@adm8211_read_eeprom._entry_ptr.125 = internal global ptr @adm8211_read_eeprom._entry.123, section ".printk_index", align 4
@adm8211_read_eeprom._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s (adm8211): Invalid country code (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@adm8211_read_eeprom._entry_ptr.128 = internal global ptr @adm8211_read_eeprom._entry.126, section ".printk_index", align 4
@cranges = internal constant { [7 x %struct.ieee80211_chan_range], [18 x i8] } { [7 x %struct.ieee80211_chan_range] [%struct.ieee80211_chan_range { i8 1, i8 11 }, %struct.ieee80211_chan_range { i8 1, i8 11 }, %struct.ieee80211_chan_range { i8 1, i8 13 }, %struct.ieee80211_chan_range { i8 10, i8 11 }, %struct.ieee80211_chan_range { i8 10, i8 13 }, %struct.ieee80211_chan_range { i8 14, i8 14 }, %struct.ieee80211_chan_range { i8 1, i8 14 }], [18 x i8] zeroinitializer }, align 32
@adm8211_read_eeprom._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.122, ptr @.str.3, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s (adm8211): Channel range: %d - %d\0A\00", [56 x i8] zeroinitializer }, align 32
@adm8211_read_eeprom._entry_ptr.131 = internal global ptr @adm8211_read_eeprom._entry.129, section ".printk_index", align 4
@adm8211_read_eeprom._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.122, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s (adm8211): Unknown specific BBP: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@adm8211_read_eeprom._entry_ptr.134 = internal global ptr @adm8211_read_eeprom._entry.132, section ".printk_index", align 4
@adm8211_read_eeprom._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.122, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s (adm8211): Unknown transceiver: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@adm8211_read_eeprom._entry_ptr.137 = internal global ptr @adm8211_read_eeprom._entry.135, section ".printk_index", align 4
@adm8211_read_eeprom._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.122, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s (adm8211): RFtype=%d BBPtype=%d Specific BBP=%d Transceiver=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@adm8211_read_eeprom._entry_ptr.140 = internal global ptr @adm8211_read_eeprom._entry.138, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2181108503, i64 2182157079]
@__sancov_gen_cov_switch_values.141 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.142 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.144 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 8, i64 12]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 8, i64 17, i64 32, i64 48]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.151 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 8, i64 12]
@__sancov_gen_cov_switch_values.152 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 8, i64 12]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 5]
@__sancov_gen_cov_switch_values.154 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 8, i64 12]
@__sancov_gen_cov_switch_values.155 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 8, i64 12]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 5]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"adm8211_driver\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1985, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1993, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"adm8211_pci_id_table\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 39, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant [15 x i8] c"adm8211_pm_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1982, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1788, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1796, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1806, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1814, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1821, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"adm8211_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1761, i32 35 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1830, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1838, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1849, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1860, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1870, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1903, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1916, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1921, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 2737, i32 6 }
@___asan_gen_.271 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 326, i32 6 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1518, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1524, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1535, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [14 x i8] c"adm8211_rates\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 48, i32 30 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1032, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 1037, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 575, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 610, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [22 x i8] c"adm8211_rfmd2958_reg5\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 621, i32 19 }
@___asan_gen_.336 = private unnamed_addr constant [22 x i8] c"adm8211_rfmd2958_reg6\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 624, i32 19 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 680, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 737, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 480, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 481, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 482, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 483, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 484, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 485, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 486, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 487, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 488, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 489, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 490, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 491, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 492, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 493, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 494, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 495, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 496, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 372, i32 5 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"adm8211_channels\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 56, i32 39 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 148, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 166, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 171, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [8 x i8] c"cranges\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/admtek/adm8211.h\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 593, i32 42 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 178, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 206, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 227, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.520 = private constant [41 x i8] c"../drivers/net/wireless/admtek/adm8211.c\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 233, i32 2 }
@llvm.compiler.used = appending global [179 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__UNIQUE_ID_rx_ring_sizetype356, ptr @__UNIQUE_ID_tx_ring_sizetype355, ptr @__exitcall_adm8211_driver_exit, ptr @__initcall__kmod_adm8211__358_1993_adm8211_driver_init6, ptr @__param_rx_ring_size, ptr @__param_tx_ring_size, ptr @adm8211_driver_exit, ptr @adm8211_hw_init_bbp._entry, ptr @adm8211_hw_init_bbp._entry.55, ptr @adm8211_hw_init_bbp._entry_ptr, ptr @adm8211_hw_init_bbp._entry_ptr.57, ptr @adm8211_interrupt._entry, ptr @adm8211_interrupt._entry.101, ptr @adm8211_interrupt._entry.104, ptr @adm8211_interrupt._entry.107, ptr @adm8211_interrupt._entry.110, ptr @adm8211_interrupt._entry.113, ptr @adm8211_interrupt._entry.116, ptr @adm8211_interrupt._entry.71, ptr @adm8211_interrupt._entry.74, ptr @adm8211_interrupt._entry.77, ptr @adm8211_interrupt._entry.80, ptr @adm8211_interrupt._entry.83, ptr @adm8211_interrupt._entry.86, ptr @adm8211_interrupt._entry.89, ptr @adm8211_interrupt._entry.92, ptr @adm8211_interrupt._entry.95, ptr @adm8211_interrupt._entry.98, ptr @adm8211_interrupt._entry_ptr, ptr @adm8211_interrupt._entry_ptr.102, ptr @adm8211_interrupt._entry_ptr.105, ptr @adm8211_interrupt._entry_ptr.108, ptr @adm8211_interrupt._entry_ptr.111, ptr @adm8211_interrupt._entry_ptr.114, ptr @adm8211_interrupt._entry_ptr.117, ptr @adm8211_interrupt._entry_ptr.72, ptr @adm8211_interrupt._entry_ptr.75, ptr @adm8211_interrupt._entry_ptr.78, ptr @adm8211_interrupt._entry_ptr.81, ptr @adm8211_interrupt._entry_ptr.84, ptr @adm8211_interrupt._entry_ptr.87, ptr @adm8211_interrupt._entry_ptr.90, ptr @adm8211_interrupt._entry_ptr.93, ptr @adm8211_interrupt._entry_ptr.96, ptr @adm8211_interrupt._entry_ptr.99, ptr @adm8211_interrupt_rci._entry, ptr @adm8211_interrupt_rci._entry_ptr, ptr @adm8211_probe._entry, ptr @adm8211_probe._entry.10, ptr @adm8211_probe._entry.13, ptr @adm8211_probe._entry.16, ptr @adm8211_probe._entry.20, ptr @adm8211_probe._entry.23, ptr @adm8211_probe._entry.26, ptr @adm8211_probe._entry.29, ptr @adm8211_probe._entry.32, ptr @adm8211_probe._entry.35, ptr @adm8211_probe._entry.4, ptr @adm8211_probe._entry.7, ptr @adm8211_probe._entry_ptr, ptr @adm8211_probe._entry_ptr.12, ptr @adm8211_probe._entry_ptr.15, ptr @adm8211_probe._entry_ptr.18, ptr @adm8211_probe._entry_ptr.22, ptr @adm8211_probe._entry_ptr.25, ptr @adm8211_probe._entry_ptr.28, ptr @adm8211_probe._entry_ptr.31, ptr @adm8211_probe._entry_ptr.34, ptr @adm8211_probe._entry_ptr.39, ptr @adm8211_probe._entry_ptr.6, ptr @adm8211_probe._entry_ptr.9, ptr @adm8211_read_eeprom._entry, ptr @adm8211_read_eeprom._entry.123, ptr @adm8211_read_eeprom._entry.126, ptr @adm8211_read_eeprom._entry.129, ptr @adm8211_read_eeprom._entry.132, ptr @adm8211_read_eeprom._entry.135, ptr @adm8211_read_eeprom._entry.138, ptr @adm8211_read_eeprom._entry_ptr, ptr @adm8211_read_eeprom._entry_ptr.125, ptr @adm8211_read_eeprom._entry_ptr.128, ptr @adm8211_read_eeprom._entry_ptr.131, ptr @adm8211_read_eeprom._entry_ptr.134, ptr @adm8211_read_eeprom._entry_ptr.137, ptr @adm8211_read_eeprom._entry_ptr.140, ptr @adm8211_rf_set_channel._entry, ptr @adm8211_rf_set_channel._entry.65, ptr @adm8211_rf_set_channel._entry_ptr, ptr @adm8211_rf_set_channel._entry_ptr.67, ptr @adm8211_start._entry, ptr @adm8211_start._entry.46, ptr @adm8211_start._entry.49, ptr @adm8211_start._entry_ptr, ptr @adm8211_start._entry_ptr.48, ptr @adm8211_start._entry_ptr.51, ptr @adm8211_write_bbp._entry, ptr @adm8211_write_bbp._entry.60, ptr @adm8211_write_bbp._entry_ptr, ptr @adm8211_write_bbp._entry_ptr.62, ptr @adm8211_driver, ptr @.str, ptr @adm8211_pci_id_table, ptr @adm8211_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @adm8211_ops, ptr @.str.17, ptr @adm8211_probe.__key, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @adm8211_rates, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @adm8211_rf_set_channel.adm8211_rfmd2958_reg5, ptr @adm8211_rf_set_channel.adm8211_rfmd2958_reg6, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @adm8211_channels, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @cranges, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_pci_id_table to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_start._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_start._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_rates to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_hw_init_bbp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_hw_init_bbp._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_write_bbp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_write_bbp._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_rf_set_channel.adm8211_rfmd2958_reg5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_rf_set_channel.adm8211_rfmd2958_reg6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_rf_set_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_rf_set_channel._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_interrupt_rci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_read_eeprom._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_read_eeprom._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cranges to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_read_eeprom._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_read_eeprom._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_read_eeprom._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm8211_read_eeprom._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm8211_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @adm8211_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm8211_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @adm8211_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm8211_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %perm_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #12
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !262
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %perm_addr) #12
  %1 = getelementptr inbounds [6 x i8], ptr %perm_addr, i32 0, i32 4
  %2 = call ptr @memset(ptr %perm_addr, i32 255, i32 6)
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %sub = add i32 %8, 1
  %add = sub i32 %sub, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %end10 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %11 = ptrtoint ptr %end10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %cond.end.do.end29_crit_edge, label %cond.end22

cond.end.do.end29_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

cond.end22:                                       ; preds = %cond.end
  %arrayidx9 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9, align 8
  %sub20 = sub i32 %12, %14
  %add21 = add i32 %sub20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cond)
  %cmp24 = icmp ult i32 %cond, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add21)
  %cmp25 = icmp ult i32 %add21, 1024
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp25
  br i1 %or.cond, label %cond.end22.do.end29_crit_edge, label %if.end33

cond.end22.do.end29_crit_edge:                    ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.end29:                                         ; preds = %cond.end22.do.end29_crit_edge, %cond.end.do.end29_crit_edge
  %init_name.i.i276 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i276 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i276, align 8
  %tobool.not.i.i277 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i277, label %if.end.i.i279, label %do.end29.pci_name.exit281_crit_edge

do.end29.pci_name.exit281_crit_edge:              ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit281

if.end.i.i279:                                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i278 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %17 = ptrtoint ptr %dev.i278 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i278, align 4
  br label %pci_name.exit281

pci_name.exit281:                                 ; preds = %if.end.i.i279, %do.end29.pci_name.exit281_crit_edge
  %retval.0.i.i280 = phi ptr [ %18, %if.end.i.i279 ], [ %16, %do.end29.pci_name.exit281_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i280) #15
  br label %err_disable_pdev

if.end33:                                         ; preds = %cond.end22
  %call34 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 128, ptr noundef nonnull %reg) #12
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end40 [
    i32 -2113858793, label %if.end33.if.end44_crit_edge
    i32 -2112810217, label %if.end33.if.end44_crit_edge344
  ]

if.end33.if.end44_crit_edge344:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.end40:                                         ; preds = %if.end33
  %init_name.i.i282 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i282 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i282, align 8
  %tobool.not.i.i283 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i283, label %if.end.i.i285, label %do.end40.pci_name.exit287_crit_edge

do.end40.pci_name.exit287_crit_edge:              ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit287

if.end.i.i285:                                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i284 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %24 = ptrtoint ptr %dev.i284 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i284, align 4
  br label %pci_name.exit287

pci_name.exit287:                                 ; preds = %if.end.i.i285, %do.end40.pci_name.exit287_crit_edge
  %retval.0.i.i286 = phi ptr [ %25, %if.end.i.i285 ], [ %23, %do.end40.pci_name.exit287_crit_edge ]
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i286, i32 noundef %20) #15
  br label %err_disable_pdev

if.end44:                                         ; preds = %if.end33.if.end44_crit_edge, %if.end33.if.end44_crit_edge344
  %call45 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end54, label %do.end50

do.end50:                                         ; preds = %if.end44
  %init_name.i.i288 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i288 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i288, align 8
  %tobool.not.i.i289 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i289, label %if.end.i.i291, label %do.end50.pci_name.exit293_crit_edge

do.end50.pci_name.exit293_crit_edge:              ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit293

if.end.i.i291:                                    ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i290 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i290 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i290, align 4
  br label %pci_name.exit293

pci_name.exit293:                                 ; preds = %if.end.i.i291, %do.end50.pci_name.exit293_crit_edge
  %retval.0.i.i292 = phi ptr [ %29, %if.end.i.i291 ], [ %27, %do.end50.pci_name.exit293_crit_edge ]
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i292) #15
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = call i32 @dma_set_mask(ptr noundef %dev55, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end65, label %do.end61

do.end61:                                         ; preds = %if.end54
  %init_name.i.i294 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %30 = ptrtoint ptr %init_name.i.i294 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i294, align 8
  %tobool.not.i.i295 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i295, label %if.end.i.i297, label %do.end61.pci_name.exit299_crit_edge

do.end61.pci_name.exit299_crit_edge:              ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit299

if.end.i.i297:                                    ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev55, align 4
  br label %pci_name.exit299

pci_name.exit299:                                 ; preds = %if.end.i.i297, %do.end61.pci_name.exit299_crit_edge
  %retval.0.i.i298 = phi ptr [ %33, %if.end.i.i297 ], [ %31, %do.end61.pci_name.exit299_crit_edge ]
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i298) #15
  br label %err_free_reg

if.end65:                                         ; preds = %if.end54
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev55, i64 noundef 4294967295) #12
  call void @pci_set_master(ptr noundef %pdev) #12
  %call.i300 = call ptr @ieee80211_alloc_hw_nm(i32 noundef 1028, ptr noundef nonnull @adm8211_ops, ptr noundef null) #12
  %tobool67.not = icmp eq ptr %call.i300, null
  br i1 %tobool67.not, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end65
  %init_name.i.i301 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %34 = ptrtoint ptr %init_name.i.i301 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i301, align 8
  %tobool.not.i.i302 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i302, label %if.end.i.i304, label %do.end71.pci_name.exit306_crit_edge

do.end71.pci_name.exit306_crit_edge:              ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit306

if.end.i.i304:                                    ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev55, align 4
  br label %pci_name.exit306

pci_name.exit306:                                 ; preds = %if.end.i.i304, %do.end71.pci_name.exit306_crit_edge
  %retval.0.i.i305 = phi ptr [ %37, %if.end.i.i304 ], [ %35, %do.end71.pci_name.exit306_crit_edge ]
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i305) #15
  br label %err_free_reg

if.end75:                                         ; preds = %if.end65
  %priv76 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i300, i32 0, i32 3
  %38 = ptrtoint ptr %priv76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv76, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pdev, ptr %39, align 4
  %lock = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @adm8211_probe.__key, i16 noundef signext 3) #12
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i300, i32 0, i32 1
  %41 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 56, i32 1
  %43 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev55, ptr %parent.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i300, ptr %driver_data.i.i, align 4
  %call83 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef %add21) #12
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 2
  %45 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call83, ptr %map, align 4
  %tobool85.not = icmp eq ptr %call83, null
  br i1 %tobool85.not, label %if.end89, label %if.end75.if.end99_crit_edge

if.end75.if.end99_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end89:                                         ; preds = %if.end75
  %call87 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %cond) #12
  %46 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call87, ptr %map, align 4
  %tobool91.not = icmp eq ptr %call87, null
  br i1 %tobool91.not, label %do.end95, label %if.end89.if.end99_crit_edge

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

do.end95:                                         ; preds = %if.end89
  %init_name.i.i307 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %47 = ptrtoint ptr %init_name.i.i307 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i307, align 8
  %tobool.not.i.i308 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i308, label %if.end.i.i310, label %do.end95.pci_name.exit312_crit_edge

do.end95.pci_name.exit312_crit_edge:              ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit312

if.end.i.i310:                                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev55, align 4
  br label %pci_name.exit312

pci_name.exit312:                                 ; preds = %if.end.i.i310, %do.end95.pci_name.exit312_crit_edge
  %retval.0.i.i311 = phi ptr [ %50, %if.end.i.i310 ], [ %48, %do.end95.pci_name.exit312_crit_edge ]
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i311) #15
  br label %err_free_dev

if.end99:                                         ; preds = %if.end89.if.end99_crit_edge, %if.end75.if.end99_crit_edge
  %51 = load i32, ptr @rx_ring_size, align 4
  %rx_ring_size = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 9
  %52 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %rx_ring_size, align 4
  %53 = load i32, ptr @tx_ring_size, align 4
  %tx_ring_size = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 10
  %54 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tx_ring_size, align 4
  %call100 = call fastcc i32 @adm8211_alloc_rings(ptr noundef nonnull %call.i300)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end109, label %do.end105

do.end105:                                        ; preds = %if.end99
  %init_name.i.i313 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %55 = ptrtoint ptr %init_name.i.i313 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i313, align 8
  %tobool.not.i.i314 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i314, label %if.end.i.i316, label %do.end105.pci_name.exit318_crit_edge

do.end105.pci_name.exit318_crit_edge:             ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit318

if.end.i.i316:                                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev55, align 4
  br label %pci_name.exit318

pci_name.exit318:                                 ; preds = %if.end.i.i316, %do.end105.pci_name.exit318_crit_edge
  %retval.0.i.i317 = phi ptr [ %58, %if.end.i.i316 ], [ %56, %do.end105.pci_name.exit318_crit_edge ]
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %retval.0.i.i317) #15
  br label %err_iounmap

if.end109:                                        ; preds = %if.end99
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 4
  %PAR0 = getelementptr inbounds %struct.adm8211_csr, ptr %60, i32 0, i32 37
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PAR0) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %62 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %perm_addr, align 4
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 4
  %PAR1 = getelementptr inbounds %struct.adm8211_csr, ptr %64, i32 0, i32 38
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PAR1) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %66 = lshr i32 %65, 16
  %67 = trunc i32 %66 to i16
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %1, align 4
  %69 = and i32 %61, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.not.i = icmp eq i32 %69, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end109.do.end120_crit_edge

if.end109.do.end120_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end120

is_valid_ether_addr.exit:                         ; preds = %if.end109
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %1, align 4
  %conv.i.i = zext i16 %71 to i32
  %or.i.i = or i32 %61, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end120_crit_edge, label %is_valid_ether_addr.exit.if.end125_crit_edge

is_valid_ether_addr.exit.if.end125_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

is_valid_ether_addr.exit.do.end120_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end120

do.end120:                                        ; preds = %is_valid_ether_addr.exit.do.end120_crit_edge, %if.end109.do.end120_crit_edge
  %init_name.i.i319 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %72 = ptrtoint ptr %init_name.i.i319 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i319, align 8
  %tobool.not.i.i320 = icmp eq ptr %73, null
  br i1 %tobool.not.i.i320, label %if.end.i.i322, label %do.end120.pci_name.exit324_crit_edge

do.end120.pci_name.exit324_crit_edge:             ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit324

if.end.i.i322:                                    ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev55, align 4
  br label %pci_name.exit324

pci_name.exit324:                                 ; preds = %if.end.i.i322, %do.end120.pci_name.exit324_crit_edge
  %retval.0.i.i323 = phi ptr [ %75, %if.end.i.i322 ], [ %73, %do.end120.pci_name.exit324_crit_edge ]
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %retval.0.i.i323) #15
  call void @get_random_bytes(ptr noundef nonnull %perm_addr, i32 noundef 6) #12
  %76 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %perm_addr, align 4
  %78 = and i8 %77, -4
  %79 = or i8 %78, 2
  store i8 %79, ptr %perm_addr, align 4
  br label %if.end125

if.end125:                                        ; preds = %pci_name.exit324, %is_valid_ether_addr.exit.if.end125_crit_edge
  %80 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %81, i32 0, i32 1
  %82 = call ptr @memcpy(ptr %perm_addr.i, ptr %perm_addr, i32 6)
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i300, i32 0, i32 5
  %83 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 56, ptr %extra_tx_headroom, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i300, i32 0, i32 4
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i, align 4
  %or.i.i326 = or i32 %85, 8
  store i32 %or.i.i326, ptr %flags.i, align 4
  %86 = load ptr, ptr %wiphy.i, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 4, ptr %interface_modes, align 4
  %max_signal = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i300, i32 0, i32 13
  %88 = ptrtoint ptr %max_signal to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 100, ptr %max_signal, align 8
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i300, i32 0, i32 11
  %89 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %queues, align 4
  %retry_limit = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 21
  %90 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 3, ptr %retry_limit, align 1
  %ant_power = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 22
  %91 = ptrtoint ptr %ant_power to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 64, ptr %ant_power, align 4
  %tx_power = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 23
  %92 = ptrtoint ptr %tx_power to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 64, ptr %tx_power, align 1
  %lpf_cutoff = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 24
  %93 = ptrtoint ptr %lpf_cutoff to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %lpf_cutoff, align 2
  %lnags_threshold = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 25
  %94 = ptrtoint ptr %lnags_threshold to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %lnags_threshold, align 1
  %mode = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 17
  %95 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %mode, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %96 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %97)
  %cmp128 = icmp ugt i8 %97, 31
  br i1 %cmp128, label %if.then130, label %if.end125.if.end140_crit_edge

if.end125.if.end140_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

if.then130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map, align 4
  %FRCTL = getelementptr inbounds %struct.adm8211_csr, ptr %99, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %FRCTL, i32 0) #12, !srcloc !266
  %100 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %map, align 4
  %FRCTL133 = getelementptr inbounds %struct.adm8211_csr, ptr %101, i32 0, i32 1
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FRCTL133) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %103 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map, align 4
  %FRCTL136 = getelementptr inbounds %struct.adm8211_csr, ptr %104, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %FRCTL136, i32 16777216) #12, !srcloc !266
  %105 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %map, align 4
  %FRCTL138 = getelementptr inbounds %struct.adm8211_csr, ptr %106, i32 0, i32 1
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FRCTL138) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 100) #12
  br label %if.end140

if.end140:                                        ; preds = %if.then130, %if.end125.if.end140_crit_edge
  %call141 = call fastcc i32 @adm8211_read_eeprom(ptr noundef nonnull %call.i300)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end150, label %do.end146

do.end146:                                        ; preds = %if.end140
  %init_name.i.i327 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %108 = ptrtoint ptr %init_name.i.i327 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_name.i.i327, align 8
  %tobool.not.i.i328 = icmp eq ptr %109, null
  br i1 %tobool.not.i.i328, label %if.end.i.i330, label %do.end146.pci_name.exit332_crit_edge

do.end146.pci_name.exit332_crit_edge:             ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit332

if.end.i.i330:                                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev55, align 4
  br label %pci_name.exit332

pci_name.exit332:                                 ; preds = %if.end.i.i330, %do.end146.pci_name.exit332_crit_edge
  %retval.0.i.i331 = phi ptr [ %111, %if.end.i.i330 ], [ %109, %do.end146.pci_name.exit332_crit_edge ]
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i331) #15
  br label %err_free_desc

if.end150:                                        ; preds = %if.end140
  %channel = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 18
  %112 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %channel, align 4
  %band = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 15
  %113 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wiphy.i, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %114, i32 0, i32 53
  %115 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %band, ptr %bands, align 16
  %116 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %116, i32 0, i32 14, i32 1
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i, align 1
  %119 = or i8 %118, 32
  store i8 %119, ptr %arrayidx.i, align 1
  %call154 = call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i300) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %do.end166, label %do.end159

do.end159:                                        ; preds = %if.end150
  %init_name.i.i333 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %120 = ptrtoint ptr %init_name.i.i333 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %init_name.i.i333, align 8
  %tobool.not.i.i334 = icmp eq ptr %121, null
  br i1 %tobool.not.i.i334, label %if.end.i.i336, label %do.end159.pci_name.exit338_crit_edge

do.end159.pci_name.exit338_crit_edge:             ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit338

if.end.i.i336:                                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev55, align 4
  br label %pci_name.exit338

pci_name.exit338:                                 ; preds = %if.end.i.i336, %do.end159.pci_name.exit338_crit_edge
  %retval.0.i.i337 = phi ptr [ %123, %if.end.i.i336 ], [ %121, %do.end159.pci_name.exit338_crit_edge ]
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %retval.0.i.i337) #15
  %eeprom = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 26
  %124 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %eeprom, align 4
  call void @kfree(ptr noundef %125) #12
  br label %err_free_desc

do.end166:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wiphy.i, align 8
  %dev168 = getelementptr inbounds %struct.wiphy, ptr %127, i32 0, i32 56
  %perm_addr170 = getelementptr inbounds %struct.wiphy, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %revision, align 4
  %conv173 = zext i8 %129 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev168, ptr noundef nonnull @.str.36, ptr noundef %perm_addr170, i32 noundef %conv173) #15
  br label %cleanup

err_free_desc:                                    ; preds = %pci_name.exit338, %pci_name.exit332
  %err.0 = phi i32 [ %call141, %pci_name.exit332 ], [ %call154, %pci_name.exit338 ]
  %130 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_ring_size, align 4
  %132 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_ring_size, align 4
  %mul275 = add i32 %133, %131
  %add178 = shl i32 %mul275, 4
  %rx_ring = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 3
  %134 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_ring, align 4
  %rx_ring_dma = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 5
  %136 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev55, i32 noundef %add178, ptr noundef %135, i32 noundef %137, i32 noundef 0) #12
  %rx_buffers = getelementptr inbounds %struct.adm8211_priv, ptr %39, i32 0, i32 7
  %138 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rx_buffers, align 4
  call void @kfree(ptr noundef %139) #12
  br label %err_iounmap

err_iounmap:                                      ; preds = %err_free_desc, %pci_name.exit318
  %err.1 = phi i32 [ %call100, %pci_name.exit318 ], [ %err.0, %err_free_desc ]
  %140 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %map, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %141) #12
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_iounmap, %pci_name.exit312
  %err.2 = phi i32 [ %err.1, %err_iounmap ], [ -12, %pci_name.exit312 ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i300) #12
  br label %err_free_reg

err_free_reg:                                     ; preds = %err_free_dev, %pci_name.exit306, %pci_name.exit299
  %err.3 = phi i32 [ %call.i, %pci_name.exit299 ], [ %err.2, %err_free_dev ], [ -12, %pci_name.exit306 ]
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %err_free_reg, %pci_name.exit287, %pci_name.exit281
  %err.4 = phi i32 [ -12, %pci_name.exit281 ], [ -22, %pci_name.exit287 ], [ %err.3, %err_free_reg ]
  call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pdev, %do.end166, %pci_name.exit293, %pci_name.exit
  %retval.0 = phi i32 [ %call, %pci_name.exit ], [ %err.4, %err_disable_pdev ], [ %call45, %pci_name.exit293 ], [ 0, %do.end166 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %perm_addr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm8211_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ieee80211_unregister_hw(ptr noundef nonnull %1) #12
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %rx_ring_size = getelementptr inbounds %struct.adm8211_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_size, align 4
  %tx_ring_size = getelementptr inbounds %struct.adm8211_priv, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_ring_size, align 4
  %mul18 = add i32 %7, %5
  %add = shl i32 %mul18, 4
  %rx_ring = getelementptr inbounds %struct.adm8211_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ring, align 4
  %rx_ring_dma = getelementptr inbounds %struct.adm8211_priv, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %add, ptr noundef %9, i32 noundef %11, i32 noundef 0) #12
  %rx_buffers = getelementptr inbounds %struct.adm8211_priv, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buffers, align 4
  tail call void @kfree(ptr noundef %13) #12
  %eeprom = getelementptr inbounds %struct.adm8211_priv, ptr %3, i32 0, i32 26
  %14 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eeprom, align 4
  tail call void @kfree(ptr noundef %15) #12
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %17) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  tail call void @ieee80211_free_hw(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adm8211_alloc_rings(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rx_ring_size = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 9
  %tx_ring_size = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_size, align 4
  %mul2 = mul i32 %3, 12
  %4 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_size, align 4
  %mul = shl i32 %5, 3
  %add = add i32 %mul2, %mul
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #16
  %rx_buffers = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %rx_buffers, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_ring_size, align 4
  %mul6 = shl i32 %8, 3
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %mul6
  %tx_buffers = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %tx_buffers, align 4
  %10 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_ring_size, align 4
  %mul850 = add i32 %11, %8
  %add11 = shl i32 %mul850, 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %rx_ring_dma = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 5
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev12, i32 noundef %add11, ptr noundef %rx_ring_dma, i32 noundef 3264, i32 noundef 0) #12
  %rx_ring = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %rx_ring, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_buffers, align 4
  tail call void @kfree(ptr noundef %16) #12
  %17 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rx_buffers, align 4
  %18 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx_buffers, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ring_size, align 4
  %add.ptr23 = getelementptr %struct.adm8211_desc, ptr %call.i, i32 %20
  %tx_ring = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr23, ptr %tx_ring, align 4
  %22 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_ring_dma, align 4
  %mul26 = shl i32 %20, 4
  %add27 = add i32 %23, %mul26
  %tx_ring_dma = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add27, ptr %tx_ring_dma, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -12, %if.then16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adm8211_read_eeprom(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %eeprom = alloca %struct.eeprom_93cx6, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom) #12
  %2 = getelementptr inbounds i8, ptr %eeprom, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %eeprom, align 4
  %register_read = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 1
  %5 = ptrtoint ptr %register_read to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @adm8211_eeprom_register_read, ptr %register_read, align 4
  %register_write = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 2
  %6 = ptrtoint ptr %register_write to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @adm8211_eeprom_register_write, ptr %register_write, align 4
  %width = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 3
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 5)
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %CSR_TEST0 = getelementptr inbounds %struct.adm8211_csr, ptr %10, i32 0, i32 19
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CSR_TEST0) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %. = select i1 %tobool.not, i32 6, i32 8
  %.295 = select i1 %tobool.not, i32 64, i32 256
  %13 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %., ptr %width, align 4
  %mul = shl nuw nsw i32 %.295, 1
  %eeprom_len = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %eeprom_len, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #16
  %eeprom6 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %eeprom6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %eeprom6, align 4
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %entry
  %conv = trunc i32 %.295 to i16
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom, i8 noundef zeroext 0, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv) #12
  %16 = ptrtoint ptr %eeprom6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eeprom6, align 4
  %cr4913 = getelementptr inbounds %struct.adm8211_eeprom, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %cr4913 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %cr4913, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %21 = lshr i16 %20, 3
  %22 = zext i16 %21 to i32
  %and15 = and i32 %22, 7
  %rf_type = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 29
  %23 = trunc i16 %21 to i8
  %24 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %rf_type, align 4
  %bf.shl = shl i8 %23, 5
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %rf_type, align 4
  %25 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %and15, label %sw.default [
    i32 0, label %if.end10.sw.epilog_crit_edge
    i32 1, label %if.end10.sw.epilog_crit_edge334
    i32 2, label %if.end10.sw.epilog_crit_edge335
    i32 3, label %if.end10.sw.epilog_crit_edge336
    i32 5, label %if.end10.sw.epilog_crit_edge337
  ]

if.end10.sw.epilog_crit_edge337:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end10.sw.epilog_crit_edge336:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end10.sw.epilog_crit_edge335:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end10.sw.epilog_crit_edge334:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %29)
  %cmp = icmp ult i8 %29, 48
  %storemerge294.v = select i1 %cmp, i8 32, i8 96
  %storemerge294 = or i8 %storemerge294.v, %bf.clear
  %30 = ptrtoint ptr %rf_type to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge294, ptr %rf_type, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.default.pci_name.exit_crit_edge

sw.default.pci_name.exit_crit_edge:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %sw.default.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %sw.default.pci_name.exit_crit_edge ]
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %retval.0.i.i, i32 noundef %and15) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %pci_name.exit, %if.end10.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge334, %if.end10.sw.epilog_crit_edge335, %if.end10.sw.epilog_crit_edge336, %if.end10.sw.epilog_crit_edge337
  %35 = trunc i16 %20 to i8
  %36 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load39 = load i8, ptr %rf_type, align 4
  %37 = shl i8 %35, 2
  %bf.shl41 = and i8 %37, 28
  %bf.clear42 = and i8 %bf.load39, -29
  %bf.set43 = or i8 %bf.clear42, %bf.shl41
  store i8 %bf.set43, ptr %rf_type, align 4
  %bf.clear48 = and i8 %35, 7
  %bf.cast49 = zext i8 %bf.clear48 to i32
  %38 = zext i32 %bf.cast49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %bf.cast49, label %sw.default51 [
    i32 0, label %sw.epilog.sw.epilog77_crit_edge
    i32 1, label %sw.epilog.sw.epilog77_crit_edge338
    i32 2, label %sw.epilog.sw.epilog77_crit_edge339
    i32 3, label %sw.epilog.sw.epilog77_crit_edge340
    i32 5, label %sw.epilog.sw.epilog77_crit_edge341
  ]

sw.epilog.sw.epilog77_crit_edge341:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog77

sw.epilog.sw.epilog77_crit_edge340:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog77

sw.epilog.sw.epilog77_crit_edge339:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog77

sw.epilog.sw.epilog77_crit_edge338:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog77

sw.epilog.sw.epilog77_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog77

sw.default51:                                     ; preds = %sw.epilog
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %revision53 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %revision53 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %revision53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %42)
  %cmp55 = icmp ult i8 %42, 48
  %storemerge293.v = select i1 %cmp55, i8 4, i8 20
  %storemerge293 = or i8 %storemerge293.v, %bf.clear42
  %43 = ptrtoint ptr %rf_type to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %storemerge293, ptr %rf_type, align 4
  %init_name.i.i296 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 3
  %44 = ptrtoint ptr %init_name.i.i296 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i296, align 8
  %tobool.not.i.i297 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i297, label %if.end.i.i299, label %sw.default51.pci_name.exit301_crit_edge

sw.default51.pci_name.exit301_crit_edge:          ; preds = %sw.default51
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit301

if.end.i.i299:                                    ; preds = %sw.default51
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i298 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %46 = ptrtoint ptr %dev.i298 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i298, align 4
  br label %pci_name.exit301

pci_name.exit301:                                 ; preds = %if.end.i.i299, %sw.default51.pci_name.exit301_crit_edge
  %retval.0.i.i300 = phi ptr [ %47, %if.end.i.i299 ], [ %45, %sw.default51.pci_name.exit301_crit_edge ]
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %retval.0.i.i300, i32 noundef %22) #15
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %pci_name.exit301, %sw.epilog.sw.epilog77_crit_edge, %sw.epilog.sw.epilog77_crit_edge338, %sw.epilog.sw.epilog77_crit_edge339, %sw.epilog.sw.epilog77_crit_edge340, %sw.epilog.sw.epilog77_crit_edge341
  %48 = ptrtoint ptr %eeprom6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %eeprom6, align 4
  %country_code = getelementptr inbounds %struct.adm8211_eeprom, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %country_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %51)
  %cmp80 = icmp ugt i8 %51, 6
  br i1 %cmp80, label %do.end85, label %if.else93

do.end85:                                         ; preds = %sw.epilog77
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %init_name.i.i302 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44, i32 3
  %54 = ptrtoint ptr %init_name.i.i302 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i302, align 8
  %tobool.not.i.i303 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i303, label %if.end.i.i305, label %do.end85.pci_name.exit307_crit_edge

do.end85.pci_name.exit307_crit_edge:              ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit307

if.end.i.i305:                                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i304 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %56 = ptrtoint ptr %dev.i304 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i304, align 4
  br label %pci_name.exit307

pci_name.exit307:                                 ; preds = %if.end.i.i305, %do.end85.pci_name.exit307_crit_edge
  %retval.0.i.i306 = phi ptr [ %57, %if.end.i.i305 ], [ %55, %do.end85.pci_name.exit307_crit_edge ]
  %conv91 = zext i8 %51 to i32
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %retval.0.i.i306, i32 noundef %conv91) #15
  br label %do.end99

if.else93:                                        ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #14
  %conv79 = zext i8 %51 to i32
  %arrayidx = getelementptr [7 x %struct.ieee80211_chan_range], ptr @cranges, i32 0, i32 %conv79
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %chan_range.sroa.0.0.copyload229 = load i8, ptr %arrayidx, align 1
  %chan_range.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %59 = ptrtoint ptr %chan_range.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %59)
  %chan_range.sroa.7.0.copyload230 = load i8, ptr %chan_range.sroa.7.0.arrayidx.sroa_idx, align 1
  %phi.cast = zext i8 %chan_range.sroa.0.0.copyload229 to i32
  %phi.cast292 = zext i8 %chan_range.sroa.7.0.copyload230 to i32
  br label %do.end99

do.end99:                                         ; preds = %if.else93, %pci_name.exit307
  %chan_range.sroa.0.0 = phi i32 [ 1, %pci_name.exit307 ], [ %phi.cast, %if.else93 ]
  %chan_range.sroa.7.0 = phi i32 [ 13, %pci_name.exit307 ], [ %phi.cast292, %if.else93 ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %init_name.i.i308 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44, i32 3
  %62 = ptrtoint ptr %init_name.i.i308 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i308, align 8
  %tobool.not.i.i309 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i309, label %if.end.i.i311, label %do.end99.pci_name.exit313_crit_edge

do.end99.pci_name.exit313_crit_edge:              ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit313

if.end.i.i311:                                    ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i310 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %64 = ptrtoint ptr %dev.i310 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i310, align 4
  br label %pci_name.exit313

pci_name.exit313:                                 ; preds = %if.end.i.i311, %do.end99.pci_name.exit313_crit_edge
  %retval.0.i.i312 = phi ptr [ %65, %if.end.i.i311 ], [ %63, %do.end99.pci_name.exit313_crit_edge ]
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %retval.0.i.i312, i32 noundef %chan_range.sroa.0.0, i32 noundef %chan_range.sroa.7.0) #15
  %channels = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 16
  %66 = call ptr @memcpy(ptr %channels, ptr @adm8211_channels, i32 784)
  %band = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 15
  %67 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %channels, ptr %band, align 4
  %n_channels = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 15, i32 3
  %68 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 14, ptr %n_channels, align 4
  %bitrates = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 15, i32 1
  %69 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @adm8211_rates, ptr %bitrates, align 4
  %n_bitrates = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 15, i32 4
  %70 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %n_bitrates, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %pci_name.exit313
  %i.0332 = phi i32 [ 1, %pci_name.exit313 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0332, i32 %chan_range.sroa.0.0)
  %cmp119 = icmp ult i32 %i.0332, %chan_range.sroa.0.0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0332, i32 %chan_range.sroa.7.0)
  %cmp123 = icmp ugt i32 %i.0332, %chan_range.sroa.7.0
  %or.cond = select i1 %cmp119, i1 true, i1 %cmp123
  br i1 %or.cond, label %if.then125, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then125:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i32 %i.0332, -1
  %flags = getelementptr %struct.adm8211_priv, ptr %1, i32 0, i32 16, i32 %sub, i32 4
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %or = or i32 %72, 1
  store i32 %or, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then125, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0332, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %73 = ptrtoint ptr %eeprom6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %eeprom6, align 4
  %specific_bbptype = getelementptr inbounds %struct.adm8211_eeprom, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %specific_bbptype to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %specific_bbptype, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %76, label %sw.default135 [
    i8 0, label %for.end.sw.bb131_crit_edge
    i8 1, label %for.end.sw.bb131_crit_edge342
    i8 4, label %for.end.sw.bb131_crit_edge343
  ]

for.end.sw.bb131_crit_edge343:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb131

for.end.sw.bb131_crit_edge342:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb131

for.end.sw.bb131_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb131

sw.bb131:                                         ; preds = %for.end.sw.bb131_crit_edge, %for.end.sw.bb131_crit_edge342, %for.end.sw.bb131_crit_edge343
  %specific_bbptype134 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 30
  %78 = ptrtoint ptr %specific_bbptype134 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %76, ptr %specific_bbptype134, align 1
  br label %sw.epilog156

sw.default135:                                    ; preds = %for.end
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %revision137 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %revision137 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %revision137, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %82)
  %cmp139 = icmp ult i8 %82, 48
  %spec.select = select i1 %cmp139, i8 0, i8 4
  %83 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 30
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %spec.select, ptr %83, align 1
  %init_name.i.i314 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44, i32 3
  %85 = ptrtoint ptr %init_name.i.i314 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i314, align 8
  %tobool.not.i.i315 = icmp eq ptr %86, null
  br i1 %tobool.not.i.i315, label %if.end.i.i317, label %sw.default135.pci_name.exit319_crit_edge

sw.default135.pci_name.exit319_crit_edge:         ; preds = %sw.default135
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit319

if.end.i.i317:                                    ; preds = %sw.default135
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i316 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %87 = ptrtoint ptr %dev.i316 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i316, align 4
  br label %pci_name.exit319

pci_name.exit319:                                 ; preds = %if.end.i.i317, %sw.default135.pci_name.exit319_crit_edge
  %retval.0.i.i318 = phi ptr [ %88, %if.end.i.i317 ], [ %86, %sw.default135.pci_name.exit319_crit_edge ]
  %89 = ptrtoint ptr %eeprom6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %eeprom6, align 4
  %specific_bbptype153 = getelementptr inbounds %struct.adm8211_eeprom, ptr %90, i32 0, i32 11
  %91 = ptrtoint ptr %specific_bbptype153 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %specific_bbptype153, align 1
  %conv154 = zext i8 %92 to i32
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %retval.0.i.i318, i32 noundef %conv154) #15
  br label %sw.epilog156

sw.epilog156:                                     ; preds = %pci_name.exit319, %sw.bb131
  %93 = ptrtoint ptr %eeprom6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %eeprom6, align 4
  %specific_rftype = getelementptr inbounds %struct.adm8211_eeprom, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %specific_rftype to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %specific_rftype, align 1
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %96, label %sw.default163 [
    i8 0, label %sw.epilog156.sw.bb159_crit_edge
    i8 1, label %sw.epilog156.sw.bb159_crit_edge344
    i8 2, label %sw.epilog156.sw.bb159_crit_edge345
    i8 8, label %sw.epilog156.sw.bb159_crit_edge346
    i8 12, label %sw.epilog156.sw.bb159_crit_edge347
  ]

sw.epilog156.sw.bb159_crit_edge347:               ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb159

sw.epilog156.sw.bb159_crit_edge346:               ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb159

sw.epilog156.sw.bb159_crit_edge345:               ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb159

sw.epilog156.sw.bb159_crit_edge344:               ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb159

sw.epilog156.sw.bb159_crit_edge:                  ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb159

sw.bb159:                                         ; preds = %sw.epilog156.sw.bb159_crit_edge, %sw.epilog156.sw.bb159_crit_edge344, %sw.epilog156.sw.bb159_crit_edge345, %sw.epilog156.sw.bb159_crit_edge346, %sw.epilog156.sw.bb159_crit_edge347
  %conv162 = zext i8 %96 to i32
  %transceiver_type = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 31
  %98 = ptrtoint ptr %transceiver_type to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv162, ptr %transceiver_type, align 4
  br label %do.end203

sw.default163:                                    ; preds = %sw.epilog156
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %revision165 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %revision165 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %revision165, align 4
  %103 = zext i8 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %102, label %sw.default163.do.end192_crit_edge [
    i8 32, label %sw.default163.do.end192.sink.split_crit_edge
    i8 48, label %if.then177
    i8 17, label %if.then185
  ]

sw.default163.do.end192.sink.split_crit_edge:     ; preds = %sw.default163
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split

sw.default163.do.end192_crit_edge:                ; preds = %sw.default163
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192

if.then177:                                       ; preds = %sw.default163
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split

if.then185:                                       ; preds = %sw.default163
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192.sink.split

do.end192.sink.split:                             ; preds = %if.then185, %if.then177, %sw.default163.do.end192.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then185 ], [ 12, %if.then177 ], [ 2, %sw.default163.do.end192.sink.split_crit_edge ]
  %transceiver_type170 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 31
  %104 = ptrtoint ptr %transceiver_type170 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.sink, ptr %transceiver_type170, align 4
  br label %do.end192

do.end192:                                        ; preds = %do.end192.sink.split, %sw.default163.do.end192_crit_edge
  %init_name.i.i320 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44, i32 3
  %105 = ptrtoint ptr %init_name.i.i320 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %init_name.i.i320, align 8
  %tobool.not.i.i321 = icmp eq ptr %106, null
  br i1 %tobool.not.i.i321, label %if.end.i.i323, label %do.end192.pci_name.exit325_crit_edge

do.end192.pci_name.exit325_crit_edge:             ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit325

if.end.i.i323:                                    ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i322 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %107 = ptrtoint ptr %dev.i322 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i322, align 4
  br label %pci_name.exit325

pci_name.exit325:                                 ; preds = %if.end.i.i323, %do.end192.pci_name.exit325_crit_edge
  %retval.0.i.i324 = phi ptr [ %108, %if.end.i.i323 ], [ %106, %do.end192.pci_name.exit325_crit_edge ]
  %109 = ptrtoint ptr %eeprom6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %eeprom6, align 4
  %specific_rftype197 = getelementptr inbounds %struct.adm8211_eeprom, ptr %110, i32 0, i32 12
  %111 = ptrtoint ptr %specific_rftype197 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %specific_rftype197, align 1
  %conv198 = zext i8 %112 to i32
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %retval.0.i.i324, i32 noundef %conv198) #15
  br label %do.end203

do.end203:                                        ; preds = %pci_name.exit325, %sw.bb159
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %init_name.i.i326 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44, i32 3
  %115 = ptrtoint ptr %init_name.i.i326 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %init_name.i.i326, align 8
  %tobool.not.i.i327 = icmp eq ptr %116, null
  br i1 %tobool.not.i.i327, label %if.end.i.i329, label %do.end203.pci_name.exit331_crit_edge

do.end203.pci_name.exit331_crit_edge:             ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit331

if.end.i.i329:                                    ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i328 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %117 = ptrtoint ptr %dev.i328 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i328, align 4
  br label %pci_name.exit331

pci_name.exit331:                                 ; preds = %if.end.i.i329, %do.end203.pci_name.exit331_crit_edge
  %retval.0.i.i330 = phi ptr [ %118, %if.end.i.i329 ], [ %116, %do.end203.pci_name.exit331_crit_edge ]
  %119 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load208 = load i8, ptr %rf_type, align 4
  %bf.lshr209 = lshr i8 %bf.load208, 5
  %bf.cast210 = zext i8 %bf.lshr209 to i32
  %bf.lshr213 = lshr i8 %bf.load208, 2
  %bf.clear214 = and i8 %bf.lshr213, 7
  %bf.cast215 = zext i8 %bf.clear214 to i32
  %specific_bbptype216 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 30
  %120 = ptrtoint ptr %specific_bbptype216 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %specific_bbptype216, align 1
  %conv217 = zext i8 %121 to i32
  %transceiver_type218 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 31
  %122 = ptrtoint ptr %transceiver_type218 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %transceiver_type218, align 4
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %retval.0.i.i330, i32 noundef %bf.cast210, i32 noundef %bf.cast215, i32 noundef %conv217, i32 noundef %123) #15
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit331, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pci_name.exit331 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm8211_tx(ptr noundef %dev, ptr nocapture noundef readnone %control, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i = icmp slt i8 %2, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i, !prof !267

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ieee80211_get_tx_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 2737, i32 noundef 9, ptr noundef null) #12
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %4, i32 0, i32 53, i32 %bf.lshr.i
  %6 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %2 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %9, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %11 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  %bitrate = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bitrate, align 4
  %conv4 = zext i16 %13 to i32
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %call5 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %17) #17
  %18 = call ptr @memcpy(ptr %cb.i, ptr %15, i32 %call5)
  %call9 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %call5) #12
  %len10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len10, align 4
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 56) #12
  %21 = call ptr @memset(ptr %call11, i32 0, i32 56)
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cb.i, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i.not.i = icmp eq i16 %24, 0
  %addr3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %addr1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %retval.0.i82 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %25 = call ptr @memcpy(ptr %call11, ptr %retval.0.i82, i32 6)
  %conv14 = trunc i16 %13 to i8
  %signal = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 1
  %26 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv14, ptr %signal, align 1
  %conv15 = trunc i32 %20 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv15)
  %frame_body_size = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 3
  %28 = ptrtoint ptr %frame_body_size to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %frame_body_size, align 1
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cb.i, align 2
  %frame_control17 = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 4
  %31 = ptrtoint ptr %frame_control17 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %frame_control17, align 1
  %add = add i32 %20, %call5
  %frag = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 11
  %32 = ptrtoint ptr %frag to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 -241, ptr %frag, align 1
  %33 = mul i32 %20, 80
  %add1.i = add nuw nsw i32 %conv4, 1919
  %sub.i = add i32 %add1.i, %33
  %div.i = udiv i32 %sub.i, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %13)
  %cmp.i83 = icmp ult i16 %13, 21
  %storemerge.v.i = select i1 %cmp.i83, i32 542, i32 430
  %storemerge.i = add i32 %div.i, %storemerge.v.i
  %add5.i = add i32 %storemerge.i, 288
  %spec.select.i = select i1 %tobool.not, i32 %add5.i, i32 %storemerge.i
  %34 = mul i32 %add, 80
  %mul7.i = add i32 %34, 320
  %mul7.i.frozen = freeze i32 %mul7.i
  %conv4.frozen = freeze i32 %conv4
  %div8.i = sdiv i32 %mul7.i.frozen, %conv4.frozen
  %35 = mul i32 %div8.i, %conv4.frozen
  %rem.i.decomposed = sub i32 %mul7.i.frozen, %35
  call void @__sanitizer_cov_trace_const_cmp2(i16 110, i16 %13)
  %cmp10.i = icmp eq i16 %13, 110
  %36 = add nsw i32 %rem.i.decomposed, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %36)
  %37 = icmp ult i32 %36, 30
  %38 = and i1 %cmp10.i, %37
  br i1 %38, label %if.then14.i, label %if.else16.i

if.then14.i:                                      ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %div8.i, 32768
  br label %if.end20.sink.split.i

if.else16.i:                                      ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool17.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool17.not.i, label %if.else16.i.adm8211_calc_durations.exit_crit_edge, label %if.else16.i.if.end20.sink.split.i_crit_edge

if.else16.i.if.end20.sink.split.i_crit_edge:      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.sink.split.i

if.else16.i.adm8211_calc_durations.exit_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_calc_durations.exit

if.end20.sink.split.i:                            ; preds = %if.else16.i.if.end20.sink.split.i_crit_edge, %if.then14.i
  %div8.sink.i = phi i32 [ %or.i, %if.then14.i ], [ %div8.i, %if.else16.i.if.end20.sink.split.i_crit_edge ]
  %inc.i = add i32 %div8.sink.i, 1
  br label %adm8211_calc_durations.exit

adm8211_calc_durations.exit:                      ; preds = %if.end20.sink.split.i, %if.else16.i.adm8211_calc_durations.exit_crit_edge
  %plcp.0 = phi i32 [ %inc.i, %if.end20.sink.split.i ], [ %div8.i, %if.else16.i.adm8211_calc_durations.exit_crit_edge ]
  %conv19 = trunc i32 %plcp.0 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %plcp_frag_head_len = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 6
  %40 = ptrtoint ptr %plcp_frag_head_len to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %plcp_frag_head_len, align 1
  %plcp_frag_tail_len = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 5
  %41 = ptrtoint ptr %plcp_frag_tail_len to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %39, ptr %plcp_frag_tail_len, align 1
  %conv21 = trunc i32 %spec.select.i to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv21)
  %dur_frag_head = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 8
  %43 = ptrtoint ptr %dur_frag_head to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %dur_frag_head, align 1
  %dur_frag_tail = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 7
  %44 = ptrtoint ptr %dur_frag_tail to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %42, ptr %dur_frag_tail, align 1
  %header_control = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 10
  %spec.select = select i1 %tobool.not, i16 128, i16 384
  %and28 = shl i16 %bf.load, 12
  %45 = and i16 %and28, 4096
  %46 = or i16 %45, %spec.select
  %47 = ptrtoint ptr %header_control to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %header_control, align 1
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load38 = load i16, ptr %flags, align 1
  %bf.lshr = lshr i16 %bf.load38, 11
  %conv39 = trunc i16 %bf.lshr to i8
  %retry_limit = getelementptr inbounds %struct.adm8211_tx_hdr, ptr %call11, i32 0, i32 13
  %49 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv39, ptr %retry_limit, align 1
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %50 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv1.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %56 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len10, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %55) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %adm8211_calc_durations.exit
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !267

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev3.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44, i32 3
  %58 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev3.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %61, %if.end.i.i.i ], [ %59, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %adm8211_calc_durations.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev3.i, ptr noundef %55, i32 noundef %57) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %62 = load ptr, ptr @mem_map, align 4
  %63 = ptrtoint ptr %55 to i32
  %sub.i.i = add i32 %63, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %62, i32 %shr.i.i
  %and.i.i = and i32 %63, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev3.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %57, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %64 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %51, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev5.i, i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then43, label %do.body7.i

do.body7.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %lock.i = getelementptr inbounds %struct.adm8211_priv, ptr %51, i32 0, i32 1
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %cur_tx.i = getelementptr inbounds %struct.adm8211_priv, ptr %51, i32 0, i32 11
  %66 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cur_tx.i, align 4
  %dirty_tx.i = getelementptr inbounds %struct.adm8211_priv, ptr %51, i32 0, i32 12
  %68 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dirty_tx.i, align 4
  %sub.i84 = sub i32 %67, %69
  %tx_ring_size.i = getelementptr inbounds %struct.adm8211_priv, ptr %51, i32 0, i32 10
  %70 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_ring_size.i, align 4
  %div90.i = lshr i32 %71, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i84, i32 %div90.i)
  %cmp12.i = icmp eq i32 %sub.i84, %div90.i
  %..i = select i1 %cmp12.i, i32 -536870912, i32 1610612736
  %sub20.i = add i32 %71, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i84, i32 %sub20.i)
  %cmp21.i = icmp eq i32 %sub.i84, %sub20.i
  br i1 %cmp21.i, label %if.then23.i, label %do.body7.i.adm8211_tx_raw.exit.thread_crit_edge

do.body7.i.adm8211_tx_raw.exit.thread_crit_edge:  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_tx_raw.exit.thread

if.then23.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ieee80211_stop_queue(ptr noundef %dev, i32 noundef 0) #12
  br label %adm8211_tx_raw.exit.thread

adm8211_tx_raw.exit.thread:                       ; preds = %if.then23.i, %do.body7.i.adm8211_tx_raw.exit.thread_crit_edge
  %72 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cur_tx.i, align 4
  %74 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_ring_size.i, align 4
  %rem.i85 = urem i32 %73, %75
  %tx_buffers.i = getelementptr inbounds %struct.adm8211_priv, ptr %51, i32 0, i32 8
  %76 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx.i = getelementptr %struct.adm8211_tx_ring_info, ptr %77, i32 %rem.i85
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %skb, ptr %arrayidx.i, align 4
  %79 = load ptr, ptr %tx_buffers.i, align 4
  %mapping30.i = getelementptr %struct.adm8211_tx_ring_info, ptr %79, i32 %rem.i85, i32 1
  %80 = ptrtoint ptr %mapping30.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i.i, ptr %mapping30.i, align 4
  %81 = load ptr, ptr %tx_buffers.i, align 4
  %hdrlen33.i = getelementptr %struct.adm8211_tx_ring_info, ptr %81, i32 %rem.i85, i32 2
  %82 = ptrtoint ptr %hdrlen33.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call5, ptr %hdrlen33.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #12
  %tx_ring.i = getelementptr inbounds %struct.adm8211_priv, ptr %51, i32 0, i32 4
  %84 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_ring.i, align 4
  %buffer1.i = getelementptr %struct.adm8211_desc, ptr %85, i32 %rem.i85, i32 2
  %86 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %buffer1.i, align 4
  %87 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_ring_size.i, align 4
  %sub36.i = add i32 %88, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i85, i32 %sub36.i)
  %cmp37.i = icmp eq i32 %rem.i85, %sub36.i
  %or.i86 = or i32 %..i, 33554432
  %spec.select.i87 = select i1 %cmp37.i, i32 %or.i86, i32 %..i
  %89 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len10, align 4
  %or42.i = or i32 %spec.select.i87, %90
  %91 = tail call i32 @llvm.bswap.i32(i32 %or42.i) #12
  %92 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx_ring.i, align 4
  %length.i = getelementptr %struct.adm8211_desc, ptr %93, i32 %rem.i85, i32 1
  %94 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %91, ptr %length.i, align 4
  %shl.i = shl i32 %conv4, 20
  %or47.i = or i32 %shl.i, -2147483640
  %95 = tail call i32 @llvm.bswap.i32(i32 %or47.i) #12
  %96 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx49.i = getelementptr %struct.adm8211_desc, ptr %97, i32 %rem.i85
  %98 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %arrayidx49.i, align 4
  %99 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cur_tx.i, align 4
  %inc.i88 = add i32 %100, 1
  store i32 %inc.i88, ptr %cur_tx.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call9.i) #12
  %map.i = getelementptr inbounds %struct.adm8211_priv, ptr %51, i32 0, i32 2
  %101 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map.i, align 4
  %TDR.i = getelementptr inbounds %struct.adm8211_csr, ptr %102, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TDR.i, i32 0) #12, !srcloc !266
  br label %if.end44

if.then43:                                        ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ieee80211_free_txskb(ptr noundef %dev, ptr noundef %skb) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %adm8211_tx_raw.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm8211_start(ptr noundef %dev) #2 align 64 {
entry:
  %cline.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %map.i = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 4
  %FRCTL.i = getelementptr inbounds %struct.adm8211_csr, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %FRCTL.i, i32 0) #12, !srcloc !266
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #12, !srcloc !266
  %9 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not73.i = icmp eq i32 %12, 0
  br i1 %tobool.not73.i, label %entry.if.end.i_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %timeout.074.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 100, %entry.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.074.i)
  %tobool8.not.i = icmp eq i32 %timeout.074.i, 0
  br i1 %tobool8.not.i, label %land.rhs.i.do.end_crit_edge, label %while.body.i

land.rhs.i.do.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %timeout.074.i, -1
  tail call void @msleep(i32 noundef 50) #12
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %16 = and i32 %15, 16777216
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %timeout.074.i)
  %phi.cmp.i = icmp slt i32 %timeout.074.i, 2
  br i1 %phi.cmp.i, label %while.end.i.do.end_crit_edge, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

while.end.i.do.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %while.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %6) #12, !srcloc !266
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %revision.i, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %22, label %if.end.i.if.end36.i_crit_edge [
    i8 32, label %land.lhs.true.i
    i8 48, label %if.then28.i
  ]

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %transceiver_type.i = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 31
  %24 = ptrtoint ptr %transceiver_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transceiver_type.i, align 4
  %.off.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then18.i, label %land.lhs.true.i.if.end36.i_crit_edge

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i, align 4
  %CSR_TEST1.i = getelementptr inbounds %struct.adm8211_csr, ptr %27, i32 0, i32 17
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CSR_TEST1.i) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %29 = or i32 %28, 805306368
  %30 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map.i, align 4
  %CSR_TEST122.i = getelementptr inbounds %struct.adm8211_csr, ptr %31, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CSR_TEST122.i, i32 %29) #12, !srcloc !266
  br label %if.end36.i

if.then28.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map.i, align 4
  %CSR_TEST130.i = getelementptr inbounds %struct.adm8211_csr, ptr %33, i32 0, i32 17
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CSR_TEST130.i) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %35 = and i32 %34, -805306369
  %36 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map.i, align 4
  %CSR_TEST134.i = getelementptr inbounds %struct.adm8211_csr, ptr %37, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CSR_TEST134.i, i32 %35) #12, !srcloc !266
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then28.i, %if.then18.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.end.i.if.end36.i_crit_edge
  %38 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map.i, align 4
  %FRCTL38.i = getelementptr inbounds %struct.adm8211_csr, ptr %39, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %FRCTL38.i, i32 0) #12, !srcloc !266
  %40 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map.i, align 4
  %CSR_TEST0.i = getelementptr inbounds %struct.adm8211_csr, ptr %41, i32 0, i32 19
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CSR_TEST0.i) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %43 = or i32 %42, 8388608
  %44 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i, align 4
  %CSR_TEST043.i = getelementptr inbounds %struct.adm8211_csr, ptr %45, i32 0, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CSR_TEST043.i, i32 %43) #12, !srcloc !266
  %46 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv1, align 8
  %map.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map.i.i, align 4
  %WEPCTL.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %49, i32 0, i32 60
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL.i.i) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end36.i
  %addr.015.i.i = phi i32 [ 0, %if.end36.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %51 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv1, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %revision.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %56)
  %cmp.i.i.i = icmp ult i8 %56, 32
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 8388608
  %or.i.i.i = or i32 %addr.015.i.i, %cond.i.i.i
  %or3.i.i.i = or i32 %or.i.i.i, 268435456
  %map.i.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %52, i32 0, i32 2
  %57 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map.i.i.i, align 4
  %WEPCTL.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %58, i32 0, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL.i.i.i, i32 %59) #12, !srcloc !266
  %60 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i.i.i, align 4
  %WEPCTL5.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %61, i32 0, i32 60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL5.i.i.i) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @msleep(i32 noundef 1) #12
  %63 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i.i.i, align 4
  %WESK.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %64, i32 0, i32 61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WESK.i.i.i, i32 0) #12, !srcloc !266
  %65 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map.i.i.i, align 4
  %WESK8.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %66, i32 0, i32 61
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WESK8.i.i.i) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @msleep(i32 noundef 1) #12
  %inc.i.i = add nuw nsw i32 %addr.015.i.i, 1
  %68 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %47, align 4
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %71)
  %cmp.i.i = icmp ult i8 %71, 32
  %cond.i.i = select i1 %cmp.i.i, i32 512, i32 448
  %cmp3.i.i = icmp ult i32 %inc.i.i, %cond.i.i
  br i1 %cmp3.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %if.end

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.end:                                           ; preds = %while.end.i.do.end_crit_edge, %land.rhs.i.do.end_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %72 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wiphy, align 8
  %dev3 = getelementptr inbounds %struct.wiphy, ptr %73, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.43) #15
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  %74 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i.i, align 4
  %WEPCTL6.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %75, i32 0, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL6.i.i, i32 %50) #12, !srcloc !266
  %76 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv1, align 8
  %rx_ring_size.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp2.not.i = icmp eq i32 %79, 0
  br i1 %cmp2.not.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %rx_ring.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 3
  %rx_buffers.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %80 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.adm8211_desc, ptr %81, i32 %i.03.i
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx.i, align 4
  %length.i = getelementptr %struct.adm8211_desc, ptr %81, i32 %i.03.i, i32 1
  %83 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1006043136, ptr %length.i, align 4
  %84 = ptrtoint ptr %rx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_buffers.i, align 4
  %arrayidx2.i = getelementptr %struct.adm8211_rx_ring_info, ptr %85, i32 %i.03.i
  %86 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %arrayidx2.i, align 4
  %inc.i = add nuw i32 %i.03.i, 1
  %87 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_ring_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %88
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %desc.0.lcssa.i = phi ptr [ null, %if.end.for.end.i_crit_edge ], [ %arrayidx.i, %for.body.i.for.end.i_crit_edge ]
  %length3.i = getelementptr inbounds %struct.adm8211_desc, ptr %desc.0.lcssa.i, i32 0, i32 1
  %89 = ptrtoint ptr %length3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length3.i, align 4
  %or.i = or i32 %90, 2
  store i32 %or.i, ptr %length3.i, align 4
  %91 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp64.not.i = icmp eq i32 %92, 0
  br i1 %cmp64.not.i, label %for.end.i.for.end31.i_crit_edge, label %for.body7.lr.ph.i

for.end.i.for.end31.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

for.body7.lr.ph.i:                                ; preds = %for.end.i
  %rx_ring8.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 3
  %rx_buffers10.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 7
  br label %for.body7.i

for.body7.i:                                      ; preds = %if.end26.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.15.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc30.i, %if.end26.i.for.body7.i_crit_edge ]
  %93 = ptrtoint ptr %rx_ring8.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rx_ring8.i, align 4
  %arrayidx9.i = getelementptr %struct.adm8211_desc, ptr %94, i32 %i.15.i
  %95 = ptrtoint ptr %rx_buffers10.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_buffers10.i, align 4
  %arrayidx11.i = getelementptr %struct.adm8211_rx_ring_info, ptr %96, i32 %i.15.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2500, i32 noundef 2592) #12
  %97 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i.i.i, ptr %arrayidx11.i, align 4
  %cmp14.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp14.i, label %for.body7.i.for.end31.i_crit_edge, label %if.end.i43

for.body7.i.for.end31.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

if.end.i43:                                       ; preds = %for.body7.i
  %98 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %77, align 4
  %dev15.i = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %100 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tail.i.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %101) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i43
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !267

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev15.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44, i32 3
  %102 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %103, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev15.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %105, %if.end.i.i.i ], [ %103, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev15.i, ptr noundef %101, i32 noundef 2500) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %106 = load ptr, ptr @mem_map, align 4
  %107 = ptrtoint ptr %101 to i32
  %sub.i.i = add i32 %107, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %106, i32 %shr.i.i
  %and.i.i = and i32 %107, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev15.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 2500, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %mapping.i = getelementptr %struct.adm8211_rx_ring_info, ptr %96, i32 %i.15.i, i32 1
  %108 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %retval.0.i.i, ptr %mapping.i, align 4
  %109 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %77, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev20.i, i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i44 = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i44, label %if.then23.i, label %if.end26.i

if.then23.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx11.i, align 4
  tail call void @consume_skb(ptr noundef %112) #12
  %113 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %arrayidx11.i, align 4
  br label %for.end31.i

if.end26.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %114 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mapping.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #12
  %buffer1.i = getelementptr %struct.adm8211_desc, ptr %94, i32 %i.15.i, i32 2
  %117 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %buffer1.i, align 4
  %118 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 160, ptr %arrayidx9.i, align 4
  %inc30.i = add nuw i32 %i.15.i, 1
  %119 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_ring_size.i, align 4
  %cmp6.i = icmp ult i32 %inc30.i, %120
  br i1 %cmp6.i, label %if.end26.i.for.body7.i_crit_edge, label %if.end26.i.for.end31.i_crit_edge

if.end26.i.for.end31.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

if.end26.i.for.body7.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.i

for.end31.i:                                      ; preds = %if.end26.i.for.end31.i_crit_edge, %if.then23.i, %for.body7.i.for.end31.i_crit_edge, %for.end.i.for.end31.i_crit_edge
  %desc.2.i = phi ptr [ %arrayidx9.i, %if.then23.i ], [ %desc.0.lcssa.i, %for.end.i.for.end31.i_crit_edge ], [ %arrayidx9.i, %for.body7.i.for.end31.i_crit_edge ], [ %arrayidx9.i, %if.end26.i.for.end31.i_crit_edge ]
  %tx_ring_size.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 10
  %121 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp338.not.i = icmp eq i32 %122, 0
  br i1 %cmp338.not.i, label %for.end31.i.adm8211_init_rings.exit_crit_edge, label %for.body34.lr.ph.i

for.end31.i.adm8211_init_rings.exit_crit_edge:    ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_init_rings.exit

for.body34.lr.ph.i:                               ; preds = %for.end31.i
  %tx_ring.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 4
  %tx_buffers.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 8
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %i.29.i = phi i32 [ 0, %for.body34.lr.ph.i ], [ %inc41.i, %for.body34.i.for.body34.i_crit_edge ]
  %123 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx35.i = getelementptr %struct.adm8211_desc, ptr %124, i32 %i.29.i
  %125 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx36.i = getelementptr %struct.adm8211_tx_ring_info, ptr %126, i32 %i.29.i
  %127 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %arrayidx36.i, align 4
  %mapping38.i = getelementptr %struct.adm8211_tx_ring_info, ptr %126, i32 %i.29.i, i32 1
  %128 = ptrtoint ptr %mapping38.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %mapping38.i, align 4
  %129 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %arrayidx35.i, align 4
  %inc41.i = add nuw i32 %i.29.i, 1
  %130 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_ring_size.i, align 4
  %cmp33.i = icmp ult i32 %inc41.i, %131
  br i1 %cmp33.i, label %for.body34.i.for.body34.i_crit_edge, label %for.body34.i.adm8211_init_rings.exit_crit_edge

for.body34.i.adm8211_init_rings.exit_crit_edge:   ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_init_rings.exit

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.i

adm8211_init_rings.exit:                          ; preds = %for.body34.i.adm8211_init_rings.exit_crit_edge, %for.end31.i.adm8211_init_rings.exit_crit_edge
  %desc.3.lcssa.i = phi ptr [ %desc.2.i, %for.end31.i.adm8211_init_rings.exit_crit_edge ], [ %arrayidx35.i, %for.body34.i.adm8211_init_rings.exit_crit_edge ]
  %length43.i = getelementptr inbounds %struct.adm8211_desc, ptr %desc.3.lcssa.i, i32 0, i32 1
  %132 = ptrtoint ptr %length43.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 2, ptr %length43.i, align 4
  %dirty_tx.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 12
  %133 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %dirty_tx.i, align 4
  %cur_tx.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 11
  %134 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %cur_tx.i, align 4
  %cur_rx.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 13
  %135 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %cur_rx.i, align 4
  %rx_ring_dma.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 5
  %136 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_ring_dma.i, align 4
  %map.i45 = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 2
  %138 = ptrtoint ptr %map.i45 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map.i45, align 4
  %RDB.i = getelementptr inbounds %struct.adm8211_csr, ptr %139, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %140 = tail call i32 @llvm.bswap.i32(i32 %137) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RDB.i, i32 %140) #12, !srcloc !266
  %tx_ring_dma.i = getelementptr inbounds %struct.adm8211_priv, ptr %77, i32 0, i32 6
  %141 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tx_ring_dma.i, align 4
  %143 = ptrtoint ptr %map.i45 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %map.i45, align 4
  %TDBD.i = getelementptr inbounds %struct.adm8211_csr, ptr %144, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %145 = tail call i32 @llvm.bswap.i32(i32 %142) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TDBD.i, i32 %145) #12, !srcloc !266
  %146 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cline.i) #12
  %148 = ptrtoint ptr %cline.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -1, ptr %cline.i, align 1, !annotation !262
  %map.i47 = getelementptr inbounds %struct.adm8211_priv, ptr %147, i32 0, i32 2
  %149 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %map.i47, align 4
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %152 = and i32 %151, -46178305
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #12
  %and.i = or i32 %153, 10485760
  %154 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %147, align 4
  %call2.i = tail call i32 @pci_set_mwi(ptr noundef %155) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i48 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i48, label %if.then.i, label %adm8211_init_rings.exit.if.end.i51_crit_edge

adm8211_init_rings.exit.if.end.i51_crit_edge:     ; preds = %adm8211_init_rings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i51

if.then.i:                                        ; preds = %adm8211_init_rings.exit
  %156 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %147, align 4
  %call5.i = call i32 @pci_read_config_byte(ptr noundef %157, i32 noundef 12, ptr noundef nonnull %cline.i) #12
  %158 = ptrtoint ptr %cline.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %cline.i, align 1
  %160 = zext i8 %159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %159, label %sw.default.i [
    i8 8, label %sw.bb.i
    i8 16, label %sw.bb7.i
    i8 32, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %or6.i = or i32 %153, 27279360
  br label %if.end.i51

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %or8.i = or i32 %153, 27295744
  br label %if.end.i51

sw.bb9.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %or10.i = or i32 %153, 27312128
  br label %if.end.i51

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %or3.i = or i32 %153, 27262976
  br label %if.end.i51

if.end.i51:                                       ; preds = %sw.default.i, %sw.bb9.i, %sw.bb7.i, %sw.bb.i, %adm8211_init_rings.exit.if.end.i51_crit_edge
  %reg.0.i = phi i32 [ %and.i, %adm8211_init_rings.exit.if.end.i51_crit_edge ], [ %or3.i, %sw.default.i ], [ %or10.i, %sw.bb9.i ], [ %or8.i, %sw.bb7.i ], [ %or6.i, %sw.bb.i ]
  %161 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %map.i47, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %163 = call i32 @llvm.bswap.i32(i32 %reg.0.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %163) #12, !srcloc !266
  %164 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %map.i47, align 4
  %CSR_TEST1.i49 = getelementptr inbounds %struct.adm8211_csr, ptr %165, i32 0, i32 17
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CSR_TEST1.i49) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %167 = and i32 %166, -241
  %168 = or i32 %167, 144
  %169 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %map.i47, align 4
  %CSR_TEST119.i = getelementptr inbounds %struct.adm8211_csr, ptr %170, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CSR_TEST119.i, i32 %168) #12, !srcloc !266
  %171 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %map.i47, align 4
  %WCSR.i = getelementptr inbounds %struct.adm8211_csr, ptr %172, i32 0, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WCSR.i, i32 102400) #12, !srcloc !266
  %173 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %map.i47, align 4
  %CMDR.i = getelementptr inbounds %struct.adm8211_csr, ptr %174, i32 0, i32 34
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CMDR.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %176 = and i32 %175, -469763073
  %177 = or i32 %176, 402653184
  %178 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %map.i47, align 4
  %CMDR26.i = getelementptr inbounds %struct.adm8211_csr, ptr %179, i32 0, i32 34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CMDR26.i, i32 %177) #12, !srcloc !266
  %180 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %priv1, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %revision.i.i50 = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 12
  %184 = ptrtoint ptr %revision.i.i50 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %revision.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %185)
  %cmp.not.i.i = icmp eq i8 %185, 32
  br i1 %cmp.not.i.i, label %if.end.i51.if.end.i.i_crit_edge, label %if.then.i.i52

if.end.i51.if.end.i.i_crit_edge:                  ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i52:                                    ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  %186 = load i16, ptr getelementptr inbounds ([5 x %struct.ieee80211_rate], ptr @adm8211_rates, i32 0, i32 0, i32 1), align 4
  %187 = udiv i16 %186, 5
  %188 = load i16, ptr getelementptr inbounds ([5 x %struct.ieee80211_rate], ptr @adm8211_rates, i32 0, i32 1, i32 1), align 4
  %189 = udiv i16 %188, 5
  %190 = load i16, ptr getelementptr inbounds ([5 x %struct.ieee80211_rate], ptr @adm8211_rates, i32 0, i32 2, i32 1), align 4
  %191 = udiv i16 %190, 5
  %192 = load i16, ptr getelementptr inbounds ([5 x %struct.ieee80211_rate], ptr @adm8211_rates, i32 0, i32 3, i32 1), align 4
  %193 = udiv i16 %192, 5
  %194 = load i16, ptr getelementptr inbounds ([5 x %struct.ieee80211_rate], ptr @adm8211_rates, i32 0, i32 4, i32 1), align 4
  %195 = udiv i16 %194, 5
  %196 = shl i16 %187, 8
  %197 = or i16 %196, -32768
  %phi.bo.i.i = zext i16 %197 to i32
  %198 = and i16 %189, 127
  %199 = or i16 %198, 128
  %phi.cast.i.i = zext i16 %199 to i32
  %200 = and i16 %191, 127
  %201 = or i16 %200, 128
  %phi.cast10.i.i = zext i16 %201 to i32
  %202 = and i16 %193, 127
  %203 = or i16 %202, 128
  %phi.cast11.i.i = zext i16 %203 to i32
  %204 = shl i16 %195, 8
  %205 = or i16 %204, -32768
  %phi.bo13.i.i = zext i16 %205 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i52, %if.end.i51.if.end.i.i_crit_edge
  %rate_buf.sroa.13.0.i.i = phi i32 [ %phi.cast10.i.i, %if.then.i.i52 ], [ 11, %if.end.i51.if.end.i.i_crit_edge ]
  %rate_buf.sroa.17.0.i.i = phi i32 [ %phi.cast11.i.i, %if.then.i.i52 ], [ 22, %if.end.i51.if.end.i.i_crit_edge ]
  %rate_buf.sroa.21.0.i.i = phi i32 [ %phi.bo13.i.i, %if.then.i.i52 ], [ 0, %if.end.i51.if.end.i.i_crit_edge ]
  %rate_buf.sroa.9.0.i.i = phi i32 [ %phi.cast.i.i, %if.then.i.i52 ], [ 4, %if.end.i51.if.end.i.i_crit_edge ]
  %rate_buf.sroa.6.0.i.i = phi i32 [ %phi.bo.i.i, %if.then.i.i52 ], [ 33280, %if.end.i51.if.end.i.i_crit_edge ]
  %rate_buf.sroa.0.0.i.i = phi i32 [ 5, %if.then.i.i52 ], [ 4, %if.end.i51.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %185)
  %cmp17.i.i = icmp ult i8 %185, 32
  %cond.i.i53 = select i1 %cmp17.i.i, i32 401, i32 221
  %map.i.i.i54 = getelementptr inbounds %struct.adm8211_priv, ptr %181, i32 0, i32 2
  %206 = ptrtoint ptr %map.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %map.i.i.i54, align 4
  %WEPCTL.i.i.i55 = getelementptr inbounds %struct.adm8211_csr, ptr %207, i32 0, i32 60
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL.i.i.i55) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %209 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %181, align 4
  %revision.i.i.i56 = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 12
  %211 = ptrtoint ptr %revision.i.i.i56 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %revision.i.i.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %212)
  %cmp.i.i.i57 = icmp ult i8 %212, 32
  %or.i.i.i58 = or i32 %rate_buf.sroa.0.0.i.i, %rate_buf.sroa.6.0.i.i
  br i1 %cmp.i.i.i57, label %for.body.preheader.i.i.i, label %for.body15.preheader.i.i.i

for.body15.preheader.i.i.i:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl29.i.i.i = shl nuw nsw i32 %rate_buf.sroa.9.0.i.i, 16
  %or30.i.i.i = or i32 %or.i.i.i58, %shl29.i.i.i
  %shl34.i.i.i = shl nuw i32 %rate_buf.sroa.13.0.i.i, 24
  %or35.i.i.i = or i32 %or30.i.i.i, %shl34.i.i.i
  %213 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %priv1, align 8
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 4
  %revision.i4.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %216, i32 0, i32 12
  %217 = ptrtoint ptr %revision.i4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %revision.i4.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %218)
  %cmp.i5.i.i.i = icmp ult i8 %218, 32
  %cond.i6.i.i.i = select i1 %cmp.i5.i.i.i, i32 0, i32 8388608
  %or.i7.i.i.i = or i32 %cond.i.i53, %cond.i6.i.i.i
  %or3.i8.i.i.i = or i32 %or.i7.i.i.i, 268435456
  %map.i9.i.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %214, i32 0, i32 2
  %219 = ptrtoint ptr %map.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %map.i9.i.i.i, align 4
  %WEPCTL.i10.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %220, i32 0, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %221 = call i32 @llvm.bswap.i32(i32 %or3.i8.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL.i10.i.i.i, i32 %221) #12, !srcloc !266
  %222 = ptrtoint ptr %map.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %map.i9.i.i.i, align 4
  %WEPCTL5.i11.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %223, i32 0, i32 60
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL5.i11.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 1) #12
  %225 = ptrtoint ptr %map.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %map.i9.i.i.i, align 4
  %WESK.i12.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %226, i32 0, i32 61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %227 = call i32 @llvm.bswap.i32(i32 %or35.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WESK.i12.i.i.i, i32 %227) #12, !srcloc !266
  %228 = ptrtoint ptr %map.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %map.i9.i.i.i, align 4
  %WESK8.i13.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %229, i32 0, i32 61
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WESK8.i13.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 1) #12
  %or25.1.i.i.i = or i32 %rate_buf.sroa.21.0.i.i, %rate_buf.sroa.17.0.i.i
  %add37.1.i.i.i = add nuw nsw i32 %cond.i.i53, 1
  %231 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %priv1, align 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %232, align 4
  %revision.i4.1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %234, i32 0, i32 12
  %235 = ptrtoint ptr %revision.i4.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %revision.i4.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %236)
  %cmp.i5.1.i.i.i = icmp ult i8 %236, 32
  %cond.i6.1.i.i.i = select i1 %cmp.i5.1.i.i.i, i32 0, i32 8388608
  %or.i7.1.i.i.i = or i32 %cond.i6.1.i.i.i, %add37.1.i.i.i
  %or3.i8.1.i.i.i = or i32 %or.i7.1.i.i.i, 268435456
  %map.i9.1.i.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %232, i32 0, i32 2
  %237 = ptrtoint ptr %map.i9.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %map.i9.1.i.i.i, align 4
  %WEPCTL.i10.1.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %238, i32 0, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %239 = call i32 @llvm.bswap.i32(i32 %or3.i8.1.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL.i10.1.i.i.i, i32 %239) #12, !srcloc !266
  %240 = ptrtoint ptr %map.i9.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %map.i9.1.i.i.i, align 4
  %WEPCTL5.i11.1.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %241, i32 0, i32 60
  %242 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL5.i11.1.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 1) #12
  %243 = ptrtoint ptr %map.i9.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %map.i9.1.i.i.i, align 4
  %WESK.i12.1.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %244, i32 0, i32 61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %245 = call i32 @llvm.bswap.i32(i32 %or25.1.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WESK.i12.1.i.i.i, i32 %245) #12, !srcloc !266
  %246 = ptrtoint ptr %map.i9.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %map.i9.1.i.i.i, align 4
  %WESK8.i13.1.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %247, i32 0, i32 61
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WESK8.i13.1.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  br label %adm8211_set_rate.exit.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %249 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %priv1, align 8
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %250, align 4
  %revision.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %252, i32 0, i32 12
  %253 = ptrtoint ptr %revision.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %revision.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %254)
  %cmp.i.i.i.i = icmp ult i8 %254, 32
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 8388608
  %or.i.i.i.i = or i32 %cond.i.i53, %cond.i.i.i.i
  %or3.i.i.i.i = or i32 %or.i.i.i.i, 268435456
  %map.i.i.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %250, i32 0, i32 2
  %255 = ptrtoint ptr %map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %map.i.i.i.i, align 4
  %WEPCTL.i.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %256, i32 0, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %257 = call i32 @llvm.bswap.i32(i32 %or3.i.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL.i.i.i.i, i32 %257) #12, !srcloc !266
  %258 = ptrtoint ptr %map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %map.i.i.i.i, align 4
  %WEPCTL5.i.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %259, i32 0, i32 60
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL5.i.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 1) #12
  %261 = ptrtoint ptr %map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %map.i.i.i.i, align 4
  %WESK.i.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %262, i32 0, i32 61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %263 = call i32 @llvm.bswap.i32(i32 %or.i.i.i58) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WESK.i.i.i.i, i32 %263) #12, !srcloc !266
  %264 = ptrtoint ptr %map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %map.i.i.i.i, align 4
  %WESK8.i.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %265, i32 0, i32 61
  %266 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WESK8.i.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 1) #12
  %shl.1.i.i.i = shl nuw nsw i32 %rate_buf.sroa.13.0.i.i, 8
  %or.1.i.i.i = or i32 %rate_buf.sroa.9.0.i.i, %shl.1.i.i.i
  %add9.1.i.i.i = add nuw nsw i32 %cond.i.i53, 1
  %267 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %priv1, align 8
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %revision.i.1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %270, i32 0, i32 12
  %271 = ptrtoint ptr %revision.i.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %revision.i.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %272)
  %cmp.i.1.i.i.i = icmp ult i8 %272, 32
  %cond.i.1.i.i.i = select i1 %cmp.i.1.i.i.i, i32 0, i32 8388608
  %or.i.1.i.i.i = or i32 %cond.i.1.i.i.i, %add9.1.i.i.i
  %or3.i.1.i.i.i = or i32 %or.i.1.i.i.i, 268435456
  %map.i.1.i.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %268, i32 0, i32 2
  %273 = ptrtoint ptr %map.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %map.i.1.i.i.i, align 4
  %WEPCTL.i.1.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %274, i32 0, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %275 = call i32 @llvm.bswap.i32(i32 %or3.i.1.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL.i.1.i.i.i, i32 %275) #12, !srcloc !266
  %276 = ptrtoint ptr %map.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %map.i.1.i.i.i, align 4
  %WEPCTL5.i.1.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %277, i32 0, i32 60
  %278 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL5.i.1.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 1) #12
  %279 = ptrtoint ptr %map.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %map.i.1.i.i.i, align 4
  %WESK.i.1.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %280, i32 0, i32 61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %281 = call i32 @llvm.bswap.i32(i32 %or.1.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WESK.i.1.i.i.i, i32 %281) #12, !srcloc !266
  %282 = ptrtoint ptr %map.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %map.i.1.i.i.i, align 4
  %WESK8.i.1.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %283, i32 0, i32 61
  %284 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WESK8.i.1.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 1) #12
  %or.2.i.i.i = or i32 %rate_buf.sroa.21.0.i.i, %rate_buf.sroa.17.0.i.i
  %285 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %priv1, align 8
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %revision.i.2.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %288, i32 0, i32 12
  %289 = ptrtoint ptr %revision.i.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %revision.i.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %290)
  %cmp.i.2.i.i.i = icmp ult i8 %290, 32
  %cond.i.2.i.i.i = select i1 %cmp.i.2.i.i.i, i32 0, i32 8388608
  %add9.2.i.i.i = or i32 %cond.i.i53, %cond.i.2.i.i.i
  %or3.i.2.i.i.i = or i32 %add9.2.i.i.i, 268435458
  %map.i.2.i.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %286, i32 0, i32 2
  %291 = ptrtoint ptr %map.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %map.i.2.i.i.i, align 4
  %WEPCTL.i.2.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %292, i32 0, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %293 = call i32 @llvm.bswap.i32(i32 %or3.i.2.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL.i.2.i.i.i, i32 %293) #12, !srcloc !266
  %294 = ptrtoint ptr %map.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %map.i.2.i.i.i, align 4
  %WEPCTL5.i.2.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %295, i32 0, i32 60
  %296 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL5.i.2.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 1) #12
  %297 = ptrtoint ptr %map.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %map.i.2.i.i.i, align 4
  %WESK.i.2.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %298, i32 0, i32 61
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  %299 = call i32 @llvm.bswap.i32(i32 %or.2.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WESK.i.2.i.i.i, i32 %299) #12, !srcloc !266
  %300 = ptrtoint ptr %map.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %map.i.2.i.i.i, align 4
  %WESK8.i.2.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %301, i32 0, i32 61
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WESK8.i.2.i.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  br label %adm8211_set_rate.exit.i

adm8211_set_rate.exit.i:                          ; preds = %for.body.preheader.i.i.i, %for.body15.preheader.i.i.i
  call void @msleep(i32 noundef 1) #12
  %303 = ptrtoint ptr %map.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %map.i.i.i54, align 4
  %WEPCTL42.i.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %304, i32 0, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL42.i.i.i, i32 %208) #12, !srcloc !266
  %305 = ptrtoint ptr %map.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %map.i.i.i54, align 4
  %PLCPHD.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %306, i32 0, i32 26
  %307 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PLCPHD.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %308 = and i32 %307, -8388864
  %309 = or i32 %308, 8388718
  %310 = ptrtoint ptr %map.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %map.i.i.i54, align 4
  %PLCPHD22.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %311, i32 0, i32 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PLCPHD22.i.i, i32 %309) #12, !srcloc !266
  %312 = ptrtoint ptr %map.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %map.i.i.i54, align 4
  %TXLMT.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %313, i32 0, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TXLMT.i.i, i32 -529661950) #12, !srcloc !266
  %314 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %147, align 4
  %revision.i59 = getelementptr inbounds %struct.pci_dev, ptr %315, i32 0, i32 12
  %316 = ptrtoint ptr %revision.i59 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %revision.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %317)
  %cmp.i60 = icmp ult i8 %317, 48
  %318 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %map.i47, align 4
  %TOFS2.i = getelementptr inbounds %struct.adm8211_csr, ptr %319, i32 0, i32 33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  call void @arm_heavy_mb() #12
  br i1 %cmp.i60, label %if.then31.i, label %if.else.i

if.then31.i:                                      ; preds = %adm8211_set_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TOFS2.i, i32 416093576) #12, !srcloc !266
  br label %if.end35.i

if.else.i:                                        ; preds = %adm8211_set_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TOFS2.i, i32 382547333) #12, !srcloc !266
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i, %if.then31.i
  %nar.i = getelementptr inbounds %struct.adm8211_priv, ptr %147, i32 0, i32 28
  %320 = ptrtoint ptr %nar.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 2097160, ptr %nar.i, align 4
  %321 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %map.i47, align 4
  %NAR.i = getelementptr inbounds %struct.adm8211_csr, ptr %322, i32 0, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR.i, i32 134225920) #12, !srcloc !266
  %323 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %map.i47, align 4
  %SYNRF.i = getelementptr inbounds %struct.adm8211_csr, ptr %324, i32 0, i32 49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF.i, i32 4096) #12, !srcloc !266
  %325 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %map.i47, align 4
  %SYNRF40.i = getelementptr inbounds %struct.adm8211_csr, ptr %326, i32 0, i32 49
  %327 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF40.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 10) #12
  %328 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %map.i47, align 4
  %SYNRF43.i = getelementptr inbounds %struct.adm8211_csr, ptr %329, i32 0, i32 49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF43.i, i32 0) #12, !srcloc !266
  %330 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %map.i47, align 4
  %SYNRF45.i = getelementptr inbounds %struct.adm8211_csr, ptr %331, i32 0, i32 49
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF45.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 5) #12
  %333 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %map.i47, align 4
  %CFPP.i = getelementptr inbounds %struct.adm8211_csr, ptr %334, i32 0, i32 54
  %335 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFPP.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %336 = and i32 %335, -16776961
  %337 = or i32 %336, 1048576
  %338 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %map.i47, align 4
  %CFPP52.i = getelementptr inbounds %struct.adm8211_csr, ptr %339, i32 0, i32 54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFPP52.i, i32 %337) #12, !srcloc !266
  %340 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %map.i47, align 4
  %TOFS0.i = getelementptr inbounds %struct.adm8211_csr, ptr %341, i32 0, i32 55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TOFS0.i, i32 -16580586) #12, !srcloc !266
  %342 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %147, align 4
  %revision55.i = getelementptr inbounds %struct.pci_dev, ptr %343, i32 0, i32 12
  %344 = ptrtoint ptr %revision55.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %revision55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %345)
  %cmp57.i = icmp ult i8 %345, 48
  %346 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %map.i47, align 4
  %IFST.i = getelementptr inbounds %struct.adm8211_csr, ptr %347, i32 0, i32 57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  call void @arm_heavy_mb() #12
  br i1 %cmp57.i, label %if.then59.i, label %if.else61.i

if.then59.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IFST.i, i32 1684289290) #12, !srcloc !266
  br label %if.end64.i

if.else61.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IFST.i, i32 1684278282) #12, !srcloc !266
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else61.i, %if.then59.i
  %348 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %map.i47, align 4
  %RMD.i = getelementptr inbounds %struct.adm8211_csr, ptr %349, i32 0, i32 53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RMD.i, i32 1363738880) #12, !srcloc !266
  %350 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %map.i47, align 4
  %RSPT.i = getelementptr inbounds %struct.adm8211_csr, ptr %351, i32 0, i32 58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RSPT.i, i32 16777215) #12, !srcloc !266
  %352 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %priv1, align 8
  %bbp_type.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 29
  %354 = ptrtoint ptr %bbp_type.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %bf.load.i.i = load i8, ptr %bbp_type.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 2
  %trunc.i.i = trunc i8 %bf.lshr.i.i to i3
  %355 = zext i3 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %355, ptr @__sancov_gen_cov_switch_values.148)
  switch i3 %trunc.i.i, label %if.end64.i.if.end69.i.i_crit_edge [
    i3 0, label %if.then.i145.i
    i3 1, label %if.end64.i.if.then16.i.i_crit_edge
    i3 -3, label %if.end64.i.if.then16.i.i_crit_edge86
  ]

if.end64.i.if.then16.i.i_crit_edge86:             ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i.i

if.end64.i.if.then16.i.i_crit_edge:               ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i.i

if.end64.i.if.end69.i.i_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69.i.i

if.then.i145.i:                                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  %map.i.i61 = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %356 = ptrtoint ptr %map.i.i61 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %map.i.i61, align 4
  %MMIWA.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %357, i32 0, i32 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIWA.i.i, i32 168562192) #12, !srcloc !266
  %358 = ptrtoint ptr %map.i.i61 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %map.i.i61, align 4
  %MMIRD0.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %359, i32 0, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIRD0.i.i, i32 2122055680) #12, !srcloc !266
  %360 = ptrtoint ptr %map.i.i61 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %map.i.i61, align 4
  %MMIRD1.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %361, i32 0, i32 29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIRD1.i.i, i32 4096) #12, !srcloc !266
  br label %if.end69.i.i

if.then16.i.i:                                    ; preds = %if.end64.i.if.then16.i.i_crit_edge, %if.end64.i.if.then16.i.i_crit_edge86
  %specific_bbptype.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 30
  %362 = ptrtoint ptr %specific_bbptype.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %specific_bbptype.i.i, align 1
  %364 = zext i8 %363 to i64
  call void @__sanitizer_cov_trace_switch(i64 %364, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %363, label %if.then16.i.i.sw.epilog.i.i_crit_edge [
    i8 0, label %if.then16.i.i.sw.bb.i.i_crit_edge
    i8 1, label %if.then16.i.i.sw.bb.i.i_crit_edge87
    i8 4, label %sw.bb21.i.i
  ]

if.then16.i.i.sw.bb.i.i_crit_edge87:              ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i

if.then16.i.i.sw.bb.i.i_crit_edge:                ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i

if.then16.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.then16.i.i.sw.bb.i.i_crit_edge, %if.then16.i.i.sw.bb.i.i_crit_edge87
  %map17.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %365 = ptrtoint ptr %map17.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %map17.i.i, align 4
  %MMIWA18.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %366, i32 0, i32 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIWA18.i.i, i32 26279936) #12, !srcloc !266
  %367 = ptrtoint ptr %map17.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %map17.i.i, align 4
  %MMIRD020.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %368, i32 0, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIRD020.i.i, i32 16973824) #12, !srcloc !266
  br label %sw.epilog.i.i

sw.bb21.i.i:                                      ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %map22.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %369 = ptrtoint ptr %map22.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %map22.i.i, align 4
  %MMIWA23.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %370, i32 0, i32 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIWA23.i.i, i32 59310080) #12, !srcloc !266
  %371 = ptrtoint ptr %map22.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %map22.i.i, align 4
  %MMIRD025.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %372, i32 0, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIRD025.i.i, i32 370606080) #12, !srcloc !266
  %373 = ptrtoint ptr %map22.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %map22.i.i, align 4
  %BBPCTL.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %374, i32 0, i32 24
  %375 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %376 = and i32 %375, -7169
  %377 = or i32 %376, 5120
  %378 = ptrtoint ptr %map22.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %map22.i.i, align 4
  %BBPCTL28.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %379, i32 0, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BBPCTL28.i.i, i32 %377) #12, !srcloc !266
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb21.i.i, %sw.bb.i.i, %if.then16.i.i.sw.epilog.i.i_crit_edge
  %380 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %353, align 4
  %revision.i146.i = getelementptr inbounds %struct.pci_dev, ptr %381, i32 0, i32 12
  %382 = ptrtoint ptr %revision.i146.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %revision.i146.i, align 4
  %384 = zext i8 %383 to i64
  call void @__sanitizer_cov_trace_switch(i64 %384, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %383, label %sw.default.i.i [
    i8 48, label %sw.bb30.i.i
    i8 32, label %sw.bb55.i.i
  ]

sw.bb30.i.i:                                      ; preds = %sw.epilog.i.i
  %transceiver_type.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 31
  %385 = ptrtoint ptr %transceiver_type.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %transceiver_type.i.i, align 4
  %387 = zext i32 %386 to i64
  call void @__sanitizer_cov_trace_switch(i64 %387, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %386, label %sw.bb30.i.i.sw.epilog66.i.i_crit_edge [
    i32 1, label %sw.bb30.i.i.if.then41.i.i_crit_edge
    i32 2, label %sw.bb30.i.i.if.then41.i.i_crit_edge88
    i32 0, label %sw.bb30.i.i.if.then41.i.i_crit_edge89
    i32 8, label %sw.bb30.i.i.if.then51.i.i_crit_edge
    i32 12, label %sw.bb30.i.i.if.then51.i.i_crit_edge90
  ]

sw.bb30.i.i.if.then51.i.i_crit_edge90:            ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51.i.i

sw.bb30.i.i.if.then51.i.i_crit_edge:              ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51.i.i

sw.bb30.i.i.if.then41.i.i_crit_edge89:            ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41.i.i

sw.bb30.i.i.if.then41.i.i_crit_edge88:            ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41.i.i

sw.bb30.i.i.if.then41.i.i_crit_edge:              ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41.i.i

sw.bb30.i.i.sw.epilog66.i.i_crit_edge:            ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog66.i.i

if.then41.i.i:                                    ; preds = %sw.bb30.i.i.if.then41.i.i_crit_edge, %sw.bb30.i.i.if.then41.i.i_crit_edge88, %sw.bb30.i.i.if.then41.i.i_crit_edge89
  %map42.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %388 = ptrtoint ptr %map42.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %map42.i.i, align 4
  %SYNCTL.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %389, i32 0, i32 25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNCTL.i.i, i32 16384) #12, !srcloc !266
  br label %sw.epilog66.i.i

if.then51.i.i:                                    ; preds = %sw.bb30.i.i.if.then51.i.i_crit_edge, %sw.bb30.i.i.if.then51.i.i_crit_edge90
  %map52.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %390 = ptrtoint ptr %map52.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %map52.i.i, align 4
  %SYNCTL53.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %391, i32 0, i32 25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNCTL53.i.i, i32 49152) #12, !srcloc !266
  br label %sw.epilog66.i.i

sw.bb55.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %map56.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %392 = ptrtoint ptr %map56.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %map56.i.i, align 4
  %MMIRD157.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %393, i32 0, i32 29
  %394 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MMIRD157.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %395 = and i32 %394, -65536
  %396 = or i32 %395, 4222
  %397 = ptrtoint ptr %map56.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %map56.i.i, align 4
  %MMIRD162.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %398, i32 0, i32 29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIRD162.i.i, i32 %396) #12, !srcloc !266
  br label %sw.epilog66.i.i

sw.default.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %map64.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %399 = ptrtoint ptr %map64.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %map64.i.i, align 4
  %MMIRD165.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %400, i32 0, i32 29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MMIRD165.i.i, i32 4222) #12, !srcloc !266
  br label %sw.epilog66.i.i

sw.epilog66.i.i:                                  ; preds = %sw.default.i.i, %sw.bb55.i.i, %if.then51.i.i, %if.then41.i.i, %sw.bb30.i.i.sw.epilog66.i.i_crit_edge
  %map67.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %401 = ptrtoint ptr %map67.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %map67.i.i, align 4
  %MACTEST.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %402, i32 0, i32 63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MACTEST.i.i, i32 524288) #12, !srcloc !266
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %sw.epilog66.i.i, %if.then.i145.i, %if.end64.i.if.end69.i.i_crit_edge
  %403 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %priv1, align 8
  %transceiver_type.i.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %404, i32 0, i32 31
  %405 = ptrtoint ptr %transceiver_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %transceiver_type.i.i.i, align 4
  %407 = zext i32 %406 to i64
  call void @__sanitizer_cov_trace_switch(i64 %407, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %406, label %if.end69.i.i.adm8211_hw_init_syn.exit.i.i_crit_edge [
    i32 1, label %if.end69.i.i.sw.bb.i.i.i_crit_edge
    i32 2, label %if.end69.i.i.sw.bb.i.i.i_crit_edge91
    i32 8, label %sw.bb3.i.i.i
    i32 12, label %sw.bb4.i.i.i
  ]

if.end69.i.i.sw.bb.i.i.i_crit_edge91:             ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i.i

if.end69.i.i.sw.bb.i.i.i_crit_edge:               ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i.i

if.end69.i.i.adm8211_hw_init_syn.exit.i.i_crit_edge: ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_hw_init_syn.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.end69.i.i.sw.bb.i.i.i_crit_edge, %if.end69.i.i.sw.bb.i.i.i_crit_edge91
  call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 31, i32 noundef 0) #12
  call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 12, i32 noundef 196639) #12
  call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 1, i32 noundef 171011) #12
  call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 3, i32 noundef 130927) #12
  call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 168963) #12
  call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 7, i32 noundef 83311) #12
  %408 = ptrtoint ptr %transceiver_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %transceiver_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %409)
  %cmp.i.i147.i = icmp eq i32 %409, 1
  %cond.i.i.i62 = select i1 %cmp.i.i147.i, i32 65616, i32 80
  call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 9, i32 noundef %cond.i.i.i62) #12
  call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 8, i32 noundef 262136) #12
  br label %adm8211_hw_init_syn.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @adm8211_rf_write_syn_max2820(ptr noundef %dev, i16 noundef zeroext 1, i32 noundef 30) #12
  call fastcc void @adm8211_rf_write_syn_max2820(ptr noundef %dev, i16 noundef zeroext 2, i32 noundef 1) #12
  call fastcc void @adm8211_rf_write_syn_max2820(ptr noundef %dev, i16 noundef zeroext 3, i32 noundef 84) #12
  call fastcc void @adm8211_rf_write_syn_max2820(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 784) #12
  call fastcc void @adm8211_rf_write_syn_max2820(ptr noundef %dev, i16 noundef zeroext 5, i32 noundef 0) #12
  br label %adm8211_hw_init_syn.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 6508) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 1, i32 noundef 1995) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 2, i32 noundef 219183) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 3, i32 noundef 4265) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 488064) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 5, i32 noundef 284225) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 6, i32 noundef 958768) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 7, i32 noundef 524288) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 8, i32 noundef 492815) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 9, i32 noundef 1019916) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 10, i32 noundef 0) #12
  call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 11, i32 noundef 0) #12
  br label %adm8211_hw_init_syn.exit.i.i

adm8211_hw_init_syn.exit.i.i:                     ; preds = %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb.i.i.i, %if.end69.i.i.adm8211_hw_init_syn.exit.i.i_crit_edge
  %map70.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 2
  %410 = ptrtoint ptr %map70.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %map70.i.i, align 4
  %SYNRF.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %411, i32 0, i32 49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF.i.i, i32 1090) #12, !srcloc !266
  %412 = ptrtoint ptr %map70.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %map70.i.i, align 4
  %SYNRF72.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %413, i32 0, i32 49
  %414 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF72.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @msleep(i32 noundef 20) #12
  %415 = ptrtoint ptr %bbp_type.i.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %bf.load75.i.i = load i8, ptr %bbp_type.i.i, align 4
  %bf.lshr76.i.i = lshr i8 %bf.load75.i.i, 2
  %trunc1.i.i = trunc i8 %bf.lshr76.i.i to i3
  %416 = zext i3 %trunc1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %416, ptr @__sancov_gen_cov_switch_values.153)
  switch i3 %trunc1.i.i, label %do.end206.i.i [
    i3 1, label %if.then81.i.i
    i3 -3, label %if.then116.i.i
  ]

if.then81.i.i:                                    ; preds = %adm8211_hw_init_syn.exit.i.i
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext -128) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext -128) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 17, i8 noundef zeroext 116) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 20, i8 noundef zeroext 56) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 21, i8 noundef zeroext 64) #12
  %eeprom.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 26
  %417 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %eeprom.i.i, align 4
  %major_version.i.i = getelementptr inbounds %struct.adm8211_eeprom, ptr %418, i32 0, i32 1
  %419 = ptrtoint ptr %major_version.i.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %major_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %420)
  %cmp88.i.i = icmp ult i8 %420, 2
  br i1 %cmp88.i.i, label %if.then90.i.i, label %if.else93.i.i

if.then90.i.i:                                    ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 28, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 29, i8 noundef zeroext -128) #12
  br label %adm8211_hw_init.exit

if.else93.i.i:                                    ; preds = %if.then81.i.i
  %421 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %353, align 4
  %revision95.i.i = getelementptr inbounds %struct.pci_dev, ptr %422, i32 0, i32 12
  %423 = ptrtoint ptr %revision95.i.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %revision95.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %424)
  %cmp97.i.i = icmp eq i8 %424, 32
  br i1 %cmp97.i.i, label %if.then99.i.i, label %if.else93.i.i.if.end104.i.i_crit_edge

if.else93.i.i.if.end104.i.i_crit_edge:            ; preds = %if.else93.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.i.i

if.then99.i.i:                                    ; preds = %if.else93.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %cr28.i.i = getelementptr inbounds %struct.adm8211_eeprom, ptr %418, i32 0, i32 8
  %425 = ptrtoint ptr %cr28.i.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %cr28.i.i, align 1
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.then99.i.i, %if.else93.i.i.if.end104.i.i_crit_edge
  %.sink.i.i = phi i8 [ %426, %if.then99.i.i ], [ 0, %if.else93.i.i.if.end104.i.i_crit_edge ]
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 28, i8 noundef zeroext %.sink.i.i) #12
  %427 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %eeprom.i.i, align 4
  %cr29.i.i = getelementptr inbounds %struct.adm8211_eeprom, ptr %428, i32 0, i32 9
  %429 = ptrtoint ptr %cr29.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %cr29.i.i, align 1
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 29, i8 noundef zeroext %430) #12
  br label %adm8211_hw_init.exit

if.then116.i.i:                                   ; preds = %adm8211_hw_init_syn.exit.i.i
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -1) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 7, i8 noundef zeroext 10) #12
  %transceiver_type119.i.i = getelementptr inbounds %struct.adm8211_priv, ptr %353, i32 0, i32 31
  %431 = ptrtoint ptr %transceiver_type119.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %transceiver_type119.i.i, align 4
  %433 = zext i32 %432 to i64
  call void @__sanitizer_cov_trace_switch(i64 %433, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %432, label %do.end.i.i [
    i32 1, label %if.then116.i.i.sw.bb120.i.i_crit_edge
    i32 2, label %if.then116.i.i.sw.bb120.i.i_crit_edge92
    i32 8, label %sw.bb147.i.i
    i32 12, label %sw.bb172.i.i
    i32 0, label %if.then116.i.i.adm8211_hw_init.exit_crit_edge
  ]

if.then116.i.i.adm8211_hw_init.exit_crit_edge:    ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_hw_init.exit

if.then116.i.i.sw.bb120.i.i_crit_edge92:          ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb120.i.i

if.then116.i.i.sw.bb120.i.i_crit_edge:            ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb120.i.i

sw.bb120.i.i:                                     ; preds = %if.then116.i.i.sw.bb120.i.i_crit_edge, %if.then116.i.i.sw.bb120.i.i_crit_edge92
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 6, i8 noundef zeroext 15) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 9, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 10, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 11, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 12, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext -86) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext -116) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 17, i8 noundef zeroext 67) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 24, i8 noundef zeroext 64) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 35) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 33, i8 noundef zeroext 2) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 34, i8 noundef zeroext 40) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 35, i8 noundef zeroext 48) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 36, i8 noundef zeroext 45) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 40, i8 noundef zeroext 53) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 42, i8 noundef zeroext -116) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 43, i8 noundef zeroext -127) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 44, i8 noundef zeroext 68) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 45, i8 noundef zeroext 10) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 41, i8 noundef zeroext 64) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 96, i8 noundef zeroext 8) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 100, i8 noundef zeroext 1) #12
  br label %adm8211_hw_init.exit

sw.bb147.i.i:                                     ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 6, i8 noundef zeroext 15) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 9, i8 noundef zeroext 5) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 10, i8 noundef zeroext 2) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 11, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 12, i8 noundef zeroext 15) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 85) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext -115) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 17, i8 noundef zeroext 67) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 24, i8 noundef zeroext 74) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 32) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 33, i8 noundef zeroext 2) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 34, i8 noundef zeroext 35) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 35, i8 noundef zeroext 48) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 36, i8 noundef zeroext 45) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 42, i8 noundef zeroext -116) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 43, i8 noundef zeroext -127) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 44, i8 noundef zeroext 68) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 41, i8 noundef zeroext 74) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 96, i8 noundef zeroext 43) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 100, i8 noundef zeroext 1) #12
  br label %adm8211_hw_init.exit

sw.bb172.i.i:                                     ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 6, i8 noundef zeroext 15) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 7, i8 noundef zeroext 5) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 8, i8 noundef zeroext 3) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 9, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 10, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 11, i8 noundef zeroext 0) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 12, i8 noundef zeroext 16) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 85) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext -115) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 17, i8 noundef zeroext 67) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 24, i8 noundef zeroext 74) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 32) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 33, i8 noundef zeroext 2) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 34, i8 noundef zeroext 35) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 35, i8 noundef zeroext 48) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 36, i8 noundef zeroext 45) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 42, i8 noundef zeroext -86) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 43, i8 noundef zeroext -127) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 44, i8 noundef zeroext 68) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 41, i8 noundef zeroext -6) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 96, i8 noundef zeroext 45) #12
  call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 100, i8 noundef zeroext 1) #12
  br label %adm8211_hw_init.exit

do.end.i.i:                                       ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %434 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %wiphy.i.i, align 8
  %dev200.i.i = getelementptr inbounds %struct.wiphy, ptr %435, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev200.i.i, ptr noundef nonnull @.str.52, i32 noundef %432) #15
  br label %adm8211_hw_init.exit

do.end206.i.i:                                    ; preds = %adm8211_hw_init_syn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear77.i.i = and i8 %bf.lshr76.i.i, 7
  %bf.cast78.i.i = zext i8 %bf.clear77.i.i to i32
  %wiphy207.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %436 = ptrtoint ptr %wiphy207.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %wiphy207.i.i, align 8
  %dev208.i.i = getelementptr inbounds %struct.wiphy, ptr %437, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev208.i.i, ptr noundef nonnull @.str.56, i32 noundef %bf.cast78.i.i) #15
  br label %adm8211_hw_init.exit

adm8211_hw_init.exit:                             ; preds = %do.end206.i.i, %do.end.i.i, %sw.bb172.i.i, %sw.bb147.i.i, %sw.bb120.i.i, %if.then116.i.i.adm8211_hw_init.exit_crit_edge, %if.end104.i.i, %if.then90.i.i
  %438 = ptrtoint ptr %map70.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %map70.i.i, align 4
  %SYNRF217.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %439, i32 0, i32 49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF217.i.i, i32 0) #12, !srcloc !266
  %440 = ptrtoint ptr %map70.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %map70.i.i, align 4
  %SYNCTL219.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %441, i32 0, i32 25
  %442 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNCTL219.i.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %443 = or i32 %442, 4
  %444 = ptrtoint ptr %map70.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %map70.i.i, align 4
  %SYNCTL223.i.i = getelementptr inbounds %struct.adm8211_csr, ptr %445, i32 0, i32 25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNCTL223.i.i, i32 %443) #12, !srcloc !266
  %446 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %map.i47, align 4
  %IER.i = getelementptr inbounds %struct.adm8211_csr, ptr %447, i32 0, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IER.i, i32 0) #12, !srcloc !266
  %448 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %map.i47, align 4
  %STSR.i = getelementptr inbounds %struct.adm8211_csr, ptr %449, i32 0, i32 10
  %450 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %STSR.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %451 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %map.i47, align 4
  %STSR72.i = getelementptr inbounds %struct.adm8211_csr, ptr %452, i32 0, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %STSR72.i, i32 %450) #12, !srcloc !266
  %453 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %map.i47, align 4
  %MACTEST.i = getelementptr inbounds %struct.adm8211_csr, ptr %454, i32 0, i32 63
  %455 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MACTEST.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %456 = and i32 %455, -28673
  %457 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %map.i47, align 4
  %MACTEST77.i = getelementptr inbounds %struct.adm8211_csr, ptr %458, i32 0, i32 63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MACTEST77.i, i32 %456) #12, !srcloc !266
  %459 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %map.i47, align 4
  %WEPCTL.i = getelementptr inbounds %struct.adm8211_csr, ptr %460, i32 0, i32 60
  %461 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WEPCTL.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %462 = and i32 %461, -131
  %463 = or i32 %462, 2
  %464 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %map.i47, align 4
  %WEPCTL83.i = getelementptr inbounds %struct.adm8211_csr, ptr %465, i32 0, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WEPCTL83.i, i32 %463) #12, !srcloc !266
  %466 = ptrtoint ptr %map.i47 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %map.i47, align 4
  %LPC.i = getelementptr inbounds %struct.adm8211_csr, ptr %467, i32 0, i32 16
  %468 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LPC.i) #12, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cline.i) #12
  %channel = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 18
  %469 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %channel, align 4
  call fastcc void @adm8211_rf_set_channel(ptr noundef %dev, i32 noundef %470)
  %471 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %472, i32 0, i32 46
  %473 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %474, ptr noundef nonnull @adm8211_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %adm8211_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy20 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %475 = ptrtoint ptr %wiphy20 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %wiphy20, align 8
  %dev21 = getelementptr inbounds %struct.wiphy, ptr %476, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.50) #15
  br label %cleanup

if.end22:                                         ; preds = %adm8211_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %477 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %map.i, align 4
  %IER = getelementptr inbounds %struct.adm8211_csr, ptr %478, i32 0, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IER, i32 1166541056) #12, !srcloc !266
  %mode = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 17
  %479 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 6, ptr %mode, align 4
  call fastcc void @adm8211_update_mode(ptr noundef %dev)
  %480 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %map.i, align 4
  %RDR = getelementptr inbounds %struct.adm8211_csr, ptr %481, i32 0, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RDR, i32 0) #12, !srcloc !266
  %482 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %priv1, align 8
  %map.i64 = getelementptr inbounds %struct.adm8211_priv, ptr %483, i32 0, i32 2
  %484 = ptrtoint ptr %map.i64 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %map.i64, align 4
  %BPLI.i = getelementptr inbounds %struct.adm8211_csr, ptr %485, i32 0, i32 50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BPLI.i, i32 167797760) #12, !srcloc !266
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -110, %do.end ], [ %call.i, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm8211_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mode = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mode, align 4
  %nar = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 28
  %3 = ptrtoint ptr %nar to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nar, align 4
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %NAR = getelementptr inbounds %struct.adm8211_csr, ptr %5, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR, i32 0) #12, !srcloc !266
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %IER = getelementptr inbounds %struct.adm8211_csr, ptr %7, i32 0, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IER, i32 0) #12, !srcloc !266
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %NAR4 = getelementptr inbounds %struct.adm8211_csr, ptr %9, i32 0, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %NAR4) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %dev) #12
  %15 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv1, align 8
  %rx_ring_size.i = getelementptr inbounds %struct.adm8211_priv, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp50.not.i = icmp eq i32 %18, 0
  br i1 %cmp50.not.i, label %entry.for.cond8.preheader.i_crit_edge, label %for.body.lr.ph.i

entry.for.cond8.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader.i

for.body.lr.ph.i:                                 ; preds = %entry
  %rx_buffers.i = getelementptr inbounds %struct.adm8211_priv, ptr %16, i32 0, i32 7
  br label %for.body.i

for.cond8.preheader.i:                            ; preds = %for.inc.i.for.cond8.preheader.i_crit_edge, %entry.for.cond8.preheader.i_crit_edge
  %tx_ring_size.i = getelementptr inbounds %struct.adm8211_priv, ptr %16, i32 0, i32 10
  %19 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp953.not.i = icmp eq i32 %20, 0
  br i1 %cmp953.not.i, label %for.cond8.preheader.i.adm8211_free_rings.exit_crit_edge, label %for.body10.lr.ph.i

for.cond8.preheader.i.adm8211_free_rings.exit_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_free_rings.exit

for.body10.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %tx_buffers.i = getelementptr inbounds %struct.adm8211_priv, ptr %16, i32 0, i32 8
  br label %for.body10.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %rx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buffers.i, align 4
  %arrayidx.i = getelementptr %struct.adm8211_rx_ring_info, ptr %22, i32 %i.051.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %16, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %mapping.i = getelementptr %struct.adm8211_rx_ring_info, ptr %22, i32 %i.051.i, i32 1
  %27 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mapping.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %28, i32 noundef 2500, i32 noundef 2, i32 noundef 0) #12
  %29 = ptrtoint ptr %rx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_buffers.i, align 4
  %arrayidx6.i = getelementptr %struct.adm8211_rx_ring_info, ptr %30, i32 %i.051.i
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @consume_skb(ptr noundef %32) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.051.i, 1
  %33 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_ring_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %34
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond8.preheader.i_crit_edge

for.inc.i.for.cond8.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body10.i:                                     ; preds = %for.inc27.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.154.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc28.i, %for.inc27.i.for.body10.i_crit_edge ]
  %35 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx11.i = getelementptr %struct.adm8211_tx_ring_info, ptr %36, i32 %i.154.i
  %37 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx11.i, align 4
  %tobool13.not.i = icmp eq ptr %38, null
  br i1 %tobool13.not.i, label %for.body10.i.for.inc27.i_crit_edge, label %if.end15.i

for.body10.i.for.inc27.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc27.i

if.end15.i:                                       ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %16, align 4
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %mapping20.i = getelementptr %struct.adm8211_tx_ring_info, ptr %36, i32 %i.154.i, i32 1
  %41 = ptrtoint ptr %mapping20.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mapping20.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 6
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev17.i, i32 noundef %42, i32 noundef %44, i32 noundef 1, i32 noundef 0) #12
  %45 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx25.i = getelementptr %struct.adm8211_tx_ring_info, ptr %46, i32 %i.154.i
  %47 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx25.i, align 4
  tail call void @consume_skb(ptr noundef %48) #12
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %if.end15.i, %for.body10.i.for.inc27.i_crit_edge
  %inc28.i = add nuw i32 %i.154.i, 1
  %49 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_ring_size.i, align 4
  %cmp9.i = icmp ult i32 %inc28.i, %50
  br i1 %cmp9.i, label %for.inc27.i.for.body10.i_crit_edge, label %for.inc27.i.adm8211_free_rings.exit_crit_edge

for.inc27.i.adm8211_free_rings.exit_crit_edge:    ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_free_rings.exit

for.inc27.i.for.body10.i_crit_edge:               ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i

adm8211_free_rings.exit:                          ; preds = %for.inc27.i.adm8211_free_rings.exit_crit_edge, %for.cond8.preheader.i.adm8211_free_rings.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm8211_add_interface(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mode = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond = icmp eq i32 %5, 2
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %mode, align 4
  %nar = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nar, align 4
  %and = and i32 %8, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.do.end_crit_edge, label %if.then4

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %and6 = and i32 %8, -8195
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %NAR = getelementptr inbounds %struct.adm8211_csr, ptr %10, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %and6) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR, i32 %11) #12, !srcloc !266
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %NAR8 = getelementptr inbounds %struct.adm8211_csr, ptr %13, i32 0, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %NAR8) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @msleep(i32 noundef 20) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %sw.bb.do.end_crit_edge
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 8
  %map10 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %map10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map10, align 4
  %PAR0 = getelementptr inbounds %struct.adm8211_csr, ptr %18, i32 0, i32 37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PAR0, i32 %16) #12, !srcloc !266
  %add.ptr = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i32
  %22 = ptrtoint ptr %map10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map10, align 4
  %PAR1 = getelementptr inbounds %struct.adm8211_csr, ptr %23, i32 0, i32 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PAR1, i32 %24) #12, !srcloc !266
  tail call fastcc void @adm8211_update_mode(ptr noundef %dev)
  %25 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nar, align 4
  %and16 = and i32 %26, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %if.then18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %map10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map10, align 4
  %NAR21 = getelementptr inbounds %struct.adm8211_csr, ptr %28, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR21, i32 %29) #12, !srcloc !266
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @adm8211_remove_interface(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mode = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %mode, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm8211_config(ptr noundef %dev, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %5, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #12
  %channel3 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %7)
  %cmp.not = icmp eq i32 %call.i, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %channel3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %channel3, align 4
  tail call fastcc void @adm8211_rf_set_channel(ptr noundef %dev, i32 noundef %call.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm8211_bss_info_changed(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %conf, i32 noundef %changes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %changes, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 8
  %bssid2 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %bssid2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bssid2, align 4
  %xor.i = xor i32 %7, %5
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.adm8211_priv, ptr %1, i32 0, i32 19, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %11, %9
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %map.i = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 4
  %BSSID0.i = getelementptr inbounds %struct.adm8211_csr, ptr %13, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BSSID0.i, i32 %5) #12, !srcloc !266
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 4
  %ABDA1.i = getelementptr inbounds %struct.adm8211_csr, ptr %15, i32 0, i32 42
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ABDA1.i) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx3.i = getelementptr i8, ptr %3, i32 5
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %22 to i32
  %shl5.i = shl nuw i32 %conv4.i, 24
  %or.i13 = or i32 %shl.i, %18
  %or6.i = or i32 %or.i13, %shl5.i
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i, align 4
  %ABDA18.i = getelementptr inbounds %struct.adm8211_csr, ptr %24, i32 0, i32 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ABDA18.i, i32 %25) #12, !srcloc !266
  %26 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conf, align 8
  %28 = call ptr @memcpy(ptr %bssid2, ptr %27, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i64 @adm8211_prepare_multicast(ptr nocapture noundef readnone %hw, ptr noundef readonly %mc_list) #7 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #12
  %0 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %1 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mc_filter, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %3 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %ha.060 = load ptr, ptr %mc_list, align 4
  %cmp.not61 = icmp eq ptr %ha.060, %mc_list
  br i1 %cmp.not61, label %entry.for.end_crit_edge, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  br label %cond.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %entry.cond.end_crit_edge
  %ha.062 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.060, %entry.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.062, i32 0, i32 2
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #18
  %4 = and i32 %call, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %6 to i32
  %shr26 = lshr i32 %conv2.i.i, 2
  %and28 = and i32 %shr26, 31
  %shl29 = shl nuw i32 1, %and28
  %shr30 = lshr i32 %conv2.i.i, 7
  %arrayidx31 = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %shr30
  %7 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx31, align 4
  %or32 = or i32 %shl29, %8
  store i32 %or32, ptr %arrayidx31, align 4
  %9 = ptrtoint ptr %ha.062 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.0 = load ptr, ptr %ha.062, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  %10 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mc_filter, align 4
  %conv = zext i32 %11 to i64
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 4
  %conv40 = zext i32 %13 to i64
  %shl41 = shl nuw i64 %conv40, 32
  %or42 = or i64 %shl41, %conv
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #12
  ret i64 %or42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm8211_configure_filter(ptr nocapture noundef %dev, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %multicast)
  %cmp = icmp eq i64 %multicast, -1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nar = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nar, align 4
  %and5 = and i32 %5, -193
  %or7 = or i32 %and5, 128
  store i32 %or7, ptr %nar, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shr = lshr i64 %multicast, 32
  %conv2 = trunc i64 %shr to i32
  %conv = trunc i64 %multicast to i32
  %nar10 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %nar10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nar10, align 4
  %and11 = and i32 %7, -193
  store i32 %and11, ptr %nar10, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %new_flags.0 = phi i32 [ 2, %if.then ], [ 0, %if.else ]
  %mc_filter.sroa.6.0 = phi i32 [ -1, %if.then ], [ %conv2, %if.else ]
  %mc_filter.sroa.0.0 = phi i32 [ -1, %if.then ], [ %conv, %if.else ]
  %nar12 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %nar12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nar12, align 4
  %and13 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.do.end_crit_edge, label %if.then15

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %and17 = and i32 %9, -3
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %NAR = getelementptr inbounds %struct.adm8211_csr, ptr %11, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and17) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR, i32 %12) #12, !srcloc !266
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %NAR19 = getelementptr inbounds %struct.adm8211_csr, ptr %14, i32 0, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %NAR19) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #12
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body.do.end_crit_edge
  %map23 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %map23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map23, align 4
  %MAR0 = getelementptr inbounds %struct.adm8211_csr, ptr %37, i32 0, i32 39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %mc_filter.sroa.0.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAR0, i32 %38) #12, !srcloc !266
  %39 = ptrtoint ptr %map23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map23, align 4
  %MAR1 = getelementptr inbounds %struct.adm8211_csr, ptr %40, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %mc_filter.sroa.6.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAR1, i32 %41) #12, !srcloc !266
  %42 = ptrtoint ptr %map23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map23, align 4
  %NAR27 = getelementptr inbounds %struct.adm8211_csr, ptr %43, i32 0, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %NAR27) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %45 = ptrtoint ptr %nar12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nar12, align 4
  %flags = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and.i = and i32 %48, -3
  %and30 = lshr i32 %46, 5
  %49 = and i32 %and30, 2
  %and.i.sink = or i32 %and.i, %49
  store i32 %and.i.sink, ptr %flags, align 4
  %50 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total_flags, align 4
  %and35 = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else38, label %if.then37

if.then37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv1, align 8
  %map.i = getelementptr inbounds %struct.adm8211_priv, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map.i, align 4
  %BSSID0.i = getelementptr inbounds %struct.adm8211_csr, ptr %55, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BSSID0.i, i32 -1) #12, !srcloc !266
  %56 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map.i, align 4
  %ABDA1.i = getelementptr inbounds %struct.adm8211_csr, ptr %57, i32 0, i32 42
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ABDA1.i) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %59 = or i32 %58, 65535
  %60 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i, align 4
  %ABDA18.i = getelementptr inbounds %struct.adm8211_csr, ptr %61, i32 0, i32 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ABDA18.i, i32 %59) #12, !srcloc !266
  br label %do.body41

if.else38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %bssid = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 19
  %62 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv1, align 8
  %64 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bssid, align 4
  %map.i76 = getelementptr inbounds %struct.adm8211_priv, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %map.i76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map.i76, align 4
  %BSSID0.i77 = getelementptr inbounds %struct.adm8211_csr, ptr %67, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BSSID0.i77, i32 %65) #12, !srcloc !266
  %68 = ptrtoint ptr %map.i76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map.i76, align 4
  %ABDA1.i78 = getelementptr inbounds %struct.adm8211_csr, ptr %69, i32 0, i32 42
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ABDA1.i78) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %71 = and i32 %70, -65536
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  %arrayidx.i = getelementptr %struct.adm8211_priv, ptr %1, i32 0, i32 19, i32 4
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %74 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx3.i = getelementptr %struct.adm8211_priv, ptr %1, i32 0, i32 19, i32 5
  %75 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %76 to i32
  %shl5.i = shl nuw i32 %conv4.i, 24
  %or.i79 = or i32 %shl.i, %72
  %or6.i80 = or i32 %or.i79, %shl5.i
  %77 = ptrtoint ptr %map.i76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map.i76, align 4
  %ABDA18.i81 = getelementptr inbounds %struct.adm8211_csr, ptr %78, i32 0, i32 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %79 = tail call i32 @llvm.bswap.i32(i32 %or6.i80) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ABDA18.i81, i32 %79) #12, !srcloc !266
  br label %do.body41

do.body41:                                        ; preds = %if.else38, %if.then37
  %80 = ptrtoint ptr %nar12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nar12, align 4
  %and43 = and i32 %81, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body41.do.end51_crit_edge, label %if.then45

do.body41.do.end51_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end51

if.then45:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %map23 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map23, align 4
  %NAR48 = getelementptr inbounds %struct.adm8211_csr, ptr %83, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %84 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR48, i32 %84) #12, !srcloc !266
  br label %do.end51

do.end51:                                         ; preds = %if.then45, %do.body41.do.end51_crit_edge
  %85 = ptrtoint ptr %total_flags to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %new_flags.0, ptr %total_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adm8211_get_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %stats2 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 14
  %2 = call ptr @memcpy(ptr %stats, ptr %stats2, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @adm8211_get_tsft(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %TSFTL = getelementptr inbounds %struct.adm8211_csr, ptr %3, i32 0, i32 59
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TSFTL) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %TSFTH = getelementptr inbounds %struct.adm8211_csr, ptr %6, i32 0, i32 47
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TSFTH) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %8 = zext i32 %7 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  ret i64 %12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm8211_rf_set_channel(ptr noundef readonly %dev, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ant_power2 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ant_power2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ant_power2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %3)
  %cmp = icmp ugt i8 %3, 63
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %eeprom = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eeprom, align 4
  %sub = add i32 %chan, -1
  %arrayidx = getelementptr %struct.adm8211_eeprom, ptr %5, i32 0, i32 28, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond.in = phi i8 [ %7, %cond.true ], [ %3, %entry.cond.end_crit_edge ]
  %tx_power8 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %tx_power8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_power8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp10 = icmp ugt i8 %9, 63
  br i1 %cmp10, label %cond.true12, label %cond.end.cond.end21_crit_edge

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end21

cond.true12:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %eeprom13 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %eeprom13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eeprom13, align 4
  %sub15 = add i32 %chan, -1
  %arrayidx16 = getelementptr %struct.adm8211_eeprom, ptr %11, i32 0, i32 30, i32 %sub15
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true12, %cond.end.cond.end21_crit_edge
  %cond22.in = phi i8 [ %13, %cond.true12 ], [ %9, %cond.end.cond.end21_crit_edge ]
  %lpf_cutoff24 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %lpf_cutoff24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lpf_cutoff24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp26 = icmp eq i8 %15, -1
  br i1 %cmp26, label %cond.true28, label %cond.end21.cond.end37_crit_edge

cond.end21.cond.end37_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end37

cond.true28:                                      ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  %eeprom29 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %eeprom29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eeprom29, align 4
  %sub31 = add i32 %chan, -1
  %arrayidx32 = getelementptr %struct.adm8211_eeprom, ptr %17, i32 0, i32 31, i32 %sub31
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx32, align 1
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true28, %cond.end21.cond.end37_crit_edge
  %cond38.in = phi i8 [ %19, %cond.true28 ], [ %15, %cond.end21.cond.end37_crit_edge ]
  %lnags_threshold = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 25
  %20 = ptrtoint ptr %lnags_threshold to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lnags_threshold, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp41 = icmp eq i8 %21, -1
  br i1 %cmp41, label %cond.true43, label %cond.end37.cond.end52_crit_edge

cond.end37.cond.end52_crit_edge:                  ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end52

cond.true43:                                      ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #14
  %eeprom44 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 26
  %22 = ptrtoint ptr %eeprom44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eeprom44, align 4
  %sub46 = add i32 %chan, -1
  %arrayidx47 = getelementptr %struct.adm8211_eeprom, ptr %23, i32 0, i32 32, i32 %sub46
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx47, align 1
  br label %cond.end52

cond.end52:                                       ; preds = %cond.true43, %cond.end37.cond.end52_crit_edge
  %cond53.in = phi i8 [ %25, %cond.true43 ], [ %21, %cond.end37.cond.end52_crit_edge ]
  %nar = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 28
  %26 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nar, align 4
  %and = and i32 %27, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end52.do.end_crit_edge, label %if.then

cond.end52.do.end_crit_edge:                      ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #14
  %and56 = and i32 %27, -8195
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map, align 4
  %NAR = getelementptr inbounds %struct.adm8211_csr, ptr %29, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %and56) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR, i32 %30) #12, !srcloc !266
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %NAR58 = getelementptr inbounds %struct.adm8211_csr, ptr %32, i32 0, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %NAR58) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @msleep(i32 noundef 20) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end52.do.end_crit_edge
  %transceiver_type = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 31
  %34 = ptrtoint ptr %transceiver_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %transceiver_type, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %35, label %do.end90 [
    i32 1, label %do.end.sw.bb_crit_edge
    i32 2, label %do.end.sw.bb_crit_edge1
    i32 0, label %sw.bb63
    i32 8, label %sw.bb70
    i32 12, label %sw.bb79
  ]

do.end.sw.bb_crit_edge1:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge1
  tail call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 16391)
  tail call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 2, i32 noundef 51)
  %sub59 = add i32 %chan, -1
  %arrayidx60 = getelementptr [14 x i32], ptr @adm8211_rf_set_channel.adm8211_rfmd2958_reg5, i32 0, i32 %sub59
  %37 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx60, align 4
  tail call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 5, i32 noundef %38)
  %arrayidx62 = getelementptr [14 x i32], ptr @adm8211_rf_set_channel.adm8211_rfmd2958_reg6, i32 0, i32 %sub59
  %39 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx62, align 4
  tail call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 6, i32 noundef %40)
  br label %sw.epilog

sw.bb63:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @adm8211_rf_write_syn_rfmd2948(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 64)
  tail call fastcc void @adm8211_rf_write_syn_rfmd2948(ptr noundef %dev, i16 noundef zeroext 2, i32 noundef 3)
  tail call fastcc void @adm8211_rf_write_syn_rfmd2948(ptr noundef %dev, i16 noundef zeroext 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %chan)
  %cmp64 = icmp eq i32 %chan, 14
  %mul = mul i32 %chan, 5
  %add = add i32 %mul, 2033
  %cond69 = select i1 %cmp64, i32 2110, i32 %add
  tail call fastcc void @adm8211_rf_write_syn_rfmd2948(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef %cond69)
  tail call fastcc void @adm8211_rf_write_syn_rfmd2948(ptr noundef %dev, i16 noundef zeroext 5, i32 noundef 1496)
  tail call fastcc void @adm8211_rf_write_syn_rfmd2948(ptr noundef %dev, i16 noundef zeroext 7, i32 noundef 44)
  tail call fastcc void @adm8211_rf_write_syn_rfmd2948(ptr noundef %dev, i16 noundef zeroext 8, i32 noundef 44)
  br label %sw.epilog

sw.bb70:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %chan)
  %cmp71 = icmp eq i32 %chan, 14
  %mul75 = mul i32 %chan, 5
  %add76 = add i32 %mul75, 7
  %cond78 = select i1 %cmp71, i32 84, i32 %add76
  tail call fastcc void @adm8211_rf_write_syn_max2820(ptr noundef %dev, i16 noundef zeroext 3, i32 noundef %cond78)
  br label %sw.epilog

sw.bb79:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %chan)
  %cmp80 = icmp eq i32 %chan, 14
  %mul84 = mul i32 %chan, 5
  %add85 = add i32 %mul84, 141671
  %cond87 = select i1 %cmp80, i32 141748, i32 %add85
  tail call fastcc void @adm8211_rf_write_syn_al2210l(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef %cond87)
  br label %sw.epilog

do.end90:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %41 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy, align 8
  %dev91 = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev91, ptr noundef nonnull @.str.63, i32 noundef %35) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end90, %sw.bb79, %sw.bb70, %sw.bb63, %sw.bb
  %bbp_type = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 29
  %43 = ptrtoint ptr %bbp_type to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %bbp_type, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %trunc = trunc i8 %bf.lshr to i3
  %44 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.156)
  switch i3 %trunc, label %do.end181 [
    i3 1, label %if.then95
    i3 -3, label %sw.epilog.do.body191_crit_edge
  ]

sw.epilog.do.body191_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body191

if.then95:                                        ; preds = %sw.epilog
  %45 = ptrtoint ptr %transceiver_type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %transceiver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp97 = icmp eq i32 %46, 0
  br i1 %cmp97, label %if.then99, label %if.then95.if.end110_crit_edge

if.then95.if.end110_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  %map100 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %map100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map100, align 4
  %GPIO = getelementptr inbounds %struct.adm8211_csr, ptr %48, i32 0, i32 23
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %GPIO) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %50 = and i32 %49, 64767
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %chan)
  %cmp103.not = icmp eq i32 %chan, 14
  %spec.select.v = select i1 %cmp103.not, i32 4096, i32 4160
  %spec.select = or i32 %51, %spec.select.v
  %52 = ptrtoint ptr %map100 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map100, align 4
  %GPIO109 = getelementptr inbounds %struct.adm8211_csr, ptr %53, i32 0, i32 23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %54 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %GPIO109, i32 %54) #12, !srcloc !266
  %55 = ptrtoint ptr %transceiver_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %transceiver_type, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then99, %if.then95.if.end110_crit_edge
  %56 = phi i32 [ %.pr, %if.then99 ], [ %46, %if.then95.if.end110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp112 = icmp eq i32 %56, 1
  br i1 %cmp112, label %if.then114, label %if.else

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 11, i32 noundef 28928)
  %eeprom115 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 26
  %57 = ptrtoint ptr %eeprom115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %eeprom115, align 4
  %cr49 = getelementptr inbounds %struct.adm8211_eeprom, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %cr49 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %cr49, align 1
  %61 = lshr i16 %60, 5
  %62 = and i16 %61, 7
  %shr = zext i16 %62 to i32
  %shl = shl nuw nsw i32 %shr, 15
  %conv117 = zext i8 %cond.in to i32
  %shl118 = shl nuw nsw i32 %conv117, 9
  %or119 = or i32 %shl, %shl118
  tail call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 10, i32 noundef %or119)
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %66)
  %cmp121 = icmp ult i8 %66, 48
  %67 = or i8 %cond22.in, 80
  %narrow = select i1 %cmp121, i8 %67, i8 80
  %cond127 = zext i8 %narrow to i32
  tail call fastcc void @adm8211_rf_write_syn_rfmd2958(ptr noundef %dev, i16 noundef zeroext 9, i32 noundef %cond127)
  br label %if.end137

if.else:                                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %map129 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %map129 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map129, align 4
  %PLCPHD = getelementptr inbounds %struct.adm8211_csr, ptr %69, i32 0, i32 26
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PLCPHD) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %71 = and i32 %70, -65281
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %conv132 = zext i8 %cond22.in to i32
  %shl133 = shl nuw nsw i32 %conv132, 18
  %or134 = or i32 %72, %shl133
  %73 = ptrtoint ptr %map129 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map129, align 4
  %PLCPHD136 = getelementptr inbounds %struct.adm8211_csr, ptr %74, i32 0, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %75 = tail call i32 @llvm.bswap.i32(i32 %or134) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PLCPHD136, i32 %75) #12, !srcloc !266
  br label %if.end137

if.end137:                                        ; preds = %if.else, %if.then114
  %map138 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %map138 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map138, align 4
  %SYNRF = getelementptr inbounds %struct.adm8211_csr, ptr %77, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF, i32 1090) #12, !srcloc !266
  %78 = ptrtoint ptr %map138 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map138, align 4
  %SYNRF140 = getelementptr inbounds %struct.adm8211_csr, ptr %79, i32 0, i32 49
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF140) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @msleep(i32 noundef 30) #12
  %81 = ptrtoint ptr %transceiver_type to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %transceiver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp143.not = icmp eq i32 %82, 1
  br i1 %cmp143.not, label %if.end137.if.end150_crit_edge, label %if.then145

if.end137.if.end150_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.then145:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  %shl147 = shl i8 %cond22.in, 2
  tail call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 17, i8 noundef zeroext %shl147)
  br label %if.end150

if.end150:                                        ; preds = %if.then145, %if.end137.if.end150_crit_edge
  tail call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 20, i8 noundef zeroext %cond38.in)
  tail call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 21, i8 noundef zeroext %cond53.in)
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %revision154 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %revision154 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %revision154, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %86)
  %cmp156 = icmp eq i8 %86, 32
  br i1 %cmp156, label %cond.true158, label %if.end150.cond.end162_crit_edge

if.end150.cond.end162_crit_edge:                  ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end162

cond.true158:                                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  %eeprom159 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 26
  %87 = ptrtoint ptr %eeprom159 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %eeprom159, align 4
  %cr28 = getelementptr inbounds %struct.adm8211_eeprom, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %cr28 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %cr28, align 1
  br label %cond.end162

cond.end162:                                      ; preds = %cond.true158, %if.end150.cond.end162_crit_edge
  %cond163 = phi i8 [ %90, %cond.true158 ], [ 0, %if.end150.cond.end162_crit_edge ]
  tail call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 28, i8 noundef zeroext %cond163)
  %eeprom166 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 26
  %91 = ptrtoint ptr %eeprom166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %eeprom166, align 4
  %cr29 = getelementptr inbounds %struct.adm8211_eeprom, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %cr29 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %cr29, align 1
  tail call fastcc void @adm8211_write_bbp(ptr noundef %dev, i8 noundef zeroext 29, i8 noundef zeroext %94)
  %95 = ptrtoint ptr %map138 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %map138, align 4
  %SYNRF169 = getelementptr inbounds %struct.adm8211_csr, ptr %96, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF169, i32 0) #12, !srcloc !266
  br label %do.body191

do.end181:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %wiphy182 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %97 = ptrtoint ptr %wiphy182 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wiphy182, align 8
  %dev183 = getelementptr inbounds %struct.wiphy, ptr %98, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev183, ptr noundef nonnull @.str.66, i32 noundef %bf.cast) #15
  br label %do.body191

do.body191:                                       ; preds = %do.end181, %cond.end162, %sw.epilog.do.body191_crit_edge
  %99 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nar, align 4
  %and193 = and i32 %100, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %do.body191.do.end201_crit_edge, label %if.then195

do.body191.do.end201_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end201

if.then195:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #14
  %map197 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %101 = ptrtoint ptr %map197 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map197, align 4
  %NAR198 = getelementptr inbounds %struct.adm8211_csr, ptr %102, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %103 = tail call i32 @llvm.bswap.i32(i32 %100) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR198, i32 %103) #12, !srcloc !266
  br label %do.end201

do.end201:                                        ; preds = %if.then195, %do.body191.do.end201_crit_edge
  %map202 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %104 = ptrtoint ptr %map202 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map202, align 4
  %CAP0 = getelementptr inbounds %struct.adm8211_csr, ptr %105, i32 0, i32 51
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CAP0) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %107 = and i32 %106, -251658241
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %or205 = or i32 %108, %chan
  %109 = ptrtoint ptr %map202 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %map202, align 4
  %CAP0207 = getelementptr inbounds %struct.adm8211_csr, ptr %110, i32 0, i32 51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %111 = tail call i32 @llvm.bswap.i32(i32 %or205) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CAP0207, i32 %111) #12, !srcloc !266
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm8211_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %STSR = getelementptr inbounds %struct.adm8211_csr, ptr %3, i32 0, i32 10
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %STSR) #12, !srcloc !264
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %STSR3 = getelementptr inbounds %struct.adm8211_csr, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %STSR3, i32 %4) #12, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  %and = and i32 %5, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %entry
  %and6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 8
  %cur_rx.i = getelementptr inbounds %struct.adm8211_priv, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_rx.i, align 4
  %rx_ring_size.i = getelementptr inbounds %struct.adm8211_priv, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ring_size.i, align 4
  %rem.i = urem i32 %11, %13
  %rx_ring.i = getelementptr inbounds %struct.adm8211_priv, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx190.i = getelementptr %struct.adm8211_desc, ptr %15, i32 %rem.i
  %16 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx190.i, align 4
  %and191.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool.not192.i = icmp eq i32 %and191.i, 0
  br i1 %tobool.not192.i, label %while.body.lr.ph.i, label %if.then8.if.end9_crit_edge

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

while.body.lr.ph.i:                               ; preds = %if.then8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %soft_rx_crc.i = getelementptr inbounds %struct.adm8211_priv, ptr %9, i32 0, i32 20
  %rx_buffers49.i = getelementptr inbounds %struct.adm8211_priv, ptr %9, i32 0, i32 7
  %channel.i = getelementptr inbounds %struct.adm8211_priv, ptr %9, i32 0, i32 18
  br label %while.body.i

while.body.i:                                     ; preds = %if.end115.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %18 = phi i32 [ %17, %while.body.lr.ph.i ], [ %122, %if.end115.i.while.body.i_crit_edge ]
  %19 = phi ptr [ %15, %while.body.lr.ph.i ], [ %120, %if.end115.i.while.body.i_crit_edge ]
  %limit.0196.i = phi i32 [ %13, %while.body.lr.ph.i ], [ %dec.i, %if.end115.i.while.body.i_crit_edge ]
  %entry2.0193.i = phi i32 [ %rem.i, %while.body.lr.ph.i ], [ %rem118.i, %if.end115.i.while.body.i_crit_edge ]
  %dec.i = add i32 %limit.0196.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0196.i)
  %tobool5.not.i = icmp eq i32 %limit.0196.i, 0
  br i1 %tobool5.not.i, label %while.body.i.if.end9_crit_edge, label %if.end.i

while.body.i.if.end9_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.i:                                         ; preds = %while.body.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %and9.i = lshr i32 %20, 12
  %21 = trunc i32 %and9.i to i8
  %conv.i = and i8 %21, 15
  %length.i = getelementptr %struct.adm8211_desc, ptr %19, i32 %entry2.0193.i, i32 1
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 4
  %24 = lshr i32 %23, 24
  %25 = trunc i32 %24 to i8
  %conv13.i = and i8 %25, 127
  %and14.i = and i32 %20, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %and14.i)
  %cmp.i = icmp ugt i32 %and14.i, 2500
  br i1 %cmp.i, label %if.then16.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end.i
  %call.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.then16.i.if.end21.i_crit_edge, label %do.end.i

if.then16.i.if.end21.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

do.end.i:                                         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy.i, align 8
  %dev19.i = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev19.i, ptr noundef nonnull @.str.119, i32 noundef %and14.i) #15
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i, %if.then16.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %pktlen.0.i = phi i32 [ %and14.i, %if.end.i.if.end21.i_crit_edge ], [ 2500, %do.end.i ], [ 2500, %if.then16.i.if.end21.i_crit_edge ]
  %28 = ptrtoint ptr %soft_rx_crc.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %soft_rx_crc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool22.not.i = icmp ne i8 %29, 0
  %and23.i = and i32 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool24.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.end21.i.if.end88.i_crit_edge

if.end21.i.if.end88.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.else.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %pktlen.0.i)
  %cmp26.i = icmp ult i32 %pktlen.0.i, 128
  br i1 %cmp26.i, label %if.then28.i, label %if.else45.i

if.then28.i:                                      ; preds = %if.else.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %pktlen.0.i, i32 noundef 2592) #12
  %tobool30.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool30.not.i, label %if.then28.i.if.end88.i_crit_edge, label %if.then31.i

if.then28.i.if.end88.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.then31.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %9, align 4
  %dev32.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_buffers49.i, align 4
  %mapping.i = getelementptr %struct.adm8211_rx_ring_info, ptr %33, i32 %entry2.0193.i, i32 1
  %34 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mapping.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev32.i, i32 noundef %35, i32 noundef %pktlen.0.i, i32 noundef 2) #12
  %36 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buffers49.i, align 4
  %arrayidx35.i = getelementptr %struct.adm8211_rx_ring_info, ptr %37, i32 %entry2.0193.i
  %38 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx35.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %pktlen.0.i) #12
  %42 = call ptr @memcpy(ptr %call.i.i, ptr %41, i32 %pktlen.0.i)
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %9, align 4
  %dev40.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_buffers49.i, align 4
  %mapping43.i = getelementptr %struct.adm8211_rx_ring_info, ptr %46, i32 %entry2.0193.i, i32 1
  %47 = ptrtoint ptr %mapping43.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mapping43.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev40.i, i32 noundef %48, i32 noundef 2500, i32 noundef 2) #12
  br label %if.end88.i

if.else45.i:                                      ; preds = %if.else.i
  %call.i.i187.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2500, i32 noundef 2592) #12
  %tobool47.not.i = icmp eq ptr %call.i.i187.i, null
  br i1 %tobool47.not.i, label %if.else45.i.if.end81.i_crit_edge, label %if.then48.i

if.else45.i.if.end81.i_crit_edge:                 ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.then48.i:                                      ; preds = %if.else45.i
  %49 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_buffers49.i, align 4
  %arrayidx50.i = getelementptr %struct.adm8211_rx_ring_info, ptr %50, i32 %entry2.0193.i
  %51 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx50.i, align 4
  %call52.i = tail call ptr @skb_put(ptr noundef %52, i32 noundef %pktlen.0.i) #12
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %9, align 4
  %dev54.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buffers49.i, align 4
  %mapping57.i = getelementptr %struct.adm8211_rx_ring_info, ptr %56, i32 %entry2.0193.i, i32 1
  %57 = ptrtoint ptr %mapping57.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mapping57.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev54.i, i32 noundef %58, i32 noundef 2500, i32 noundef 2, i32 noundef 0) #12
  %59 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_buffers49.i, align 4
  %arrayidx59.i = getelementptr %struct.adm8211_rx_ring_info, ptr %60, i32 %entry2.0193.i
  %61 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i.i187.i, ptr %arrayidx59.i, align 4
  %62 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %9, align 4
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %tail.i188.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i187.i, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i188.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i188.i, align 8
  %call.i189.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %65) #12
  br i1 %call.i189.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then48.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !267

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev62.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44, i32 3
  %66 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %dev62.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev62.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %69, %if.end.i.i.i ], [ %67, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev62.i, ptr noundef %65, i32 noundef 2500) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %70 = load ptr, ptr @mem_map, align 4
  %71 = ptrtoint ptr %65 to i32
  %sub.i.i = add i32 %71, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %70, i32 %shr.i.i
  %and.i.i = and i32 %71, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev62.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 2500, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %72 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_buffers49.i, align 4
  %mapping67.i = getelementptr %struct.adm8211_rx_ring_info, ptr %73, i32 %entry2.0193.i, i32 1
  %74 = ptrtoint ptr %mapping67.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.i, ptr %mapping67.i, align 4
  %75 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %9, align 4
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %77 = load ptr, ptr %rx_buffers49.i, align 4
  %mapping72.i = getelementptr %struct.adm8211_rx_ring_info, ptr %77, i32 %entry2.0193.i, i32 1
  %78 = ptrtoint ptr %mapping72.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mapping72.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev69.i, i32 noundef %79) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp.i.not.i = icmp eq i32 %79, -1
  br i1 %cmp.i.not.i, label %if.then75.i, label %dma_map_single_attrs.exit.i.if.end81.i_crit_edge

dma_map_single_attrs.exit.i.if.end81.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.then75.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_buffers49.i, align 4
  %arrayidx77.i = getelementptr %struct.adm8211_rx_ring_info, ptr %81, i32 %entry2.0193.i
  %82 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx77.i, align 4
  tail call void @consume_skb(ptr noundef nonnull %call.i.i187.i) #12
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then75.i, %dma_map_single_attrs.exit.i.if.end81.i_crit_edge, %if.else45.i.if.end81.i_crit_edge
  %skb.0.i = phi ptr [ null, %if.then75.i ], [ %52, %dma_map_single_attrs.exit.i.if.end81.i_crit_edge ], [ null, %if.else45.i.if.end81.i_crit_edge ]
  %83 = ptrtoint ptr %rx_buffers49.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx_buffers49.i, align 4
  %mapping84.i = getelementptr %struct.adm8211_rx_ring_info, ptr %84, i32 %entry2.0193.i, i32 1
  %85 = ptrtoint ptr %mapping84.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mapping84.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  %88 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_ring.i, align 4
  %buffer1.i = getelementptr %struct.adm8211_desc, ptr %89, i32 %entry2.0193.i, i32 2
  %90 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %buffer1.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.end81.i, %if.then31.i, %if.then28.i.if.end88.i_crit_edge, %if.end21.i.if.end88.i_crit_edge
  %skb.1.i = phi ptr [ %call.i.i.i, %if.then31.i ], [ null, %if.then28.i.if.end88.i_crit_edge ], [ %skb.0.i, %if.end81.i ], [ null, %if.end21.i.if.end88.i_crit_edge ]
  %91 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx90.i = getelementptr %struct.adm8211_desc, ptr %92, i32 %entry2.0193.i
  %93 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 160, ptr %arrayidx90.i, align 4
  %94 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_ring_size.i, align 4
  %sub.i = add i32 %95, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %entry2.0193.i, i32 %sub.i)
  %cmp93.i = icmp eq i32 %entry2.0193.i, %sub.i
  %or.i = select i1 %cmp93.i, i32 33556932, i32 2500
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %97 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_ring.i, align 4
  %length97.i = getelementptr %struct.adm8211_desc, ptr %98, i32 %entry2.0193.i, i32 1
  %99 = ptrtoint ptr %length97.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %length97.i, align 4
  %tobool98.not.i = icmp eq ptr %skb.1.i, null
  br i1 %tobool98.not.i, label %if.end88.i.if.end115.i_crit_edge, label %if.then99.i

if.end88.i.if.end115.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.i

if.then99.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %9, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 12
  %102 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %103)
  %cmp102.i = icmp ult i8 %103, 48
  %sub107.i = sub nsw i8 100, %conv13.i
  %rx_status.sroa.8121.1.i = select i1 %cmp102.i, i8 %conv13.i, i8 %sub107.i
  %104 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %channel.i, align 4
  %sub111.i = add i32 %105, -1
  %center_freq.i = getelementptr [14 x %struct.ieee80211_channel], ptr @adm8211_channels, i32 0, i32 %sub111.i, i32 1
  %106 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %center_freq.i, align 4
  %conv113.i = trunc i32 %107 to i16
  %bf.shl.i = shl i16 %conv113.i, 3
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 3
  %108 = call ptr @memset(ptr %cb.i.i, i32 0, i32 28)
  %rx_status.sroa.4.0.call114.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 3, i32 28
  %109 = ptrtoint ptr %rx_status.sroa.4.0.call114.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %bf.shl.i, ptr %rx_status.sroa.4.0.call114.sroa_idx.i, align 4
  %rx_status.sroa.6.0.call114.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 3, i32 30
  %110 = call ptr @memset(ptr %rx_status.sroa.6.0.call114.sroa_idx.i, i32 0, i32 3)
  %rx_status.sroa.6119.0.call114.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 3, i32 33
  %111 = ptrtoint ptr %rx_status.sroa.6119.0.call114.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv.i, ptr %rx_status.sroa.6119.0.call114.sroa_idx.i, align 1
  %rx_status.sroa.7.0.call114.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 3, i32 34
  %rx_status.sroa.8121.0.call114.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 3, i32 38
  %112 = ptrtoint ptr %rx_status.sroa.7.0.call114.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 0, ptr %rx_status.sroa.7.0.call114.sroa_idx.i, align 2
  %113 = ptrtoint ptr %rx_status.sroa.8121.0.call114.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %rx_status.sroa.8121.1.i, ptr %rx_status.sroa.8121.0.call114.sroa_idx.i, align 2
  %rx_status.sroa.10.0.call114.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 3, i32 39
  %114 = call ptr @memset(ptr %rx_status.sroa.10.0.call114.sroa_idx.i, i32 0, i32 9)
  tail call void @ieee80211_rx_irqsafe(ptr noundef %dev_id, ptr noundef nonnull %skb.1.i) #12
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then99.i, %if.end88.i.if.end115.i_crit_edge
  %115 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cur_rx.i, align 4
  %inc.i = add i32 %116, 1
  store i32 %inc.i, ptr %cur_rx.i, align 4
  %117 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_ring_size.i, align 4
  %rem118.i = urem i32 %inc.i, %118
  %119 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.adm8211_desc, ptr %120, i32 %rem118.i
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %122, 128
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end115.i.while.body.i_crit_edge, label %if.end115.i.if.end9_crit_edge

if.end115.i.if.end9_crit_edge:                    ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end115.i.while.body.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end9:                                          ; preds = %if.end115.i.if.end9_crit_edge, %while.body.i.if.end9_crit_edge, %if.then8.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %and10 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.do.body_crit_edge, label %if.then12

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then12:                                        ; preds = %if.end9
  %123 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv1, align 8
  %lock.i = getelementptr inbounds %struct.adm8211_priv, ptr %124, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %dirty_tx2.i = getelementptr inbounds %struct.adm8211_priv, ptr %124, i32 0, i32 12
  %125 = ptrtoint ptr %dirty_tx2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dirty_tx2.i, align 4
  %tx_ring_size.i = getelementptr inbounds %struct.adm8211_priv, ptr %124, i32 0, i32 10
  %cur_tx.i = getelementptr inbounds %struct.adm8211_priv, ptr %124, i32 0, i32 11
  %127 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cur_tx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %126)
  %tobool.not68.i = icmp eq i32 %128, %126
  br i1 %tobool.not68.i, label %if.then12.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then12.for.end.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then12
  %tx_ring.i = getelementptr inbounds %struct.adm8211_priv, ptr %124, i32 0, i32 4
  %tx_buffers.i = getelementptr inbounds %struct.adm8211_priv, ptr %124, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dirty_tx.069.i = phi i32 [ %126, %for.body.lr.ph.i ], [ %inc.i363, %for.inc.i.for.body.i_crit_edge ]
  %129 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_ring_size.i, align 4
  %rem.i356 = urem i32 %dirty_tx.069.i, %130
  %131 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i357 = getelementptr %struct.adm8211_desc, ptr %132, i32 %rem.i356
  %133 = ptrtoint ptr %arrayidx.i357 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i357, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #12
  %136 = and i32 %135, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %136)
  %.not.i = icmp eq i32 %136, 1073741824
  br i1 %.not.i, label %if.end.i361, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i361:                                      ; preds = %for.body.i
  %137 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx8.i = getelementptr %struct.adm8211_tx_ring_info, ptr %138, i32 %rem.i356
  %139 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx8.i, align 4
  %cb.i.i358 = getelementptr inbounds %struct.sk_buff, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %124, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %mapping.i359 = getelementptr %struct.adm8211_tx_ring_info, ptr %138, i32 %rem.i356, i32 1
  %143 = ptrtoint ptr %mapping.i359 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mapping.i359, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %140, i32 0, i32 6
  %145 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10.i, i32 noundef %144, i32 noundef %146, i32 noundef 1, i32 noundef 0) #12
  %count.i.i = getelementptr %struct.sk_buff, ptr %140, i32 0, i32 3, i32 9
  %147 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i.i, 2047
  store i16 %bf.clear.i.i, ptr %count.i.i, align 1
  %count.1.i.i = getelementptr %struct.sk_buff, ptr %140, i32 0, i32 3, i32 12
  %148 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %bf.load.1.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.clear.1.i.i = and i16 %bf.load.1.i.i, 2047
  store i16 %bf.clear.1.i.i, ptr %count.1.i.i, align 1
  %count.2.i.i = getelementptr %struct.sk_buff, ptr %140, i32 0, i32 3, i32 15
  %149 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %bf.load.2.i.i = load i16, ptr %count.2.i.i, align 1
  %bf.clear.2.i.i = and i16 %bf.load.2.i.i, 2047
  store i16 %bf.clear.2.i.i, ptr %count.2.i.i, align 1
  %count.3.i.i = getelementptr %struct.sk_buff, ptr %140, i32 0, i32 3, i32 18
  %150 = ptrtoint ptr %count.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %bf.load.3.i.i = load i16, ptr %count.3.i.i, align 1
  %bf.clear.3.i.i = and i16 %bf.load.3.i.i, 2047
  store i16 %bf.clear.3.i.i, ptr %count.3.i.i, align 1
  %add.ptr.i.i360 = getelementptr %struct.sk_buff, ptr %140, i32 0, i32 3, i32 20
  %151 = call ptr @memset(ptr %add.ptr.i.i360, i32 0, i32 28)
  %call12.i = tail call ptr @skb_pull(ptr noundef %140, i32 noundef 56) #12
  %hdrlen.i = getelementptr %struct.adm8211_tx_ring_info, ptr %138, i32 %rem.i356, i32 2
  %152 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %hdrlen.i, align 4
  %call13.i = tail call ptr @skb_push(ptr noundef %140, i32 noundef %153) #12
  %154 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %hdrlen.i, align 4
  %156 = call ptr @memcpy(ptr %call13.i, ptr %cb.i.i358, i32 %155)
  %157 = ptrtoint ptr %cb.i.i358 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cb.i.i358, align 8
  %and15.i = and i32 %158, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %and17.i = and i32 %135, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %or.cond65.i = select i1 %tobool16.not.i, i1 %tobool18.not.i, i1 false
  br i1 %or.cond65.i, label %if.then19.i, label %if.end.i361.for.inc.i_crit_edge

if.end.i361.for.inc.i_crit_edge:                  ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then19.i:                                      ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #14
  %or.i362 = or i32 %158, 512
  %159 = ptrtoint ptr %cb.i.i358 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or.i362, ptr %cb.i.i358, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %if.end.i361.for.inc.i_crit_edge
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %dev_id, ptr noundef %140) #12
  %160 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %arrayidx8.i, align 4
  %inc.i363 = add i32 %dirty_tx.069.i, 1
  %161 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cur_tx.i, align 4
  %tobool.not.i364 = icmp eq i32 %162, %inc.i363
  br i1 %tobool.not.i364, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then12.for.end.i_crit_edge
  %dirty_tx.0.lcssa.i = phi i32 [ %126, %if.then12.for.end.i_crit_edge ], [ %inc.i363, %for.inc.i.for.end.i_crit_edge ], [ %dirty_tx.069.i, %for.body.i.for.end.i_crit_edge ]
  %163 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cur_tx.i, align 4
  %sub28.i = sub i32 %164, %dirty_tx.0.lcssa.i
  %165 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tx_ring_size.i, align 4
  %sub30.i = add i32 %166, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28.i, i32 %sub30.i)
  %cmp.i365 = icmp ult i32 %sub28.i, %sub30.i
  br i1 %cmp.i365, label %if.then31.i366, label %for.end.i.adm8211_interrupt_tci.exit_crit_edge

for.end.i.adm8211_interrupt_tci.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %adm8211_interrupt_tci.exit

if.then31.i366:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ieee80211_wake_queue(ptr noundef %dev_id, i32 noundef 0) #12
  br label %adm8211_interrupt_tci.exit

adm8211_interrupt_tci.exit:                       ; preds = %if.then31.i366, %for.end.i.adm8211_interrupt_tci.exit_crit_edge
  %167 = ptrtoint ptr %dirty_tx2.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %dirty_tx.0.lcssa.i, ptr %dirty_tx2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %do.body

do.body:                                          ; preds = %adm8211_interrupt_tci.exit, %if.end9.do.body_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool15.not = icmp sgt i32 %5, -1
  br i1 %tobool15.not, label %do.body.do.body24_crit_edge, label %do.end, !prof !267

do.body.do.body24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %168 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %wiphy, align 8
  %dev20 = getelementptr inbounds %struct.wiphy, ptr %169, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev20, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.70) #15
  br label %do.body24

do.body24:                                        ; preds = %do.end, %do.body.do.body24_crit_edge
  %and25 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.body42_crit_edge, label %do.end36, !prof !267

do.body24.do.body42_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

do.end36:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy37 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %170 = ptrtoint ptr %wiphy37 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wiphy37, align 8
  %dev38 = getelementptr inbounds %struct.wiphy, ptr %171, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev38, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.73) #15
  br label %do.body42

do.body42:                                        ; preds = %do.end36, %do.body24.do.body42_crit_edge
  %and43 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.body60_crit_edge, label %do.end54, !prof !267

do.body42.do.body60_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body60

do.end54:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy55 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %172 = ptrtoint ptr %wiphy55 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wiphy55, align 8
  %dev56 = getelementptr inbounds %struct.wiphy, ptr %173, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev56, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.76) #15
  br label %do.body60

do.body60:                                        ; preds = %do.end54, %do.body42.do.body60_crit_edge
  %and61 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.do.body78_crit_edge, label %do.end72, !prof !267

do.body60.do.body78_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body78

do.end72:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy73 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %174 = ptrtoint ptr %wiphy73 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %wiphy73, align 8
  %dev74 = getelementptr inbounds %struct.wiphy, ptr %175, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev74, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.79) #15
  br label %do.body78

do.body78:                                        ; preds = %do.end72, %do.body60.do.body78_crit_edge
  %and79 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.do.body96_crit_edge, label %do.end90, !prof !267

do.body78.do.body96_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body96

do.end90:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy91 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %176 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %wiphy91, align 8
  %dev92 = getelementptr inbounds %struct.wiphy, ptr %177, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev92, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.82) #15
  br label %do.body96

do.body96:                                        ; preds = %do.end90, %do.body78.do.body96_crit_edge
  %and97 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body96.do.body114_crit_edge, label %do.end108, !prof !267

do.body96.do.body114_crit_edge:                   ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body114

do.end108:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy109 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %178 = ptrtoint ptr %wiphy109 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %wiphy109, align 8
  %dev110 = getelementptr inbounds %struct.wiphy, ptr %179, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev110, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.85) #15
  br label %do.body114

do.body114:                                       ; preds = %do.end108, %do.body96.do.body114_crit_edge
  %and115 = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body114.do.body132_crit_edge, label %do.end126, !prof !267

do.body114.do.body132_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132

do.end126:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy127 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %180 = ptrtoint ptr %wiphy127 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %wiphy127, align 8
  %dev128 = getelementptr inbounds %struct.wiphy, ptr %181, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.88) #15
  br label %do.body132

do.body132:                                       ; preds = %do.end126, %do.body114.do.body132_crit_edge
  %and133 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.body132.do.body150_crit_edge, label %do.end144, !prof !267

do.body132.do.body150_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body150

do.end144:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy145 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %182 = ptrtoint ptr %wiphy145 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wiphy145, align 8
  %dev146 = getelementptr inbounds %struct.wiphy, ptr %183, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev146, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.91) #15
  br label %do.body150

do.body150:                                       ; preds = %do.end144, %do.body132.do.body150_crit_edge
  %and151 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %do.body150.do.body168_crit_edge, label %do.end162, !prof !267

do.body150.do.body168_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

do.end162:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy163 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %184 = ptrtoint ptr %wiphy163 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wiphy163, align 8
  %dev164 = getelementptr inbounds %struct.wiphy, ptr %185, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev164, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.94) #15
  br label %do.body168

do.body168:                                       ; preds = %do.end162, %do.body150.do.body168_crit_edge
  %and169 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %do.body168.do.body186_crit_edge, label %do.end180, !prof !267

do.body168.do.body186_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body186

do.end180:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy181 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %186 = ptrtoint ptr %wiphy181 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wiphy181, align 8
  %dev182 = getelementptr inbounds %struct.wiphy, ptr %187, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev182, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.97) #15
  br label %do.body186

do.body186:                                       ; preds = %do.end180, %do.body168.do.body186_crit_edge
  %and187 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %do.body186.do.body204_crit_edge, label %do.end198, !prof !267

do.body186.do.body204_crit_edge:                  ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body204

do.end198:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy199 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %188 = ptrtoint ptr %wiphy199 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %wiphy199, align 8
  %dev200 = getelementptr inbounds %struct.wiphy, ptr %189, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev200, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.100) #15
  br label %do.body204

do.body204:                                       ; preds = %do.end198, %do.body186.do.body204_crit_edge
  %and205 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %do.body204.do.body222_crit_edge, label %do.end216, !prof !267

do.body204.do.body222_crit_edge:                  ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body222

do.end216:                                        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy217 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %190 = ptrtoint ptr %wiphy217 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wiphy217, align 8
  %dev218 = getelementptr inbounds %struct.wiphy, ptr %191, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev218, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.103) #15
  br label %do.body222

do.body222:                                       ; preds = %do.end216, %do.body204.do.body222_crit_edge
  %and223 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %do.body222.do.body240_crit_edge, label %do.end234, !prof !267

do.body222.do.body240_crit_edge:                  ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body240

do.end234:                                        ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy235 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %192 = ptrtoint ptr %wiphy235 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %wiphy235, align 8
  %dev236 = getelementptr inbounds %struct.wiphy, ptr %193, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev236, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.106) #15
  br label %do.body240

do.body240:                                       ; preds = %do.end234, %do.body222.do.body240_crit_edge
  %and241 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %do.body240.do.body258_crit_edge, label %do.end252, !prof !267

do.body240.do.body258_crit_edge:                  ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body258

do.end252:                                        ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy253 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %194 = ptrtoint ptr %wiphy253 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wiphy253, align 8
  %dev254 = getelementptr inbounds %struct.wiphy, ptr %195, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev254, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.109) #15
  br label %do.body258

do.body258:                                       ; preds = %do.end252, %do.body240.do.body258_crit_edge
  %and259 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %do.body258.do.body276_crit_edge, label %do.end270, !prof !267

do.body258.do.body276_crit_edge:                  ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body276

do.end270:                                        ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy271 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %196 = ptrtoint ptr %wiphy271 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %wiphy271, align 8
  %dev272 = getelementptr inbounds %struct.wiphy, ptr %197, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev272, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.112) #15
  br label %do.body276

do.body276:                                       ; preds = %do.end270, %do.body258.do.body276_crit_edge
  %and277 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %do.body276.do.body294_crit_edge, label %do.end288, !prof !267

do.body276.do.body294_crit_edge:                  ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body294

do.end288:                                        ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy289 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %198 = ptrtoint ptr %wiphy289 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wiphy289, align 8
  %dev290 = getelementptr inbounds %struct.wiphy, ptr %199, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev290, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.115) #15
  br label %do.body294

do.body294:                                       ; preds = %do.end288, %do.body276.do.body294_crit_edge
  %and295 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %do.body294.cleanup_crit_edge, label %do.end306, !prof !267

do.body294.cleanup_crit_edge:                     ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end306:                                        ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy307 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 1
  %200 = ptrtoint ptr %wiphy307 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %wiphy307, align 8
  %dev308 = getelementptr inbounds %struct.wiphy, ptr %201, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev308, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.118) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end306, %do.body294.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm8211_update_mode(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %nar = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nar, align 4
  %and = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and3 = and i32 %3, -8195
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %NAR = getelementptr inbounds %struct.adm8211_csr, ptr %5, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %and3) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR, i32 %6) #12, !srcloc !266
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %NAR5 = getelementptr inbounds %struct.adm8211_csr, ptr %8, i32 0, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %NAR5) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @msleep(i32 noundef 20) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %soft_rx_crc = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %soft_rx_crc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %soft_rx_crc, align 2
  %mode = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %12, label %do.end.do.body23_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
    i32 6, label %sw.bb18
  ]

do.end.do.body23_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body23

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nar, align 4
  %and7 = and i32 %15, -8291
  %or = or i32 %and7, 8194
  store i32 %or, ptr %nar, align 4
  br label %do.body23

sw.bb9:                                           ; preds = %do.end
  %16 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nar, align 4
  %and11 = and i32 %17, -8291
  %or13 = or i32 %and11, 8226
  store i32 %or13, ptr %nar, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %21)
  %cmp = icmp ugt i8 %21, 31
  br i1 %cmp, label %if.then15, label %sw.bb9.do.body23_crit_edge

sw.bb9.do.body23_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body23

if.then15:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %soft_rx_crc to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %soft_rx_crc, align 2
  br label %do.body23

sw.bb18:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nar, align 4
  %and20 = and i32 %24, -8291
  %or22 = or i32 %and20, 66
  store i32 %or22, ptr %nar, align 4
  br label %do.body23

do.body23:                                        ; preds = %sw.bb18, %if.then15, %sw.bb9.do.body23_crit_edge, %sw.bb, %do.end.do.body23_crit_edge
  %25 = ptrtoint ptr %nar to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nar, align 4
  %and25 = and i32 %26, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.do.end33_crit_edge, label %if.then27

do.body23.do.end33_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %map29 = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %map29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map29, align 4
  %NAR30 = getelementptr inbounds %struct.adm8211_csr, ptr %28, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %NAR30, i32 %29) #12, !srcloc !266
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body23.do.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm8211_write_bbp(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %BBPCTL = getelementptr inbounds %struct.adm8211_csr, ptr %3, i32 0, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL) #12, !srcloc !264
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and = and i32 %5, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 2) #12
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %BBPCTL.1 = getelementptr inbounds %struct.adm8211_csr, ptr %7, i32 0, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.1) #12, !srcloc !264
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.1 = and i32 %9, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.if.end6_crit_edge, label %if.end.1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 2) #12
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %BBPCTL.2 = getelementptr inbounds %struct.adm8211_csr, ptr %11, i32 0, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.2) #12, !srcloc !264
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.2 = and i32 %13, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.1.if.end6_crit_edge, label %if.end.2

if.end.1.if.end6_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 2) #12
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %BBPCTL.3 = getelementptr inbounds %struct.adm8211_csr, ptr %15, i32 0, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.3) #12, !srcloc !264
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.3 = and i32 %17, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.2.if.end6_crit_edge, label %if.end.3

if.end.2.if.end6_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 2) #12
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %BBPCTL.4 = getelementptr inbounds %struct.adm8211_csr, ptr %19, i32 0, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.4) #12, !srcloc !264
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.4 = and i32 %21, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end.3.if.end6_crit_edge, label %if.end.4

if.end.3.if.end6_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 2) #12
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %BBPCTL.5 = getelementptr inbounds %struct.adm8211_csr, ptr %23, i32 0, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.5) #12, !srcloc !264
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.5 = and i32 %25, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %if.end.4.if.end6_crit_edge, label %if.end.5

if.end.4.if.end6_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 2) #12
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %BBPCTL.6 = getelementptr inbounds %struct.adm8211_csr, ptr %27, i32 0, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.6) #12, !srcloc !264
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.6 = and i32 %29, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %if.end.5.if.end6_crit_edge, label %if.end.6

if.end.5.if.end6_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 2) #12
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %BBPCTL.7 = getelementptr inbounds %struct.adm8211_csr, ptr %31, i32 0, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.7) #12, !srcloc !264
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.7 = and i32 %33, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %if.end.6.if.end6_crit_edge, label %if.end.7

if.end.6.if.end6_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 2) #12
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %BBPCTL.8 = getelementptr inbounds %struct.adm8211_csr, ptr %35, i32 0, i32 24
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.8) #12, !srcloc !264
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.8 = and i32 %37, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %if.end.7.if.end6_crit_edge, label %if.end.8

if.end.7.if.end6_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 2) #12
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 4
  %BBPCTL.9 = getelementptr inbounds %struct.adm8211_csr, ptr %39, i32 0, i32 24
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL.9) #12, !srcloc !264
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and.9 = and i32 %41, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %if.end.8.if.end6_crit_edge, label %if.end.9

if.end.8.if.end6_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 2) #12
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %42 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wiphy, align 8
  %dev4 = getelementptr inbounds %struct.wiphy, ptr %43, i32 0, i32 56
  %conv = zext i8 %addr to i32
  %conv5 = zext i8 %data to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev4, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv5, i32 noundef %41) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end.8.if.end6_crit_edge, %if.end.7.if.end6_crit_edge, %if.end.6.if.end6_crit_edge, %if.end.5.if.end6_crit_edge, %if.end.4.if.end6_crit_edge, %if.end.3.if.end6_crit_edge, %if.end.2.if.end6_crit_edge, %if.end.1.if.end6_crit_edge, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %.lcssa = phi i32 [ %5, %entry.if.end6_crit_edge ], [ %9, %if.end.if.end6_crit_edge ], [ %13, %if.end.1.if.end6_crit_edge ], [ %17, %if.end.2.if.end6_crit_edge ], [ %21, %if.end.3.if.end6_crit_edge ], [ %25, %if.end.4.if.end6_crit_edge ], [ %29, %if.end.5.if.end6_crit_edge ], [ %33, %if.end.6.if.end6_crit_edge ], [ %37, %if.end.7.if.end6_crit_edge ], [ %41, %if.end.8.if.end6_crit_edge ]
  %bbp_type = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 29
  %44 = ptrtoint ptr %bbp_type to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %bbp_type, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %45 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %bf.cast, label %if.end6.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 5, label %sw.bb8
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb, %if.end6.sw.epilog_crit_edge
  %reg.2 = phi i32 [ %.lcssa, %if.end6.sw.epilog_crit_edge ], [ 548667392, %sw.bb8 ], [ 547618816, %sw.bb7 ], [ -2147483648, %sw.bb ]
  %conv9 = zext i8 %addr to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %conv10 = zext i8 %data to i32
  %or = or i32 %shl, %conv10
  %or11 = or i32 %or, 131072
  %or12 = or i32 %reg.2, %or11
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 4
  %BBPCTL14 = getelementptr inbounds %struct.adm8211_csr, ptr %47, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %or12) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BBPCTL14, i32 %48) #12, !srcloc !266
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 4
  %BBPCTL20 = getelementptr inbounds %struct.adm8211_csr, ptr %50, i32 0, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %52 = and i32 %51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool23.not = icmp eq i32 %52, 0
  br i1 %tobool23.not, label %sw.epilog.cleanup_crit_edge, label %if.end25

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %sw.epilog
  tail call void @msleep(i32 noundef 2) #12
  %53 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map, align 4
  %BBPCTL20.1 = getelementptr inbounds %struct.adm8211_csr, ptr %54, i32 0, i32 24
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.1) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %56 = and i32 %55, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool23.not.1 = icmp eq i32 %56, 0
  br i1 %tobool23.not.1, label %if.end25.cleanup_crit_edge, label %if.end25.1

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.1:                                       ; preds = %if.end25
  tail call void @msleep(i32 noundef 2) #12
  %57 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map, align 4
  %BBPCTL20.2 = getelementptr inbounds %struct.adm8211_csr, ptr %58, i32 0, i32 24
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.2) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %60 = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool23.not.2 = icmp eq i32 %60, 0
  br i1 %tobool23.not.2, label %if.end25.1.cleanup_crit_edge, label %if.end25.2

if.end25.1.cleanup_crit_edge:                     ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.2:                                       ; preds = %if.end25.1
  tail call void @msleep(i32 noundef 2) #12
  %61 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map, align 4
  %BBPCTL20.3 = getelementptr inbounds %struct.adm8211_csr, ptr %62, i32 0, i32 24
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.3) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %64 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool23.not.3 = icmp eq i32 %64, 0
  br i1 %tobool23.not.3, label %if.end25.2.cleanup_crit_edge, label %if.end25.3

if.end25.2.cleanup_crit_edge:                     ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.3:                                       ; preds = %if.end25.2
  tail call void @msleep(i32 noundef 2) #12
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 4
  %BBPCTL20.4 = getelementptr inbounds %struct.adm8211_csr, ptr %66, i32 0, i32 24
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.4) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %68 = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool23.not.4 = icmp eq i32 %68, 0
  br i1 %tobool23.not.4, label %if.end25.3.cleanup_crit_edge, label %if.end25.4

if.end25.3.cleanup_crit_edge:                     ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.4:                                       ; preds = %if.end25.3
  tail call void @msleep(i32 noundef 2) #12
  %69 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map, align 4
  %BBPCTL20.5 = getelementptr inbounds %struct.adm8211_csr, ptr %70, i32 0, i32 24
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.5) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %72 = and i32 %71, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool23.not.5 = icmp eq i32 %72, 0
  br i1 %tobool23.not.5, label %if.end25.4.cleanup_crit_edge, label %if.end25.5

if.end25.4.cleanup_crit_edge:                     ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.5:                                       ; preds = %if.end25.4
  tail call void @msleep(i32 noundef 2) #12
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 4
  %BBPCTL20.6 = getelementptr inbounds %struct.adm8211_csr, ptr %74, i32 0, i32 24
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.6) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %76 = and i32 %75, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool23.not.6 = icmp eq i32 %76, 0
  br i1 %tobool23.not.6, label %if.end25.5.cleanup_crit_edge, label %if.end25.6

if.end25.5.cleanup_crit_edge:                     ; preds = %if.end25.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.6:                                       ; preds = %if.end25.5
  tail call void @msleep(i32 noundef 2) #12
  %77 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map, align 4
  %BBPCTL20.7 = getelementptr inbounds %struct.adm8211_csr, ptr %78, i32 0, i32 24
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.7) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %80 = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool23.not.7 = icmp eq i32 %80, 0
  br i1 %tobool23.not.7, label %if.end25.6.cleanup_crit_edge, label %if.end25.7

if.end25.6.cleanup_crit_edge:                     ; preds = %if.end25.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.7:                                       ; preds = %if.end25.6
  tail call void @msleep(i32 noundef 2) #12
  %81 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map, align 4
  %BBPCTL20.8 = getelementptr inbounds %struct.adm8211_csr, ptr %82, i32 0, i32 24
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.8) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %84 = and i32 %83, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool23.not.8 = icmp eq i32 %84, 0
  br i1 %tobool23.not.8, label %if.end25.7.cleanup_crit_edge, label %if.end25.8

if.end25.7.cleanup_crit_edge:                     ; preds = %if.end25.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.8:                                       ; preds = %if.end25.7
  tail call void @msleep(i32 noundef 2) #12
  %85 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map, align 4
  %BBPCTL20.9 = getelementptr inbounds %struct.adm8211_csr, ptr %86, i32 0, i32 24
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL20.9) #12, !srcloc !264
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %and22.9 = and i32 %88, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.9)
  %tobool23.not.9 = icmp eq i32 %and22.9, 0
  br i1 %tobool23.not.9, label %if.end25.8.cleanup_crit_edge, label %if.end25.9

if.end25.8.cleanup_crit_edge:                     ; preds = %if.end25.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25.9:                                       ; preds = %if.end25.8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 2) #12
  %89 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map, align 4
  %BBPCTL32 = getelementptr inbounds %struct.adm8211_csr, ptr %90, i32 0, i32 24
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %BBPCTL32) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %92 = and i32 %91, -513
  %93 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %map, align 4
  %BBPCTL36 = getelementptr inbounds %struct.adm8211_csr, ptr %94, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BBPCTL36, i32 %92) #12, !srcloc !266
  %wiphy40 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %95 = ptrtoint ptr %wiphy40 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wiphy40, align 8
  %dev41 = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.54, ptr noundef %dev41, ptr noundef nonnull @.str.61, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %88) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end25.9, %if.end25.8.cleanup_crit_edge, %if.end25.7.cleanup_crit_edge, %if.end25.6.cleanup_crit_edge, %if.end25.5.cleanup_crit_edge, %if.end25.4.cleanup_crit_edge, %if.end25.3.cleanup_crit_edge, %if.end25.2.cleanup_crit_edge, %if.end25.1.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm8211_rf_write_syn_rfmd2958(ptr nocapture noundef readonly %dev, i16 noundef zeroext %addr, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %value, 262143
  %2 = and i16 %addr, 31
  %conv4 = zext i16 %2 to i32
  %shl5 = shl nuw nsw i32 %conv4, 18
  %or = or i32 %shl5, %and
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %SYNRF = getelementptr inbounds %struct.adm8211_csr, ptr %4, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF, i32 144) #12, !srcloc !266
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %SYNRF7 = getelementptr inbounds %struct.adm8211_csr, ptr %6, i32 0, i32 49
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF7) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %SYNRF9 = getelementptr inbounds %struct.adm8211_csr, ptr %9, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF9, i32 128) #12, !srcloc !266
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %SYNRF11 = getelementptr inbounds %struct.adm8211_csr, ptr %11, i32 0, i32 49
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF11) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %sub = sub nuw nsw i32 23, %i.064
  %shl14 = shl nuw nsw i32 1, %sub
  %and15 = and i32 %shl14, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool.not, i32 128, i32 132
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %SYNRF17 = getelementptr inbounds %struct.adm8211_csr, ptr %14, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF17, i32 %.) #12, !srcloc !266
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %SYNRF19 = getelementptr inbounds %struct.adm8211_csr, ptr %16, i32 0, i32 49
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF19) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %SYNRF23 = getelementptr inbounds %struct.adm8211_csr, ptr %19, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %20 = or i32 %., 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF23, i32 %20) #12, !srcloc !266
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 4
  %SYNRF25 = getelementptr inbounds %struct.adm8211_csr, ptr %22, i32 0, i32 49
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF25) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %SYNRF29 = getelementptr inbounds %struct.adm8211_csr, ptr %25, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF29, i32 %.) #12, !srcloc !266
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %SYNRF31 = getelementptr inbounds %struct.adm8211_csr, ptr %27, i32 0, i32 49
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF31) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %SYNRF35 = getelementptr inbounds %struct.adm8211_csr, ptr %30, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF35, i32 %.) #12, !srcloc !266
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %SYNRF37 = getelementptr inbounds %struct.adm8211_csr, ptr %32, i32 0, i32 49
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF37) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %SYNRF40 = getelementptr inbounds %struct.adm8211_csr, ptr %35, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF40, i32 0) #12, !srcloc !266
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  %SYNRF42 = getelementptr inbounds %struct.adm8211_csr, ptr %37, i32 0, i32 49
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF42) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm8211_rf_write_syn_max2820(ptr nocapture noundef readonly %dev, i16 noundef zeroext %addr, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %value, 4095
  %2 = shl i16 %addr, 12
  %shl5 = zext i16 %2 to i32
  %or = or i32 %and, %shl5
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %SYNRF = getelementptr inbounds %struct.adm8211_csr, ptr %4, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF, i32 144) #12, !srcloc !266
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %SYNRF7 = getelementptr inbounds %struct.adm8211_csr, ptr %6, i32 0, i32 49
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF7) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %SYNRF9 = getelementptr inbounds %struct.adm8211_csr, ptr %9, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF9, i32 128) #12, !srcloc !266
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %SYNRF11 = getelementptr inbounds %struct.adm8211_csr, ptr %11, i32 0, i32 49
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF11) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %SYNRF14 = getelementptr inbounds %struct.adm8211_csr, ptr %14, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF14, i32 128) #12, !srcloc !266
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %SYNRF16 = getelementptr inbounds %struct.adm8211_csr, ptr %16, i32 0, i32 49
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF16) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %sub = sub nuw nsw i32 15, %i.071
  %shl19 = shl nuw nsw i32 1, %sub
  %and20 = and i32 %shl19, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  %. = select i1 %tobool.not, i32 128, i32 132
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %SYNRF22 = getelementptr inbounds %struct.adm8211_csr, ptr %19, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF22, i32 %.) #12, !srcloc !266
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %SYNRF24 = getelementptr inbounds %struct.adm8211_csr, ptr %21, i32 0, i32 49
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF24) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map, align 4
  %SYNRF28 = getelementptr inbounds %struct.adm8211_csr, ptr %24, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %25 = or i32 %., 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF28, i32 %25) #12, !srcloc !266
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %SYNRF30 = getelementptr inbounds %struct.adm8211_csr, ptr %27, i32 0, i32 49
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF30) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %SYNRF34 = getelementptr inbounds %struct.adm8211_csr, ptr %30, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF34, i32 %.) #12, !srcloc !266
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %SYNRF36 = getelementptr inbounds %struct.adm8211_csr, ptr %32, i32 0, i32 49
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF36) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %SYNRF40 = getelementptr inbounds %struct.adm8211_csr, ptr %35, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF40, i32 %.) #12, !srcloc !266
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  %SYNRF42 = getelementptr inbounds %struct.adm8211_csr, ptr %37, i32 0, i32 49
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF42) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 4
  %SYNRF45 = getelementptr inbounds %struct.adm8211_csr, ptr %40, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF45, i32 0) #12, !srcloc !266
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %SYNRF47 = getelementptr inbounds %struct.adm8211_csr, ptr %42, i32 0, i32 49
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF47) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm8211_rf_write_syn_al2210l(ptr nocapture noundef readonly %dev, i16 noundef zeroext %addr, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = and i16 %addr, 15
  %and = shl i32 %value, 4
  %shl = and i32 %and, 16777200
  %conv4 = zext i16 %2 to i32
  %or = or i32 %shl, %conv4
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %SYNRF = getelementptr inbounds %struct.adm8211_csr, ptr %4, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF, i32 144) #12, !srcloc !266
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %SYNRF7 = getelementptr inbounds %struct.adm8211_csr, ptr %6, i32 0, i32 49
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF7) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %SYNRF9 = getelementptr inbounds %struct.adm8211_csr, ptr %9, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF9, i32 128) #12, !srcloc !266
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %SYNRF11 = getelementptr inbounds %struct.adm8211_csr, ptr %11, i32 0, i32 49
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF11) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %SYNRF14 = getelementptr inbounds %struct.adm8211_csr, ptr %14, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF14, i32 128) #12, !srcloc !266
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %SYNRF16 = getelementptr inbounds %struct.adm8211_csr, ptr %16, i32 0, i32 49
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF16) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %sub = sub nuw nsw i32 23, %i.071
  %shl19 = shl nuw nsw i32 1, %sub
  %and20 = and i32 %shl19, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  %. = select i1 %tobool.not, i32 128, i32 132
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %SYNRF22 = getelementptr inbounds %struct.adm8211_csr, ptr %19, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF22, i32 %.) #12, !srcloc !266
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %SYNRF24 = getelementptr inbounds %struct.adm8211_csr, ptr %21, i32 0, i32 49
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF24) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map, align 4
  %SYNRF28 = getelementptr inbounds %struct.adm8211_csr, ptr %24, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %25 = or i32 %., 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF28, i32 %25) #12, !srcloc !266
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %SYNRF30 = getelementptr inbounds %struct.adm8211_csr, ptr %27, i32 0, i32 49
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF30) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %SYNRF34 = getelementptr inbounds %struct.adm8211_csr, ptr %30, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF34, i32 %.) #12, !srcloc !266
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %SYNRF36 = getelementptr inbounds %struct.adm8211_csr, ptr %32, i32 0, i32 49
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF36) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %SYNRF40 = getelementptr inbounds %struct.adm8211_csr, ptr %35, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF40, i32 %.) #12, !srcloc !266
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  %SYNRF42 = getelementptr inbounds %struct.adm8211_csr, ptr %37, i32 0, i32 49
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF42) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 4
  %SYNRF45 = getelementptr inbounds %struct.adm8211_csr, ptr %40, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF45, i32 0) #12, !srcloc !266
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %SYNRF47 = getelementptr inbounds %struct.adm8211_csr, ptr %42, i32 0, i32 49
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF47) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm8211_rf_write_syn_rfmd2948(ptr nocapture noundef readonly %dev, i16 noundef zeroext %addr, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = and i16 %addr, 15
  %and = shl i32 %value, 4
  %shl = and i32 %and, 1048560
  %conv4 = zext i16 %2 to i32
  %or = or i32 %shl, %conv4
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %SYNRF = getelementptr inbounds %struct.adm8211_csr, ptr %4, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF, i32 144) #12, !srcloc !266
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %SYNRF7 = getelementptr inbounds %struct.adm8211_csr, ptr %6, i32 0, i32 49
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF7) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %SYNRF9 = getelementptr inbounds %struct.adm8211_csr, ptr %9, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF9, i32 128) #12, !srcloc !266
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %SYNRF11 = getelementptr inbounds %struct.adm8211_csr, ptr %11, i32 0, i32 49
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF11) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %sub = sub nuw nsw i32 21, %i.064
  %shl14 = shl nuw nsw i32 1, %sub
  %and15 = and i32 %shl14, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool.not, i32 128, i32 132
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %SYNRF17 = getelementptr inbounds %struct.adm8211_csr, ptr %14, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF17, i32 %.) #12, !srcloc !266
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %SYNRF19 = getelementptr inbounds %struct.adm8211_csr, ptr %16, i32 0, i32 49
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF19) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %SYNRF23 = getelementptr inbounds %struct.adm8211_csr, ptr %19, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %20 = or i32 %., 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF23, i32 %20) #12, !srcloc !266
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 4
  %SYNRF25 = getelementptr inbounds %struct.adm8211_csr, ptr %22, i32 0, i32 49
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF25) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %SYNRF29 = getelementptr inbounds %struct.adm8211_csr, ptr %25, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF29, i32 %.) #12, !srcloc !266
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %SYNRF31 = getelementptr inbounds %struct.adm8211_csr, ptr %27, i32 0, i32 49
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF31) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %SYNRF35 = getelementptr inbounds %struct.adm8211_csr, ptr %30, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %31 = or i32 %., 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF35, i32 %31) #12, !srcloc !266
  %32 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map, align 4
  %SYNRF37 = getelementptr inbounds %struct.adm8211_csr, ptr %33, i32 0, i32 49
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF37) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 4
  %SYNRF40 = getelementptr inbounds %struct.adm8211_csr, ptr %36, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SYNRF40, i32 0) #12, !srcloc !266
  %37 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map, align 4
  %SYNRF42 = getelementptr inbounds %struct.adm8211_csr, ptr %38, i32 0, i32 49
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SYNRF42) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm8211_eeprom_register_read(ptr nocapture noundef %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %SPR = getelementptr inbounds %struct.adm8211_csr, ptr %3, i32 0, i32 18
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SPR) #12, !srcloc !264
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %6 = trunc i32 %5 to i8
  %conv = and i8 %6, 4
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %7 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %reg_data_in, align 1
  %conv2 = and i8 %6, 8
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %8 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %reg_data_out, align 2
  %conv4 = and i8 %6, 2
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %9 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %reg_data_clock, align 1
  %conv6 = and i8 %6, 1
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %10 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %reg_chip_select, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm8211_eeprom_register_write(ptr nocapture noundef readonly %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %spec.select = select i1 %tobool.not, i32 18432, i32 18436
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %4 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_data_out, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %or3 = or i32 %spec.select, 8
  %reg.1 = select i1 %tobool1.not, i32 %spec.select, i32 %or3
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %6 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_data_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %or7 = or i32 %reg.1, 2
  %reg.2 = select i1 %tobool5.not, i32 %reg.1, i32 %or7
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %8 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp ne i8 %9, 0
  %or11 = zext i1 %tobool9.not to i32
  %reg.3 = or i32 %reg.2, %or11
  %map = getelementptr inbounds %struct.adm8211_priv, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %SPR = getelementptr inbounds %struct.adm8211_csr, ptr %11, i32 0, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %reg.3) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SPR, i32 %12) #12, !srcloc !266
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %SPR14 = getelementptr inbounds %struct.adm8211_csr, ptr %14, i32 0, i32 18
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SPR14) #12, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone willreturn }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !84, !86, !88, !89, !91, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @__UNIQUE_ID_author350, !1, !"__UNIQUE_ID_author350", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_author351, !3, !"__UNIQUE_ID_author351", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_description352, !5, !"__UNIQUE_ID_description352", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_file353, !7, !"__UNIQUE_ID_file353", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 31, i32 1}
!8 = !{ptr @__UNIQUE_ID_license354, !7, !"__UNIQUE_ID_license354", i1 false, i1 false}
!9 = !{ptr @__param_tx_ring_size, !10, !"__param_tx_ring_size", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 36, i32 1}
!11 = !{ptr @__UNIQUE_ID_tx_ring_sizetype355, !10, !"__UNIQUE_ID_tx_ring_sizetype355", i1 false, i1 false}
!12 = !{ptr @__param_rx_ring_size, !13, !"__param_rx_ring_size", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 37, i32 1}
!14 = !{ptr @__UNIQUE_ID_rx_ring_sizetype356, !13, !"__UNIQUE_ID_rx_ring_sizetype356", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_adm8211__358_1993_adm8211_driver_init6, !16, !"__initcall__kmod_adm8211__358_1993_adm8211_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1993, i32 1}
!17 = !{ptr @__exitcall_adm8211_driver_exit, !16, !"__exitcall_adm8211_driver_exit", i1 false, i1 false}
!18 = !{ptr @__param_str_tx_ring_size, !10, !"__param_str_tx_ring_size", i1 false, i1 false}
!19 = !{ptr @tx_ring_size, !20, !"tx_ring_size", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 33, i32 21}
!21 = !{ptr @__param_str_rx_ring_size, !13, !"__param_str_rx_ring_size", i1 false, i1 false}
!22 = !{ptr @rx_ring_size, !23, !"rx_ring_size", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 34, i32 21}
!24 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @adm8211_driver, !26, !"adm8211_driver", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1985, i32 26}
!27 = !{ptr @adm8211_pci_id_table, !28, !"adm8211_pci_id_table", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 39, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1788, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @adm8211_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @adm8211_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1796, i32 3}
!37 = !{ptr @adm8211_probe._entry.4, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @adm8211_probe._entry_ptr.6, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1806, i32 3}
!41 = !{ptr @adm8211_probe._entry.7, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @adm8211_probe._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1814, i32 3}
!45 = !{ptr @adm8211_probe._entry.10, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @adm8211_probe._entry_ptr.12, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1821, i32 3}
!49 = !{ptr @adm8211_probe._entry.13, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adm8211_probe._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1830, i32 3}
!53 = !{ptr @adm8211_probe._entry.16, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @adm8211_probe._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @adm8211_probe.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1838, i32 2}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1849, i32 3}
!60 = !{ptr @adm8211_probe._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @adm8211_probe._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1860, i32 3}
!64 = !{ptr @adm8211_probe._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @adm8211_probe._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1870, i32 3}
!68 = !{ptr @adm8211_probe._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @adm8211_probe._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1903, i32 3}
!72 = !{ptr @adm8211_probe._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @adm8211_probe._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1916, i32 3}
!76 = !{ptr @adm8211_probe._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @adm8211_probe._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1921, i32 2}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @adm8211_probe._entry.35, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @adm8211_probe._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @adm8211_ops, !85, !"adm8211_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1761, i32 35}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1518, i32 3}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @adm8211_start._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @adm8211_start._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1524, i32 3}
!101 = !{ptr @adm8211_start._entry.46, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @adm8211_start._entry_ptr.48, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1535, i32 3}
!105 = !{ptr @adm8211_start._entry.49, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @adm8211_start._entry_ptr.51, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @adm8211_rates, !108, !"adm8211_rates", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 48, i32 30}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1032, i32 4}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @adm8211_hw_init_bbp._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @adm8211_hw_init_bbp._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1037, i32 3}
!117 = !{ptr @adm8211_hw_init_bbp._entry.55, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @adm8211_hw_init_bbp._entry_ptr.57, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 575, i32 3}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @adm8211_write_bbp._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @adm8211_write_bbp._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 610, i32 3}
!126 = !{ptr @adm8211_write_bbp._entry.60, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @adm8211_write_bbp._entry_ptr.62, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @adm8211_rf_set_channel.adm8211_rfmd2958_reg5, !129, !"adm8211_rfmd2958_reg5", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 621, i32 19}
!130 = !{ptr @adm8211_rf_set_channel.adm8211_rfmd2958_reg6, !131, !"adm8211_rfmd2958_reg6", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 624, i32 19}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 680, i32 3}
!134 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @adm8211_rf_set_channel._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @adm8211_rf_set_channel._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 737, i32 3}
!139 = !{ptr @adm8211_rf_set_channel._entry.65, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @adm8211_rf_set_channel._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 480, i32 2}
!143 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @adm8211_interrupt._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @adm8211_interrupt._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @adm8211_interrupt._entry.71, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 481, i32 2}
!149 = !{ptr @adm8211_interrupt._entry_ptr.72, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @adm8211_interrupt._entry.74, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 482, i32 2}
!153 = !{ptr @adm8211_interrupt._entry_ptr.75, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @adm8211_interrupt._entry.77, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 483, i32 2}
!157 = !{ptr @adm8211_interrupt._entry_ptr.78, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @adm8211_interrupt._entry.80, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 484, i32 2}
!161 = !{ptr @adm8211_interrupt._entry_ptr.81, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @adm8211_interrupt._entry.83, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 485, i32 2}
!165 = !{ptr @adm8211_interrupt._entry_ptr.84, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @adm8211_interrupt._entry.86, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 486, i32 2}
!169 = !{ptr @adm8211_interrupt._entry_ptr.87, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @adm8211_interrupt._entry.89, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 487, i32 2}
!173 = !{ptr @adm8211_interrupt._entry_ptr.90, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @adm8211_interrupt._entry.92, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 488, i32 2}
!177 = !{ptr @adm8211_interrupt._entry_ptr.93, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.94, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @adm8211_interrupt._entry.95, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 489, i32 2}
!181 = !{ptr @adm8211_interrupt._entry_ptr.96, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @adm8211_interrupt._entry.98, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 490, i32 2}
!185 = !{ptr @adm8211_interrupt._entry_ptr.99, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.100, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @adm8211_interrupt._entry.101, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 491, i32 2}
!189 = !{ptr @adm8211_interrupt._entry_ptr.102, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @adm8211_interrupt._entry.104, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 492, i32 2}
!193 = !{ptr @adm8211_interrupt._entry_ptr.105, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @adm8211_interrupt._entry.107, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 493, i32 2}
!197 = !{ptr @adm8211_interrupt._entry_ptr.108, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.109, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @adm8211_interrupt._entry.110, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 494, i32 2}
!201 = !{ptr @adm8211_interrupt._entry_ptr.111, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.112, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @adm8211_interrupt._entry.113, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 495, i32 2}
!205 = !{ptr @adm8211_interrupt._entry_ptr.114, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.115, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @adm8211_interrupt._entry.116, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 496, i32 2}
!209 = !{ptr @adm8211_interrupt._entry_ptr.117, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.118, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.119, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 372, i32 5}
!213 = !{ptr @.str.120, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @adm8211_interrupt_rci._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @adm8211_interrupt_rci._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @adm8211_channels, !217, !"adm8211_channels", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 56, i32 39}
!218 = distinct !{null, !219, !"bcast", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1351, i32 18}
!220 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 148, i32 3}
!222 = !{ptr @.str.122, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @adm8211_read_eeprom._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @adm8211_read_eeprom._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.124, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 166, i32 3}
!227 = !{ptr @adm8211_read_eeprom._entry.123, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @adm8211_read_eeprom._entry_ptr.125, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.127, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 171, i32 3}
!231 = !{ptr @adm8211_read_eeprom._entry.126, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @adm8211_read_eeprom._entry_ptr.128, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 178, i32 2}
!235 = !{ptr @adm8211_read_eeprom._entry.129, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @adm8211_read_eeprom._entry_ptr.131, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.133, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 206, i32 3}
!239 = !{ptr @adm8211_read_eeprom._entry.132, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @adm8211_read_eeprom._entry_ptr.134, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.136, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 227, i32 3}
!243 = !{ptr @adm8211_read_eeprom._entry.135, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @adm8211_read_eeprom._entry_ptr.137, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.139, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 233, i32 2}
!247 = !{ptr @adm8211_read_eeprom._entry.138, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @adm8211_read_eeprom._entry_ptr.140, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @cranges, !250, !"cranges", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/admtek/adm8211.h", i32 593, i32 42}
!251 = !{ptr @adm8211_pm_ops, !252, !"adm8211_pm_ops", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/admtek/adm8211.c", i32 1982, i32 8}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{!"auto-init"}
!263 = !{i64 2151791841}
!264 = !{i64 4251492}
!265 = !{i64 2151793196}
!266 = !{i64 4251074}
!267 = !{!"branch_weights", i32 2000, i32 1}
