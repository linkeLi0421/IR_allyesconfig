; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/ahb.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/ahb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_bus_ops = type { ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.msa_region = type { i32, i32, ptr }
%struct.anon.140 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.141, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.145, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.147, %struct.anon.150, %struct.anon.160, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.141 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.142, i32, i32, i32, i32, i32, %struct.anon.143, %struct.anon.144, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.142 = type { ptr }
%struct.anon.143 = type { ptr, i32 }
%struct.anon.144 = type { i32 }
%struct.anon.145 = type { %union.anon.146, [0 x %struct.htt_tx_done] }
%union.anon.146 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.147 = type { i32, %union.anon.148, i32 }
%union.anon.148 = type { ptr }
%struct.anon.150 = type { i32, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.anon.160 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.186 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.187 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.anon.188 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.193 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.194 = type { ptr }
%struct.anon.195 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.196 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.anon.197 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@ath10k_ahb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ath10k_ahb_probe, ptr @ath10k_ahb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ath10k_ahb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ath10k_ahb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to register ath10k ahb driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ath10k_ahb_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath10k/ahb.c\00", [58 x i8] zeroinitializer }, align 32
@ath10k_ahb_init._entry_ptr = internal global ptr @ath10k_ahb_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath10k_ahb\00", [21 x i8] zeroinitializer }, align 32
@ath10k_ahb_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq4019-wifi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ath10k_ahb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 739, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to find matching device tree id\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ath10k_ahb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath10k_ahb_probe._entry_ptr = internal global ptr @ath10k_ahb_probe._entry, section ".printk_index", align 4
@ath10k_ahb_hif_ops = internal constant { %struct.ath10k_hif_ops, [44 x i8] } { %struct.ath10k_hif_ops { ptr @ath10k_pci_hif_tx_sg, ptr @ath10k_pci_hif_diag_read, ptr @ath10k_pci_diag_write_mem, ptr @ath10k_pci_hif_exchange_bmi_msg, ptr @ath10k_ahb_hif_start, ptr @ath10k_ahb_hif_stop, ptr null, ptr null, ptr @ath10k_pci_hif_map_service_to_pipe, ptr @ath10k_pci_hif_get_default_pipe, ptr @ath10k_pci_hif_send_complete_check, ptr @ath10k_pci_hif_get_free_queue_number, ptr @ath10k_ahb_read32, ptr @ath10k_ahb_write32, ptr @ath10k_ahb_hif_power_up, ptr @ath10k_pci_hif_power_down, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ath10k_ahb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 749, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate core\0A\00", [39 x i8] zeroinitializer }, align 32
@ath10k_ahb_probe._entry_ptr.10 = internal global ptr @ath10k_ahb_probe._entry.8, section ".printk_index", align 4
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ahb probe\0A\00", [21 x i8] zeroinitializer }, align 32
@ath10k_ahb_bus_ops = internal constant { %struct.ath10k_bus_ops, [20 x i8] } { %struct.ath10k_bus_ops { ptr @ath10k_ahb_read32, ptr @ath10k_ahb_write32, ptr @ath10k_ahb_get_num_banks }, [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup resource: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get chip id\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register driver core: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boot ahb hif start\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"boot ahb hif stop\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"boot ahb hif power up\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset chip: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize CE: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to setup init config: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mem ioremap error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gcc mem ioremap error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tcsr mem ioremap error\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set 32-bit dma mask: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set 32-bit consistent dma: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get irq number: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mem: 0x%pK mem_len: %lu gcc mem: 0x%pK tcsr_mem: 0x%pK\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wifi_wcss_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get cmd clk: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wifi_wcss_ref\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get ref clk: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wifi_wcss_rtc\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get rtc clk: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wifi_core_cold\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get core cold rst ctrl: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wifi_radio_cold\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get radio cold rst ctrl: %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wifi_radio_warm\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get radio warm rst ctrl: %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wifi_radio_srif\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get radio srif rst ctrl: %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wifi_cpu_init\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get cpu init rst ctrl: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unknown number of banks, assuming 1\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to request legacy irq %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clock(s) is/are not initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable cmd clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable ref clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable rtc clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rst ctrl(s) is/are not initialized\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to deassert radio cold rst: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to deassert radio warm rst: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to deassert radio srif rst: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to deassert cpu init rst: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"invalid core id %d found, skipping reset sequence\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to assert core cold rst: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to assert radio cold rst: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to assert radio warm rst: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to assert radio srif rst: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to assert cpu init rst: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to deassert core cold rst: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"core %d reset done\0A\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to halt axi bus: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axi bus halted\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ahb remove\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"ath10k_ahb_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 856, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 871, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 858, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"ath10k_ahb_of_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 16, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 739, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"ath10k_ahb_hif_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 703, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 749, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 753, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"ath10k_ahb_bus_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 720, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 775, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 794, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 801, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 620, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 635, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 650, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 654, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 660, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 666, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 447, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 457, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 465, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 472, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 478, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 491, i32 46 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 493, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 498, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 500, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 89, i32 38 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 91, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 96, i32 38 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 98, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 103, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 105, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 184, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 186, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 192, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 194, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 200, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 202, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 208, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 210, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 216, i32 9 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 218, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 78, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 414, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 555, i32 18 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 130, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 137, i32 18 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 143, i32 18 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 149, i32 18 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 246, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 252, i32 18 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 258, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 264, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 270, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 336, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 349, i32 18 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 354, i32 18 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 359, i32 18 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 364, i32 18 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 369, i32 18 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 385, i32 18 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 387, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 299, i32 18 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 303, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.290 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/ahb.c\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 840, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @ath10k_ahb_init._entry, ptr @ath10k_ahb_init._entry_ptr, ptr @ath10k_ahb_probe._entry, ptr @ath10k_ahb_probe._entry.8, ptr @ath10k_ahb_probe._entry_ptr, ptr @ath10k_ahb_probe._entry_ptr.10, ptr @ath10k_ahb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ath10k_ahb_of_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ath10k_ahb_hif_ops, ptr @.str.9, ptr @.str.11, ptr @ath10k_ahb_bus_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_ahb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_ahb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_ahb_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_ahb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_ahb_hif_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_ahb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_ahb_bus_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_ahb_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ath10k_ahb_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_ahb_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @ath10k_ahb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_ahb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %bus_params = alloca %struct.ath10k_bus_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bus_params) #6
  %0 = call ptr @memset(ptr %bus_params, i32 0, i32 12)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ath10k_ahb_of_match, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  %call3 = tail call ptr @ath10k_core_create(i32 noundef 1652, ptr noundef %dev, i32 noundef 1, i32 noundef %3, ptr noundef nonnull @ath10k_ahb_hif_ops) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %do.body11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %do.body11.if.then14_crit_edge

do.body11.if.then14_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false:                                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_probe, %if.then14)) #6
          to label %do.end17 [label %if.then14], !srcloc !154

if.then14:                                        ; preds = %lor.lhs.false, %do.body11.if.then14_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef nonnull %call3, i32 noundef 32, ptr noundef nonnull @.str.11) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %lor.lhs.false
  %ahb.i = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 41, i32 17, i32 1, i32 2
  %5 = ptrtoint ptr %ahb.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %ahb.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %call21 = tail call fastcc i32 @ath10k_ahb_resource_init(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %do.end17.err_core_destroy_crit_edge

do.end17.err_core_destroy_crit_edge:              ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_core_destroy

if.end24:                                         ; preds = %do.end17
  %dev_id = getelementptr inbounds %struct.ath10k, ptr %call3, i32 0, i32 7
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %dev_id, align 8
  %mem = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 41, i32 17, i32 1, i32 3
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  %mem25 = getelementptr inbounds %struct.ath10k, ptr %call3, i32 0, i32 143, i32 12
  %10 = ptrtoint ptr %mem25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mem25, align 4
  %mem_len = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 41, i32 17, i32 2
  %11 = ptrtoint ptr %mem_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_len, align 4
  %mem_len26 = getelementptr inbounds %struct.ath10k, ptr %call3, i32 0, i32 143, i32 16
  %13 = ptrtoint ptr %mem_len26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mem_len26, align 4
  %ar27 = getelementptr inbounds %struct.ath10k, ptr %call3, i32 0, i32 143, i32 8
  %14 = ptrtoint ptr %ar27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3, ptr %ar27, align 4
  %ce = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 0, i32 31, i32 5, i32 7
  %bus_ops = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 4
  %15 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ath10k_ahb_bus_ops, ptr %bus_ops, align 4
  %targ_cpu_to_ce_addr = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 41, i32 17, i32 0, i32 2
  %16 = ptrtoint ptr %targ_cpu_to_ce_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ath10k_ahb_qca4019_targ_cpu_to_ce_addr, ptr %targ_cpu_to_ce_addr, align 4
  %ce_priv = getelementptr inbounds %struct.ath10k, ptr %call3, i32 0, i32 131
  %17 = ptrtoint ptr %ce_priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ce, ptr %ce_priv, align 4
  %call29 = tail call i32 @ath10k_pci_setup_resource(ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef nonnull %call3, ptr noundef nonnull @.str.12, i32 noundef %call29) #6
  br label %err_resource_deinit

if.end32:                                         ; preds = %if.end24
  tail call void @ath10k_pci_init_napi(ptr noundef nonnull %call3) #6
  %irq.i = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 41, i32 17, i32 2, i32 3
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @ath10k_ahb_interrupt_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end36, label %ath10k_ahb_request_irq_legacy.exit

ath10k_ahb_request_irq_legacy.exit:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef nonnull %call3, ptr noundef nonnull @.str.48, i32 noundef %21, i32 noundef %call.i.i) #6
  br label %err_free_pipes

if.end36:                                         ; preds = %if.end32
  %oper_irq_mode.i = getelementptr inbounds %struct.ath10k, ptr %call3, i32 0, i32 143, i32 20
  %22 = ptrtoint ptr %oper_irq_mode.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %oper_irq_mode.i, align 4
  %call37 = tail call fastcc i32 @ath10k_ahb_prepare_device(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.err_free_irq_crit_edge

if.end36.err_free_irq_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_irq

if.end40:                                         ; preds = %if.end36
  tail call void @ath10k_pci_ce_deinit(ptr noundef nonnull %call3) #6
  %dev_type = getelementptr inbounds %struct.ath10k_bus_params, ptr %bus_params, i32 0, i32 1
  %23 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dev_type, align 4
  %regs = getelementptr inbounds %struct.ath10k, ptr %call3, i32 0, i32 37
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %soc_chip_id_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %soc_chip_id_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %soc_chip_id_address, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 4
  %add.i = add i32 %29, %27
  %30 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %add.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !155
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %34 = ptrtoint ptr %bus_params to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %bus_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp = icmp eq i32 %32, -1
  br i1 %cmp, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef nonnull %call3, ptr noundef nonnull @.str.13) #6
  br label %err_halt_device

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @ath10k_core_register(ptr noundef nonnull %call3, ptr noundef nonnull %bus_params) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef nonnull %call3, ptr noundef nonnull @.str.14, i32 noundef %call45) #6
  br label %err_halt_device

err_halt_device:                                  ; preds = %if.then47, %if.then43
  %ret.0 = phi i32 [ -19, %if.then43 ], [ %call45, %if.then47 ]
  call fastcc void @ath10k_ahb_halt_chip(ptr noundef nonnull %call3)
  call fastcc void @ath10k_ahb_clock_disable(ptr noundef nonnull %call3)
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_halt_device, %if.end36.err_free_irq_crit_edge
  %ret.1 = phi i32 [ %call37, %if.end36.err_free_irq_crit_edge ], [ %ret.0, %err_halt_device ]
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  %call1.i = call ptr @free_irq(i32 noundef %36, ptr noundef nonnull %call3) #6
  br label %err_free_pipes

err_free_pipes:                                   ; preds = %err_free_irq, %ath10k_ahb_request_irq_legacy.exit
  %ret.2 = phi i32 [ %call.i.i, %ath10k_ahb_request_irq_legacy.exit ], [ %ret.1, %err_free_irq ]
  call void @ath10k_pci_release_resource(ptr noundef nonnull %call3) #6
  br label %err_resource_deinit

err_resource_deinit:                              ; preds = %err_free_pipes, %if.then31
  %ret.3 = phi i32 [ %call29, %if.then31 ], [ %ret.2, %err_free_pipes ]
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 4
  %tobool.not.i103 = icmp eq ptr %38, null
  br i1 %tobool.not.i103, label %err_resource_deinit.if.end.i105_crit_edge, label %if.then.i104

err_resource_deinit.if.end.i105_crit_edge:        ; preds = %err_resource_deinit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i105

if.then.i104:                                     ; preds = %err_resource_deinit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %ahb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ahb.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  call void @devm_iounmap(ptr noundef %dev1.i, ptr noundef nonnull %38) #6
  br label %if.end.i105

if.end.i105:                                      ; preds = %if.then.i104, %err_resource_deinit.if.end.i105_crit_edge
  %gcc_mem.i = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 41, i32 17, i32 2, i32 1
  %41 = ptrtoint ptr %gcc_mem.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gcc_mem.i, align 4
  %tobool3.not.i = icmp eq ptr %42, null
  br i1 %tobool3.not.i, label %if.end.i105.if.end6.i_crit_edge, label %if.then4.i

if.end.i105.if.end6.i_crit_edge:                  ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  call void @iounmap(ptr noundef nonnull %42) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i105.if.end6.i_crit_edge
  %tcsr_mem.i = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 41, i32 17, i32 2, i32 2
  %43 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tcsr_mem.i, align 4
  %tobool7.not.i = icmp eq ptr %44, null
  br i1 %tobool7.not.i, label %if.end6.i.ath10k_ahb_resource_deinit.exit_crit_edge, label %if.then8.i

if.end6.i.ath10k_ahb_resource_deinit.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_ahb_resource_deinit.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @iounmap(ptr noundef nonnull %44) #6
  br label %ath10k_ahb_resource_deinit.exit

ath10k_ahb_resource_deinit.exit:                  ; preds = %if.then8.i, %if.end6.i.ath10k_ahb_resource_deinit.exit_crit_edge
  %45 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %mem, align 4
  %46 = ptrtoint ptr %gcc_mem.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %gcc_mem.i, align 4
  %47 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %tcsr_mem.i, align 4
  %cmd_clk.i.i = getelementptr inbounds %struct.ath10k, ptr %call3, i32 1, i32 41, i32 17, i32 3
  %48 = call ptr @memset(ptr %cmd_clk.i.i, i32 0, i32 32)
  br label %err_core_destroy

err_core_destroy:                                 ; preds = %ath10k_ahb_resource_deinit.exit, %do.end17.err_core_destroy_crit_edge
  %ret.4 = phi i32 [ %call21, %do.end17.err_core_destroy_crit_edge ], [ %ret.3, %ath10k_ahb_resource_deinit.exit ]
  call void @ath10k_core_destroy(ptr noundef nonnull %call3) #6
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_core_destroy, %if.end44.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %ret.4, %err_core_destroy ], [ -12, %do.end8 ], [ -22, %do.end ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bus_params) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_ahb_remove(ptr nocapture noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ahb.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 17, i32 1, i32 2
  %tobool2.not = icmp eq ptr %ahb.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %do.body.if.then7_crit_edge

do.body.if.then7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_remove, %if.then7)) #6
          to label %do.end [label %if.then7], !srcloc !154

