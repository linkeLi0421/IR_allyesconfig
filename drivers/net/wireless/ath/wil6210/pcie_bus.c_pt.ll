; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/pcie_bus.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/pcie_bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.wil_platform_rops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fw_map = type { i32, i32, i32, ptr, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.134, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.134 = type { ptr }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.133 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.wil6210_vif = type { %struct.wireless_dev, ptr, ptr, i8, [1 x i32], i32, i16, i8, i8, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, [32 x i8], i32, i8, [32 x i8], i32, i32, ptr, i32, %struct.timer_list, %struct.work_struct, ptr, %struct.timer_list, %struct.wil_p2p_info, %struct.list_head, %struct.mutex, %struct.work_struct, i32, i8, i64, i32, %struct.work_struct }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.131, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.131 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.132 }
%union.anon.132 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@__param_str_n_msi = internal constant [14 x i8] c"wil6210.n_msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@n_msi = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_n_msi = internal constant %struct.kernel_param { ptr @__param_str_n_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @n_msi } }, section "__param", align 4
@__UNIQUE_ID_n_msitype378 = internal constant [27 x i8] c"wil6210.parmtype=n_msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_n_msi379 = internal constant [83 x i8] c"wil6210.parm=n_msi: Use MSI interrupt: 0 - use INTx, 1 - single, or 3 - (default) \00", section ".modinfo", align 1
@__param_str_ftm_mode = internal constant [17 x i8] c"wil6210.ftm_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ftm_mode = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ftm_mode = internal constant %struct.kernel_param { ptr @__param_str_ftm_mode, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @ftm_mode } }, section "__param", align 4
@__UNIQUE_ID_ftm_modetype380 = internal constant [31 x i8] c"wil6210.parmtype=ftm_mode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ftm_mode381 = internal constant [62 x i8] c"wil6210.parm=ftm_mode: Set factory test mode, default - false\00", section ".modinfo", align 1
@__initcall__kmod_wil6210__399_677_wil6210_driver_init6 = internal global ptr @wil6210_driver_init, section ".initcall6.init", align 4
@wil6210_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @wil6210_pcie_ids, ptr @wil_pcie_probe, ptr @wil_pcie_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wil6210_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wil6210_driver_exit = internal global ptr @wil6210_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file400 = internal constant [54 x i8] c"wil6210.file=drivers/net/wireless/ath/wil6210/wil6210\00", section ".modinfo", align 1
@__UNIQUE_ID_license401 = internal constant [29 x i8] c"wil6210.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author402 = internal constant [59 x i8] c"wil6210.author=Qualcomm Atheros <wil6210@qca.qualcomm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description403 = internal constant [53 x i8] c"wil6210.description=Driver for 60g WiFi WIL6210 card\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@wil6210_pcie_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6889, i32 784, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6889, i32 770, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6091, i32 4609, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@wil6210_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wil6210_pm_suspend, ptr @wil6210_pm_resume, ptr @wil6210_pm_suspend, ptr @wil6210_pm_resume, ptr @wil6210_pm_suspend, ptr @wil6210_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wil6210_pm_runtime_suspend, ptr @wil6210_pm_runtime_resume, ptr @wil6210_pm_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@__const.wil_pcie_probe.rops = private unnamed_addr constant %struct.wil_platform_rops { ptr @wil_platform_rop_ramdump, ptr @wil_platform_rop_fw_recovery }, align 8
@__const.wil_pcie_probe.dma_addr_size = private unnamed_addr constant [4 x i32] [i32 64, i32 48, i32 40, i32 32], align 4
@wil_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"wil6210 device found [%04x:%04x] (rev %x) bar size 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_pcie_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ath/wil6210/pcie_bus.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wil_pcie_probe._entry_ptr = internal global ptr @wil_pcie_probe._entry, section ".printk_index", align 4
@wil_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 317, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unexpected BAR0 size 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wil_pcie_probe._entry_ptr.9 = internal global ptr @wil_pcie_probe._entry.6, section ".printk_index", align 4
@wil_pcie_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 324, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wil_if_alloc failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_pcie_probe._entry_ptr.12 = internal global ptr @wil_pcie_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: wil_platform_init failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: pci_enable_device failed, retry with MSI only\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: pci_enable_device failed, even with MSI only\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: pci_request_region failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: pci_ioremap_bar failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: CSR at %pR -> 0x%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: wil_set_capabilities failed, rc %d\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_pcie_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dma_set_mask_and_coherent(%d) failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@wil_pcie_probe._entry_ptr.22 = internal global ptr @wil_pcie_probe._entry.20, section ".printk_index", align 4
@wil_pcie_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"using dma mask %d\00", [46 x i8] zeroinitializer }, align 32
@wil_pcie_probe._entry_ptr.25 = internal global ptr @wil_pcie_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Enable device failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: wil_if_add failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wil_pcie_probe.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.28, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[MISC]Loading WMI only FW\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to load WMI only FW\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: register_pm_notifier failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil6210_ftm.fw\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wil6210.fw\00", [21 x i8] zeroinitializer }, align 32
@fw_mapping = external dso_local local_unnamed_addr global [19 x %struct.fw_map], align 4
@sparrow_fw_mapping = external dso_local local_unnamed_addr constant [10 x %struct.fw_map], align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Sparrow D0\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wil6210_sparrow_plus_ftm.fw\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil6210_sparrow_plus.fw\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac_rgf_ext\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: mac_rgf_ext section not found in fw_mapping\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.wil_set_capabilities = private unnamed_addr constant [21 x i8] c"wil_set_capabilities\00", align 1
@sparrow_d0_mac_rgf_ext = external dso_local local_unnamed_addr constant %struct.fw_map, align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Sparrow B0\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Talyn-MA\00", [23 x i8] zeroinitializer }, align 32
@talyn_fw_mapping = external dso_local local_unnamed_addr constant [13 x %struct.fw_map], align 4
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil6436_ftm.fw\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wil6436.fw\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Talyn-MB\00", [23 x i8] zeroinitializer }, align 32
@talyn_mb_fw_mapping = external dso_local local_unnamed_addr constant [19 x %struct.fw_map], align 4
@.str.44 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: Unknown board hardware, chip_id 0x%08x, chip_revision 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw_code\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: fw_code section not found in fw_mapping\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Board hardware is %s, flash %sexist\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"doesn't \00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: platform_capa 0x%lx\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_if_pcie_enable.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil_if_pcie_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DBG[MISC]if_pcie_enable\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_if_pcie_enable.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]Setup %d MSI interrupts\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_if_pcie_enable.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.54, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]MSI interrupts disabled, use INTx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Invalid n_msi=%d, default to 1\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: 3 MSI mode failed, try 1 MSI\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: pci_enable_msi failed, use INTx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Interrupt pin not routed, unable to use INTx\0A\00", [46 x i8] zeroinitializer }, align 32
@wil6210_pm_notify.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wil6210_pm_notify\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[ PM ]pm_notify: mode (%ld)\0A\00", [32 x i8] zeroinitializer }, align 32
@wil6210_pm_notify.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.61, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DBG[ PM ]unhandled notify mode %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@wil6210_pm_notify.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.62, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DBG[ PM ]notification mode %ld: rc (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@wil_if_pcie_disable.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_if_pcie_disable\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[MISC]if_pcie_disable\0A\00", [38 x i8] zeroinitializer }, align 32
@wil_pcie_remove.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil_pcie_remove\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DBG[MISC]pcie_remove\0A\00", [42 x i8] zeroinitializer }, align 32
@wil6210_suspend.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil6210_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DBG[ PM ]suspend: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"runtime\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"system\00", [25 x i8] zeroinitializer }, align 32
@wil6210_resume.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil6210_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DBG[ PM ]resume: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: device failed to resume (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@wil6210_pm_runtime_suspend.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wil6210_pm_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[ PM ]trying to suspend while suspended\0A\00", [52 x i8] zeroinitializer }, align 32
@wil6210_pm_runtime_idle.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil6210_pm_runtime_idle\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DBG[ PM ]Runtime idle\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 516321, i64 268951777, i64 640812847]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"n_msi\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 16, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [9 x i8] c"ftm_mode\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 20, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"wil6210_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 654, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 672, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"wil6210_pcie_ids\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 490, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"wil6210_pm_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 647, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 309, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 316, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 324, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 337, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 343, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 352, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 361, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 368, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 373, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 377, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 390, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 394, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 407, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 415, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 421, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 426, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 439, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 40, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 41, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 50, i32 19 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 52, i32 29 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 53, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 57, i32 30 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 59, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 65, i32 19 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 69, i32 19 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 77, i32 18 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 85, i32 28 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 86, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 91, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 107, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 116, i32 37 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 118, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 123, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 134, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 190, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 198, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 201, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 204, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 210, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 215, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 222, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 580, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 603, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 607, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 254, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 468, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 505, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 540, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 555, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 640, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.319 = private constant [47 x i8] c"../drivers/net/wireless/ath/wil6210/pcie_bus.c\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 625, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author402, ptr @__UNIQUE_ID_description403, ptr @__UNIQUE_ID_file400, ptr @__UNIQUE_ID_ftm_mode381, ptr @__UNIQUE_ID_ftm_modetype380, ptr @__UNIQUE_ID_license401, ptr @__UNIQUE_ID_n_msi379, ptr @__UNIQUE_ID_n_msitype378, ptr @__exitcall_wil6210_driver_exit, ptr @__initcall__kmod_wil6210__399_677_wil6210_driver_init6, ptr @__param_ftm_mode, ptr @__param_n_msi, ptr @wil6210_driver_exit, ptr @wil_pcie_probe._entry, ptr @wil_pcie_probe._entry.10, ptr @wil_pcie_probe._entry.20, ptr @wil_pcie_probe._entry.23, ptr @wil_pcie_probe._entry.6, ptr @wil_pcie_probe._entry_ptr, ptr @wil_pcie_probe._entry_ptr.12, ptr @wil_pcie_probe._entry_ptr.22, ptr @wil_pcie_probe._entry_ptr.25, ptr @wil_pcie_probe._entry_ptr.9, ptr @n_msi, ptr @ftm_mode, ptr @wil6210_driver, ptr @.str, ptr @wil6210_pcie_ids, ptr @wil6210_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil6210_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil6210_pcie_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil6210_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_pcie_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_pcie_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_pcie_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_disable_irq(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wil to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil, align 128
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #6
  %n_msi = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 4
  %4 = ptrtoint ptr %n_msi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_msi, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %3, 1
  tail call void @disable_irq(i32 noundef %add) #6
  %add2 = add i32 %3, 2
  tail call void @disable_irq(i32 noundef %add2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_enable_irq(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wil to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil, align 128
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @enable_irq(i32 noundef %3) #6
  %n_msi = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 4
  %4 = ptrtoint ptr %n_msi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_msi, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %3, 1
  tail call void @enable_irq(i32 noundef %add) #6
  %add2 = add i32 %3, 2
  tail call void @enable_irq(i32 noundef %add2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wil_platform_modinit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @wil6210_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @wil_platform_modexit() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wil6210_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @wil6210_driver) #6
  tail call void @wil_platform_modexit() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_platform_modexit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @wil_platform_modinit() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_pcie_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %rops = alloca %struct.wil_platform_rops, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rops) #6
  %0 = load i64, ptr @__const.wil_pcie_probe.rops, align 8
  %1 = ptrtoint ptr %rops to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %rops, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  %sub = add i32 %3, 1
  %add = sub i32 %sub, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor, align 8
  %conv = zext i16 %7 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv8 = zext i16 %9 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 4
  %conv9 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %cond) #9
  %12 = add i32 %cond, -4194305
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2097153, i32 %12)
  %13 = icmp ult i32 %12, -2097153
  br i1 %13, label %do.end16, label %if.end

do.end16:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %cond) #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call = tail call ptr @wil_if_alloc(ptr noundef %dev1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %14) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pdev, ptr %call, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %driver_data.i.i, align 4
  %bar_size26 = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %bar_size26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %bar_size26, align 4
  %platform_ops = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 83
  %call28 = call ptr @wil_platform_init(ptr noundef %dev1, ptr noundef %platform_ops, ptr noundef nonnull %rops, ptr noundef %call) #6
  %platform_handle = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 82
  %18 = ptrtoint ptr %platform_handle to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call28, ptr %platform_handle, align 8
  %tobool.not = icmp eq ptr %call28, null
  br i1 %tobool.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2) #6
  br label %if_free

