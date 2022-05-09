; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7921/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7921/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt7921_hif_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.130, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.130 = type { ptr }
%struct.mt7921_dev = type { %union.anon.146, ptr, %struct.mt7921_phy, %struct.tasklet_struct, %struct.work_struct, i8, %struct.list_head, %struct.spinlock, i8, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, ptr, [32 x i8] }
%union.anon.146 = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.129 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt7921_phy = type { ptr, ptr, [6 x [13 x %struct.ieee80211_sband_iftype_data]], i32, i64, i16, i16, i8, i32, i32, %struct.mib_stats, i8, %struct.sk_buff_head, %struct.delayed_work }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.124 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.124 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.147], %struct.work_struct, %struct.wait_queue_head, %struct.anon.148, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.149 }
%struct.anon.147 = type { ptr, ptr }
%struct.anon.148 = type { %struct.spinlock, i32 }
%struct.anon.149 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_disable_aspm = internal constant [21 x i8] c"mt7921e.disable_aspm\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@mt7921_disable_aspm = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_aspm = internal constant %struct.kernel_param { ptr @__param_str_disable_aspm, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @mt7921_disable_aspm } }, section "__param", align 4
@__UNIQUE_ID_disable_aspmtype446 = internal constant [35 x i8] c"mt7921e.parmtype=disable_aspm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_aspm447 = internal constant [51 x i8] c"mt7921e.parm=disable_aspm:disable PCI ASPM support\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7921e\00", [24 x i8] zeroinitializer }, align 32
@mt7921_pci_device_table = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 5315, i32 31073, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 31010, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 1544, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5315, i32 1558, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mt7921_pci_driver = dso_local global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mt7921_pci_device_table, ptr @mt7921_pci_probe, ptr @mt7921_pci_remove, ptr @mt7921_pci_suspend, ptr @mt7921_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mt7921e__448_376_mt7921_pci_driver_init6 = internal global ptr @mt7921_pci_driver_init, section ".initcall6.init", align 4
@__exitcall_mt7921_pci_driver_exit = internal global ptr @mt7921_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_firmware449 = internal constant [53 x i8] c"mt7921e.firmware=mediatek/WIFI_RAM_CODE_MT7961_1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware450 = internal constant [60 x i8] c"mt7921e.firmware=mediatek/WIFI_MT7961_patch_mcu_1_2_hdr.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware451 = internal constant [53 x i8] c"mt7921e.firmware=mediatek/WIFI_RAM_CODE_MT7922_1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware452 = internal constant [60 x i8] c"mt7921e.firmware=mediatek/WIFI_MT7922_patch_mcu_1_1_hdr.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_author453 = internal constant [50 x i8] c"mt7921e.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author454 = internal constant [53 x i8] c"mt7921e.author=Lorenzo Bianconi <lorenzo@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file455 = internal constant [63 x i8] c"mt7921e.file=drivers/net/wireless/mediatek/mt76/mt7921/mt7921e\00", section ".modinfo", align 1
@__UNIQUE_ID_license456 = internal constant [29 x i8] c"mt7921e.license=Dual BSD/GPL\00", section ".modinfo", align 1
@mt7921_pci_probe.drv_ops = internal constant { %struct.mt76_driver_ops, [36 x i8] } { %struct.mt76_driver_ops { i32 17, i32 352, i16 64, i16 8192, i8 0, ptr @mt7921_update_channel, ptr @mt7921e_tx_prepare_skb, ptr @mt7921e_tx_complete_skb, ptr null, ptr null, ptr @mt7921e_queue_rx_skb, ptr @mt7921_rx_poll_complete, ptr @mt7921_sta_ps, ptr @mt7921_mac_sta_add, ptr @mt7921_mac_sta_assoc, ptr @mt7921_mac_sta_remove }, [36 x i8] zeroinitializer }, align 32
@mt7921_pci_probe.mt7921_pcie_ops = internal constant { %struct.mt7921_hif_ops, [44 x i8] } { %struct.mt7921_hif_ops { ptr @mt7921e_init_reset, ptr @mt7921e_mac_reset, ptr @mt7921e_mcu_init, ptr @mt7921e_mcu_drv_pmctrl, ptr @mt7921e_mcu_fw_pmctrl }, [44 x i8] zeroinitializer }, align 32
@mt7921_ops = external dso_local constant %struct.ieee80211_ops, align 4
@mt7921_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASIC revision: %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7921_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/pci.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7921_pci_probe._entry_ptr = internal global ptr @mt7921_pci_probe._entry, section ".printk_index", align 4
@__tracepoint_dev_irq = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/mediatek/mt76/mt7921/../trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_dev_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"mt7921_disable_aspm\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 23, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 366, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"mt7921_pci_device_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 15, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"mt7921_pci_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 365, i32 19 }
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"drv_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 127, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"mt7921_pcie_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 146, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 193, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7921/../trace.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 59, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 108, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author453, ptr @__UNIQUE_ID_author454, ptr @__UNIQUE_ID_disable_aspm447, ptr @__UNIQUE_ID_disable_aspmtype446, ptr @__UNIQUE_ID_file455, ptr @__UNIQUE_ID_firmware449, ptr @__UNIQUE_ID_firmware450, ptr @__UNIQUE_ID_firmware451, ptr @__UNIQUE_ID_firmware452, ptr @__UNIQUE_ID_license456, ptr @__exitcall_mt7921_pci_driver_exit, ptr @__initcall__kmod_mt7921e__448_376_mt7921_pci_driver_init6, ptr @__param_disable_aspm, ptr @mt7921_pci_driver_exit, ptr @mt7921_pci_probe._entry, ptr @mt7921_pci_probe._entry_ptr, ptr @mt7921_disable_aspm, ptr @.str, ptr @mt7921_pci_device_table, ptr @mt7921_pci_driver, ptr @mt7921_pci_probe.drv_ops, ptr @mt7921_pci_probe.mt7921_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_disable_aspm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_pci_device_table to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_pci_probe.drv_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_pci_probe.mt7921_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7921_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call10 = tail call i32 @dma_set_mask(ptr noundef %dev9, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.err_free_pci_vec_crit_edge

if.end8.err_free_pci_vec_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_pci_vec

if.end13:                                         ; preds = %if.end8
  %4 = load i8, ptr @mt7921_disable_aspm, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool14.not = icmp eq i8 %4, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt76_pci_disable_aspm(ptr noundef %pdev) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %call18 = tail call ptr @mt76_alloc_device(ptr noundef %dev9, i32 noundef 17408, ptr noundef nonnull @mt7921_ops, ptr noundef nonnull @mt7921_pci_probe.drv_ops) #7
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.err_free_pci_vec_crit_edge, label %if.end21

if.end16.err_free_pci_vec_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_pci_vec

if.end21:                                         ; preds = %if.end16
  %hif_ops = getelementptr inbounds %struct.mt7921_dev, ptr %call18, i32 0, i32 11
  %5 = ptrtoint ptr %hif_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt7921_pci_probe.mt7921_pcie_ops, ptr %hif_ops, align 4
  %call22 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #7
  %6 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call22, align 4
  tail call void @mt76_mmio_init(ptr noundef nonnull %call18, ptr noundef %7) #7
  %irq_tasklet = getelementptr inbounds %struct.mt7921_dev, ptr %call18, i32 0, i32 3
  %8 = ptrtoint ptr %call18 to i32
  tail call void @tasklet_init(ptr noundef %irq_tasklet, ptr noundef nonnull @mt7921_irq_tasklet, i32 noundef %8) #7
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %call18, i32 0, i32 10
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmw.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef nonnull %call18, i32 noundef 1040972, i32 noundef 65535, i32 noundef 28673) #7
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call50.i.i = tail call i32 %18(ptr noundef nonnull %call18, i32 noundef 1040972) #7
  %call1.i = tail call i32 %12(ptr noundef nonnull %call18, i32 noundef 262656) #7
  %shl = shl i32 %call1.i, 16
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %rmw.i.i88 = getelementptr inbounds %struct.mt76_bus_ops, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %rmw.i.i88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmw.i.i88, align 4
  %call.i.i89 = tail call i32 %24(ptr noundef nonnull %call18, i32 noundef 1040972, i32 noundef 65535, i32 noundef 28673) #7
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call50.i.i90 = tail call i32 %28(ptr noundef nonnull %call18, i32 noundef 1040972) #7
  %call1.i91 = tail call i32 %22(ptr noundef nonnull %call18, i32 noundef 262660) #7
  %and = and i32 %call1.i91, 255
  %or = or i32 %and, %shl
  %rev = getelementptr inbounds %struct.mt76_dev, ptr %call18, i32 0, i32 39
  %29 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %rev, align 4
  %dev25 = getelementptr inbounds %struct.mt76_dev, ptr %call18, i32 0, i32 13
  %30 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.1, i32 noundef %or) #10
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr, align 4
  tail call void %35(ptr noundef nonnull %call18, i32 noundef 868868, i32 noundef 0) #7
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 4
  %wr28 = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr28, align 4
  tail call void %39(ptr noundef nonnull %call18, i32 noundef 65928, i32 noundef 255) #7
  %40 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev25, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  %call.i92 = tail call i32 @devm_request_threaded_irq(ptr noundef %41, i32 noundef %43, ptr noundef nonnull @mt7921_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool31.not = icmp eq i32 %call.i92, 0
  br i1 %tobool31.not, label %if.end33, label %if.end21.err_free_dev_crit_edge

if.end21.err_free_dev_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_dev

if.end33:                                         ; preds = %if.end21
  %call34 = tail call i32 @mt7921_dma_init(ptr noundef nonnull %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.err_free_irq_crit_edge

if.end33.err_free_irq_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_irq

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @mt7921_register_device(ptr noundef nonnull %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.end37.err_free_irq_crit_edge

if.end37.err_free_irq_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_irq

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free_irq:                                     ; preds = %if.end37.err_free_irq_crit_edge, %if.end33.err_free_irq_crit_edge
  %ret.0 = phi i32 [ %call34, %if.end33.err_free_irq_crit_edge ], [ %call38, %if.end37.err_free_irq_crit_edge ]
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev9, i32 noundef %45, ptr noundef nonnull %call18) #7
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_free_irq, %if.end21.err_free_dev_crit_edge
  %ret.1 = phi i32 [ %call.i92, %if.end21.err_free_dev_crit_edge ], [ %ret.0, %err_free_irq ]
  tail call void @mt76_free_device(ptr noundef nonnull %call18) #7
  br label %err_free_pci_vec

err_free_pci_vec:                                 ; preds = %err_free_dev, %if.end16.err_free_pci_vec_crit_edge, %if.end8.err_free_pci_vec_crit_edge
  %ret.2 = phi i32 [ %call10, %if.end8.err_free_pci_vec_crit_edge ], [ %ret.1, %err_free_dev ], [ -12, %if.end16.err_free_pci_vec_crit_edge ]
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_pci_vec, %if.end37.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free_pci_vec ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %pci_name.exit.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mt76_unregister_device(ptr noundef %1) #7
  %ndesc.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %2 = ptrtoint ptr %ndesc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ndesc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.mt7921e_unregister_device.exit_crit_edge, label %for.body.i

entry.mt7921e_unregister_device.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7921e_unregister_device.exit

for.body.i:                                       ; preds = %entry
  %arrayidx2.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_disable(ptr noundef %arrayidx2.i) #7
  %ndesc.1.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %4 = ptrtoint ptr %ndesc.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndesc.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1.i = icmp eq i32 %5, 0
  br i1 %tobool.not.1.i, label %for.body.i.mt7921e_unregister_device.exit_crit_edge, label %for.body.1.i

for.body.i.mt7921e_unregister_device.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7921e_unregister_device.exit

for.body.1.i:                                     ; preds = %for.body.i
  %arrayidx2.1.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_disable(ptr noundef %arrayidx2.1.i) #7
  %ndesc.2.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %6 = ptrtoint ptr %ndesc.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndesc.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.2.i = icmp eq i32 %7, 0
  br i1 %tobool.not.2.i, label %for.body.1.i.mt7921e_unregister_device.exit_crit_edge, label %for.body.2.i

for.body.1.i.mt7921e_unregister_device.exit_crit_edge: ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7921e_unregister_device.exit

for.body.2.i:                                     ; preds = %for.body.1.i
  %arrayidx2.2.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_disable(ptr noundef %arrayidx2.2.i) #7
  %ndesc.3.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %8 = ptrtoint ptr %ndesc.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndesc.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.3.i = icmp eq i32 %9, 0
  br i1 %tobool.not.3.i, label %for.body.2.i.mt7921e_unregister_device.exit_crit_edge, label %for.body.3.i

for.body.2.i.mt7921e_unregister_device.exit_crit_edge: ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7921e_unregister_device.exit

for.body.3.i:                                     ; preds = %for.body.2.i
  %arrayidx2.3.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_disable(ptr noundef %arrayidx2.3.i) #7
  %ndesc.4.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %10 = ptrtoint ptr %ndesc.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ndesc.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.4.i = icmp eq i32 %11, 0
  br i1 %tobool.not.4.i, label %for.body.3.i.mt7921e_unregister_device.exit_crit_edge, label %for.body.4.i

for.body.3.i.mt7921e_unregister_device.exit_crit_edge: ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7921e_unregister_device.exit

for.body.4.i:                                     ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.4.i = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_disable(ptr noundef %arrayidx2.4.i) #7
  br label %mt7921e_unregister_device.exit

mt7921e_unregister_device.exit:                   ; preds = %for.body.4.i, %for.body.3.i.mt7921e_unregister_device.exit_crit_edge, %for.body.2.i.mt7921e_unregister_device.exit_crit_edge, %for.body.1.i.mt7921e_unregister_device.exit_crit_edge, %for.body.i.mt7921e_unregister_device.exit_crit_edge, %entry.mt7921e_unregister_device.exit_crit_edge
  %ps_work.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 9
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work.i) #7
  %wake_work.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 5
  %call3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %wake_work.i) #7
  tail call void @mt7921_tx_token_put(ptr noundef %1) #7
  %call4.i = tail call i32 @mt7921_mcu_drv_pmctrl(ptr noundef %1) #7
  tail call void @mt7921_dma_cleanup(ptr noundef %1) #7
  %call5.i = tail call i32 @mt7921_wfsys_reset(ptr noundef %1) #7
  tail call void @mt7921_mcu_exit(ptr noundef %1) #7
  %irq_tasklet.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 3
  %count.i.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 3, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @tasklet_unlock_wait(ptr noundef %irq_tasklet.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @mt76_free_device(ptr noundef %1) #7
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev1, i32 noundef %14, ptr noundef %1) #7
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_pci_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %suspended = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 2
  %ps_work = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 9
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ps_work) #7
  %wake_work = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 5
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wake_work) #7
  %call4 = tail call i32 @mt7921_mcu_drv_pmctrl(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.restore_suspend_crit_edge, label %if.end

entry.restore_suspend_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_suspend

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.restore_suspend_crit_edge

if.end.restore_suspend_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_suspend

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %1, i1 noundef zeroext true) #7
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 27
  tail call void @napi_disable(ptr noundef %tx_napi) #7
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %3 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end7.mt76_worker_disable.exit_crit_edge, label %if.end.i