if.then7:                                         ; preds = %lor.lhs.false, %do.body.if.then7_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef nonnull %1, i32 noundef 32768, ptr noundef nonnull @.str.69) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %lor.lhs.false
  tail call void @ath10k_core_unregister(ptr noundef nonnull %1) #6
  tail call void @ath10k_ce_disable_interrupts(ptr noundef nonnull %1) #6
  tail call void @ath10k_pci_disable_and_clear_legacy_irq(ptr noundef nonnull %1) #6
  %irq.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 17, i32 2, i32 3
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %4, ptr noundef nonnull %1) #6
  tail call void @ath10k_pci_release_resource(ptr noundef nonnull %1) #6
  tail call fastcc void @ath10k_ahb_halt_chip(ptr noundef nonnull %1)
  %cmd_clk.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 17, i32 3
  %5 = ptrtoint ptr %cmd_clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_clk.i, align 4
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
  %ref_clk.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 17, i32 3, i32 1
  %7 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ref_clk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  %rtc_clk.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 17, i32 3, i32 2
  %9 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  %mem.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 17, i32 1, i32 3
  %11 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end.if.end.i_crit_edge, label %if.then.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ahb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ahb.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void @devm_iounmap(ptr noundef %dev1.i, ptr noundef nonnull %12) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end.if.end.i_crit_edge
  %gcc_mem.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 17, i32 2, i32 1
  %15 = ptrtoint ptr %gcc_mem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gcc_mem.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %16) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %tcsr_mem.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 17, i32 2, i32 2
  %17 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tcsr_mem.i, align 4
  %tobool7.not.i = icmp eq ptr %18, null
  br i1 %tobool7.not.i, label %if.end6.i.ath10k_ahb_resource_deinit.exit_crit_edge, label %if.then8.i