if.end31:                                         ; preds = %if.end24
  %call32 = call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.if.end44_crit_edge, label %land.lhs.true

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end31
  %msi_enabled = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %19 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %19, i32 5)
  %bf.load = load i40, ptr %msi_enabled, align 1
  %20 = and i40 %bf.load, 134217728
  %cmp34 = icmp eq i40 %20, 0
  br i1 %cmp34, label %if.end41, label %land.lhs.true.if.then43_crit_edge

land.lhs.true.if.then43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

if.end41:                                         ; preds = %land.lhs.true
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2) #6
  %21 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %21, i32 5)
  %bf.load38 = load i40, ptr %msi_enabled, align 1
  %bf.set = or i40 %bf.load38, 134217728
  store i40 %bf.set, ptr %msi_enabled, align 1
  %call40 = call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end41.if.end44_crit_edge, label %if.end41.if.then43_crit_edge

if.end41.if.then43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then43:                                        ; preds = %if.end41.if.then43_crit_edge, %land.lhs.true.if.then43_crit_edge
  %rc.0251 = phi i32 [ %call40, %if.end41.if.then43_crit_edge ], [ %call32, %land.lhs.true.if.then43_crit_edge ]
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #6
  br label %err_plat

if.end44:                                         ; preds = %if.end41.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %call45 = call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #6
  %call46 = call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #6
  br label %err_disable_pdev

if.end49:                                         ; preds = %if.end44
  %call50 = call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #6
  %csr = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 5
  %22 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call50, ptr %csr, align 4
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2) #6
  br label %err_release_reg

if.end54:                                         ; preds = %if.end49
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %call, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef %resource, ptr noundef nonnull %call50) #6
  %23 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 2868
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !189
  %26 = call i32 @llvm.bswap.i32(i32 %25) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  %27 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %28, i32 45028
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153.i) #6, !srcloc !189
  %30 = lshr i32 %29, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  %31 = trunc i32 %30 to i8
  %conv.i = and i8 %31, 3
  %hw_capa.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 15
  %32 = ptrtoint ptr %hw_capa.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %hw_capa.i, align 4
  %fw_capabilities.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 16
  %33 = ptrtoint ptr %fw_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %fw_capabilities.i, align 4
  %platform_capa3.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 17
  %34 = ptrtoint ptr %platform_capa3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %platform_capa3.i, align 4
  %35 = load i8, ptr @ftm_mode, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.32, ptr @.str.31
  %wil_fw_name6.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 11
  %36 = ptrtoint ptr %wil_fw_name6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cond.i, ptr %wil_fw_name6.i, align 8
  %chip_revision7.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 9
  %37 = ptrtoint ptr %chip_revision7.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %chip_revision7.i, align 64
  %38 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %sw.default57.i [
    i32 640812847, label %sw.bb.i
    i32 516321, label %sw.bb24.i
    i32 268951777, label %sw.bb43.i
  ]

sw.bb.i:                                          ; preds = %if.end54
  %39 = call ptr @memcpy(ptr @fw_mapping, ptr @sparrow_fw_mapping, i32 200)
  %conv8.i = zext i8 %conv.i to i32
  %40 = zext i32 %conv8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %conv8.i, label %sw.default.i [
    i32 3, label %sw.bb9.i
    i32 0, label %sw.bb19.i
  ]