if.end7.mt76_worker_disable.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_disable.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @kthread_park(ptr noundef nonnull %4) #7
  %state.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %state.i, align 4
  br label %mt76_worker_disable.exit

mt76_worker_disable.exit:                         ; preds = %if.end.i, %if.end7.mt76_worker_disable.exit_crit_edge
  %ndesc = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %6 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %mt76_worker_disable.exit.for.end_crit_edge, label %for.body

mt76_worker_disable.exit.for.end_crit_edge:       ; preds = %mt76_worker_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %mt76_worker_disable.exit
  %arrayidx11 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_disable(ptr noundef %arrayidx11) #7
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %8 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not.1 = icmp eq i32 %9, 0
  br i1 %tobool10.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx11.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_disable(ptr noundef %arrayidx11.1) #7
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %10 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not.2 = icmp eq i32 %11, 0
  br i1 %tobool10.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx11.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_disable(ptr noundef %arrayidx11.2) #7
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %12 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.3 = icmp eq i32 %13, 0
  br i1 %tobool10.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx11.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_disable(ptr noundef %arrayidx11.3) #7
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %14 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.4 = icmp eq i32 %15, 0
  br i1 %tobool10.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_disable(ptr noundef %arrayidx11.4) #7
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %mt76_worker_disable.exit.for.end_crit_edge
  %call13 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #7
  %call14 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef %call13, i1 noundef zeroext true) #7
  %call15 = tail call zeroext i1 @__mt76_poll(ptr noundef %1, i32 noundef 868872, i32 noundef 10, i32 noundef 0, i32 noundef 1000) #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw, align 4
  %call16 = tail call i32 %19(ptr noundef %1, i32 noundef 868872, i32 noundef 5, i32 noundef 0) #7
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr, align 4
  tail call void %23(ptr noundef %1, i32 noundef 868868, i32 noundef 0) #7
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %wr19 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr19, align 4
  tail call void %27(ptr noundef %1, i32 noundef 65928, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %29) #7
  %irq_tasklet = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 3
  tail call void @tasklet_kill(ptr noundef %irq_tasklet) #7
  %call20 = tail call i32 @mt7921_mcu_fw_pmctrl(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.restore_napi_crit_edge

for.end.restore_napi_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_napi

if.end23:                                         ; preds = %for.end
  %call24 = tail call i32 @pci_save_state(ptr noundef %pdev) #7
  %call26 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #7
  %call27 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef %call26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end23.cleanup_crit_edge, label %if.end23.restore_napi_crit_edge

if.end23.restore_napi_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %restore_napi

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

restore_napi:                                     ; preds = %if.end23.restore_napi_crit_edge, %for.end.restore_napi_crit_edge
  %err.0 = phi i32 [ %call20, %for.end.restore_napi_crit_edge ], [ %call27, %if.end23.restore_napi_crit_edge ]
  %30 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool37.not = icmp eq i32 %31, 0
  br i1 %tobool37.not, label %restore_napi.for.end44_crit_edge, label %for.body39

restore_napi.for.end44_crit_edge:                 ; preds = %restore_napi
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body39:                                       ; preds = %restore_napi
  %arrayidx41 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_enable(ptr noundef %arrayidx41) #7
  %ndesc36.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %32 = ptrtoint ptr %ndesc36.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ndesc36.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool37.not.1 = icmp eq i32 %33, 0
  br i1 %tobool37.not.1, label %for.body39.for.end44_crit_edge, label %for.body39.1

for.body39.for.end44_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body39.1:                                     ; preds = %for.body39
  %arrayidx41.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_enable(ptr noundef %arrayidx41.1) #7
  %ndesc36.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %34 = ptrtoint ptr %ndesc36.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ndesc36.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool37.not.2 = icmp eq i32 %35, 0
  br i1 %tobool37.not.2, label %for.body39.1.for.end44_crit_edge, label %for.body39.2

for.body39.1.for.end44_crit_edge:                 ; preds = %for.body39.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body39.2:                                     ; preds = %for.body39.1
  %arrayidx41.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_enable(ptr noundef %arrayidx41.2) #7
  %ndesc36.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %36 = ptrtoint ptr %ndesc36.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ndesc36.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool37.not.3 = icmp eq i32 %37, 0
  br i1 %tobool37.not.3, label %for.body39.2.for.end44_crit_edge, label %for.body39.3

for.body39.2.for.end44_crit_edge:                 ; preds = %for.body39.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body39.3:                                     ; preds = %for.body39.2
  %arrayidx41.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_enable(ptr noundef %arrayidx41.3) #7
  %ndesc36.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %38 = ptrtoint ptr %ndesc36.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ndesc36.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool37.not.4 = icmp eq i32 %39, 0
  br i1 %tobool37.not.4, label %for.body39.3.for.end44_crit_edge, label %for.body39.4

for.body39.3.for.end44_crit_edge:                 ; preds = %for.body39.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body39.4:                                     ; preds = %for.body39.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx41.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_enable(ptr noundef %arrayidx41.4) #7
  br label %for.end44

for.end44:                                        ; preds = %for.body39.4, %for.body39.3.for.end44_crit_edge, %for.body39.2.for.end44_crit_edge, %for.body39.1.for.end44_crit_edge, %for.body39.for.end44_crit_edge, %restore_napi.for.end44_crit_edge
  tail call void @napi_enable(ptr noundef %tx_napi) #7
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %ds_enable to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ds_enable, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool46.not = icmp eq i8 %41, 0
  br i1 %tobool46.not, label %if.then47, label %for.end44.if.end49_crit_edge

for.end44.if.end49_crit_edge:                     ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %1, i1 noundef zeroext false) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.end44.if.end49_crit_edge
  %call50 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext false) #7
  br label %restore_suspend