if.end6.i.ath10k_ahb_resource_deinit.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_ahb_resource_deinit.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %18) #6
  br label %ath10k_ahb_resource_deinit.exit

ath10k_ahb_resource_deinit.exit:                  ; preds = %if.then8.i, %if.end6.i.ath10k_ahb_resource_deinit.exit_crit_edge
  %19 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %mem.i, align 4
  %20 = ptrtoint ptr %gcc_mem.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %gcc_mem.i, align 4
  %21 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %tcsr_mem.i, align 4
  %22 = call ptr @memset(ptr %cmd_clk.i, i32 0, i32 32)
  tail call void @ath10k_core_destroy(ptr noundef nonnull %1) #6
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %ath10k_ahb_resource_deinit.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ath10k_ahb_resource_deinit.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_core_create(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_ahb_resource_init(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ahb.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !157
  %1 = ptrtoint ptr %ahb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ahb.i, align 4
  %call2 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %res) #6
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 3
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %mem, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.22) #6
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %sub.i = add i32 %10, 1
  %add.i = sub i32 %sub.i, %12
  %mem_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 2
  %13 = ptrtoint ptr %mem_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %mem_len, align 4
  %call8 = call ptr @ioremap(i32 noundef 25165824, i32 noundef 393216) #6
  %gcc_mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 2, i32 1
  %14 = ptrtoint ptr %gcc_mem to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %gcc_mem, align 4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.23) #6
  br label %err_mem_unmap

if.end11:                                         ; preds = %if.end
  %call12 = call ptr @ioremap(i32 noundef 26214400, i32 noundef 524288) #6
  %tcsr_mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 2, i32 2
  %15 = ptrtoint ptr %tcsr_mem to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %tcsr_mem, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.24) #6
  br label %err_gcc_mem_unmap

if.end16:                                         ; preds = %if.end11
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call17 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.25, i32 noundef %call17) #6
  br label %err_tcsr_mem_unmap