sw.bb9.i:                                         ; preds = %sw.bb.i
  %hw_name.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 10
  %41 = ptrtoint ptr %hw_name.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.33, ptr %hw_name.i, align 4
  %hw_version.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 8
  %42 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %hw_version.i, align 4
  %cond12.i = select i1 %tobool.not.i, ptr @.str.35, ptr @.str.34
  %call13.i = call zeroext i1 @wil_fw_verify_file_exists(ptr noundef %call, ptr noundef nonnull %cond12.i) #6
  br i1 %call13.i, label %if.then.i, label %sw.bb9.i.if.end.i_crit_edge

sw.bb9.i.if.end.i_crit_edge:                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %wil_fw_name6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cond12.i, ptr %wil_fw_name6.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb9.i.if.end.i_crit_edge
  %call15.i = call ptr @wil_find_fw_mapping(ptr noundef nonnull @.str.36) #6
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.wil_set_capabilities) #6
  br label %if.then60

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = call ptr @memcpy(ptr %call15.i, ptr @sparrow_d0_mac_rgf_ext, i32 20)
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %hw_name20.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 10
  %45 = ptrtoint ptr %hw_name20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.38, ptr %hw_name20.i, align 4
  %hw_version21.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 8
  %46 = ptrtoint ptr %hw_version21.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %hw_version21.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %hw_name22.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 10
  %47 = ptrtoint ptr %hw_name22.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.39, ptr %hw_name22.i, align 4
  %hw_version23.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 8
  %48 = ptrtoint ptr %hw_version23.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %hw_version23.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb19.i, %if.end18.i
  %rgf_fw_assert_code_addr.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 97
  %49 = ptrtoint ptr %rgf_fw_assert_code_addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 9564192, ptr %rgf_fw_assert_code_addr.i, align 8
  %rgf_ucode_assert_code_addr.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 98
  %50 = ptrtoint ptr %rgf_ucode_assert_code_addr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 9564200, ptr %rgf_ucode_assert_code_addr.i, align 4
  br label %sw.epilog61.i

sw.bb24.i:                                        ; preds = %if.end54
  %hw_name25.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 10
  %51 = ptrtoint ptr %hw_name25.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.40, ptr %hw_name25.i, align 4
  %hw_version26.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 8
  %52 = ptrtoint ptr %hw_version26.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %hw_version26.i, align 4
  %53 = call ptr @memcpy(ptr @fw_mapping, ptr @talyn_fw_mapping, i32 260)
  %rgf_fw_assert_code_addr27.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 97
  %54 = ptrtoint ptr %rgf_fw_assert_code_addr27.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 10711072, ptr %rgf_fw_assert_code_addr27.i, align 8
  %rgf_ucode_assert_code_addr28.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 98
  %55 = ptrtoint ptr %rgf_ucode_assert_code_addr28.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 10711080, ptr %rgf_ucode_assert_code_addr28.i, align 4
  %56 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %csr, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %57, i32 3296
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155.i) #6, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  %59 = and i32 %58, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool31.not.i = icmp eq i32 %59, 0
  br i1 %tobool31.not.i, label %sw.bb24.i.if.end35.i_crit_edge, label %if.then32.i

sw.bb24.i.if.end35.i_crit_edge:                   ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then32.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 0, ptr noundef %hw_capa.i) #6
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %sw.bb24.i.if.end35.i_crit_edge
  %60 = load i8, ptr @ftm_mode, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool36.not.i = icmp eq i8 %60, 0
  %cond38.i = select i1 %tobool36.not.i, ptr @.str.42, ptr @.str.41
  %call39.i = call zeroext i1 @wil_fw_verify_file_exists(ptr noundef %call, ptr noundef nonnull %cond38.i) #6
  br i1 %call39.i, label %if.then40.i, label %if.end35.i.sw.epilog61.i_crit_edge

if.end35.i.sw.epilog61.i_crit_edge:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog61.i

if.then40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %wil_fw_name6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %cond38.i, ptr %wil_fw_name6.i, align 8
  br label %sw.epilog61.i

sw.bb43.i:                                        ; preds = %if.end54
  %hw_name44.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 10
  %62 = ptrtoint ptr %hw_name44.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.43, ptr %hw_name44.i, align 4
  %hw_version45.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 8
  %63 = ptrtoint ptr %hw_version45.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %hw_version45.i, align 4
  %64 = call ptr @memcpy(ptr @fw_mapping, ptr @talyn_mb_fw_mapping, i32 380)
  %rgf_fw_assert_code_addr46.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 97
  %65 = ptrtoint ptr %rgf_fw_assert_code_addr46.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 10711072, ptr %rgf_fw_assert_code_addr46.i, align 8
  %rgf_ucode_assert_code_addr47.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 98
  %66 = ptrtoint ptr %rgf_ucode_assert_code_addr47.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10711080, ptr %rgf_ucode_assert_code_addr47.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %hw_capa.i) #6
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 67
  %67 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %use_enhanced_dma_hw.i, align 4
  %use_rx_hw_reordering.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 105
  %68 = ptrtoint ptr %use_rx_hw_reordering.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %use_rx_hw_reordering.i, align 1
  %use_compressed_rx_status.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 100
  %69 = ptrtoint ptr %use_compressed_rx_status.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %use_compressed_rx_status.i, align 4
  %70 = load i8, ptr @ftm_mode, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool50.not.i = icmp eq i8 %70, 0
  %cond52.i = select i1 %tobool50.not.i, ptr @.str.42, ptr @.str.41
  %call53.i = call zeroext i1 @wil_fw_verify_file_exists(ptr noundef %call, ptr noundef nonnull %cond52.i) #6
  br i1 %call53.i, label %if.then54.i, label %sw.bb43.i.sw.epilog61.i_crit_edge

sw.bb43.i.sw.epilog61.i_crit_edge:                ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog61.i

if.then54.i:                                      ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %wil_fw_name6.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %cond52.i, ptr %wil_fw_name6.i, align 8
  br label %sw.epilog61.i

sw.default57.i:                                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %conv58.i = zext i8 %conv.i to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.wil_set_capabilities, i32 noundef %26, i32 noundef %conv58.i) #6
  %hw_name59.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 10
  %72 = ptrtoint ptr %hw_name59.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.39, ptr %hw_name59.i, align 4
  %hw_version60.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 8
  %73 = ptrtoint ptr %hw_version60.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %hw_version60.i, align 4
  br label %if.then60

sw.epilog61.i:                                    ; preds = %if.then54.i, %sw.bb43.i.sw.epilog61.i_crit_edge, %if.then40.i, %if.end35.i.sw.epilog61.i_crit_edge, %sw.epilog.i
  call void @wil_init_txrx_ops(ptr noundef %call) #6
  %call62.i = call ptr @wil_find_fw_mapping(ptr noundef nonnull @.str.45) #6
  %tobool63.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool63.not.i, label %if.then64.i, label %if.end65.i

if.then64.i:                                      ; preds = %sw.epilog61.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.wil_set_capabilities) #6
  br label %if.then60

if.end65.i:                                       ; preds = %sw.epilog61.i
  %host.i = getelementptr inbounds %struct.fw_map, ptr %call62.i, i32 0, i32 2
  %74 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %host.i, align 4
  %iccm_base.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 99
  %76 = ptrtoint ptr %iccm_base.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %iccm_base.i, align 16
  %hw_name66.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 10
  %77 = ptrtoint ptr %hw_name66.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_name66.i, align 4
  %79 = ptrtoint ptr %hw_capa.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %hw_capa.i, align 4
  %and1.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool70.not.i = icmp eq i32 %and1.i.i, 0
  %cond71.i = select i1 %tobool70.not.i, ptr @.str.49, ptr @.str.48
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %call, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.wil_set_capabilities, ptr noundef %78, ptr noundef nonnull %cond71.i) #6
  %get_capa.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 83, i32 5
  %81 = ptrtoint ptr %get_capa.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get_capa.i, align 4
  %tobool72.not.i = icmp eq ptr %82, null
  br i1 %tobool72.not.i, label %if.end65.i.for.body.preheader_crit_edge, label %if.then73.i