restore_suspend:                                  ; preds = %if.end49, %if.end.restore_suspend_crit_edge, %entry.restore_suspend_crit_edge
  %err.1 = phi i32 [ %call4, %entry.restore_suspend_crit_edge ], [ %call5, %if.end.restore_suspend_crit_edge ], [ %err.0, %if.end49 ]
  %42 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %suspended, align 2
  br label %cleanup

cleanup:                                          ; preds = %restore_suspend, %if.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %restore_suspend ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_pci_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_restore_state(ptr noundef %pdev) #7
  %call3 = tail call i32 @mt7921_mcu_drv_pmctrl(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @mt7921_wpdma_reinit_cond(ptr noundef %1) #7
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr, align 4
  tail call void %5(ptr noundef %1, i32 noundef 65928, i32 noundef 255) #7
  tail call void @mt76_set_irq_mask(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 675807221) #7
  %state.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 3, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end5.mt7921_irq_enable.exit_crit_edge

if.end5.mt7921_irq_enable.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7921_irq_enable.exit

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %irq_tasklet.i = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet.i) #7
  br label %mt7921_irq_enable.exit

mt7921_irq_enable.exit:                           ; preds = %if.then.i.i, %if.end5.mt7921_irq_enable.exit_crit_edge
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmw, align 4
  %call8 = tail call i32 %9(ptr noundef %1, i32 noundef 868852, i32 noundef 0, i32 noundef 1) #7
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %rmw10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw10, align 4
  %call11 = tail call i32 %13(ptr noundef %1, i32 noundef 868872, i32 noundef 0, i32 noundef 5) #7
  %tx_worker = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %mt7921_irq_enable.exit.mt76_worker_enable.exit_crit_edge, label %if.end.i