if.end20:                                         ; preds = %if.end16
  %call22 = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.26, i32 noundef %call22) #6
  br label %err_tcsr_mem_unmap

if.end25:                                         ; preds = %if.end20
  %16 = ptrtoint ptr %ahb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ahb.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call2.i = call ptr @devm_clk_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.31) #6
  %cmd_clk.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3
  %18 = ptrtoint ptr %cmd_clk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %cmd_clk.i, align 4
  %tobool.not.i.i = icmp eq ptr %call2.i, null
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end25
  %19 = ptrtoint ptr %call2.i to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.32, i32 noundef %19) #6
  %20 = ptrtoint ptr %cmd_clk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd_clk.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then.i.err_tcsr_mem_unmap_crit_edge, label %if.then.i.ath10k_ahb_clock_init.exit_crit_edge

if.then.i.ath10k_ahb_clock_init.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_ahb_clock_init.exit

if.then.i.err_tcsr_mem_unmap_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tcsr_mem_unmap

if.end.i:                                         ; preds = %if.end25
  %call10.i = call ptr @devm_clk_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.33) #6
  %ref_clk.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 1
  %22 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call10.i, ptr %ref_clk.i, align 4
  %tobool.not.i63.i = icmp eq ptr %call10.i, null
  %cmp.i64.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i65.i = or i1 %tobool.not.i63.i, %cmp.i64.i
  br i1 %spec.select.i65.i, label %if.then13.i, label %if.end24.i

if.then13.i:                                      ; preds = %if.end.i
  %23 = ptrtoint ptr %call10.i to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.34, i32 noundef %23) #6
  %24 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ref_clk.i, align 4
  %tobool17.not.i = icmp eq ptr %25, null
  br i1 %tobool17.not.i, label %if.then13.i.err_tcsr_mem_unmap_crit_edge, label %if.then13.i.ath10k_ahb_clock_init.exit_crit_edge

if.then13.i.ath10k_ahb_clock_init.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_ahb_clock_init.exit

if.then13.i.err_tcsr_mem_unmap_crit_edge:         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tcsr_mem_unmap

if.end24.i:                                       ; preds = %if.end.i
  %call25.i = call ptr @devm_clk_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.35) #6
  %rtc_clk.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 2
  %26 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call25.i, ptr %rtc_clk.i, align 4
  %tobool.not.i66.i = icmp eq ptr %call25.i, null
  %cmp.i67.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i68.i = or i1 %tobool.not.i66.i, %cmp.i67.i
  br i1 %spec.select.i68.i, label %if.then28.i, label %if.end29

if.then28.i:                                      ; preds = %if.end24.i
  %27 = ptrtoint ptr %call25.i to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.36, i32 noundef %27) #6
  %28 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtc_clk.i, align 4
  %tobool32.not.i = icmp eq ptr %29, null
  br i1 %tobool32.not.i, label %if.then28.i.err_tcsr_mem_unmap_crit_edge, label %if.then28.i.ath10k_ahb_clock_init.exit_crit_edge

if.then28.i.ath10k_ahb_clock_init.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_ahb_clock_init.exit

if.then28.i.err_tcsr_mem_unmap_crit_edge:         ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tcsr_mem_unmap

ath10k_ahb_clock_init.exit:                       ; preds = %if.then28.i.ath10k_ahb_clock_init.exit_crit_edge, %if.then13.i.ath10k_ahb_clock_init.exit_crit_edge, %if.then.i.ath10k_ahb_clock_init.exit_crit_edge
  %retval.0.i.in = phi ptr [ %21, %if.then.i.ath10k_ahb_clock_init.exit_crit_edge ], [ %25, %if.then13.i.ath10k_ahb_clock_init.exit_crit_edge ], [ %29, %if.then28.i.ath10k_ahb_clock_init.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %err_tcsr_mem_unmap

if.end29:                                         ; preds = %if.end24.i
  %call30 = call fastcc i32 @ath10k_ahb_rst_ctrl_init(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.err_clock_deinit_crit_edge

if.end29.err_clock_deinit_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clock_deinit

if.end33:                                         ; preds = %if.end29
  %call34 = call i32 @platform_get_irq_byname(ptr noundef %2, ptr noundef nonnull @.str.27) #6
  %irq = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 2, i32 3
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call34, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.then36, label %do.body

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.28, i32 noundef %call34) #6
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  br label %err_clock_deinit

do.body:                                          ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %33 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %lor.lhs.false, label %do.body.if.then42_crit_edge

do.body.if.then42_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_resource_init, %if.then42)) #6
          to label %do.body45 [label %if.then42], !srcloc !154

if.then42:                                        ; preds = %lor.lhs.false, %do.body.if.then42_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %35) #6
  br label %do.body45

do.body45:                                        ; preds = %if.then42, %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %36 = load i32, ptr @ath10k_debug_mask, align 4
  %and46 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %do.body45.if.then50_crit_edge

do.body45.if.then50_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

lor.lhs.false48:                                  ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_resource_init, %if.then50)) #6
          to label %cleanup [label %if.then50], !srcloc !154

if.then50:                                        ; preds = %lor.lhs.false48, %do.body45.if.then50_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 4
  %39 = ptrtoint ptr %mem_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mem_len, align 4
  %41 = ptrtoint ptr %gcc_mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gcc_mem, align 4
  %43 = ptrtoint ptr %tcsr_mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tcsr_mem, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef %38, i32 noundef %40, ptr noundef %42, ptr noundef %44) #6
  br label %cleanup

err_clock_deinit:                                 ; preds = %if.then36, %if.end29.err_clock_deinit_crit_edge
  %ret.0 = phi i32 [ %call30, %if.end29.err_clock_deinit_crit_edge ], [ %32, %if.then36 ]
  %45 = ptrtoint ptr %cmd_clk.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %cmd_clk.i, align 4
  %ref_clk.i116 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 1
  %46 = ptrtoint ptr %ref_clk.i116 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ref_clk.i116, align 4
  %rtc_clk.i117 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 2
  %47 = ptrtoint ptr %rtc_clk.i117 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rtc_clk.i117, align 4
  br label %err_tcsr_mem_unmap