if.end65.i.for.body.preheader_crit_edge:          ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then73.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %platform_handle, align 8
  %call76.i = call i32 %82(ptr noundef %84) #6
  %85 = ptrtoint ptr %platform_capa3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call76.i, ptr %platform_capa3.i, align 32
  br label %for.body.preheader

if.then60:                                        ; preds = %if.then64.i, %sw.default57.i, %if.then17.i
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef -22) #6
  br label %err_iounmap

for.body.preheader:                               ; preds = %if.then73.i, %if.end65.i.for.body.preheader_crit_edge
  %86 = ptrtoint ptr %platform_capa3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %platform_capa3.i, align 32
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %call, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.wil_set_capabilities, i32 noundef %87) #6
  %88 = ptrtoint ptr %wil_fw_name6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wil_fw_name6.i, align 8
  %call83.i = call i32 @wil_request_firmware(ptr noundef %call, ptr noundef %89, i1 noundef zeroext false) #6
  call void @wil_refresh_fw_capabilities(ptr noundef %call) #6
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 67
  %90 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !191
  %92 = xor i8 %91, 1
  %93 = zext i8 %92 to i32
  %arrayidx67 = getelementptr [4 x i32], ptr @__const.wil_pcie_probe.dma_addr_size, i32 0, i32 %93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp68 = icmp eq i8 %92, 0
  br i1 %cmp68, label %for.body.preheader.cond.end74_crit_edge, label %cond.false71

for.body.preheader.cond.end74_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end74

cond.false71:                                     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx67, align 4
  %sh_prom = zext i32 %95 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub73 = xor i64 %notmask, -1
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false71, %for.body.preheader.cond.end74_crit_edge
  %cond75 = phi i64 [ %sub73, %cond.false71 ], [ -1, %for.body.preheader.cond.end74_crit_edge ]
  %call.i = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %cond75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i239 = icmp eq i32 %call.i, 0
  br i1 %cmp.i239, label %cond.end74.do.end86_crit_edge, label %do.end81

cond.end74.do.end86_crit_edge:                    ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86

do.end81:                                         ; preds = %cond.end74
  %96 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx67, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %97, i32 noundef %call.i) #9
  %inc = add nuw nsw i32 %93, 1
  %arrayidx67.1 = getelementptr [4 x i32], ptr @__const.wil_pcie_probe.dma_addr_size, i32 0, i32 %inc
  %98 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx67.1, align 4
  %sh_prom.1 = zext i32 %99 to i64
  %notmask.1 = shl nsw i64 -1, %sh_prom.1
  %sub73.1 = xor i64 %notmask.1, -1
  %call.i.1 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %sub73.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i239.1 = icmp eq i32 %call.i.1, 0
  br i1 %cmp.i239.1, label %do.end81.do.end86_crit_edge, label %do.end81.1

do.end81.do.end86_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86

do.end81.1:                                       ; preds = %do.end81
  %100 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx67.1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %101, i32 noundef %call.i.1) #9
  %inc.1 = or i32 %93, 2
  %arrayidx67.2 = getelementptr [4 x i32], ptr @__const.wil_pcie_probe.dma_addr_size, i32 0, i32 %inc.1
  %102 = ptrtoint ptr %arrayidx67.2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx67.2, align 4
  %sh_prom.2 = zext i32 %103 to i64
  %notmask.2 = shl nsw i64 -1, %sh_prom.2
  %sub73.2 = xor i64 %notmask.2, -1
  %call.i.2 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %sub73.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i239.2 = icmp eq i32 %call.i.2, 0
  br i1 %cmp.i239.2, label %do.end81.1.do.end86_crit_edge, label %do.end81.2

do.end81.1.do.end86_crit_edge:                    ; preds = %do.end81.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86

do.end81.2:                                       ; preds = %do.end81.1
  %104 = ptrtoint ptr %arrayidx67.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx67.2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %105, i32 noundef %call.i.2) #9
  %inc.2 = add nuw nsw i32 %93, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.2)
  %exitcond.not.2 = icmp eq i32 %inc.2, 4
  br i1 %exitcond.not.2, label %do.end81.2.for.end_crit_edge, label %for.body.3

do.end81.2.for.end_crit_edge:                     ; preds = %do.end81.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %do.end81.2
  %arrayidx67.3 = getelementptr [4 x i32], ptr @__const.wil_pcie_probe.dma_addr_size, i32 0, i32 %inc.2
  %106 = ptrtoint ptr %arrayidx67.3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx67.3, align 4
  %sh_prom.3 = zext i32 %107 to i64
  %notmask.3 = shl nsw i64 -1, %sh_prom.3
  %sub73.3 = xor i64 %notmask.3, -1
  %call.i.3 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %sub73.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp.i239.3 = icmp eq i32 %call.i.3, 0
  br i1 %cmp.i239.3, label %for.body.3.do.end86_crit_edge, label %do.end81.3

for.body.3.do.end86_crit_edge:                    ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86

do.end81.3:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %arrayidx67.3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx67.3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %109, i32 noundef %call.i.3) #9
  br label %for.end

do.end86:                                         ; preds = %for.body.3.do.end86_crit_edge, %do.end81.1.do.end86_crit_edge, %do.end81.do.end86_crit_edge, %cond.end74.do.end86_crit_edge
  %cond75.lcssa = phi i64 [ %cond75, %cond.end74.do.end86_crit_edge ], [ %sub73.1, %do.end81.do.end86_crit_edge ], [ %sub73.2, %do.end81.1.do.end86_crit_edge ], [ %sub73.3, %for.body.3.do.end86_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %cond.end74.do.end86_crit_edge ], [ %call.i.1, %do.end81.do.end86_crit_edge ], [ %call.i.2, %do.end81.1.do.end86_crit_edge ], [ %call.i.3, %for.body.3.do.end86_crit_edge ]
  %arrayidx67.lcssa = phi ptr [ %arrayidx67, %cond.end74.do.end86_crit_edge ], [ %arrayidx67.1, %do.end81.do.end86_crit_edge ], [ %arrayidx67.2, %do.end81.1.do.end86_crit_edge ], [ %arrayidx67.3, %for.body.3.do.end86_crit_edge ]
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %cond75.lcssa) #6
  %110 = ptrtoint ptr %arrayidx67.lcssa to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx67.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %111) #9
  %dma_addr_size89 = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 65
  %112 = ptrtoint ptr %dma_addr_size89 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %dma_addr_size89, align 4
  br label %for.end

for.end:                                          ; preds = %do.end86, %do.end81.3, %do.end81.2.for.end_crit_edge
  %call.i272 = phi i32 [ %call.i.lcssa, %do.end86 ], [ %call.i.2, %do.end81.2.for.end_crit_edge ], [ %call.i.3, %do.end81.3 ]
  %dma_addr_size90 = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 65
  %113 = ptrtoint ptr %dma_addr_size90 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dma_addr_size90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp91 = icmp eq i32 %114, 0
  br i1 %cmp91, label %for.end.err_iounmap_crit_edge, label %if.end94

for.end.err_iounmap_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_iounmap

if.end94:                                         ; preds = %for.end
  call void @wil6210_clear_irq(ptr noundef %call) #6
  %call95 = call fastcc i32 @wil_if_pcie_enable(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2) #6
  br label %err_iounmap

if.end98:                                         ; preds = %if.end94
  call void @wil_clear_fw_log_addr(ptr noundef %call) #6
  %call99 = call i32 @wil_if_add(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef %call99) #6
  call fastcc void @wil_if_pcie_disable(ptr noundef %call)
  br label %err_iounmap

if.end102:                                        ; preds = %if.end98
  %115 = ptrtoint ptr %fw_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %fw_capabilities.i, align 4
  %117 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool104.not = icmp eq i32 %117, 0
  br i1 %tobool104.not, label %if.end102.if.end126_crit_edge, label %do.body108

if.end102.if.end126_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

do.body108:                                       ; preds = %if.end102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pcie_probe.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pcie_probe, %if.then113)) #6
          to label %do.end118 [label %if.then113], !srcloc !192