mt7921_irq_enable.exit.mt76_worker_enable.exit_crit_edge: ; preds = %mt7921_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.end.i:                                         ; preds = %mt7921_irq_enable.exit
  tail call void @kthread_unpark(ptr noundef nonnull %15) #7
  %16 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i.i60 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i60, label %if.end.i.mt76_worker_enable.exit_crit_edge, label %if.end.i.i

if.end.i.mt76_worker_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.end.i.i:                                       ; preds = %if.end.i
  %state.i.i61 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 26, i32 2
  %call.i.i62 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %tobool1.not.i.i = icmp eq i32 %call.i.i62, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.mt76_worker_enable.exit_crit_edge

if.end.i.i.mt76_worker_enable.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %18 = ptrtoint ptr %state.i.i61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i61, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge

land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt76_worker_enable.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_worker, align 4
  %call7.i.i = tail call i32 @wake_up_process(ptr noundef %22) #7
  br label %mt76_worker_enable.exit

mt76_worker_enable.exit:                          ; preds = %if.then5.i.i, %land.lhs.true.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.i.mt76_worker_enable.exit_crit_edge, %if.end.i.mt76_worker_enable.exit_crit_edge, %mt7921_irq_enable.exit.mt76_worker_enable.exit_crit_edge
  tail call fastcc void @local_bh_disable()
  %ndesc = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 0, i32 8
  %23 = ptrtoint ptr %ndesc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not = icmp eq i32 %24, 0
  br i1 %tobool13.not, label %mt76_worker_enable.exit.for.end_crit_edge, label %for.body