err_tcsr_mem_unmap:                               ; preds = %err_clock_deinit, %ath10k_ahb_clock_init.exit, %if.then28.i.err_tcsr_mem_unmap_crit_edge, %if.then13.i.err_tcsr_mem_unmap_crit_edge, %if.then.i.err_tcsr_mem_unmap_crit_edge, %if.then24, %if.then19
  %ret.1 = phi i32 [ %call17, %if.then19 ], [ %call22, %if.then24 ], [ %retval.0.i, %ath10k_ahb_clock_init.exit ], [ %ret.0, %err_clock_deinit ], [ -19, %if.then.i.err_tcsr_mem_unmap_crit_edge ], [ -19, %if.then13.i.err_tcsr_mem_unmap_crit_edge ], [ -19, %if.then28.i.err_tcsr_mem_unmap_crit_edge ]
  %48 = ptrtoint ptr %tcsr_mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tcsr_mem, align 4
  call void @iounmap(ptr noundef %49) #6
  br label %err_gcc_mem_unmap

err_gcc_mem_unmap:                                ; preds = %err_tcsr_mem_unmap, %if.then15
  %ret.2 = phi i32 [ %ret.1, %err_tcsr_mem_unmap ], [ -12, %if.then15 ]
  %50 = ptrtoint ptr %tcsr_mem to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %tcsr_mem, align 4
  %51 = ptrtoint ptr %gcc_mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gcc_mem, align 4
  call void @iounmap(ptr noundef %52) #6
  br label %err_mem_unmap

err_mem_unmap:                                    ; preds = %err_gcc_mem_unmap, %if.then10
  %ret.3 = phi i32 [ %ret.2, %err_gcc_mem_unmap ], [ -12, %if.then10 ]
  %53 = ptrtoint ptr %gcc_mem to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %gcc_mem, align 4
  %dev62 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %54 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem, align 4
  call void @devm_iounmap(ptr noundef %dev62, ptr noundef %55) #6
  br label %out

out:                                              ; preds = %err_mem_unmap, %if.then
  %ret.4 = phi i32 [ %6, %if.then ], [ %ret.3, %err_mem_unmap ]
  %56 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %mem, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then50, %lor.lhs.false48
  %retval.0 = phi i32 [ %ret.4, %out ], [ 0, %if.then50 ], [ 0, %lor.lhs.false48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_ahb_qca4019_targ_cpu_to_ce_addr(ptr noundef %ar, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 1048575
  %call = tail call i32 @ath10k_pci_read32(ptr noundef %ar, i32 noundef 262192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 786431, i32 %and)
  %cmp = icmp ugt i32 %and, 786431
  %or2 = or i32 %and, 1048576
  %and.pn = select i1 %cmp, i32 %and, i32 %or2
  %val.0 = or i32 %call, %and.pn
  ret i32 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_setup_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_init_napi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_ahb_prepare_device(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_clk.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3
  %0 = ptrtoint ptr %cmd_clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_clk.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %ref_clk.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 1
  %2 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_clk.i, align 4
  %tobool.not.i39.i = icmp eq ptr %3, null
  %cmp.i40.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i41.i = or i1 %tobool.not.i39.i, %cmp.i40.i
  br i1 %spec.select.i41.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %rtc_clk.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 2
  %4 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_clk.i, align 4
  %tobool.not.i42.i = icmp eq ptr %5, null
  %cmp.i43.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i44.i = or i1 %tobool.not.i42.i, %cmp.i43.i
  br i1 %spec.select.i44.i, label %lor.lhs.false3.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false3.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false3.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.50) #6
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i45.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i45.i, label %if.end.i.i, label %if.end.i.if.then7.i_crit_edge

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end8.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef nonnull %1) #6
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.then3.i.i, %if.end.i.if.then7.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i.if.then7.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.51, i32 noundef %retval.0.i.ph.i) #6
  br label %if.then

if.end8.i:                                        ; preds = %if.end.i.i
  %6 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ref_clk.i, align 4
  %call.i46.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool.not.i47.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool.not.i47.i, label %if.end.i50.i, label %if.end8.i.if.then12.i_crit_edge

if.end8.i.if.then12.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.i

if.end.i50.i:                                     ; preds = %if.end8.i
  %call1.i48.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i)
  %tobool2.not.i49.i = icmp eq i32 %call1.i48.i, 0
  br i1 %tobool2.not.i49.i, label %if.end13.i, label %if.then3.i51.i

if.then3.i51.i:                                   ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.then3.i51.i, %if.end8.i.if.then12.i_crit_edge
  %retval.0.i52.ph.i = phi i32 [ %call1.i48.i, %if.then3.i51.i ], [ %call.i46.i, %if.end8.i.if.then12.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i52.ph.i) #6
  br label %err_cmd_clk_disable.i

if.end13.i:                                       ; preds = %if.end.i50.i
  %8 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_clk.i, align 4
  %call15.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end, label %if.then17.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.53, i32 noundef %call15.i) #6
  %10 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ref_clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %err_cmd_clk_disable.i

err_cmd_clk_disable.i:                            ; preds = %if.then17.i, %if.then12.i
  %ret.0.i = phi i32 [ %retval.0.i52.ph.i, %if.then12.i ], [ %call15.i, %if.then17.i ]
  %12 = ptrtoint ptr %cmd_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %if.then

if.then:                                          ; preds = %err_cmd_clk_disable.i, %if.then7.i, %if.then.i
  %retval.0.i.ph = phi i32 [ %ret.0.i, %err_cmd_clk_disable.i ], [ %retval.0.i.ph.i, %if.then7.i ], [ -5, %if.then.i ]
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.49) #6
  br label %cleanup

if.end:                                           ; preds = %if.end13.i
  %gcc_mem.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 2, i32 1
  %14 = ptrtoint ptr %gcc_mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gcc_mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 192544
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %mem.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 3
  %17 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %18, i32 323604
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %16) #6, !srcloc !159
  %radio_cold_rst.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4
  %19 = ptrtoint ptr %radio_cold_rst.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %radio_cold_rst.i, align 4
  %tobool.not.i.i26 = icmp eq ptr %20, null
  %cmp.i.i27 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i28 = or i1 %tobool.not.i.i26, %cmp.i.i27
  br i1 %spec.select.i.i28, label %if.end.if.then.i31_crit_edge, label %lor.lhs.false.i29

if.end.if.then.i31_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i31

lor.lhs.false.i29:                                ; preds = %if.end
  %radio_warm_rst.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 1
  %21 = ptrtoint ptr %radio_warm_rst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %radio_warm_rst.i, align 4
  %tobool.not.i50.i = icmp eq ptr %22, null
  %cmp.i51.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %spec.select.i52.i = or i1 %tobool.not.i50.i, %cmp.i51.i
  br i1 %spec.select.i52.i, label %lor.lhs.false.i29.if.then.i31_crit_edge, label %lor.lhs.false3.i30