if.then113:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 3
  %118 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %main_ndev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pcie_probe.__UNIQUE_ID_ddebug390, ptr noundef %119, ptr noundef nonnull @.str.28) #6
  br label %do.end118

do.end118:                                        ; preds = %if.then113, %do.body108
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %call, ptr noundef nonnull @.str.28) #6
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 69
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call121 = call i32 @wil_reset(ptr noundef %call, i1 noundef zeroext true) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool123.not = icmp eq i32 %call121, 0
  br i1 %tobool123.not, label %do.end118.if.end126_crit_edge, label %if.then124

do.end118.if.end126_crit_edge:                    ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then124:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2) #6
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %do.end118.if.end126_crit_edge, %if.end102.if.end126_crit_edge
  %pm_notify = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 92
  %120 = ptrtoint ptr %pm_notify to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @wil6210_pm_notify, ptr %pm_notify, align 16
  %call128 = call i32 @register_pm_notifier(ptr noundef %pm_notify) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end126.if.end131_crit_edge, label %if.then130

if.end126.if.end131_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %call, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef %call128) #6
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end126.if.end131_crit_edge
  %call132 = call i32 @wil6210_debugfs_init(ptr noundef %call) #6
  call void @wil_pm_runtime_allow(ptr noundef %call) #6
  br label %cleanup

err_iounmap:                                      ; preds = %if.then101, %if.then97, %for.end.err_iounmap_crit_edge, %if.then60
  %rc.3 = phi i32 [ -22, %if.then60 ], [ %call.i272, %for.end.err_iounmap_crit_edge ], [ %call95, %if.then97 ], [ %call99, %if.then101 ]
  %121 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %csr, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %122) #6
  br label %err_release_reg

err_release_reg:                                  ; preds = %err_iounmap, %if.then53
  %rc.4 = phi i32 [ %rc.3, %err_iounmap ], [ -19, %if.then53 ]
  call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #6
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %err_release_reg, %if.then48
  %rc.5 = phi i32 [ %call46, %if.then48 ], [ %rc.4, %err_release_reg ]
  call void @pci_disable_device(ptr noundef %pdev) #6
  br label %err_plat

err_plat:                                         ; preds = %err_disable_pdev, %if.then43
  %rc.6 = phi i32 [ %rc.0251, %if.then43 ], [ %rc.5, %err_disable_pdev ]
  %uninit.i = getelementptr inbounds %struct.wil6210_priv, ptr %call, i32 0, i32 83, i32 3
  %123 = ptrtoint ptr %uninit.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %uninit.i, align 4
  %tobool.not.i242 = icmp eq ptr %124, null
  br i1 %tobool.not.i242, label %err_plat.wil_platform_ops_uninit.exit_crit_edge, label %if.then.i244

err_plat.wil_platform_ops_uninit.exit_crit_edge:  ; preds = %err_plat
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_platform_ops_uninit.exit

if.then.i244:                                     ; preds = %err_plat
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %platform_handle, align 8
  call void %124(ptr noundef %126) #6
  br label %wil_platform_ops_uninit.exit

wil_platform_ops_uninit.exit:                     ; preds = %if.then.i244, %err_plat.wil_platform_ops_uninit.exit_crit_edge
  %127 = call ptr @memset(ptr %platform_ops, i32 0, i32 28)
  br label %if_free

if_free:                                          ; preds = %wil_platform_ops_uninit.exit, %if.then30
  %rc.7 = phi i32 [ %rc.6, %wil_platform_ops_uninit.exit ], [ -19, %if.then30 ]
  call void @wil_if_free(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if_free, %if.end131, %if.then19, %do.end16
  %retval.0 = phi i32 [ -19, %do.end16 ], [ %14, %if.then19 ], [ %rc.7, %if_free ], [ 0, %if.end131 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rops) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_pcie_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %csr1 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %csr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_pcie_remove.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pcie_remove, %if.then)) #6
          to label %do.end8 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_pcie_remove.__UNIQUE_ID_ddebug391, ptr noundef %5, ptr noundef nonnull @.str.66) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.66) #6
  %pm_notify = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 92
  %call11 = tail call i32 @unregister_pm_notifier(ptr noundef %pm_notify) #6
  tail call void @wil_pm_runtime_forbid(ptr noundef %1) #6
  tail call void @wil6210_debugfs_remove(ptr noundef %1) #6
  tail call void @rtnl_lock() #6
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #6
  tail call void @wil_p2p_wdev_free(ptr noundef %1) #6
  %max_vifs.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_vifs.i, align 4
  %10 = tail call i8 @llvm.umin.i8(i8 %9, i8 4) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp213.i = icmp ugt i8 %10, 1
  br i1 %cmp213.i, label %for.body.i, label %do.end8.wil_remove_all_additional_vifs.exit_crit_edge

do.end8.wil_remove_all_additional_vifs.exit_crit_edge: ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_remove_all_additional_vifs.exit

for.body.i:                                       ; preds = %do.end8
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @wil_vif_prepare_stop(ptr noundef nonnull %12) #6
  %mid.i = getelementptr inbounds %struct.wil6210_vif, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mid.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mid.i, align 4
  tail call void @wil_vif_remove(ptr noundef %1, i8 noundef zeroext %14) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %15 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_vifs.i, align 4
  %17 = tail call i8 @llvm.umin.i8(i8 %16, i8 4) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp2.i = icmp ugt i8 %17, 2
  br i1 %cmp2.i, label %for.body.i.1, label %for.inc.i.wil_remove_all_additional_vifs.exit_crit_edge

for.inc.i.wil_remove_all_additional_vifs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_remove_all_additional_vifs.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 2
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %19, null
  br i1 %tobool.not.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.1 = tail call i32 @wil_vif_prepare_stop(ptr noundef nonnull %19) #6
  %mid.i.1 = getelementptr inbounds %struct.wil6210_vif, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mid.i.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mid.i.1, align 4
  tail call void @wil_vif_remove(ptr noundef %1, i8 noundef zeroext %21) #6
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.body.i.1.for.inc.i.1_crit_edge
  %22 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_vifs.i, align 4
  %24 = tail call i8 @llvm.umin.i8(i8 %23, i8 4) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp2.i.1 = icmp ugt i8 %24, 3
  br i1 %cmp2.i.1, label %for.body.i.2, label %for.inc.i.1.wil_remove_all_additional_vifs.exit_crit_edge

for.inc.i.1.wil_remove_all_additional_vifs.exit_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_remove_all_additional_vifs.exit

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 23, i32 3
  %25 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %26, null
  br i1 %tobool.not.i.2, label %for.body.i.2.wil_remove_all_additional_vifs.exit_crit_edge, label %if.then.i.2

for.body.i.2.wil_remove_all_additional_vifs.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_remove_all_additional_vifs.exit

if.then.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.2 = tail call i32 @wil_vif_prepare_stop(ptr noundef nonnull %26) #6
  %mid.i.2 = getelementptr inbounds %struct.wil6210_vif, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %mid.i.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mid.i.2, align 4
  tail call void @wil_vif_remove(ptr noundef %1, i8 noundef zeroext %28) #6
  br label %wil_remove_all_additional_vifs.exit

wil_remove_all_additional_vifs.exit:              ; preds = %if.then.i.2, %for.body.i.2.wil_remove_all_additional_vifs.exit_crit_edge, %for.inc.i.1.wil_remove_all_additional_vifs.exit_crit_edge, %for.inc.i.wil_remove_all_additional_vifs.exit_crit_edge, %do.end8.wil_remove_all_additional_vifs.exit_crit_edge
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_unlock(ptr noundef %30) #6
  tail call void @rtnl_unlock() #6
  tail call void @wil_if_remove(ptr noundef %1) #6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_pcie_disable.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_pcie_remove, %if.then.i30)) #6
          to label %wil_if_pcie_disable.exit [label %if.then.i30], !srcloc !192

if.then.i30:                                      ; preds = %wil_remove_all_additional_vifs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_pcie_disable.__UNIQUE_ID_ddebug389, ptr noundef %34, ptr noundef nonnull @.str.64) #6
  br label %wil_if_pcie_disable.exit