mt76_worker_enable.exit.for.end_crit_edge:        ; preds = %mt76_worker_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %mt76_worker_enable.exit
  %arrayidx14 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 0
  tail call void @napi_enable(ptr noundef %arrayidx14) #7
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx14) #7
  br i1 %call.i, label %if.then.i, label %for.body.napi_schedule.exit_crit_edge

for.body.napi_schedule.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx14) #7
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %for.body.napi_schedule.exit_crit_edge
  %ndesc.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 1, i32 8
  %25 = ptrtoint ptr %ndesc.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ndesc.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool13.not.1 = icmp eq i32 %26, 0
  br i1 %tobool13.not.1, label %napi_schedule.exit.for.end_crit_edge, label %for.body.1

napi_schedule.exit.for.end_crit_edge:             ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %napi_schedule.exit
  %arrayidx14.1 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 1
  tail call void @napi_enable(ptr noundef %arrayidx14.1) #7
  %call.i.1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx14.1) #7
  br i1 %call.i.1, label %if.then.i.1, label %for.body.1.napi_schedule.exit.1_crit_edge

for.body.1.napi_schedule.exit.1_crit_edge:        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit.1

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx14.1) #7
  br label %napi_schedule.exit.1

napi_schedule.exit.1:                             ; preds = %if.then.i.1, %for.body.1.napi_schedule.exit.1_crit_edge
  %ndesc.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 2, i32 8
  %27 = ptrtoint ptr %ndesc.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ndesc.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool13.not.2 = icmp eq i32 %28, 0
  br i1 %tobool13.not.2, label %napi_schedule.exit.1.for.end_crit_edge, label %for.body.2