lor.lhs.false.i29.if.then.i31_crit_edge:          ; preds = %lor.lhs.false.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i31

lor.lhs.false3.i30:                               ; preds = %lor.lhs.false.i29
  %radio_srif_rst.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 2
  %23 = ptrtoint ptr %radio_srif_rst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %radio_srif_rst.i, align 4
  %tobool.not.i53.i = icmp eq ptr %24, null
  %cmp.i54.i = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i55.i = or i1 %tobool.not.i53.i, %cmp.i54.i
  br i1 %spec.select.i55.i, label %lor.lhs.false3.i30.if.then.i31_crit_edge, label %lor.lhs.false5.i

lor.lhs.false3.i30.if.then.i31_crit_edge:         ; preds = %lor.lhs.false3.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i31

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false3.i30
  %cpu_init_rst.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 3
  %25 = ptrtoint ptr %cpu_init_rst.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpu_init_rst.i, align 4
  %tobool.not.i56.i = icmp eq ptr %26, null
  %cmp.i57.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %spec.select.i58.i = or i1 %tobool.not.i56.i, %cmp.i57.i
  br i1 %spec.select.i58.i, label %lor.lhs.false5.i.if.then.i31_crit_edge, label %if.end.i32

lor.lhs.false5.i.if.then.i31_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i31

if.then.i31:                                      ; preds = %lor.lhs.false5.i.if.then.i31_crit_edge, %lor.lhs.false3.i30.if.then.i31_crit_edge, %lor.lhs.false.i29.if.then.i31_crit_edge, %if.end.if.then.i31_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.54) #6
  br label %err_clk_disable

if.end.i32:                                       ; preds = %lor.lhs.false5.i
  %call8.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.55, i32 noundef %call8.i) #6
  br label %err_clk_disable

if.end10.i:                                       ; preds = %if.end.i32
  %27 = ptrtoint ptr %radio_warm_rst.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %radio_warm_rst.i, align 4
  %call12.i = tail call i32 @reset_control_deassert(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.56, i32 noundef %call12.i) #6
  br label %err_clk_disable

if.end15.i:                                       ; preds = %if.end10.i
  %29 = ptrtoint ptr %radio_srif_rst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %radio_srif_rst.i, align 4
  %call17.i = tail call i32 @reset_control_deassert(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.57, i32 noundef %call17.i) #6
  br label %err_clk_disable

if.end20.i:                                       ; preds = %if.end15.i
  %31 = ptrtoint ptr %cpu_init_rst.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_init_rst.i, align 4
  %call22.i = tail call i32 @reset_control_deassert(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end5, label %if.then24.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.58, i32 noundef %call22.i) #6
  br label %err_clk_disable

if.end5:                                          ; preds = %if.end20.i
  tail call void @ath10k_ce_disable_interrupts(ptr noundef %ar) #6
  tail call void @ath10k_pci_disable_and_clear_legacy_irq(ptr noundef %ar) #6
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %fw_indicator_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %fw_indicator_address to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_indicator_address, align 4
  %37 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %38, i32 %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 128) #6, !srcloc !159
  %call6 = tail call i32 @ath10k_pci_wait_for_target_init(ptr noundef %ar) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %err_halt_chip

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_halt_chip:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ath10k_ahb_halt_chip(ptr noundef %ar)
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_halt_chip, %if.then24.i, %if.then19.i, %if.then14.i, %if.then9.i, %if.then.i31
  %ret.0 = phi i32 [ %call6, %err_halt_chip ], [ %call22.i, %if.then24.i ], [ %call17.i, %if.then19.i ], [ %call12.i, %if.then14.i ], [ %call8.i, %if.then9.i ], [ -22, %if.then.i31 ]
  %39 = ptrtoint ptr %cmd_clk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmd_clk.i, align 4
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  %41 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ref_clk.i, align 4
  tail call void @clk_disable(ptr noundef %42) #6
  tail call void @clk_unprepare(ptr noundef %42) #6
  %43 = ptrtoint ptr %rtc_clk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %44) #6
  tail call void @clk_unprepare(ptr noundef %44) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ %ret.0, %err_clk_disable ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_ce_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_core_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_ahb_halt_chip(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %core_cold_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 3
  %0 = ptrtoint ptr %core_cold_rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_cold_rst, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %radio_cold_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4
  %2 = ptrtoint ptr %radio_cold_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %radio_cold_rst, align 4
  %tobool.not.i106 = icmp eq ptr %3, null
  %cmp.i107 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i108 = or i1 %tobool.not.i106, %cmp.i107
  br i1 %spec.select.i108, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %radio_warm_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 1
  %4 = ptrtoint ptr %radio_warm_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %radio_warm_rst, align 4
  %tobool.not.i109 = icmp eq ptr %5, null
  %cmp.i110 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i111 = or i1 %tobool.not.i109, %cmp.i110
  br i1 %spec.select.i111, label %lor.lhs.false3.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %radio_srif_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 2
  %6 = ptrtoint ptr %radio_srif_rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %radio_srif_rst, align 4
  %tobool.not.i112 = icmp eq ptr %7, null
  %cmp.i113 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i114 = or i1 %tobool.not.i112, %cmp.i113
  br i1 %spec.select.i114, label %lor.lhs.false5.if.then_crit_edge, label %lor.lhs.false7

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %cpu_init_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 3
  %8 = ptrtoint ptr %cpu_init_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_init_rst, align 4
  %tobool.not.i115 = icmp eq ptr %9, null
  %cmp.i116 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i117 = or i1 %tobool.not.i115, %cmp.i116
  br i1 %spec.select.i117, label %lor.lhs.false7.if.then_crit_edge, label %if.end

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.54) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %mem.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 3
  %10 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 532528
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !155
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %sw.default [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.59, i32 noundef %13) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %if.end.sw.epilog_crit_edge
  %glb_cfg_reg.0 = phi i32 [ 299012, %sw.bb10 ], [ 299008, %if.end.sw.epilog_crit_edge ]
  %haltreq_reg.0 = phi i32 [ 335888, %sw.bb10 ], [ 335872, %if.end.sw.epilog_crit_edge ]
  %haltack_reg.0 = phi i32 [ 335892, %sw.bb10 ], [ 335876, %if.end.sw.epilog_crit_edge ]
  tail call fastcc void @ath10k_ahb_halt_axi_bus(ptr noundef %ar, i32 noundef %haltreq_reg.0, i32 noundef %haltack_reg.0)
  %tcsr_mem.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 2, i32 2
  %15 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %16, i32 %glb_cfg_reg.0
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #6, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %18 = or i32 %17, 2
  %19 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %20, i32 %glb_cfg_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %18) #6, !srcloc !159
  %21 = ptrtoint ptr %core_cold_rst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core_cold_rst, align 4
  %call13 = tail call i32 @reset_control_assert(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %sw.epilog.if.end15_crit_edge, label %if.then14

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.60, i32 noundef %call13) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %sw.epilog.if.end15_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %23 = ptrtoint ptr %radio_cold_rst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %radio_cold_rst, align 4
  %call17 = tail call i32 @reset_control_assert(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.61, i32 noundef %call17) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %25 = ptrtoint ptr %radio_warm_rst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %radio_warm_rst, align 4
  %call22 = tail call i32 @reset_control_assert(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.62, i32 noundef %call22) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %27 = ptrtoint ptr %radio_srif_rst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %radio_srif_rst, align 4
  %call27 = tail call i32 @reset_control_assert(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.if.end30_crit_edge, label %if.then29

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.63, i32 noundef %call27) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25.if.end30_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %29 = ptrtoint ptr %cpu_init_rst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpu_init_rst, align 4
  %call32 = tail call i32 @reset_control_assert(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.64, i32 noundef %call32) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  tail call void @msleep(i32 noundef 10) #6
  %31 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %32, i32 %haltreq_reg.0
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #6, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %34 = and i32 %33, -16777217
  %35 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %36, i32 %haltreq_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %34) #6, !srcloc !159
  %37 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %38, i32 %glb_cfg_reg.0
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #6, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %40 = and i32 %39, -3
  %41 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %42, i32 %glb_cfg_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %40) #6, !srcloc !159
  %43 = ptrtoint ptr %core_cold_rst to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %core_cold_rst, align 4
  %call40 = tail call i32 @reset_control_deassert(ptr noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end35.do.body_crit_edge, label %if.then42

if.end35.do.body_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.65, i32 noundef %call40) #6
  br label %do.body