wil_if_pcie_disable.exit:                         ; preds = %if.then.i30, %wil_remove_all_additional_vifs.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.64) #6
  tail call void @pci_clear_master(ptr noundef %32) #6
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 46
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  tail call void @wil6210_fini_irq(ptr noundef %1, i32 noundef %36) #6
  tail call void @pci_disable_msi(ptr noundef %32) #6
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #6
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  %uninit.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 83, i32 3
  %37 = ptrtoint ptr %uninit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uninit.i, align 4
  %tobool.not.i31 = icmp eq ptr %38, null
  br i1 %tobool.not.i31, label %wil_if_pcie_disable.exit.wil_platform_ops_uninit.exit_crit_edge, label %if.then.i32

wil_if_pcie_disable.exit.wil_platform_ops_uninit.exit_crit_edge: ; preds = %wil_if_pcie_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %wil_platform_ops_uninit.exit

if.then.i32:                                      ; preds = %wil_if_pcie_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %platform_handle.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 82
  %39 = ptrtoint ptr %platform_handle.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %platform_handle.i, align 8
  tail call void %38(ptr noundef %40) #6
  br label %wil_platform_ops_uninit.exit

wil_platform_ops_uninit.exit:                     ; preds = %if.then.i32, %wil_if_pcie_disable.exit.wil_platform_ops_uninit.exit_crit_edge
  %platform_ops.i = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 83
  %41 = call ptr @memset(ptr %platform_ops.i, i32 0, i32 28)
  tail call void @wil_if_free(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_platform_rop_ramdump(ptr noundef %wil_handle, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wil_handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @wil_fw_copy_crash_dump(ptr noundef nonnull %wil_handle, ptr noundef %buf, i32 noundef %size) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_platform_rop_fw_recovery(ptr noundef %wil_handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wil_handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @wil_fw_error_recovery(ptr noundef nonnull %wil_handle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wil_if_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wil_platform_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_clear_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_if_pcie_enable(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wil to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil, align 128
  %msi_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %msi_enabled, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_pcie_enable.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_if_pcie_enable, %if.then)) #6
          to label %do.end7 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_pcie_enable.__UNIQUE_ID_ddebug386, ptr noundef %4, ptr noundef nonnull @.str.52) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.52) #6
  tail call void @pci_set_master(ptr noundef %1) #6
  %5 = load i32, ptr @n_msi, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %5, label %sw.epilog.thread [
    i32 3, label %do.end7.do.body12_crit_edge
    i32 1, label %do.end7.do.body12_crit_edge122
    i32 0, label %do.body36
  ]

do.end7.do.body12_crit_edge122:                   ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.end7.do.body12_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.body12:                                        ; preds = %do.end7.do.body12_crit_edge, %do.end7.do.body12_crit_edge122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_pcie_enable.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_if_pcie_enable, %if.then24)) #6
          to label %do.end30 [label %if.then24], !srcloc !192

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev25 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev25, align 4
  %9 = load i32, ptr @n_msi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_pcie_enable.__UNIQUE_ID_ddebug387, ptr noundef %8, ptr noundef nonnull @.str.53, i32 noundef %9) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12
  %10 = load i32, ptr @n_msi, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.53, i32 noundef %10) #6
  br label %sw.epilog

do.body36:                                        ; preds = %do.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_pcie_enable.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_if_pcie_enable, %if.then48)) #6
          to label %do.end54 [label %if.then48], !srcloc !192

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev49 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %11 = ptrtoint ptr %main_ndev49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_pcie_enable.__UNIQUE_ID_ddebug388, ptr noundef %12, ptr noundef nonnull @.str.54) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body36
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.54) #6
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.51, i32 noundef %5) #6
  br label %land.lhs.true62.sink.split

sw.epilog:                                        ; preds = %do.end54, %do.end30
  %.pr = load i32, ptr @n_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 3
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end60_crit_edge

sw.epilog.if.end60_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.lhs.true:                                    ; preds = %sw.epilog
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 3, i32 noundef 3, i32 noundef 2, ptr noundef null) #6
  %13 = load i32, ptr @n_msi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %13)
  %cmp58 = icmp slt i32 %call.i, %13
  br i1 %cmp58, label %if.then59, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then59:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.51) #6
  br label %land.lhs.true62.sink.split

if.end60:                                         ; preds = %land.lhs.true.if.end60_crit_edge, %sw.epilog.if.end60_crit_edge
  %14 = phi i32 [ %13, %land.lhs.true.if.end60_crit_edge ], [ %.pr, %sw.epilog.if.end60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp61 = icmp eq i32 %14, 1
  br i1 %cmp61, label %if.end60.land.lhs.true62_crit_edge, label %if.end60.if.end66_crit_edge

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end60.land.lhs.true62_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true62

land.lhs.true62.sink.split:                       ; preds = %if.then59, %sw.epilog.thread
  store i32 1, ptr @n_msi, align 4
  br label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true62.sink.split, %if.end60.land.lhs.true62_crit_edge
  %call63 = tail call i32 @pci_enable_msi(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true62.if.end66_crit_edge, label %if.then65

land.lhs.true62.if.end66_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then65:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.51) #6
  store i32 0, ptr @n_msi, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %land.lhs.true62.if.end66_crit_edge, %if.end60.if.end66_crit_edge
  %15 = load i32, ptr @n_msi, align 4
  %n_msi = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 4
  %16 = ptrtoint ptr %n_msi to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %n_msi, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp68 = icmp ne i32 %15, 0
  %17 = and i40 %bf.load, 134217728
  %tobool70.not = icmp eq i40 %17, 0
  %or.cond = select i1 %cmp68, i1 true, i1 %tobool70.not
  br i1 %or.cond, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.51) #6
  br label %stop_master

if.end72:                                         ; preds = %if.end66
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call73 = tail call i32 @wil6210_init_irq(ptr noundef %wil, i32 noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.release_vectors_crit_edge

if.end72.release_vectors_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_vectors

if.end76:                                         ; preds = %if.end72
  %mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call77 = tail call i32 @wil_reset(ptr noundef %wil, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool79.not = icmp eq i32 %call77, 0
  br i1 %tobool79.not, label %if.end76.cleanup_crit_edge, label %release_irq

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

release_irq:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  tail call void @wil6210_fini_irq(ptr noundef %wil, i32 noundef %21) #6
  br label %release_vectors

release_vectors:                                  ; preds = %release_irq, %if.end72.release_vectors_crit_edge
  %rc.0 = phi i32 [ %call73, %if.end72.release_vectors_crit_edge ], [ %call77, %release_irq ]
  tail call void @pci_free_irq_vectors(ptr noundef %1) #6
  br label %stop_master

stop_master:                                      ; preds = %release_vectors, %if.then71
  %rc.1 = phi i32 [ -19, %if.then71 ], [ %rc.0, %release_vectors ]
  tail call void @pci_clear_master(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %stop_master, %if.end76.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %stop_master ], [ 0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_clear_fw_log_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_if_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_pm_notify(ptr noundef %notify_block, i32 noundef %mode, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notify_block, i32 -25072
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_pm_notify.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_pm_notify, %if.then)) #6
          to label %do.end7 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr i8, ptr %notify_block, i32 -25060
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_pm_notify.__UNIQUE_ID_ddebug394, ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %mode) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.60, i32 noundef %mode) #6
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %mode, label %do.body32 [
    i32 1, label %do.end7.sw.bb_crit_edge
    i32 3, label %do.end7.sw.bb_crit_edge108
    i32 5, label %do.end7.sw.bb_crit_edge109
    i32 4, label %do.end7.sw.bb20_crit_edge
    i32 2, label %do.end7.sw.bb20_crit_edge110
    i32 6, label %do.end7.sw.bb20_crit_edge111
  ]

do.end7.sw.bb20_crit_edge111:                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

do.end7.sw.bb20_crit_edge110:                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

do.end7.sw.bb20_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