napi_schedule.exit.1.for.end_crit_edge:           ; preds = %napi_schedule.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %napi_schedule.exit.1
  %arrayidx14.2 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 2
  tail call void @napi_enable(ptr noundef %arrayidx14.2) #7
  %call.i.2 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx14.2) #7
  br i1 %call.i.2, label %if.then.i.2, label %for.body.2.napi_schedule.exit.2_crit_edge

for.body.2.napi_schedule.exit.2_crit_edge:        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx14.2) #7
  br label %napi_schedule.exit.2

napi_schedule.exit.2:                             ; preds = %if.then.i.2, %for.body.2.napi_schedule.exit.2_crit_edge
  %ndesc.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 3, i32 8
  %29 = ptrtoint ptr %ndesc.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ndesc.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.not.3 = icmp eq i32 %30, 0
  br i1 %tobool13.not.3, label %napi_schedule.exit.2.for.end_crit_edge, label %for.body.3

napi_schedule.exit.2.for.end_crit_edge:           ; preds = %napi_schedule.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %napi_schedule.exit.2
  %arrayidx14.3 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 3
  tail call void @napi_enable(ptr noundef %arrayidx14.3) #7
  %call.i.3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx14.3) #7
  br i1 %call.i.3, label %if.then.i.3, label %for.body.3.napi_schedule.exit.3_crit_edge

for.body.3.napi_schedule.exit.3_crit_edge:        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit.3

if.then.i.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx14.3) #7
  br label %napi_schedule.exit.3

napi_schedule.exit.3:                             ; preds = %if.then.i.3, %for.body.3.napi_schedule.exit.3_crit_edge
  %ndesc.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 23, i32 4, i32 8
  %31 = ptrtoint ptr %ndesc.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ndesc.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool13.not.4 = icmp eq i32 %32, 0
  br i1 %tobool13.not.4, label %napi_schedule.exit.3.for.end_crit_edge, label %for.body.4

napi_schedule.exit.3.for.end_crit_edge:           ; preds = %napi_schedule.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %napi_schedule.exit.3
  %arrayidx14.4 = getelementptr %struct.mt76_dev, ptr %1, i32 0, i32 19, i32 4
  tail call void @napi_enable(ptr noundef %arrayidx14.4) #7
  %call.i.4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx14.4) #7
  br i1 %call.i.4, label %if.then.i.4, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx14.4) #7
  br label %for.end

for.end:                                          ; preds = %if.then.i.4, %for.body.4.for.end_crit_edge, %napi_schedule.exit.3.for.end_crit_edge, %napi_schedule.exit.2.for.end_crit_edge, %napi_schedule.exit.1.for.end_crit_edge, %napi_schedule.exit.for.end_crit_edge, %mt76_worker_enable.exit.for.end_crit_edge
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 27
  tail call void @napi_enable(ptr noundef %tx_napi) #7
  %call.i64 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #7
  br i1 %call.i64, label %if.then.i65, label %for.end.napi_schedule.exit67_crit_edge

for.end.napi_schedule.exit67_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit67

if.then.i65:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %tx_napi) #7
  br label %napi_schedule.exit67

napi_schedule.exit67:                             ; preds = %if.then.i65, %for.end.napi_schedule.exit67_crit_edge
  tail call fastcc void @local_bh_enable()
  %ds_enable = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %ds_enable to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ds_enable, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool18.not = icmp eq i8 %34, 0
  br i1 %tobool18.not, label %if.then19, label %napi_schedule.exit67.if.end21_crit_edge