do.body:                                          ; preds = %if.then42, %if.end35.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %45 = load i32, ptr @ath10k_debug_mask, align 4
  %and44 = and i32 %45, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %do.body.if.then48_crit_edge

do.body.if.then48_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

lor.lhs.false46:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_halt_chip, %if.then48)) #6
          to label %cleanup [label %if.then48], !srcloc !154

if.then48:                                        ; preds = %lor.lhs.false46, %do.body.if.then48_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32768, ptr noundef nonnull @.str.66, i32 noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %lor.lhs.false46, %sw.default, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_ahb_clock_disable(ptr nocapture noundef readonly %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_clk = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3
  %0 = ptrtoint ptr %cmd_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %ref_clk = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 1
  %2 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %rtc_clk = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 2
  %4 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_hif_tx_sg(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_hif_diag_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_diag_write_mem(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_hif_exchange_bmi_msg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_ahb_hif_start(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_hif_start, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !154

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.15) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call void @ath10k_core_napi_enable(ptr noundef %ar) #6
  tail call void @ath10k_ce_enable_interrupts(ptr noundef %ar) #6
  tail call void @ath10k_pci_enable_legacy_irq(ptr noundef %ar) #6
  tail call void @ath10k_pci_rx_post(ptr noundef %ar) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_ahb_hif_stop(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_hif_stop, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !154

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.16) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call void @ath10k_ce_disable_interrupts(ptr noundef %ar) #6
  tail call void @ath10k_pci_disable_and_clear_legacy_irq(ptr noundef %ar) #6
  %irq = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 2, i32 3
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %2) #6
  tail call void @ath10k_core_napi_sync_disable(ptr noundef %ar) #6
  tail call void @ath10k_pci_flush(ptr noundef %ar) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_hif_map_service_to_pipe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_hif_get_default_pipe(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_hif_send_complete_check(ptr noundef, i8 noundef zeroext, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath10k_pci_hif_get_free_queue_number(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_ahb_read32(ptr nocapture noundef readonly %ar, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 3
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !155
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_ahb_write32(ptr nocapture noundef readonly %ar, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 3
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !159
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_ahb_hif_power_up(ptr noundef %ar, i32 noundef %fw_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_hif_power_up, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !154

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.17) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @ath10k_ahb_halt_chip(ptr noundef %ar) #6
  %cmd_clk.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3
  %1 = ptrtoint ptr %cmd_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %2) #6
  tail call void @clk_unprepare(ptr noundef %2) #6
  %ref_clk.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 1
  %3 = ptrtoint ptr %ref_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ref_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %4) #6
  tail call void @clk_unprepare(ptr noundef %4) #6
  %rtc_clk.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 2
  %5 = ptrtoint ptr %rtc_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtc_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
  %call.i = tail call fastcc i32 @ath10k_ahb_prepare_device(ptr noundef %ar) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.18, i32 noundef %call.i) #6
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %call5 = tail call i32 @ath10k_pci_init_pipes(ptr noundef %ar) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.19, i32 noundef %call5) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @ath10k_pci_init_config(ptr noundef %ar) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.20, i32 noundef %call9) #6
  tail call void @ath10k_pci_ce_deinit(ptr noundef %ar) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %soc_core_base_address.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %soc_core_base_address.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %soc_core_base_address.i, align 4
  %mem.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 3
  %11 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %14 = or i32 %13, 16777216
  %15 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %16, i32 %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %14) #6, !srcloc !159
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then7, %if.then3
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call.i, %if.then3 ], [ %call5, %if.then7 ], [ %call9, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_hif_power_down(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_enable_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_enable_legacy_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_rx_post(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_napi_sync_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_disable_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_disable_and_clear_legacy_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_init_pipes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_init_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_ahb_rst_ctrl_init(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ahb.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 1, i32 2
  %0 = ptrtoint ptr %ahb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ahb.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %core_cold_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 3, i32 3
  %2 = ptrtoint ptr %core_cold_rst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %core_cold_rst, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call.i75 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %radio_cold_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4
  %3 = ptrtoint ptr %radio_cold_rst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i75, ptr %radio_cold_rst, align 4
  %cmp.i76 = icmp ugt ptr %call.i75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.end.cleanup.sink.split_crit_edge, label %if.end17

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end
  %call.i77 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %radio_warm_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 1
  %4 = ptrtoint ptr %radio_warm_rst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i77, ptr %radio_warm_rst, align 4
  %cmp.i78 = icmp ugt ptr %call.i77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.end17.cleanup.sink.split_crit_edge, label %if.end26

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end17
  %call.i79 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %radio_srif_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 2
  %5 = ptrtoint ptr %radio_srif_rst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i79, ptr %radio_srif_rst, align 4
  %cmp.i80 = icmp ugt ptr %call.i79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.end26.cleanup.sink.split_crit_edge, label %if.end35

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.end26
  %call.i81 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cpu_init_rst = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 4, i32 3
  %6 = ptrtoint ptr %cpu_init_rst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i81, ptr %cpu_init_rst, align 4
  %cmp.i82 = icmp ugt ptr %call.i81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.end35.cleanup.sink.split_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end35.cleanup.sink.split_crit_edge, %if.end26.cleanup.sink.split_crit_edge, %if.end17.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call.i81.sink = phi ptr [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i75, %if.end.cleanup.sink.split_crit_edge ], [ %call.i77, %if.end17.cleanup.sink.split_crit_edge ], [ %call.i79, %if.end26.cleanup.sink.split_crit_edge ], [ %call.i81, %if.end35.cleanup.sink.split_crit_edge ]
  %.str.46.sink = phi ptr [ @.str.38, %entry.cleanup.sink.split_crit_edge ], [ @.str.40, %if.end.cleanup.sink.split_crit_edge ], [ @.str.42, %if.end17.cleanup.sink.split_crit_edge ], [ @.str.44, %if.end26.cleanup.sink.split_crit_edge ], [ @.str.46, %if.end35.cleanup.sink.split_crit_edge ]
  %cpu_init_rst.sink = phi ptr [ %core_cold_rst, %entry.cleanup.sink.split_crit_edge ], [ %radio_cold_rst, %if.end.cleanup.sink.split_crit_edge ], [ %radio_warm_rst, %if.end17.cleanup.sink.split_crit_edge ], [ %radio_srif_rst, %if.end26.cleanup.sink.split_crit_edge ], [ %cpu_init_rst, %if.end35.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %call.i81.sink to i32
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull %.str.46.sink, i32 noundef %7) #6
  %8 = ptrtoint ptr %cpu_init_rst.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_init_rst.sink, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35.cleanup_crit_edge ], [ %10, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_ahb_get_num_banks(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 6
  %0 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.47) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_ahb_interrupt_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ath10k_pci_irq_pending(ptr noundef %arg) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ath10k_pci_disable_and_clear_legacy_irq(ptr noundef %arg) #6
  tail call void @ath10k_pci_irq_msi_fw_mask(ptr noundef %arg) #6
  %napi = getelementptr inbounds %struct.ath10k, ptr %arg, i32 0, i32 126
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath10k_pci_irq_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_pci_irq_msi_fw_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_pci_wait_for_target_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_ahb_halt_axi_bus(ptr noundef %ar, i32 noundef %haltreq_reg, i32 noundef %haltack_reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tcsr_mem.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 17, i32 2, i32 2
  %0 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %haltreq_reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %5, i32 %haltreq_reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %3) #6, !srcloc !159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.neg = xor i32 %6, -1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %7 = ptrtoint ptr %tcsr_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcsr_mem.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %8, i32 %haltack_reg
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #6, !srcloc !155
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body7

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %12, %add.neg
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.then5.critedge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then5.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.67, i32 noundef %10) #6
  br label %cleanup

do.body7:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %13 = load i32, ptr @ath10k_debug_mask, align 4
  %and8 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %do.body7.if.then11_crit_edge

do.body7.if.then11_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false:                                    ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_ahb_halt_axi_bus, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !154

if.then11:                                        ; preds = %lor.lhs.false, %do.body7.if.then11_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32768, ptr noundef nonnull @.str.68) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %lor.lhs.false, %if.then5.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 871, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ath10k_ahb_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ath10k_ahb_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 858, i32 13}
!8 = !{ptr @ath10k_ahb_driver, !9, !"ath10k_ahb_driver", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 856, i32 31}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 739, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ath10k_ahb_probe._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @ath10k_ahb_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 749, i32 3}
!19 = !{ptr @ath10k_ahb_probe._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ath10k_ahb_probe._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 753, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 775, i32 18}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 794, i32 18}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 801, i32 18}
!29 = !{ptr @ath10k_ahb_hif_ops, !30, !"ath10k_ahb_hif_ops", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 703, i32 36}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 620, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 635, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 650, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 654, i32 18}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 660, i32 18}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 666, i32 18}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 672, i32 18}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 447, i32 18}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 457, i32 18}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 465, i32 18}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 472, i32 18}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 478, i32 18}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 491, i32 46}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 493, i32 18}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 498, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 500, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 89, i32 38}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 91, i32 18}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 96, i32 38}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 98, i32 18}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 103, i32 38}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 105, i32 18}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 184, i32 10}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 186, i32 18}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 192, i32 11}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 194, i32 18}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 200, i32 11}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 202, i32 18}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 208, i32 11}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 210, i32 18}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 216, i32 9}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 218, i32 18}
!95 = !{ptr @ath10k_ahb_bus_ops, !96, !"ath10k_ahb_bus_ops", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 720, i32 36}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 78, i32 18}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 414, i32 19}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 555, i32 18}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 130, i32 18}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 137, i32 18}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 143, i32 18}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 149, i32 18}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 246, i32 18}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 252, i32 18}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 258, i32 18}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 264, i32 18}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 270, i32 18}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 336, i32 18}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 349, i32 18}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 354, i32 18}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 359, i32 18}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 364, i32 18}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 369, i32 18}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 385, i32 18}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 387, i32 2}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 299, i32 18}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 303, i32 2}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 840, i32 2}
!143 = !{ptr @ath10k_ahb_of_match, !144, !"ath10k_ahb_of_match", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath10k/ahb.c", i32 16, i32 34}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i64 2148972676, i64 2148972681, i64 2148972694, i64 2148972738, i64 2148972772, i64 2148972793}
!155 = !{i64 6729409}
!156 = !{i64 2154262268}
!157 = !{!"auto-init"}
!158 = !{i64 2154263623}
!159 = !{i64 6728991}