do.end7.sw.bb_crit_edge109:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end7.sw.bb_crit_edge108:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end7.sw.bb_crit_edge:                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %do.end7.sw.bb_crit_edge, %do.end7.sw.bb_crit_edge108, %do.end7.sw.bb_crit_edge109
  %call10 = tail call i32 @wil_can_suspend(ptr noundef %add.ptr, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb.do.body55_crit_edge

sw.bb.do.body55_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body55

if.end13:                                         ; preds = %sw.bb
  %notify = getelementptr i8, ptr %notify_block, i32 -308
  %3 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %notify, align 4
  %tobool14.not = icmp eq ptr %4, null
  br i1 %tobool14.not, label %if.end13.do.body55_crit_edge, label %if.then15

if.end13.do.body55_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body55

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %platform_handle = getelementptr i8, ptr %notify_block, i32 -328
  %5 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_handle, align 8
  %call18 = tail call i32 %4(ptr noundef %6, i32 noundef 3) #6
  br label %do.body55

sw.bb20:                                          ; preds = %do.end7.sw.bb20_crit_edge, %do.end7.sw.bb20_crit_edge110, %do.end7.sw.bb20_crit_edge111
  %notify22 = getelementptr i8, ptr %notify_block, i32 -308
  %7 = ptrtoint ptr %notify22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notify22, align 4
  %tobool23.not = icmp eq ptr %8, null
  br i1 %tobool23.not, label %sw.bb20.do.body55_crit_edge, label %if.then24

sw.bb20.do.body55_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body55

if.then24:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %platform_handle27 = getelementptr i8, ptr %notify_block, i32 -328
  %9 = ptrtoint ptr %platform_handle27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_handle27, align 8
  %call28 = tail call i32 %8(ptr noundef %10, i32 noundef 4) #6
  br label %do.body55

do.body32:                                        ; preds = %do.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_pm_notify.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_pm_notify, %if.then44)) #6
          to label %do.end50 [label %if.then44], !srcloc !192

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev45 = getelementptr i8, ptr %notify_block, i32 -25060
  %11 = ptrtoint ptr %main_ndev45 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_pm_notify.__UNIQUE_ID_ddebug395, ptr noundef %12, ptr noundef nonnull @.str.61, i32 noundef %mode) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.61, i32 noundef %mode) #6
  br label %do.body55

do.body55:                                        ; preds = %do.end50, %if.then24, %sw.bb20.do.body55_crit_edge, %if.then15, %if.end13.do.body55_crit_edge, %sw.bb.do.body55_crit_edge
  %rc.0 = phi i32 [ 0, %do.end50 ], [ %call28, %if.then24 ], [ 0, %sw.bb20.do.body55_crit_edge ], [ %call10, %sw.bb.do.body55_crit_edge ], [ %call18, %if.then15 ], [ 0, %if.end13.do.body55_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_pm_notify.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_pm_notify, %if.then67)) #6
          to label %do.end73 [label %if.then67], !srcloc !192

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev68 = getelementptr i8, ptr %notify_block, i32 -25060
  %13 = ptrtoint ptr %main_ndev68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main_ndev68, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_pm_notify.__UNIQUE_ID_ddebug396, ptr noundef %14, ptr noundef nonnull @.str.62, i32 noundef %mode, i32 noundef %rc.0) #6
  br label %do.end73