napi_schedule.exit67.if.end21_crit_edge:          ; preds = %napi_schedule.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %napi_schedule.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef %1, i1 noundef zeroext false) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %napi_schedule.exit67.if.end21_crit_edge
  %call22 = tail call i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef %1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %suspended = getelementptr inbounds %struct.mt7921_dev, ptr %1, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %suspended, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mt7921_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @mt7921_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_update_channel(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921e_tx_prepare_skb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921e_tx_complete_skb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921e_queue_rx_skb(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_rx_poll_complete(ptr noundef %mdev, i32 noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %q to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %q, label %if.else3 [
    i32 0, label %if.then
    i32 2, label %if.then2
  ]

if.then:                                          ; preds = %entry
  tail call void @mt76_set_irq_mask(ptr noundef %mdev, i32 noundef 0, i32 noundef 0, i32 noundef 4) #7
  %state.i.i = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 3, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.if.end4.sink.split_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then.if.end4.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.sink.split

if.then2:                                         ; preds = %entry
  tail call void @mt76_set_irq_mask(ptr noundef %mdev, i32 noundef 0, i32 noundef 0, i32 noundef 4194304) #7
  %state.i.i8 = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 3, i32 1
  %call.i.i9 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %call.i.i9, 0
  br i1 %tobool.not.i.i10, label %if.then2.if.end4.sink.split_crit_edge, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2.if.end4.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.sink.split

if.else3:                                         ; preds = %entry
  tail call void @mt76_set_irq_mask(ptr noundef %mdev, i32 noundef 0, i32 noundef 0, i32 noundef 1) #7
  %state.i.i14 = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 3, i32 1
  %call.i.i15 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.else3.if.end4.sink.split_crit_edge, label %if.else3.if.end4_crit_edge

if.else3.if.end4_crit_edge:                       ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.else3.if.end4.sink.split_crit_edge:            ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.else3.if.end4.sink.split_crit_edge, %if.then2.if.end4.sink.split_crit_edge, %if.then.if.end4.sink.split_crit_edge
  %irq_tasklet.i17 = getelementptr inbounds %struct.mt7921_dev, ptr %mdev, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet.i17) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.else3.if.end4_crit_edge, %if.then2.if.end4_crit_edge, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_sta_ps(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mac_sta_add(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_sta_assoc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mac_sta_remove(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921e_init_reset(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7921_wpdma_reset(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921e_mac_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921e_mcu_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921e_mcu_drv_pmctrl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921e_mcu_fw_pmctrl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_pci_disable_aspm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_alloc_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mmio_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7921_irq_tasklet(i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wr, align 4
  tail call void %4(ptr noundef %0, i32 noundef 868868, i32 noundef 0) #7
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call = tail call i32 %8(ptr noundef %0, i32 noundef 868864) #7
  %irqmask = getelementptr inbounds %struct.mt76_dev, ptr %0, i32 0, i32 59, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irqmask, align 4
  %and = and i32 %10, %call
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %wr3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wr3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr3, align 4
  tail call void %14(ptr noundef %0, i32 noundef 868864, i32 noundef %and) #7
  %15 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqmask, align 4
  tail call fastcc void @trace_dev_irq(ptr noundef %0, i32 noundef %and, i32 noundef %16)
  %and5 = and i32 %and, 4194309
  %and6 = and i32 %and, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %or7 = or i32 %and5, 201326592
  %spec.select = select i1 %tobool.not, i32 %and5, i32 %or7
  %and8 = and i32 %and, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %entry.if.end22_crit_edge, label %if.then10

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call13 = tail call i32 %20(ptr noundef %0, i32 noundef 868848) #7
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %wr15 = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wr15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr15, align 4
  tail call void %24(ptr noundef %0, i32 noundef 868848, i32 noundef %call13) #7
  %and16 = shl i32 %call13, 2
  %25 = and i32 %and16, 4
  %26 = or i32 %25, %and
  %27 = or i32 %25, %spec.select
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %entry.if.end22_crit_edge
  %intr.1 = phi i32 [ %26, %if.then10 ], [ %and, %entry.if.end22_crit_edge ]
  %mask.2 = phi i32 [ %27, %if.then10 ], [ %spec.select, %entry.if.end22_crit_edge ]
  tail call void @mt76_set_irq_mask(ptr noundef %0, i32 noundef 868868, i32 noundef %mask.2, i32 noundef 0) #7
  %and23 = and i32 %intr.1, 134742000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %0, i32 0, i32 27
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #7
  br i1 %call.i, label %if.then.i, label %if.then25.if.end26_crit_edge

if.then25.if.end26_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %tx_napi) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then.i, %if.then25.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %and27 = and i32 %intr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end30_crit_edge, label %if.then29

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  %arrayidx = getelementptr %struct.mt76_dev, ptr %0, i32 0, i32 19, i32 1
  %call.i74 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx) #7
  br i1 %call.i74, label %if.then.i75, label %if.then29.if.end30_crit_edge

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then.i75:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then.i75, %if.then29.if.end30_crit_edge, %if.end26.if.end30_crit_edge
  %and31 = and i32 %intr.1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  %arrayidx35 = getelementptr %struct.mt76_dev, ptr %0, i32 0, i32 19, i32 2
  %call.i77 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx35) #7
  br i1 %call.i77, label %if.then.i78, label %if.then33.if.end36_crit_edge

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then.i78:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %arrayidx35) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then.i78, %if.then33.if.end36_crit_edge, %if.end30.if.end36_crit_edge
  %and37 = and i32 %intr.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  %napi40 = getelementptr inbounds %struct.mt76_dev, ptr %0, i32 0, i32 19
  %call.i80 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi40) #7
  br i1 %call.i80, label %if.then.i81, label %if.then39.if.end42_crit_edge

if.then39.if.end42_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then.i81:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi40) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then.i81, %if.then39.if.end42_crit_edge, %if.end36.if.end42_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7921_irq_handler(i32 noundef %irq, ptr noundef %dev_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev_instance, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %dev_instance, i32 noundef 868868, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev_instance, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.mt7921_dev, ptr %dev_instance, i32 0, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_tasklet = getelementptr inbounds %struct.mt7921_dev, ptr %dev_instance, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_dma_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_wpdma_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dev_irq(ptr noundef %dev, i32 noundef %val, i32 noundef %mask) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 1), ptr blockaddress(@trace_dev_irq, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !66

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !68
  %call42 = tail call i32 @__traceiter_dev_irq(ptr noundef null, ptr noundef %dev, i32 noundef %val, i32 noundef %mask) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  %13 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dev_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_dev_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 80, ptr noundef nonnull @.str.7) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !71
  %31 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dev_irq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_tx_token_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_drv_pmctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_dma_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_wfsys_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7921_mcu_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_hif_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_connac_mcu_set_deep_sleep(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_mcu_fw_pmctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7921_wpdma_reinit_cond(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__param_disable_aspm, !1, !"__param_disable_aspm", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_aspmtype446, !1, !"__UNIQUE_ID_disable_aspmtype446", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_aspm447, !4, !"__UNIQUE_ID_disable_aspm447", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 25, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 366, i32 11}
!7 = !{ptr @mt7921_pci_driver, !8, !"mt7921_pci_driver", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 365, i32 19}
!9 = !{ptr @__initcall__kmod_mt7921e__448_376_mt7921_pci_driver_init6, !10, !"__initcall__kmod_mt7921e__448_376_mt7921_pci_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 376, i32 1}
!11 = !{ptr @__exitcall_mt7921_pci_driver_exit, !10, !"__exitcall_mt7921_pci_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_firmware449, !13, !"__UNIQUE_ID_firmware449", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 379, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware450, !15, !"__UNIQUE_ID_firmware450", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 380, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware451, !17, !"__UNIQUE_ID_firmware451", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 381, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware452, !19, !"__UNIQUE_ID_firmware452", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 382, i32 1}
!20 = !{ptr @__UNIQUE_ID_author453, !21, !"__UNIQUE_ID_author453", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 383, i32 1}
!22 = !{ptr @__UNIQUE_ID_author454, !23, !"__UNIQUE_ID_author454", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 384, i32 1}
!24 = !{ptr @__UNIQUE_ID_file455, !25, !"__UNIQUE_ID_file455", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 385, i32 1}
!26 = !{ptr @__UNIQUE_ID_license456, !25, !"__UNIQUE_ID_license456", i1 false, i1 false}
!27 = !{ptr @mt7921_disable_aspm, !28, !"mt7921_disable_aspm", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 23, i32 13}
!29 = !{ptr @__param_str_disable_aspm, !1, !"__param_str_disable_aspm", i1 false, i1 false}
!30 = !{ptr @mt7921_pci_device_table, !31, !"mt7921_pci_device_table", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 15, i32 35}
!32 = !{ptr @mt7921_pci_probe.drv_ops, !33, !"drv_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 127, i32 38}
!34 = !{ptr @mt7921_pci_probe.mt7921_pcie_ops, !35, !"mt7921_pcie_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 146, i32 37}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/pci.c", i32 193, i32 2}
!38 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mt7921_pci_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @mt7921_pci_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/mediatek/mt76/mt7921/../trace.h", i32 59, i32 1}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!48 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!51 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
!63 = !{i64 2148217311, i64 2148217337, i64 2148217366, i64 2148217400, i64 2148217431, i64 2148217454}
!64 = !{i64 2153083851}
!65 = !{i64 2153084493}
!66 = !{i64 2148699126, i64 2148699131, i64 2148699144, i64 2148699188, i64 2148699222, i64 2148699243}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2158664230}
!69 = !{i64 2158664435}
!70 = !{i64 2149372339}
!71 = !{i64 2149373375}