do.end73:                                         ; preds = %if.then67, %do.body55
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %add.ptr, ptr noundef nonnull @.str.62, i32 noundef %mode, i32 noundef %rc.0) #6
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil6210_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_if_pcie_disable(ptr noundef %wil) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wil to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_if_pcie_disable.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_if_pcie_disable, %if.then)) #6
          to label %do.end7 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_if_pcie_disable.__UNIQUE_ID_ddebug389, ptr noundef %3, ptr noundef nonnull @.str.64) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.64) #6
  tail call void @pci_clear_master(ptr noundef %1) #6
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @wil6210_fini_irq(ptr noundef %wil, i32 noundef %5) #6
  tail call void @pci_disable_msi(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_if_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_fw_copy_crash_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_fw_error_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_fw_verify_file_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wil_find_fw_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_init_txrx_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_request_firmware(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_refresh_fw_capabilities(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil6210_init_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_fini_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_can_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_p2p_wdev_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_if_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_vif_prepare_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_vif_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_pm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wil6210_suspend(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_pm_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wil6210_resume(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_pm_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end13, label %do.body3

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_pm_runtime_suspend.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_pm_runtime_suspend, %if.then8)) #6
          to label %do.end10 [label %if.then8], !srcloc !192

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_pm_runtime_suspend.__UNIQUE_ID_ddebug398, ptr noundef %6, ptr noundef nonnull @.str.75) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body3
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.75) #6
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call fastcc i32 @wil6210_suspend(ptr noundef %dev, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10
  %retval.0 = phi i32 [ 1, %do.end10 ], [ %call14, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_pm_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wil6210_resume(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_pm_runtime_idle(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_pm_runtime_idle.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_pm_runtime_idle, %if.then)) #6
          to label %do.end7 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_pm_runtime_idle.__UNIQUE_ID_ddebug397, ptr noundef %3, ptr noundef nonnull @.str.77) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.77) #6
  %call10 = tail call i32 @wil_can_suspend(ptr noundef %1, i1 noundef zeroext true) #6
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil6210_suspend(ptr noundef %dev, i1 noundef zeroext %is_runtime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_suspend.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_suspend, %if.then)) #6
          to label %do.end10 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %cond = select i1 %is_runtime, ptr @.str.69, ptr @.str.70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_suspend.__UNIQUE_ID_ddebug392, ptr noundef %3, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  %cond12 = select i1 %is_runtime, ptr @.str.69, ptr @.str.70
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond12) #6
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #6
  %call15 = tail call zeroext i1 @wil_has_active_ifaces(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #6
  br i1 %call15, label %land.rhs, label %do.end10.land.end_crit_edge

do.end10.land.end_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  %keep_radio_on_during_sleep = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 84
  %4 = ptrtoint ptr %keep_radio_on_during_sleep to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keep_radio_on_during_sleep, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool19 = icmp ne i8 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end10.land.end_crit_edge
  %6 = phi i1 [ false, %do.end10.land.end_crit_edge ], [ %tobool19, %land.rhs ]
  %call22 = tail call i32 @wil_can_suspend(ptr noundef %1, i1 noundef zeroext %is_runtime) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %land.end.out_crit_edge

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end25:                                         ; preds = %land.end
  %call28 = tail call i32 @wil_suspend(ptr noundef %1, i1 noundef zeroext %is_runtime, i1 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then30:                                        ; preds = %if.end25
  br i1 %6, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_clear_master(ptr noundef %add.ptr) #6
  %suspend_stats = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78
  br label %out.sink.split

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %r_on = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 1
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else, %if.then32
  %r_on.sink55 = phi ptr [ %r_on, %if.else ], [ %suspend_stats, %if.then32 ]
  %7 = ptrtoint ptr %r_on.sink55 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r_on.sink55, align 16
  %inc35 = add i32 %8, 1
  store i32 %inc35, ptr %r_on.sink55, align 16
  br label %out

out:                                              ; preds = %out.sink.split, %if.end25.out_crit_edge, %land.end.out_crit_edge
  %rc.0 = phi i32 [ %call22, %land.end.out_crit_edge ], [ %call28, %if.end25.out_crit_edge ], [ 0, %out.sink.split ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_has_active_ifaces(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_suspend(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil6210_resume(ptr noundef %dev, i1 noundef zeroext %is_runtime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_resume.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_resume, %if.then)) #6
          to label %do.end10 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %cond = select i1 %is_runtime, ptr @.str.69, ptr @.str.70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_resume.__UNIQUE_ID_ddebug393, ptr noundef %3, ptr noundef nonnull @.str.72, ptr noundef nonnull %cond) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  %cond12 = select i1 %is_runtime, ptr @.str.69, ptr @.str.70
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef nonnull %cond12) #6
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #6
  %call15 = tail call zeroext i1 @wil_has_active_ifaces(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #6
  br i1 %call15, label %land.end, label %do.end10.if.end23.thread_crit_edge

do.end10.if.end23.thread_crit_edge:               ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.thread

land.end:                                         ; preds = %do.end10
  %keep_radio_on_during_sleep = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 84
  %4 = ptrtoint ptr %keep_radio_on_during_sleep to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keep_radio_on_during_sleep, align 8, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool19.not = icmp eq i8 %5, 0
  br i1 %tobool19.not, label %land.end.if.end23.thread_crit_edge, label %if.end23

land.end.if.end23.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.thread

if.end23:                                         ; preds = %land.end
  %call26 = tail call i32 @wil_resume(ptr noundef %1, i1 noundef zeroext %is_runtime, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then37, label %if.else

if.end23.thread:                                  ; preds = %land.end.if.end23.thread_crit_edge, %do.end10.if.end23.thread_crit_edge
  tail call void @pci_set_master(ptr noundef %add.ptr) #6
  %call2669 = tail call i32 @wil_resume(ptr noundef %1, i1 noundef zeroext %is_runtime, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2669)
  %tobool27.not70 = icmp eq i32 %call2669, 0
  br i1 %tobool27.not70, label %if.else41, label %if.then30

if.then30:                                        ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef %call2669) #6
  tail call void @pci_clear_master(ptr noundef %add.ptr) #6
  %failed_resumes = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 0, i32 3
  br label %if.end47

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef %call26) #6
  %failed_resumes32 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 1, i32 3
  br label %if.end47

if.then37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %successful_resumes = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 1, i32 1
  br label %if.end47

if.else41:                                        ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #8
  %successful_resumes44 = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 78, i32 0, i32 1
  br label %if.end47

if.end47:                                         ; preds = %if.else41, %if.then37, %if.else, %if.then30
  %successful_resumes.sink78 = phi ptr [ %successful_resumes, %if.then37 ], [ %successful_resumes44, %if.else41 ], [ %failed_resumes, %if.then30 ], [ %failed_resumes32, %if.else ]
  %call2671 = phi i32 [ 0, %if.then37 ], [ 0, %if.else41 ], [ %call2669, %if.then30 ], [ %call26, %if.else ]
  %6 = ptrtoint ptr %successful_resumes.sink78 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %successful_resumes.sink78, align 4
  %inc40 = add i32 %7, 1
  store i32 %inc40, ptr %successful_resumes.sink78, align 4
  ret i32 %call2671
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_resume(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !122, !124, !125, !126, !128, !129, !131, !132, !134, !136, !138, !140, !142, !143, !144, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !160, !162, !163, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !178, !179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__param_n_msi, !1, !"__param_n_msi", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_n_msitype378, !1, !"__UNIQUE_ID_n_msitype378", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_n_msi379, !4, !"__UNIQUE_ID_n_msi379", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 18, i32 1}
!5 = !{ptr @__param_ftm_mode, !6, !"__param_ftm_mode", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 21, i32 1}
!7 = !{ptr @__UNIQUE_ID_ftm_modetype380, !6, !"__UNIQUE_ID_ftm_modetype380", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ftm_mode381, !9, !"__UNIQUE_ID_ftm_mode381", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 22, i32 1}
!10 = !{ptr @__initcall__kmod_wil6210__399_677_wil6210_driver_init6, !11, !"__initcall__kmod_wil6210__399_677_wil6210_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 677, i32 1}
!12 = !{ptr @__exitcall_wil6210_driver_exit, !13, !"__exitcall_wil6210_driver_exit", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 684, i32 1}
!14 = !{ptr @__UNIQUE_ID_file400, !15, !"__UNIQUE_ID_file400", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 686, i32 1}
!16 = !{ptr @__UNIQUE_ID_license401, !15, !"__UNIQUE_ID_license401", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author402, !18, !"__UNIQUE_ID_author402", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 687, i32 1}
!19 = !{ptr @__UNIQUE_ID_description403, !20, !"__UNIQUE_ID_description403", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 688, i32 1}
!21 = !{ptr @ftm_mode, !22, !"ftm_mode", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 20, i32 6}
!23 = !{ptr @__param_str_n_msi, !1, !"__param_str_n_msi", i1 false, i1 false}
!24 = !{ptr @n_msi, !25, !"n_msi", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 16, i32 12}
!26 = !{ptr @__param_str_ftm_mode, !6, !"__param_str_ftm_mode", i1 false, i1 false}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 672, i32 7}
!29 = !{ptr @wil6210_driver, !30, !"wil6210_driver", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 654, i32 26}
!31 = !{ptr @wil6210_pcie_ids, !32, !"wil6210_pcie_ids", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 490, i32 35}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 309, i32 2}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wil_pcie_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @wil_pcie_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 316, i32 3}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wil_pcie_probe._entry.6, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @wil_pcie_probe._entry_ptr.9, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 324, i32 3}
!48 = !{ptr @wil_pcie_probe._entry.10, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @wil_pcie_probe._entry_ptr.12, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 337, i32 3}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 343, i32 3}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 352, i32 3}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 361, i32 3}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 368, i32 3}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 373, i32 2}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 377, i32 3}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 390, i32 4}
!66 = !{ptr @wil_pcie_probe._entry.20, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wil_pcie_probe._entry_ptr.22, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 394, i32 3}
!70 = !{ptr @wil_pcie_probe._entry.23, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wil_pcie_probe._entry_ptr.25, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 407, i32 3}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 415, i32 3}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 421, i32 3}
!78 = !{ptr @wil_pcie_probe.__UNIQUE_ID_ddebug390, !77, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 426, i32 4}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 439, i32 3}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 40, i32 32}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 41, i32 7}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 50, i32 19}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 52, i32 29}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 53, i32 11}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 57, i32 30}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 59, i32 5}
!97 = !{ptr @__func__.wil_set_capabilities, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 65, i32 19}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 69, i32 19}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 77, i32 18}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 85, i32 28}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 86, i32 10}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 91, i32 18}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 107, i32 3}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 116, i32 37}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 118, i32 3}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 123, i32 2}
!118 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 134, i32 2}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 190, i32 2}
!124 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @wil_if_pcie_enable.__UNIQUE_ID_ddebug386, !123, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 198, i32 3}
!128 = !{ptr @wil_if_pcie_enable.__UNIQUE_ID_ddebug387, !127, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 201, i32 3}
!131 = !{ptr @wil_if_pcie_enable.__UNIQUE_ID_ddebug388, !130, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 204, i32 3}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 210, i32 3}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 215, i32 3}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 222, i32 3}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 580, i32 2}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @wil6210_pm_notify.__UNIQUE_ID_ddebug394, !141, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 603, i32 3}
!146 = !{ptr @wil6210_pm_notify.__UNIQUE_ID_ddebug395, !145, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 607, i32 2}
!149 = !{ptr @wil6210_pm_notify.__UNIQUE_ID_ddebug396, !148, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 254, i32 2}
!152 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @wil_if_pcie_disable.__UNIQUE_ID_ddebug389, !151, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 468, i32 2}
!156 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @wil_pcie_remove.__UNIQUE_ID_ddebug391, !155, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!158 = !{ptr @wil6210_pm_ops, !159, !"wil6210_pm_ops", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 647, i32 32}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 505, i32 2}
!162 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @wil6210_suspend.__UNIQUE_ID_ddebug392, !161, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!164 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 540, i32 2}
!168 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @wil6210_resume.__UNIQUE_ID_ddebug393, !167, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 555, i32 3}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 640, i32 3}
!174 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @wil6210_pm_runtime_suspend.__UNIQUE_ID_ddebug398, !173, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/wil6210/pcie_bus.c", i32 625, i32 2}
!178 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @wil6210_pm_runtime_idle.__UNIQUE_ID_ddebug397, !177, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{i64 4995672}
!190 = !{i64 2157998993}
!191 = !{i8 0, i8 2}
!192 = !{i64 2148968824, i64 2148968829, i64 2148968842, i64 2148968886, i64 2148968920, i64 2148968941}
