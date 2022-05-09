; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/snoc.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/snoc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_bus_ops = type { ptr, ptr, ptr }
%struct.ce_service_to_pipe = type { i32, i32, i32 }
%struct.ce_attr = type { i32, i32, i32, i32, ptr, ptr }
%struct.ce_pipe_config = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k_shadow_reg_cfg = type { i16, i16 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.97 }
%struct.atomic_t = type { i32 }
%union.anon.97 = type { i32 }
%struct.ath10k_snoc_drv_priv = type { i32, i64, i32 }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.149, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.195, i32, i32, i32, %struct.anon.196, %struct.anon.197, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.202, i32, %struct.anon.203, %struct.anon.204, %struct.anon.205, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.206, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.anon.149 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.150, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.154, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.156, %struct.anon.159, %struct.anon.169, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.150 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.151, i32, i32, i32, i32, i32, %struct.anon.152, %struct.anon.153, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.151 = type { ptr }
%struct.anon.152 = type { ptr, i32 }
%struct.anon.153 = type { i32 }
%struct.anon.154 = type { %union.anon.155, [0 x %struct.htt_tx_done] }
%union.anon.155 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.156 = type { i32, %union.anon.157, i32 }
%union.anon.157 = type { ptr }
%struct.anon.159 = type { i32, %union.anon.160, i32 }
%union.anon.160 = type { ptr }
%struct.anon.169 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.195 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.196 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.197 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.202 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.203 = type { ptr }
%struct.anon.204 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.205 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.114, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.114 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.133 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.anon.206 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath10k_fw_crash_data = type { %struct.guid_t, %struct.timespec64, [60 x i32], [12 x %struct.ath10k_ce_crash_data], ptr, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.ath10k_ce_crash_data = type { i32, i32, i32, i32, i32 }
%struct.ath10k_hw_mem_layout = type { i32, i32, i32, %struct.anon.207 }
%struct.anon.207 = type { ptr, i32 }
%struct.ath10k_dump_ram_data_hdr = type { i32, i32, i32, [0 x i8] }
%struct.ath10k_mem_region = type { i32, i32, i32, ptr, %struct.anon.208 }
%struct.anon.208 = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ath10k_hw_values = type { i32, i8, i8, i8, i16, i8, i32, i32, i8 }
%struct.ath10k_snoc = type { ptr, ptr, i32, %struct.ath10k_firmware, ptr, i32, %struct.ath10k_snoc_target_info, i32, [12 x %struct.ath10k_snoc_pipe], [12 x %struct.ath10k_snoc_ce_irq], %struct.ath10k_ce, %struct.timer_list, ptr, i32, ptr, i32, ptr, %struct.notifier_block, ptr, i32, i8, i32, [1 x i32] }
%struct.ath10k_firmware = type { ptr, i32, ptr, i32 }
%struct.ath10k_snoc_target_info = type { i32, i32, i32, i32 }
%struct.ath10k_snoc_pipe = type { ptr, i8, ptr, i32, %struct.spinlock, ptr }
%struct.ath10k_snoc_ce_irq = type { i32 }
%struct.ath10k_ce = type { %struct.spinlock, ptr, [12 x %struct.ath10k_ce_pipe], ptr, i32 }
%struct.ath10k_ce_pipe = type { ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.ath10k_hif_sg_item = type { i16, ptr, ptr, i32, i16 }
%struct.ath10k_ce_ring = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, [0 x ptr] }
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
%struct.ath10k_tgt_pipe_cfg = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k_qmi_wlan_enable_cfg = type { i32, ptr, i32, ptr, i32, ptr }
%struct.bmi_target_info = type { i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.90, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.90 = type { %struct.atomic_t }
%struct.ath10k_ce_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qcom_ssr_notify_data = type { ptr, i8 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register driver core: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid fw indication: %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUl\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"n/a\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware crashed! (guid %s)\0A\00", [35 x i8] zeroinitializer }, align 32
@__initcall__kmod_ath10k_snoc__433_1891_ath10k_snoc_driver_init6 = internal global ptr @ath10k_snoc_driver_init, section ".initcall6.init", align 4
@ath10k_snoc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ath10k_snoc_probe, ptr @ath10k_snoc_remove, ptr @ath10k_snoc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ath10k_snoc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ath10k_snoc_driver_exit = internal global ptr @ath10k_snoc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author434 = internal constant [28 x i8] c"ath10k_snoc.author=Qualcomm\00", section ".modinfo", align 1
@__UNIQUE_ID_file435 = internal constant [61 x i8] c"ath10k_snoc.file=drivers/net/wireless/ath/ath10k/ath10k_snoc\00", section ".modinfo", align 1
@__UNIQUE_ID_license436 = internal constant [33 x i8] c"ath10k_snoc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description437 = internal constant [72 x i8] c"ath10k_snoc.description=Driver support for Atheros WCN3990 SNOC devices\00", section ".modinfo", align 1
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"msa dump length is less than msa size %x, %x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ath10k_snoc\00", [20 x i8] zeroinitializer }, align 32
@ath10k_snoc_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn3990-wifi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_priv }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ath10k_snoc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1719, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to find matching device tree id\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ath10k_snoc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath10k/snoc.c\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath10k_snoc_probe._entry_ptr = internal global ptr @ath10k_snoc_probe._entry, section ".printk_index", align 4
@ath10k_snoc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1725, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set dma mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ath10k_snoc_probe._entry_ptr.14 = internal global ptr @ath10k_snoc_probe._entry.12, section ".printk_index", align 4
@ath10k_snoc_hif_ops = internal constant { %struct.ath10k_hif_ops, [44 x i8] } { %struct.ath10k_hif_ops { ptr @ath10k_snoc_hif_tx_sg, ptr null, ptr null, ptr null, ptr @ath10k_snoc_hif_start, ptr @ath10k_snoc_hif_stop, ptr null, ptr null, ptr @ath10k_snoc_hif_map_service_to_pipe, ptr @ath10k_snoc_hif_get_default_pipe, ptr @ath10k_snoc_hif_send_complete_check, ptr @ath10k_snoc_hif_get_free_queue_number, ptr @ath10k_snoc_read32, ptr @ath10k_snoc_write32, ptr @ath10k_snoc_hif_power_up, ptr @ath10k_snoc_hif_power_down, ptr @ath10k_snoc_hif_suspend, ptr @ath10k_snoc_hif_resume, ptr null, ptr @ath10k_snoc_hif_get_target_info, ptr @ath10k_snoc_hif_set_target_log_mode }, [44 x i8] zeroinitializer }, align 32
@ath10k_snoc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 1732, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate core\0A\00", [39 x i8] zeroinitializer }, align 32
@ath10k_snoc_probe._entry_ptr.17 = internal global ptr @ath10k_snoc_probe._entry.15, section ".printk_index", align 4
@ath10k_snoc_bus_ops = internal constant { %struct.ath10k_bus_ops, [20 x i8] } { %struct.ath10k_bus_ops { ptr @ath10k_snoc_read32, ptr @ath10k_snoc_write32, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize resource: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup resource: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request irqs: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ath10k_regulators = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], [44 x i8] zeroinitializer }, align 32
@ath10k_clocks = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.84, ptr @.str.85], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup msa resources: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize firmware: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to register wlfw qmi client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snoc probe\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"snoc tx item %d paddr %pad len %d n_items %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"boot hif start\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to post rx buf: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__ath10k_snoc_rx_post_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unaligned skb\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to dma map snoc rx buf\0A\00", [33 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"boot hif stop\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snoc hif map service\0A\00", [42 x i8] zeroinitializer }, align 32
@target_service_to_ce_map_wlan = internal global { [21 x %struct.ce_service_to_pipe], [36 x i8] } { [21 x %struct.ce_service_to_pipe] [%struct.ce_service_to_pipe { i32 67174400, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 67174400, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 33619968, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 33619968, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 16842752, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 16842752, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 50397184, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 50397184, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 65536, i32 33554432, i32 50331648 }, %struct.ce_service_to_pipe { i32 65536, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 16777216, i32 33554432, i32 0 }, %struct.ce_service_to_pipe { i32 16777216, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 16646144, i32 33554432, i32 0 }, %struct.ce_service_to_pipe { i32 16646144, i32 16777216, i32 33554432 }, %struct.ce_service_to_pipe { i32 196608, i32 33554432, i32 67108864 }, %struct.ce_service_to_pipe { i32 196608, i32 16777216, i32 16777216 }, %struct.ce_service_to_pipe { i32 16646144, i32 33554432, i32 83886080 }, %struct.ce_service_to_pipe { i32 16973824, i32 16777216, i32 150994944 }, %struct.ce_service_to_pipe { i32 33751040, i32 16777216, i32 167772160 }, %struct.ce_service_to_pipe { i32 393216, i32 16777216, i32 184549376 }, %struct.ce_service_to_pipe zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snoc hif get default pipe\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snoc hif send complete check\0A\00", [34 x i8] zeroinitializer }, align 32
@host_ce_config_wlan = internal global { [12 x %struct.ce_attr], [64 x i8] } { [12 x %struct.ce_attr] [%struct.ce_attr { i32 0, i32 16, i32 2048, i32 0, ptr @ath10k_snoc_htc_tx_cb, ptr null }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 512, ptr null, ptr @ath10k_snoc_htt_htc_rx_cb }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 64, ptr null, ptr @ath10k_snoc_htc_rx_cb }, %struct.ce_attr { i32 0, i32 32, i32 2048, i32 0, ptr @ath10k_snoc_htc_tx_cb, ptr null }, %struct.ce_attr { i32 8, i32 2048, i32 256, i32 0, ptr @ath10k_snoc_htt_tx_cb, ptr null }, %struct.ce_attr { i32 0, i32 0, i32 512, i32 512, ptr null, ptr @ath10k_snoc_htt_rx_cb }, %struct.ce_attr zeroinitializer, %struct.ce_attr { i32 0, i32 2, i32 2048, i32 2, ptr null, ptr null }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 128, ptr null, ptr null }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 512, ptr null, ptr @ath10k_snoc_htt_htc_rx_cb }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 512, ptr null, ptr @ath10k_snoc_htt_htc_rx_cb }, %struct.ce_attr { i32 0, i32 0, i32 2048, i32 512, ptr null, ptr @ath10k_snoc_pktlog_rx_cb }], [64 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rxed more than expected (nbytes %d, max %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snoc rx ce pipe %d len %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hif get free queue number\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:WCN3990 driver state = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.ath10k_snoc_hif_power_up = private unnamed_addr constant [25 x i8] c"ath10k_snoc_hif_power_up\00", align 1
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power on device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable wcn3990: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize CE: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"soc power on\0A\00", [18 x i8] zeroinitializer }, align 32
@target_ce_config_wlan = internal constant { [12 x %struct.ce_pipe_config], [64 x i8] } { [12 x %struct.ce_pipe_config] [%struct.ce_pipe_config { i32 0, i32 33554432, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 16777216, i32 16777216, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 33554432, i32 16777216, i32 1073741824, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 50331648, i32 33554432, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 67108864, i32 33554432, i32 65536, i32 65536, i32 134217728, i32 0 }, %struct.ce_pipe_config { i32 83886080, i32 33554432, i32 262144, i32 1073741824, i32 134217728, i32 0 }, %struct.ce_pipe_config { i32 100663296, i32 50331648, i32 536870912, i32 4194304, i32 0, i32 0 }, %struct.ce_pipe_config { i32 117440512, i32 67108864, i32 0, i32 0, i32 134217728, i32 0 }, %struct.ce_pipe_config { i32 134217728, i32 16777216, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 150994944, i32 16777216, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 167772160, i32 16777216, i32 536870912, i32 524288, i32 0, i32 0 }, %struct.ce_pipe_config { i32 184549376, i32 16777216, i32 536870912, i32 524288, i32 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@target_shadow_reg_cfg_map = internal global { [12 x %struct.ath10k_shadow_reg_cfg], [48 x i8] } { [12 x %struct.ath10k_shadow_reg_cfg] [%struct.ath10k_shadow_reg_cfg { i16 0, i16 15360 }, %struct.ath10k_shadow_reg_cfg { i16 768, i16 15360 }, %struct.ath10k_shadow_reg_cfg { i16 1024, i16 15360 }, %struct.ath10k_shadow_reg_cfg { i16 1280, i16 15360 }, %struct.ath10k_shadow_reg_cfg { i16 1792, i16 15360 }, %struct.ath10k_shadow_reg_cfg { i16 256, i16 16384 }, %struct.ath10k_shadow_reg_cfg { i16 512, i16 16384 }, %struct.ath10k_shadow_reg_cfg { i16 1792, i16 16384 }, %struct.ath10k_shadow_reg_cfg { i16 2048, i16 16384 }, %struct.ath10k_shadow_reg_cfg { i16 2304, i16 16384 }, %struct.ath10k_shadow_reg_cfg { i16 2560, i16 16384 }, %struct.ath10k_shadow_reg_cfg { i16 2816, i16 16384 }], [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid firmware mode %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to initialize copy engine pipe %d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"soc power off\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"boot hif power down\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable wakeup irq :%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snoc device suspended\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to disable wakeup irq: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snoc device resumed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom,snoc-host-cap-8bit-quirk\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"membase\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Memory base not found in DT\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Memory base ioremap failed with physical address %pa\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get IRQ%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,xo-cal-data\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snoc xo-cal-data return %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xo cal data %x\0A\00", [16 x i8] zeroinitializer }, align 32
@ath10k_snoc_setup_resource.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&ar_snoc->rx_post_retry)\00", [38 x i8] zeroinitializer }, align 32
@ath10k_snoc_setup_resource.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ce->ce_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to allocate copy engine pipe %d: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ce_name = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to register IRQ handler for CE %d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected/invalid irq %d ce_id %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No matching CE id for irq %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_0\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_1\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_2\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_3\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_4\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_5\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_6\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_7\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_8\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WLAN_CE_9\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WLAN_CE_10\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WLAN_CE_11\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd-0.8-cx-mx\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-1.8-xo\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-1.3-rfa\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-3.3-ch0\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-3.3-ch1\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxo_ref_clk_pin\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qdss\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@ath10k_setup_msa_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.9, i32 1560, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to resolve msa fixed region\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ath10k_setup_msa_resources\00", [37 x i8] zeroinitializer }, align 32
@ath10k_setup_msa_resources._entry_ptr = internal global ptr @ath10k_setup_msa_resources._entry, section ".printk_index", align 4
@ath10k_setup_msa_resources._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.9, i32 1572, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to map memory region: %pa\0A\00", [62 x i8] zeroinitializer }, align 32
@ath10k_setup_msa_resources._entry_ptr.91 = internal global ptr @ath10k_setup_msa_resources._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to allocate dma memory for msa region\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"qmi msa.paddr: %pad , msa.vaddr: 0x%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wifi-firmware\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dma configure fail: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate iommu domain\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not attach device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to map firmware region: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpss\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to initialize modem notifier: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"received modem starting event\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received modem running event\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"received modem %s event\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"crashed\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stopping\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received modem offline event\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"received unrecognized event %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to unmap firmware: %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snoc remove\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snoc free resources\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d unregistering notifier\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snoc shutdown\0A\00", [17 x i8] zeroinitializer }, align 32
@drv_priv = internal constant { %struct.ath10k_snoc_drv_priv, [40 x i8] } { %struct.ath10k_snoc_drv_priv { i32 8, i64 34359738367, i32 1048576 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 2, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1361, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1372, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1471, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1473, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1475, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"ath10k_snoc_driver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1882, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1450, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1887, i32 13 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"ath10k_snoc_dt_match\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1698, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1719, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1725, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"ath10k_snoc_hif_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1157, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1732, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"ath10k_snoc_bus_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1178, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1748, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1754, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1759, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant [18 x i8] c"ath10k_regulators\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 45, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant [14 x i8] c"ath10k_clocks\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 53, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1796, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1802, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1808, i32 19 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1816, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 700, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 936, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 552, i32 20 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 504, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 510, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 326, i32 6 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 921, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 781, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [30 x i8] c"target_service_to_ce_map_wlan\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 364, i32 34 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 822, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 762, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c"host_ce_config_wlan\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 135, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 590, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 601, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 752, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1069, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1074, i32 18 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1080, i32 18 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1088, i32 18 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1012, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [22 x i8] c"target_ce_config_wlan\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 242, i32 30 }
@___asan_gen_.272 = private unnamed_addr constant [26 x i8] c"target_shadow_reg_cfg_map\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 73, i32 37 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 999, i32 18 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 948, i32 19 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1033, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1057, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1128, i32 18 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1132, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1147, i32 18 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1151, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1337, i32 42 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1293, i32 59 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1295, i32 18 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1303, i32 18 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1311, i32 19 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1318, i32 45 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1320, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1323, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1386, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1387, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1396, i32 19 }
@___asan_gen_.338 = private unnamed_addr constant [8 x i8] c"ce_name\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 30, i32 20 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1261, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1204, i32 19 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1192, i32 17 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 31, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 32, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 33, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 34, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 35, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 36, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 37, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 38, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 39, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 40, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 41, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 42, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 46, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 47, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 48, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 49, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 50, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 54, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 54, i32 21 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1556, i32 40 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1560, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1571, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1580, i32 19 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1586, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1603, i32 49 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1625, i32 18 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1633, i32 18 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1640, i32 18 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1651, i32 18 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1527, i32 40 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1530, i32 18 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1490, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1495, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1499, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1508, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1512, i32 18 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1687, i32 18 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1862, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1842, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1546, i32 18 }
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1878, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [9 x i8] c"drv_priv\00", align 1
@___asan_gen_.489 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath10k/snoc.c\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 64, i32 42 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_author434, ptr @__UNIQUE_ID_description437, ptr @__UNIQUE_ID_file435, ptr @__UNIQUE_ID_license436, ptr @__exitcall_ath10k_snoc_driver_exit, ptr @__initcall__kmod_ath10k_snoc__433_1891_ath10k_snoc_driver_init6, ptr @ath10k_setup_msa_resources._entry, ptr @ath10k_setup_msa_resources._entry.89, ptr @ath10k_setup_msa_resources._entry_ptr, ptr @ath10k_setup_msa_resources._entry_ptr.91, ptr @ath10k_snoc_driver_exit, ptr @ath10k_snoc_probe._entry, ptr @ath10k_snoc_probe._entry.12, ptr @ath10k_snoc_probe._entry.15, ptr @ath10k_snoc_probe._entry_ptr, ptr @ath10k_snoc_probe._entry_ptr.14, ptr @ath10k_snoc_probe._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ath10k_snoc_driver, ptr @.str.5, ptr @.str.6, ptr @ath10k_snoc_dt_match, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ath10k_snoc_hif_ops, ptr @.str.16, ptr @ath10k_snoc_bus_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ath10k_regulators, ptr @ath10k_clocks, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @target_service_to_ce_map_wlan, ptr @.str.34, ptr @.str.35, ptr @host_ce_config_wlan, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @target_ce_config_wlan, ptr @target_shadow_reg_cfg_map, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @ath10k_snoc_setup_resource.__key, ptr @.str.60, ptr @ath10k_snoc_setup_resource.__key.61, ptr @.str.62, ptr @.str.63, ptr @ce_name, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @drv_priv], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_hif_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_bus_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_regulators to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_service_to_ce_map_wlan to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_ce_config_wlan to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_ce_config_wlan to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_shadow_reg_cfg_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_setup_resource.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_snoc_setup_resource.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_name to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_setup_msa_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_setup_msa_resources._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_priv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_snoc_fw_indication(ptr noundef %ar, i64 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %bus_params = alloca %struct.ath10k_bus_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bus_params) #7
  %0 = getelementptr inbounds i8, ptr %bus_params, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %type, ptr @__sancov_gen_cov_switch_values)
  switch i64 %type, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %and1.i28 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i28)
  %tobool4.not = icmp eq i32 %and1.i28, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ath10k_core_start_recovery(ptr noundef %ar) #7
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %dev_type = getelementptr inbounds %struct.ath10k_bus_params, ptr %bus_params, i32 0, i32 1
  %7 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dev_type, align 4
  %soc_version = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1
  %8 = ptrtoint ptr %soc_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soc_version, align 4
  %10 = ptrtoint ptr %bus_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bus_params, align 4
  %call7 = call i32 @ath10k_core_register(ptr noundef %ar, ptr noundef nonnull %bus_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str, i32 noundef %call7) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #7
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #7
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dev_flags) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.1, i64 noundef %type) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb12, %if.end10, %if.then9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call7, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb12 ], [ 0, %if.end10 ], [ 0, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bus_params) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_start_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_core_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_snoc_fw_crashed_dump(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %guid = alloca [37 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %guid) #7
  %0 = call ptr @memset(ptr %guid, i32 255, i32 37)
  %dump_mutex = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 81
  tail call void @mutex_lock_nested(ptr noundef %dump_mutex, i32 noundef 0) #7
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #7
  %fw_crash_counter = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 120, i32 1
  %1 = ptrtoint ptr %fw_crash_counter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_crash_counter, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %fw_crash_counter, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #7
  %call = tail call ptr @ath10k_coredump_new(ptr noundef %ar) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %guid, i32 noundef 37, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #7
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.4, ptr noundef nonnull %guid) #7
  call void @ath10k_print_driver_info(ptr noundef %ar) #7
  %ramdump_buf.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %ramdump_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ramdump_buf.i, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.then.ath10k_msa_dump_memory.exit_crit_edge, label %if.end.i

if.then.ath10k_msa_dump_memory.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_msa_dump_memory.exit

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %guid, i32 noundef 37, ptr noundef nonnull @.str.3) #7
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.4, ptr noundef nonnull %guid) #7
  call void @ath10k_print_driver_info(ptr noundef %ar) #7
  br label %ath10k_msa_dump_memory.exit

if.end.i:                                         ; preds = %if.then
  %call.i = call ptr @ath10k_coredump_get_mem_layout(ptr noundef %ar) #7
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i.ath10k_msa_dump_memory.exit_crit_edge, label %if.end4.i

if.end.i.ath10k_msa_dump_memory.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_msa_dump_memory.exit

if.end4.i:                                        ; preds = %if.end.i
  %region_table.i = getelementptr inbounds %struct.ath10k_hw_mem_layout, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %region_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %region_table.i, align 4
  %7 = ptrtoint ptr %ramdump_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ramdump_buf.i, align 8
  %ramdump_buf_len.i = getelementptr inbounds %struct.ath10k_fw_crash_data, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %ramdump_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ramdump_buf_len.i, align 4
  %11 = call ptr @memset(ptr %8, i32 0, i32 %10)
  %add.ptr.i = getelementptr i8, ptr %8, i32 12
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %8, align 4
  %vaddr.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr.i, align 8
  %18 = ptrtoint ptr %17 to i32
  %19 = call i32 @llvm.bswap.i32(i32 %18) #7
  %start.i = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, ptr %8, i32 0, i32 1
  %20 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %start.i, align 4
  %mem_size.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mem_size.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  %length.i = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, ptr %8, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %length.i, align 4
  %len.i = getelementptr inbounds %struct.ath10k_mem_region, ptr %6, i32 0, i32 2
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %27 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i = icmp ult i32 %26, %28
  %29 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vaddr.i, align 8
  br i1 %cmp.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = call ptr @memcpy(ptr %add.ptr.i, ptr %30, i32 %26)
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %34 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mem_size.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.5, i32 noundef %33, i32 noundef %35) #7
  br label %ath10k_msa_dump_memory.exit

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = call ptr @memcpy(ptr %add.ptr.i, ptr %30, i32 %28)
  br label %ath10k_msa_dump_memory.exit

ath10k_msa_dump_memory.exit:                      ; preds = %if.else.i, %if.then9.i, %if.end.i.ath10k_msa_dump_memory.exit_crit_edge, %if.else, %if.then.ath10k_msa_dump_memory.exit_crit_edge
  call void @mutex_unlock(ptr noundef %dump_mutex) #7
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %guid) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_coredump_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_print_driver_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ath10k_snoc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ath10k_snoc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_coredump_get_mem_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.ath10k_snoc_drv_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dma_mask, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call.i) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %1) #7
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 8
  %call9 = tail call ptr @ath10k_core_create(i32 noundef 1508, ptr noundef %dev1, i32 noundef 4, i32 noundef %3, ptr noundef nonnull @ath10k_snoc_hif_ops) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %call9, i32 0, i32 142
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %drv_priv.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %driver_data.i.i, align 4
  %ar18 = getelementptr inbounds %struct.ath10k, ptr %call9, i32 0, i32 143, i32 4
  %6 = ptrtoint ptr %ar18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %ar18, align 4
  %ce = getelementptr inbounds %struct.ath10k, ptr %call9, i32 1, i32 0, i32 31, i32 5, i32 6, i32 1
  %bus_ops = getelementptr inbounds %struct.ath10k, ptr %call9, i32 1, i32 1
  %7 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ath10k_snoc_bus_ops, ptr %bus_ops, align 4
  %ce_priv = getelementptr inbounds %struct.ath10k, ptr %call9, i32 0, i32 131
  %8 = ptrtoint ptr %ce_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ce, ptr %ce_priv, align 4
  %msa_size20 = getelementptr inbounds %struct.ath10k_snoc_drv_priv, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %msa_size20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msa_size20, align 8
  %11 = load ptr, ptr %drv_priv.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.52, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end15.ath10k_snoc_quirks_init.exit_crit_edge, label %if.then.i189

if.end15.ath10k_snoc_quirks_init.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_quirks_init.exit

if.then.i189:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.ath10k, ptr %call9, i32 1, i32 41, i32 11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #7
  br label %ath10k_snoc_quirks_init.exit

ath10k_snoc_quirks_init.exit:                     ; preds = %if.then.i189, %if.end15.ath10k_snoc_quirks_init.exit_crit_edge
  %call21 = tail call fastcc i32 @ath10k_snoc_resource_init(ptr noundef nonnull %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %ath10k_snoc_quirks_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef nonnull %call9, ptr noundef nonnull @.str.18, i32 noundef %call21) #7
  br label %err_core_destroy

if.end24:                                         ; preds = %ath10k_snoc_quirks_init.exit
  %14 = ptrtoint ptr %ce_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ce_priv, align 4
  %rx_post_retry.i = getelementptr inbounds %struct.ath10k, ptr %call9, i32 1, i32 41, i32 5
  tail call void @init_timer_key(ptr noundef %rx_post_retry.i, ptr noundef nonnull @ath10k_snoc_rx_replenish_retry, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @ath10k_snoc_setup_resource.__key) #7
  tail call void @__raw_spin_lock_init(ptr noundef %15, ptr noundef nonnull @.str.62, ptr noundef nonnull @ath10k_snoc_setup_resource.__key.61, i16 noundef signext 3) #7
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %call9, i32 0, i32 39
  %16 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_values.i, align 4
  %ce_count38.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ce_count38.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ce_count38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp40.not.i = icmp eq i8 %19, 0
  br i1 %cmp40.not.i, label %if.end24.if.end28_crit_edge, label %if.end24.for.body.i_crit_edge

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end24.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 8, i32 %i.041.i
  %arrayidx7.i = getelementptr %struct.ath10k_ce, ptr %15, i32 0, i32 2, i32 %i.041.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx7.i, ptr %arrayidx.i, align 4
  %conv8.i = trunc i32 %i.041.i to i8
  %pipe_num.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 8, i32 %i.041.i, i32 1
  %21 = ptrtoint ptr %pipe_num.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8.i, ptr %pipe_num.i, align 4
  %hif_ce_state.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 8, i32 %i.041.i, i32 2
  %22 = ptrtoint ptr %hif_ce_state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9, ptr %hif_ce_state.i, align 4
  %arrayidx9.i = getelementptr [12 x %struct.ce_attr], ptr @host_ce_config_wlan, i32 0, i32 %i.041.i
  %call10.i = tail call i32 @ath10k_ce_alloc_pipe(ptr noundef %call9, i32 noundef %i.041.i, ptr noundef %arrayidx9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then27

if.end.i:                                         ; preds = %for.body.i
  %src_sz_max.i = getelementptr [12 x %struct.ce_attr], ptr @host_ce_config_wlan, i32 0, i32 %i.041.i, i32 2
  %23 = ptrtoint ptr %src_sz_max.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_sz_max.i, align 4
  %buf_sz.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 8, i32 %i.041.i, i32 3
  %25 = ptrtoint ptr %buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %buf_sz.i, align 4
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %26 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %29 to i32
  %cmp.i192 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i192, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end28_crit_edge

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then27:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %call9, ptr noundef nonnull @.str.63, i32 noundef %i.041.i, i32 noundef %call10.i) #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %call9, ptr noundef nonnull @.str.19, i32 noundef %call10.i) #7
  br label %err_core_destroy

if.end28:                                         ; preds = %if.end.i.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %napi_dev.i.i = getelementptr inbounds %struct.ath10k, ptr %call9, i32 0, i32 125
  %napi.i.i = getelementptr inbounds %struct.ath10k, ptr %call9, i32 0, i32 126
  tail call void @netif_napi_add(ptr noundef %napi_dev.i.i, ptr noundef %napi.i.i, ptr noundef nonnull @ath10k_snoc_napi_poll, i32 noundef 64) #7
  br label %for.body.i197

for.body.i197:                                    ; preds = %for.inc.i.for.body.i197_crit_edge, %if.end28
  %id.031.i = phi i32 [ 0, %if.end28 ], [ %inc.i199, %for.inc.i.for.body.i197_crit_edge ]
  %arrayidx.i194 = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 9, i32 %id.031.i
  %30 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i194, align 4
  %arrayidx1.i = getelementptr [12 x ptr], ptr @ce_name, i32 0, i32 %id.031.i
  %32 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx1.i, align 4
  %call.i.i195 = tail call i32 @request_threaded_irq(i32 noundef %31, ptr noundef nonnull @ath10k_snoc_per_engine_handler, ptr noundef null, i32 noundef 1, ptr noundef %33, ptr noundef %call9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195)
  %tobool.not.i196 = icmp eq i32 %call.i.i195, 0
  br i1 %tobool.not.i196, label %for.inc.i, label %if.then.i198

if.then.i198:                                     ; preds = %for.body.i197
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %call9, ptr noundef nonnull @.str.64, i32 noundef %id.031.i, i32 noundef %call.i.i195) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id.031.i)
  %cmp433.not.i = icmp eq i32 %id.031.i, 0
  br i1 %cmp433.not.i, label %if.then.i198.if.then31_crit_edge, label %if.then.i198.for.body5.i_crit_edge

if.then.i198.for.body5.i_crit_edge:               ; preds = %if.then.i198
  br label %for.body5.i

if.then.i198.if.then31_crit_edge:                 ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

for.inc.i:                                        ; preds = %for.body.i197
  %inc.i199 = add nuw nsw i32 %id.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i199, 12
  br i1 %exitcond.not.i, label %if.end32, label %for.inc.i.for.body.i197_crit_edge

for.inc.i.for.body.i197_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i197

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %if.then.i198.for.body5.i_crit_edge
  %id.134.in.i = phi i32 [ %id.134.i, %for.body5.i.for.body5.i_crit_edge ], [ %id.031.i, %if.then.i198.for.body5.i_crit_edge ]
  %id.134.i = add nsw i32 %id.134.in.i, -1
  %arrayidx7.i200 = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 9, i32 %id.134.i
  %34 = ptrtoint ptr %arrayidx7.i200 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx7.i200, align 4
  %call9.i = tail call ptr @free_irq(i32 noundef %35, ptr noundef %call9) #7
  %cmp4.i = icmp sgt i32 %id.134.in.i, 1
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.if.then31_crit_edge

for.body5.i.if.then31_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i

if.then31:                                        ; preds = %for.body5.i.if.then31_crit_edge, %if.then.i198.if.then31_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %call9, ptr noundef nonnull @.str.20, i32 noundef %call.i.i195) #7
  br label %err_release_resource

if.end32:                                         ; preds = %for.inc.i
  %num_vregs = getelementptr inbounds %struct.ath10k, ptr %call9, i32 1, i32 41, i32 6
  %36 = ptrtoint ptr %num_vregs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %num_vregs, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #7
  %vregs = getelementptr inbounds %struct.ath10k, ptr %call9, i32 1, i32 41, i32 5, i32 1, i32 1
  %37 = ptrtoint ptr %vregs to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i.i, ptr %vregs, align 4
  %tobool37.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool37.not, label %if.end32.err_free_irq_crit_edge, label %for.cond.preheader

if.end32.err_free_irq_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_irq

for.cond.preheader:                               ; preds = %if.end32
  %38 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_vregs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp219.not = icmp eq i32 %39, 0
  br i1 %cmp219.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0220 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr @ath10k_regulators, i32 0, i32 %i.0220
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vregs, align 4
  %arrayidx42 = getelementptr %struct.regulator_bulk_data, ptr %43, i32 %i.0220
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %arrayidx42, align 4
  %inc = add nuw i32 %i.0220, 1
  %45 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_vregs, align 4
  %cmp = icmp ult i32 %inc, %46
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa213 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %46, %for.body.for.end_crit_edge ]
  %47 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vregs, align 4
  %call46 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa213, ptr noundef %48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %for.end.err_free_irq_crit_edge, label %if.end49

for.end.err_free_irq_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_irq

if.end49:                                         ; preds = %for.end
  %num_clks = getelementptr inbounds %struct.ath10k, ptr %call9, i32 1, i32 41, i32 6, i32 2
  %49 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %num_clks, align 4
  %call5.i.i201 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #7
  %clks = getelementptr inbounds %struct.ath10k, ptr %call9, i32 1, i32 41, i32 6, i32 1
  %50 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5.i.i201, ptr %clks, align 4
  %tobool54.not = icmp eq ptr %call5.i.i201, null
  br i1 %tobool54.not, label %if.end49.err_free_irq_crit_edge, label %for.cond57.preheader

if.end49.err_free_irq_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_irq

for.cond57.preheader:                             ; preds = %if.end49
  %51 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp59221.not = icmp eq i32 %52, 0
  br i1 %cmp59221.not, label %for.cond57.preheader.for.end66_crit_edge, label %for.cond57.preheader.for.body60_crit_edge

for.cond57.preheader.for.body60_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body60

for.cond57.preheader.for.end66_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.cond57.preheader.for.body60_crit_edge
  %i.1222 = phi i32 [ %inc65, %for.body60.for.body60_crit_edge ], [ 0, %for.cond57.preheader.for.body60_crit_edge ]
  %arrayidx61 = getelementptr [2 x ptr], ptr @ath10k_clocks, i32 0, i32 %i.1222
  %53 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx61, align 4
  %55 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clks, align 4
  %arrayidx63 = getelementptr %struct.clk_bulk_data, ptr %56, i32 %i.1222
  %57 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %arrayidx63, align 4
  %inc65 = add nuw i32 %i.1222, 1
  %58 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_clks, align 4
  %cmp59 = icmp ult i32 %inc65, %59
  br i1 %cmp59, label %for.body60.for.body60_crit_edge, label %for.body60.for.end66_crit_edge

for.body60.for.end66_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body60

for.end66:                                        ; preds = %for.body60.for.end66_crit_edge, %for.cond57.preheader.for.end66_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond57.preheader.for.end66_crit_edge ], [ %59, %for.body60.for.end66_crit_edge ]
  %60 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clks, align 4
  %call70 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev1, i32 noundef %.lcssa, ptr noundef %61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %for.end66.err_free_irq_crit_edge

for.end66.err_free_irq_crit_edge:                 ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_irq

if.end73:                                         ; preds = %for.end66
  %call74 = tail call fastcc i32 @ath10k_setup_msa_resources(ptr noundef %call9, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %call9, ptr noundef nonnull @.str.21, i32 noundef %call74) #7
  br label %err_free_irq

if.end77:                                         ; preds = %if.end73
  %call78 = tail call fastcc i32 @ath10k_fw_init(ptr noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %call9, ptr noundef nonnull @.str.22, i32 noundef %call78) #7
  br label %err_free_irq

if.end81:                                         ; preds = %if.end77
  %call82 = tail call i32 @ath10k_qmi_init(ptr noundef %call9, i32 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %call9, ptr noundef nonnull @.str.23, i32 noundef %call82) #7
  br label %err_fw_deinit

if.end85:                                         ; preds = %if.end81
  %call86 = tail call fastcc i32 @ath10k_modem_init(ptr noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.body90, label %err_qmi_deinit

do.body90:                                        ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %62 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %62, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool91.not = icmp eq i32 %and, 0
  br i1 %tobool91.not, label %lor.lhs.false, label %do.body90.if.then93_crit_edge

do.body90.if.then93_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93

lor.lhs.false:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_probe, %if.then93)) #7
          to label %cleanup [label %if.then93], !srcloc !262

if.then93:                                        ; preds = %lor.lhs.false, %do.body90.if.then93_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %call9, i32 noundef 1048576, ptr noundef nonnull @.str.24) #7
  br label %cleanup

err_qmi_deinit:                                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call97 = tail call i32 @ath10k_qmi_deinit(ptr noundef %call9) #7
  br label %err_fw_deinit

err_fw_deinit:                                    ; preds = %err_qmi_deinit, %if.then84
  %ret.0 = phi i32 [ %call82, %if.then84 ], [ %call86, %err_qmi_deinit ]
  tail call fastcc void @ath10k_fw_deinit(ptr noundef %call9)
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_fw_deinit, %if.then80, %if.then76, %for.end66.err_free_irq_crit_edge, %if.end49.err_free_irq_crit_edge, %for.end.err_free_irq_crit_edge, %if.end32.err_free_irq_crit_edge
  %ret.1 = phi i32 [ %call46, %for.end.err_free_irq_crit_edge ], [ %call70, %for.end66.err_free_irq_crit_edge ], [ %call74, %if.then76 ], [ %call78, %if.then80 ], [ %ret.0, %err_fw_deinit ], [ -12, %if.end32.err_free_irq_crit_edge ], [ -12, %if.end49.err_free_irq_crit_edge ]
  tail call fastcc void @ath10k_snoc_free_irq(ptr noundef %call9)
  br label %err_release_resource

err_release_resource:                             ; preds = %err_free_irq, %if.then31
  %ret.2 = phi i32 [ %call.i.i195, %if.then31 ], [ %ret.1, %err_free_irq ]
  tail call void @__netif_napi_del(ptr noundef %napi.i.i) #7
  tail call void @synchronize_net() #7
  %63 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_values.i, align 4
  %ce_count6.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %ce_count6.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ce_count6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp8.not.i = icmp eq i8 %66, 0
  br i1 %cmp8.not.i, label %err_release_resource.err_core_destroy_crit_edge, label %err_release_resource.for.body.i207_crit_edge

err_release_resource.for.body.i207_crit_edge:     ; preds = %err_release_resource
  br label %for.body.i207

err_release_resource.err_core_destroy_crit_edge:  ; preds = %err_release_resource
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_core_destroy

for.body.i207:                                    ; preds = %for.body.i207.for.body.i207_crit_edge, %err_release_resource.for.body.i207_crit_edge
  %i.09.i = phi i32 [ %inc.i203, %for.body.i207.for.body.i207_crit_edge ], [ 0, %err_release_resource.for.body.i207_crit_edge ]
  tail call void @ath10k_ce_free_pipe(ptr noundef %call9, i32 noundef %i.09.i) #7
  %inc.i203 = add nuw nsw i32 %i.09.i, 1
  %67 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i204 = getelementptr inbounds %struct.ath10k_hw_values, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %ce_count.i204 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ce_count.i204, align 4
  %conv.i205 = zext i8 %70 to i32
  %cmp.i206 = icmp ult i32 %inc.i203, %conv.i205
  br i1 %cmp.i206, label %for.body.i207.for.body.i207_crit_edge, label %for.body.i207.err_core_destroy_crit_edge

for.body.i207.err_core_destroy_crit_edge:         ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_core_destroy

for.body.i207.for.body.i207_crit_edge:            ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i207

err_core_destroy:                                 ; preds = %for.body.i207.err_core_destroy_crit_edge, %err_release_resource.err_core_destroy_crit_edge, %if.then27, %if.then23
  %ret.3 = phi i32 [ %call21, %if.then23 ], [ %call10.i, %if.then27 ], [ %ret.2, %err_release_resource.err_core_destroy_crit_edge ], [ %ret.2, %for.body.i207.err_core_destroy_crit_edge ]
  tail call void @ath10k_core_destroy(ptr noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %err_core_destroy, %if.then93, %lor.lhs.false, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end7 ], [ %ret.3, %err_core_destroy ], [ -12, %do.end14 ], [ -22, %do.end ], [ 0, %if.then93 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1048576, ptr noundef nonnull @.str.109) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %driver_recovery = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 36
  %3 = ptrtoint ptr %driver_recovery to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %driver_recovery, align 4
  %flags = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %if.then5

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @wait_for_completion_timeout(ptr noundef %driver_recovery, i32 noundef 300) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end.if.end8_crit_edge
  tail call fastcc void @ath10k_snoc_free_resources(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_shutdown, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1048576, ptr noundef nonnull @.str.112) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  tail call fastcc void @ath10k_snoc_free_resources(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_core_create(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_snoc_resource_init(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %call1 = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.53) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.54) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %mem_pa = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 32
  %4 = ptrtoint ptr %mem_pa to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mem_pa, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %7 = load i32, ptr %call1, align 4
  %sub.i = add i32 %6, 1
  %add.i = sub i32 %sub.i, %7
  %call5 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %3, i32 noundef %add.i) #7
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 28
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %mem, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %hw_values = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %9 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_values, align 4
  %ce_count78 = getelementptr inbounds %struct.ath10k_hw_values, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ce_count78 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ce_count78, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp80.not = icmp eq i8 %12, 0
  br i1 %cmp80.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.55, ptr noundef %mem_pa) #7
  br label %cleanup

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %if.end16.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %13 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_priv.i, align 4
  %call13 = tail call ptr @platform_get_resource(ptr noundef %14, i32 noundef 1024, i32 noundef %i.081) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.56, i32 noundef %i.081) #7
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %15 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call13, align 4
  %arrayidx = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 9, i32 %i.081
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.081, 1
  %18 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_values, align 4
  %ce_count = getelementptr inbounds %struct.ath10k_hw_values, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ce_count to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ce_count, align 4
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end16.for.body_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %xo_cal_data = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 13
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.57, ptr noundef %xo_cal_data, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %22 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %for.end.if.then23_crit_edge

for.end.if.then23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.lhs.false:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_resource_init, %if.then23)) #7
          to label %do.end [label %if.then23], !srcloc !262

if.then23:                                        ; preds = %lor.lhs.false, %for.end.if.then23_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.58, i32 noundef %call.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then23, %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp eq i32 %call.i, 0
  br i1 %cmp25, label %if.then27, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %do.end
  %xo_cal_supported = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 12
  %23 = ptrtoint ptr %xo_cal_supported to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %xo_cal_supported, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %24 = load i32, ptr @ath10k_debug_mask, align 4
  %and29 = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.then27.if.then34_crit_edge

if.then27.if.then34_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

lor.lhs.false31:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_resource_init, %if.then34)) #7
          to label %cleanup [label %if.then34], !srcloc !262

if.then34:                                        ; preds = %lor.lhs.false31, %if.then27.if.then34_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %xo_cal_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xo_cal_data, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.59, i32 noundef %26) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %lor.lhs.false31, %do.end.cleanup_crit_edge, %if.then15, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %if.then ], [ -19, %if.then15 ], [ 0, %if.then34 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %lor.lhs.false31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_setup_msa_resources(ptr noundef %ar, i32 noundef %msa_size) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %r = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #7
  %2 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = call ptr @memset(ptr %r, i32 255, i32 32)
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.86, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.else

of_parse_phandle.exit:                            ; preds = %entry
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %of_parse_phandle.exit.if.else_crit_edge, label %if.then

of_parse_phandle.exit.if.else_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %of_parse_phandle.exit
  %call2 = call i32 @of_address_to_resource(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %r) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.87) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @of_node_put(ptr noundef nonnull %8) #7
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r, align 4
  %msa = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4
  %11 = ptrtoint ptr %msa to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %msa, align 16
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %13
  %mem_size = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %mem_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %mem_size, align 4
  %call11 = call ptr @devm_memremap(ptr noundef %1, i32 noundef %10, i32 noundef %add.i, i32 noundef 2) #7
  %vaddr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call11, ptr %vaddr, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end.do.body38_crit_edge

if.end.do.body38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.90, ptr noundef nonnull %r) #10
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr, align 8
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.else:                                          ; preds = %of_parse_phandle.exit.if.else_crit_edge, %of_parse_phandle.exit.thread
  %msa25 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4
  %call.i75 = call ptr @dmam_alloc_attrs(ptr noundef %1, i32 noundef %msa_size, ptr noundef %msa25, i32 noundef 3264, i32 noundef 0) #7
  %vaddr29 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %vaddr29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i75, ptr %vaddr29, align 8
  %tobool32.not = icmp eq ptr %call.i75, null
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.92) #7
  br label %cleanup

if.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mem_size36 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %mem_size36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %msa_size, ptr %mem_size36, align 4
  br label %do.body38

do.body38:                                        ; preds = %if.end34, %if.end.do.body38_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %21 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %do.body38.if.then41_crit_edge

do.body38.if.then41_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

lor.lhs.false:                                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_setup_msa_resources, %if.then41)) #7
          to label %cleanup [label %if.then41], !srcloc !262

if.then41:                                        ; preds = %lor.lhs.false, %do.body38.if.then41_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %msa42 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4
  %vaddr45 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %vaddr45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr45, align 8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 2097152, ptr noundef nonnull @.str.93, ptr noundef %msa42, ptr noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %lor.lhs.false, %if.then33, %do.end19, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %18, %do.end19 ], [ -12, %if.then33 ], [ 0, %if.then41 ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_fw_init(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.94) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %use_tz = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 8
  %4 = ptrtoint ptr %use_tz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %use_tz, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %info, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 48)
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call2, i32 0, i32 3
  %fwnode3 = getelementptr inbounds %struct.platform_device_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %fwnode3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fwnode, ptr %fwnode3, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %info, align 8
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call2, align 4
  %name4 = getelementptr inbounds %struct.platform_device_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %name4, align 4
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %info, i32 0, i32 9
  %12 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4294967295, ptr %dma_mask, align 8
  %call5 = call ptr @platform_device_register_full(ptr noundef nonnull %info) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %call2) #7
  %13 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %call5, i32 0, i32 3
  %of_node11 = getelementptr inbounds %struct.platform_device, ptr %call5, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %of_node11, align 8
  %call.i = call i32 @of_dma_configure_id(ptr noundef %dev10, ptr noundef nonnull %call2, i1 noundef zeroext true, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.95, i32 noundef %call.i) #7
  br label %err_unregister

if.end16:                                         ; preds = %if.end9
  %fw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev10, ptr %fw, align 4
  %call19 = call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.96) #7
  br label %err_unregister

if.end22:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %call25 = call i32 @iommu_attach_device(ptr noundef nonnull %call19, ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.97, i32 noundef %call25) #7
  br label %err_iommu_free

if.end28:                                         ; preds = %if.end22
  %iommu_domain = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 20
  %18 = ptrtoint ptr %iommu_domain to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call19, ptr %iommu_domain, align 4
  %msa = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4
  %19 = ptrtoint ptr %msa to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msa, align 16
  %fw_start_addr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 16
  %21 = ptrtoint ptr %fw_start_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fw_start_addr, align 4
  %mem_size = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mem_size, align 4
  %call36 = call i32 @iommu_map(ptr noundef nonnull %call19, i32 noundef %20, i32 noundef %20, i32 noundef %23, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.98, i32 noundef %call36) #7
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  call void @iommu_detach_device(ptr noundef nonnull %call19, ptr noundef %25) #7
  br label %err_iommu_free

if.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %call2) #7
  br label %cleanup

err_iommu_free:                                   ; preds = %if.then38, %if.then27
  %ret.0 = phi i32 [ %call25, %if.then27 ], [ %call36, %if.then38 ]
  call void @iommu_domain_free(ptr noundef nonnull %call19) #7
  br label %err_unregister

err_unregister:                                   ; preds = %err_iommu_free, %if.then21, %if.then15
  %ret.1 = phi i32 [ %call.i, %if.then15 ], [ %ret.0, %err_iommu_free ], [ -12, %if.then21 ]
  call void @platform_device_unregister(ptr noundef %call5) #7
  call void @of_node_put(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unregister, %if.end39, %if.then7, %if.then
  %retval.0 = phi i32 [ %13, %if.then7 ], [ %ret.1, %err_unregister ], [ 0, %if.end39 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_qmi_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_modem_init(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nb = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 7
  %0 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ath10k_snoc_modem_notify, ptr %nb, align 4
  %call2 = tail call ptr @qcom_register_ssr_notifier(ptr noundef nonnull @.str.99, ptr noundef %nb) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.100, i32 noundef %1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %notifier5 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 10
  %2 = ptrtoint ptr %notifier5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %notifier5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_qmi_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_fw_deinit(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %use_tz = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 8
  %0 = ptrtoint ptr %use_tz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped_mem_size = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 24
  %2 = ptrtoint ptr %mapped_mem_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapped_mem_size, align 4
  %iommu_domain = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 20
  %4 = ptrtoint ptr %iommu_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu_domain, align 4
  %fw_start_addr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 16
  %6 = ptrtoint ptr %fw_start_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_start_addr, align 4
  %call3 = tail call i32 @iommu_unmap(ptr noundef %5, i32 noundef %7, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %3)
  %cmp.not = icmp eq i32 %call3, %3
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.108, i32 noundef %call3) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  tail call void @iommu_detach_device(ptr noundef %5, ptr noundef %9) #7
  tail call void @iommu_domain_free(ptr noundef %5) #7
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_snoc_free_irq(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %arrayidx = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %1, ptr noundef %ar) #7
  %arrayidx.1 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  %call1.1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %ar) #7
  %arrayidx.2 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  %call1.2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %ar) #7
  %arrayidx.3 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3, align 4
  %call1.3 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %ar) #7
  %arrayidx.4 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.4, align 4
  %call1.4 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %ar) #7
  %arrayidx.5 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.5, align 4
  %call1.5 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %ar) #7
  %arrayidx.6 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.6, align 4
  %call1.6 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %ar) #7
  %arrayidx.7 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5, i32 4, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.7, align 4
  %call1.7 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %ar) #7
  %arrayidx.8 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5, i32 4, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.8, align 4
  %call1.8 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %ar) #7
  %arrayidx.9 = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 9, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.9, align 4
  %call1.9 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %ar) #7
  %arrayidx.10 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 5, i32 4, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.10, align 4
  %call1.10 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %ar) #7
  %arrayidx.11 = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 6
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.11, align 4
  %call1.11 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %ar) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_hif_tx_sg(ptr noundef %ar, i8 noundef zeroext %pipe_id, ptr noundef %items, i32 noundef %n_items) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %ce_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 131
  %0 = ptrtoint ptr %ce_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_priv.i, align 4
  %idxprom = zext i8 %pipe_id to i32
  %arrayidx = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 8, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #7
  %sub = add i32 %n_items, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp107 = icmp sgt i32 %sub, 0
  br i1 %cmp107, label %entry.do.body_crit_edge, label %entry.do.body17_crit_edge

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %i.0108 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then_crit_edge

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_tx_sg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %do.body.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %paddr = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0108, i32 3
  %len = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0108, i32 4
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.25, i32 noundef %i.0108, ptr noundef %paddr, i32 noundef %conv, i32 noundef %n_items) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %arrayidx5 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0108
  %transfer_context = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0108, i32 1
  %7 = ptrtoint ptr %transfer_context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_context, align 4
  %paddr7 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0108, i32 3
  %9 = ptrtoint ptr %paddr7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %paddr7, align 4
  %len9 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0108, i32 4
  %11 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len9, align 4
  %conv10 = zext i16 %12 to i32
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx5, align 4
  %conv12 = zext i16 %14 to i32
  %call13 = tail call i32 @ath10k_ce_send_nolock(ptr noundef %3, ptr noundef %8, i32 noundef %10, i32 noundef %conv10, i32 noundef %conv12, i32 noundef 65536) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.inc, label %do.end.err47_crit_edge

do.end.err47_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err47

for.inc:                                          ; preds = %do.end
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.do.body17_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.do.body17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

do.body17:                                        ; preds = %for.inc.do.body17_crit_edge, %entry.do.body17_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.body17_crit_edge ], [ %sub, %for.inc.do.body17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %15 = load i32, ptr @ath10k_debug_mask, align 4
  %and18 = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %do.body17.if.then23_crit_edge

do.body17.if.then23_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.lhs.false20:                                  ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_tx_sg, %if.then23)) #7
          to label %do.end31 [label %if.then23], !srcloc !262

if.then23:                                        ; preds = %lor.lhs.false20, %do.body17.if.then23_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %paddr25 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 3
  %len27 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 4
  %16 = ptrtoint ptr %len27 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len27, align 4
  %conv28 = zext i16 %17 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.25, i32 noundef %i.0.lcssa, ptr noundef %paddr25, i32 noundef %conv28, i32 noundef %n_items) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %lor.lhs.false20
  %arrayidx32 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa
  %transfer_context33 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 1
  %18 = ptrtoint ptr %transfer_context33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_context33, align 4
  %paddr35 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 3
  %20 = ptrtoint ptr %paddr35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %paddr35, align 4
  %len37 = getelementptr %struct.ath10k_hif_sg_item, ptr %items, i32 %i.0.lcssa, i32 4
  %22 = ptrtoint ptr %len37 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len37, align 4
  %conv38 = zext i16 %23 to i32
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx32, align 4
  %conv41 = zext i16 %25 to i32
  %call42 = tail call i32 @ath10k_ce_send_nolock(ptr noundef %3, ptr noundef %19, i32 noundef %21, i32 noundef %conv38, i32 noundef %conv41, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end31.cleanup_crit_edge, label %do.end31.err47_crit_edge

do.end31.err47_crit_edge:                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %err47

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err47:                                            ; preds = %do.end31.err47_crit_edge, %do.end.err47_crit_edge
  %i.0106 = phi i32 [ %i.0.lcssa, %do.end31.err47_crit_edge ], [ %i.0108, %do.end.err47_crit_edge ]
  %err.0 = phi i32 [ %call42, %do.end31.err47_crit_edge ], [ %call13, %do.end.err47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0106)
  %cmp49109 = icmp sgt i32 %i.0106, 0
  br i1 %cmp49109, label %err47.for.body51_crit_edge, label %err47.cleanup_crit_edge

err47.cleanup_crit_edge:                          ; preds = %err47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err47.for.body51_crit_edge:                       ; preds = %err47
  br label %for.body51

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %err47.for.body51_crit_edge
  %i.1110 = phi i32 [ %dec, %for.body51.for.body51_crit_edge ], [ %i.0106, %err47.for.body51_crit_edge ]
  tail call void @__ath10k_ce_send_revert(ptr noundef %3) #7
  %dec = add nsw i32 %i.1110, -1
  %cmp49 = icmp ugt i32 %i.1110, 1
  br i1 %cmp49, label %for.body51.for.body51_crit_edge, label %for.body51.cleanup_crit_edge

for.body51.cleanup_crit_edge:                     ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

cleanup:                                          ; preds = %for.body51.cleanup_crit_edge, %err47.cleanup_crit_edge, %do.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end31.cleanup_crit_edge ], [ %err.0, %err47.cleanup_crit_edge ], [ %err.0, %for.body51.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_hif_start(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %pending_ce_irqs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 14
  tail call void @__bitmap_clear(ptr noundef %pending_ce_irqs, i32 noundef 0, i32 noundef 12) #7
  tail call void @ath10k_core_napi_enable(ptr noundef %ar) #7
  tail call void @ath10k_ce_enable_interrupts(ptr noundef %ar) #7
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %0 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_values.i, align 4
  %ce_count5.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ce_count5.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ce_count5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7.not.i = icmp eq i8 %3, 0
  br i1 %cmp7.not.i, label %entry.ath10k_snoc_rx_post.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ath10k_snoc_rx_post.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_rx_post.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 8, i32 %i.08.i
  tail call fastcc void @ath10k_snoc_rx_post_pipe(ptr noundef %arrayidx.i) #7
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %4 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %7 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath10k_snoc_rx_post.exit_crit_edge

for.body.i.ath10k_snoc_rx_post.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_rx_post.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ath10k_snoc_rx_post.exit:                         ; preds = %for.body.i.ath10k_snoc_rx_post.exit_crit_edge, %entry.ath10k_snoc_rx_post.exit_crit_edge
  %flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %8 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %ath10k_snoc_rx_post.exit.if.then_crit_edge

ath10k_snoc_rx_post.exit.if.then_crit_edge:       ; preds = %ath10k_snoc_rx_post.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %ath10k_snoc_rx_post.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_start, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %ath10k_snoc_rx_post.exit.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.26) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_hif_stop(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ath10k_ce_disable_interrupts(ptr noundef %ar) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ath10k_core_napi_sync_disable(ptr noundef %ar) #7
  %drv_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %rx_post_retry.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 5
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %rx_post_retry.i) #7
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %3 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_values.i, align 4
  %ce_count22.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ce_count22.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ce_count22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp24.not.i = icmp eq i8 %6, 0
  br i1 %cmp24.not.i, label %if.end.ath10k_snoc_buffer_cleanup.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ath10k_snoc_buffer_cleanup.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_buffer_cleanup.exit

for.body.i:                                       ; preds = %ath10k_snoc_tx_pipe_cleanup.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %pipe_num.025.i = phi i32 [ %inc.i, %ath10k_snoc_tx_pipe_cleanup.exit.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i.i, i32 0, i32 8, i32 %pipe_num.025.i
  %hif_ce_state.i.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i.i, i32 0, i32 8, i32 %pipe_num.025.i, i32 2
  %7 = ptrtoint ptr %hif_ce_state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_ce_state.i.i, align 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %dest_ring.i.i = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %dest_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dest_ring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %for.body.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge, label %if.end.i.i

for.body.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_rx_pipe_cleanup.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %buf_sz.i.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i.i, i32 0, i32 8, i32 %pipe_num.025.i, i32 3
  %13 = ptrtoint ptr %buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_sz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_rx_pipe_cleanup.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp27.not.i.i = icmp eq i32 %16, 0
  br i1 %cmp27.not.i.i, label %for.cond.preheader.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_rx_pipe_cleanup.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %dev.i.i = getelementptr inbounds %struct.ath10k, ptr %8, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ath10k_ce_ring, ptr %12, i32 0, i32 11, i32 %i.028.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end6.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.i.i, align 4
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cb.i.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end6.i.i.skb_tailroom.exit.i.i_crit_edge

if.end6.i.i.skb_tailroom.exit.i.i_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %if.end6.i.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end6.i.i.skb_tailroom.exit.i.i_crit_edge ]
  %add.i.i = add i32 %cond.i.i.i, %25
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %23, i32 noundef %add.i.i, i32 noundef 2, i32 noundef 0) #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %18, i32 noundef 1) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %skb_tailroom.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %12, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %33
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge

for.inc.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_rx_pipe_cleanup.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

ath10k_snoc_rx_pipe_cleanup.exit.i:               ; preds = %for.inc.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge, %for.cond.preheader.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge, %if.end.i.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge, %for.body.i.ath10k_snoc_rx_pipe_cleanup.exit.i_crit_edge
  %34 = ptrtoint ptr %hif_ce_state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hif_ce_state.i.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %src_ring.i.i = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %src_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src_ring.i.i, align 4
  %tobool.not.i10.i = icmp eq ptr %39, null
  br i1 %tobool.not.i10.i, label %ath10k_snoc_rx_pipe_cleanup.exit.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge, label %if.end.i13.i

ath10k_snoc_rx_pipe_cleanup.exit.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge: ; preds = %ath10k_snoc_rx_pipe_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_tx_pipe_cleanup.exit.i

if.end.i13.i:                                     ; preds = %ath10k_snoc_rx_pipe_cleanup.exit.i
  %buf_sz.i11.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i.i, i32 0, i32 8, i32 %pipe_num.025.i, i32 3
  %40 = ptrtoint ptr %buf_sz.i11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_sz.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool1.not.i12.i = icmp eq i32 %41, 0
  br i1 %tobool1.not.i12.i, label %if.end.i13.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge, label %for.cond.preheader.i14.i

if.end.i13.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge: ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_tx_pipe_cleanup.exit.i

for.cond.preheader.i14.i:                         ; preds = %if.end.i13.i
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp23.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp23.not.i.i, label %for.cond.preheader.i14.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge, label %for.cond.preheader.i14.i.for.body.i17.i_crit_edge

for.cond.preheader.i14.i.for.body.i17.i_crit_edge: ; preds = %for.cond.preheader.i14.i
  br label %for.body.i17.i

for.cond.preheader.i14.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.cond.preheader.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_tx_pipe_cleanup.exit.i

for.body.i17.i:                                   ; preds = %for.inc.i21.i.for.body.i17.i_crit_edge, %for.cond.preheader.i14.i.for.body.i17.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i19.i, %for.inc.i21.i.for.body.i17.i_crit_edge ], [ 0, %for.cond.preheader.i14.i.for.body.i17.i_crit_edge ]
  %arrayidx.i15.i = getelementptr %struct.ath10k_ce_ring, ptr %39, i32 0, i32 11, i32 %i.024.i.i
  %44 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i15.i, align 4
  %tobool4.not.i16.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i16.i, label %for.body.i17.i.for.inc.i21.i_crit_edge, label %if.end6.i18.i

for.body.i17.i.for.inc.i21.i_crit_edge:           ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i21.i

if.end6.i18.i:                                    ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx.i15.i, align 4
  tail call void @ath10k_htc_tx_completion_handler(ptr noundef %35, ptr noundef nonnull %45) #7
  br label %for.inc.i21.i

for.inc.i21.i:                                    ; preds = %if.end6.i18.i, %for.body.i17.i.for.inc.i21.i_crit_edge
  %inc.i19.i = add nuw i32 %i.024.i.i, 1
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %39, align 4
  %cmp.i20.i = icmp ult i32 %inc.i19.i, %48
  br i1 %cmp.i20.i, label %for.inc.i21.i.for.body.i17.i_crit_edge, label %for.inc.i21.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge

for.inc.i21.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge: ; preds = %for.inc.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_tx_pipe_cleanup.exit.i

for.inc.i21.i.for.body.i17.i_crit_edge:           ; preds = %for.inc.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i17.i

ath10k_snoc_tx_pipe_cleanup.exit.i:               ; preds = %for.inc.i21.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge, %for.cond.preheader.i14.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge, %if.end.i13.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge, %ath10k_snoc_rx_pipe_cleanup.exit.i.ath10k_snoc_tx_pipe_cleanup.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %pipe_num.025.i, 1
  %49 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %52 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %ath10k_snoc_tx_pipe_cleanup.exit.i.for.body.i_crit_edge, label %ath10k_snoc_tx_pipe_cleanup.exit.i.ath10k_snoc_buffer_cleanup.exit_crit_edge

ath10k_snoc_tx_pipe_cleanup.exit.i.ath10k_snoc_buffer_cleanup.exit_crit_edge: ; preds = %ath10k_snoc_tx_pipe_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_buffer_cleanup.exit

ath10k_snoc_tx_pipe_cleanup.exit.i.for.body.i_crit_edge: ; preds = %ath10k_snoc_tx_pipe_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ath10k_snoc_buffer_cleanup.exit:                  ; preds = %ath10k_snoc_tx_pipe_cleanup.exit.i.ath10k_snoc_buffer_cleanup.exit_crit_edge, %if.end.ath10k_snoc_buffer_cleanup.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %53 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %ath10k_snoc_buffer_cleanup.exit.if.then3_crit_edge

ath10k_snoc_buffer_cleanup.exit.if.then3_crit_edge: ; preds = %ath10k_snoc_buffer_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false:                                    ; preds = %ath10k_snoc_buffer_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_stop, %if.then3)) #7
          to label %do.end [label %if.then3], !srcloc !262

if.then3:                                         ; preds = %lor.lhs.false, %ath10k_snoc_buffer_cleanup.exit.if.then3_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.32) #7
  br label %do.end

do.end:                                           ; preds = %if.then3, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_hif_map_service_to_pipe(ptr noundef %ar, i16 noundef zeroext %service_id, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_map_service_to_pipe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.33) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %conv = zext i16 %service_id to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %ul_set.0.off0169 = phi i1 [ false, %do.end ], [ %ul_set.1.off0, %for.inc.for.body_crit_edge ]
  %dl_set.0.off0168 = phi i1 [ false, %do.end ], [ %dl_set.1.off0, %for.inc.for.body_crit_edge ]
  %i.0166 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [21 x %struct.ce_service_to_pipe], ptr @target_service_to_ce_map_wlan, i32 0, i32 %i.0166
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp3.not = icmp eq i32 %3, %conv
  br i1 %cmp3.not, label %if.end6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %pipedir = getelementptr [21 x %struct.ce_service_to_pipe], ptr @target_service_to_ce_map_wlan, i32 0, i32 %i.0166, i32 1
  %4 = ptrtoint ptr %pipedir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipedir, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %6, label %if.end6.for.inc_crit_edge [
    i32 3, label %sw.bb67
    i32 1, label %sw.bb
    i32 2, label %sw.bb33
  ]

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %if.end6
  br i1 %dl_set.0.off0168, label %do.end19, label %sw.bb.if.end25_crit_edge, !prof !263

sw.bb.if.end25_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end19:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 793, i32 noundef 9, ptr noundef null) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %sw.bb.if.end25_crit_edge
  %pipenum = getelementptr [21 x %struct.ce_service_to_pipe], ptr @target_service_to_ce_map_wlan, i32 0, i32 %i.0166, i32 2
  br label %for.inc.sink.split

sw.bb33:                                          ; preds = %if.end6
  br i1 %ul_set.0.off0169, label %do.end51, label %sw.bb33.if.end57_crit_edge, !prof !263

sw.bb33.if.end57_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.end51:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 798, i32 noundef 9, ptr noundef null) #7
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %sw.bb33.if.end57_crit_edge
  %pipenum65 = getelementptr [21 x %struct.ce_service_to_pipe], ptr @target_service_to_ce_map_wlan, i32 0, i32 %i.0166, i32 2
  br label %for.inc.sink.split

sw.bb67:                                          ; preds = %if.end6
  br i1 %dl_set.0.off0168, label %do.end85, label %sw.bb67.if.end91_crit_edge, !prof !263

sw.bb67.if.end91_crit_edge:                       ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

do.end85:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 803, i32 noundef 9, ptr noundef null) #7
  br label %if.end91

if.end91:                                         ; preds = %do.end85, %sw.bb67.if.end91_crit_edge
  br i1 %ul_set.0.off0169, label %do.end116, label %if.end91.if.end122_crit_edge, !prof !263

if.end91.if.end122_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

do.end116:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 804, i32 noundef 9, ptr noundef null) #7
  br label %if.end122

if.end122:                                        ; preds = %do.end116, %if.end91.if.end122_crit_edge
  %pipenum130 = getelementptr [21 x %struct.ce_service_to_pipe], ptr @target_service_to_ce_map_wlan, i32 0, i32 %i.0166, i32 2
  %8 = ptrtoint ptr %pipenum130 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipenum130, align 4
  %10 = lshr i32 %9, 24
  %conv131 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv131, ptr %dl_pipe, align 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end122, %if.end57, %if.end25
  %pipenum.sink = phi ptr [ %pipenum, %if.end25 ], [ %pipenum65, %if.end57 ], [ %pipenum130, %if.end122 ]
  %dl_pipe.sink = phi ptr [ %dl_pipe, %if.end25 ], [ %ul_pipe, %if.end57 ], [ %ul_pipe, %if.end122 ]
  %dl_set.1.off0.ph = phi i1 [ true, %if.end25 ], [ %dl_set.0.off0168, %if.end57 ], [ true, %if.end122 ]
  %ul_set.1.off0.ph = phi i1 [ %ul_set.0.off0169, %if.end25 ], [ true, %if.end57 ], [ true, %if.end122 ]
  %12 = ptrtoint ptr %pipenum.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pipenum.sink, align 4
  %14 = lshr i32 %13, 24
  %conv32 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %dl_pipe.sink to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv32, ptr %dl_pipe.sink, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dl_set.1.off0 = phi i1 [ %dl_set.0.off0168, %for.body.for.inc_crit_edge ], [ %dl_set.0.off0168, %if.end6.for.inc_crit_edge ], [ %dl_set.1.off0.ph, %for.inc.sink.split ]
  %ul_set.1.off0 = phi i1 [ %ul_set.0.off0169, %for.body.for.inc_crit_edge ], [ %ul_set.0.off0169, %if.end6.for.inc_crit_edge ], [ %ul_set.1.off0.ph, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %16 = select i1 %ul_set.1.off0, i1 %dl_set.1.off0, i1 false
  %retval.0 = select i1 %16, i32 0, i32 -2
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_hif_get_default_pipe(ptr noundef %ar, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_get_default_pipe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.34) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %call1 = tail call i32 @ath10k_snoc_hif_map_service_to_pipe(ptr noundef %ar, i16 noundef zeroext 1, ptr noundef %ul_pipe, ptr noundef %dl_pipe)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_hif_send_complete_check(ptr noundef %ar, i8 noundef zeroext %pipe, i32 noundef %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_send_complete_check, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.35) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool1.not = icmp eq i32 %force, 0
  br i1 %tobool1.not, label %if.then2, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i8 %pipe to i32
  br label %if.end7

if.then2:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then2.if.then.i_crit_edge

if.then2.if.then.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_send_complete_check, %if.then.i)) #7
          to label %ath10k_snoc_hif_get_free_queue_number.exit [label %if.then.i], !srcloc !262

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.then2.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.38) #7
  br label %ath10k_snoc_hif_get_free_queue_number.exit

ath10k_snoc_hif_get_free_queue_number.exit:       ; preds = %if.then.i, %lor.lhs.false.i
  %drv_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %idxprom.i = zext i8 %pipe to i32
  %arrayidx.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i.i, i32 0, i32 8, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @ath10k_ce_num_free_src_entries(ptr noundef %3) #7
  %conv = and i32 %call2.i, 65535
  %src_nentries = getelementptr [12 x %struct.ce_attr], ptr @host_ce_config_wlan, i32 0, i32 %idxprom.i, i32 1
  %4 = ptrtoint ptr %src_nentries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_nentries, align 4
  %shr = lshr i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp = icmp ult i32 %shr, %conv
  br i1 %cmp, label %ath10k_snoc_hif_get_free_queue_number.exit.cleanup_crit_edge, label %ath10k_snoc_hif_get_free_queue_number.exit.if.end7_crit_edge

ath10k_snoc_hif_get_free_queue_number.exit.if.end7_crit_edge: ; preds = %ath10k_snoc_hif_get_free_queue_number.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

ath10k_snoc_hif_get_free_queue_number.exit.cleanup_crit_edge: ; preds = %ath10k_snoc_hif_get_free_queue_number.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %ath10k_snoc_hif_get_free_queue_number.exit.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %conv8.pre-phi = phi i32 [ %.pre, %do.end.if.end7_crit_edge ], [ %idxprom.i, %ath10k_snoc_hif_get_free_queue_number.exit.if.end7_crit_edge ]
  tail call void @ath10k_ce_per_engine_service(ptr noundef %ar, i32 noundef %conv8.pre-phi) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ath10k_snoc_hif_get_free_queue_number.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ath10k_snoc_hif_get_free_queue_number(ptr noundef %ar, i8 noundef zeroext %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_get_free_queue_number, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.38) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 142
  %idxprom = zext i8 %pipe to i32
  %arrayidx = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 8, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @ath10k_ce_num_free_src_entries(ptr noundef %2) #7
  %conv = trunc i32 %call2 to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_read32(ptr nocapture noundef readonly %ar, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 28
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !264
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !265
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_write32(ptr nocapture noundef readonly %ar, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 28
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !266
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !267
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_hif_power_up(ptr noundef %ar, i32 noundef %fw_mode) #0 align 64 {
entry:
  %tgt_cfg.i = alloca [12 x %struct.ath10k_tgt_pipe_cfg], align 4
  %cfg.i = alloca %struct.ath10k_qmi_wlan_enable_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_power_up, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 103
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.ath10k_snoc_hif_power_up, i32 noundef %2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %call1 = tail call fastcc i32 @ath10k_hw_power_on(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.40, i32 noundef %call1) #7
  br label %cleanup

if.end4:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %tgt_cfg.i) #7
  %3 = call ptr @memset(ptr %tgt_cfg.i, i32 255, i32 288)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg.i) #7
  %4 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %cfg.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %cfg.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4
  %pipe_num.033.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [12 x %struct.ce_pipe_config], ptr @target_ce_config_wlan, i32 0, i32 %pipe_num.033.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [12 x %struct.ath10k_tgt_pipe_cfg], ptr %tgt_cfg.i, i32 0, i32 %pipe_num.033.i
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx1.i, align 4
  %pipedir.i = getelementptr [12 x %struct.ce_pipe_config], ptr @target_ce_config_wlan, i32 0, i32 %pipe_num.033.i, i32 1
  %9 = ptrtoint ptr %pipedir.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pipedir.i, align 4
  %pipe_dir.i = getelementptr [12 x %struct.ath10k_tgt_pipe_cfg], ptr %tgt_cfg.i, i32 0, i32 %pipe_num.033.i, i32 1
  %11 = ptrtoint ptr %pipe_dir.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pipe_dir.i, align 4
  %nentries.i = getelementptr [12 x %struct.ce_pipe_config], ptr @target_ce_config_wlan, i32 0, i32 %pipe_num.033.i, i32 2
  %12 = ptrtoint ptr %nentries.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nentries.i, align 4
  %nentries7.i = getelementptr [12 x %struct.ath10k_tgt_pipe_cfg], ptr %tgt_cfg.i, i32 0, i32 %pipe_num.033.i, i32 2
  %14 = ptrtoint ptr %nentries7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nentries7.i, align 4
  %nbytes_max.i = getelementptr [12 x %struct.ce_pipe_config], ptr @target_ce_config_wlan, i32 0, i32 %pipe_num.033.i, i32 3
  %15 = ptrtoint ptr %nbytes_max.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbytes_max.i, align 4
  %nbytes_max10.i = getelementptr [12 x %struct.ath10k_tgt_pipe_cfg], ptr %tgt_cfg.i, i32 0, i32 %pipe_num.033.i, i32 3
  %17 = ptrtoint ptr %nbytes_max10.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %nbytes_max10.i, align 4
  %flags.i = getelementptr [12 x %struct.ce_pipe_config], ptr @target_ce_config_wlan, i32 0, i32 %pipe_num.033.i, i32 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %flags13.i = getelementptr [12 x %struct.ath10k_tgt_pipe_cfg], ptr %tgt_cfg.i, i32 0, i32 %pipe_num.033.i, i32 4
  %20 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags13.i, align 4
  %reserved.i = getelementptr [12 x %struct.ath10k_tgt_pipe_cfg], ptr %tgt_cfg.i, i32 0, i32 %pipe_num.033.i, i32 5
  %21 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %reserved.i, align 4
  %inc.i = add nuw nsw i32 %pipe_num.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %22 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %cfg.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %cfg.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %cfg.i, i32 0, i32 5
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12, ptr %cfg.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tgt_cfg.i, ptr %22, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 21, ptr %4, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @target_service_to_ce_map_wlan, ptr %23, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 12, ptr %5, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @target_shadow_reg_cfg_map, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fw_mode)
  %switch.i = icmp ult i32 %fw_mode, 2
  br i1 %switch.i, label %ath10k_snoc_wlan_enable.exit, label %ath10k_snoc_wlan_enable.exit.thread

ath10k_snoc_wlan_enable.exit.thread:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.44, i32 noundef %fw_mode) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %tgt_cfg.i) #7
  br label %if.then7

ath10k_snoc_wlan_enable.exit:                     ; preds = %for.end.i
  %call.i = call i32 @ath10k_qmi_wlan_enable(ptr noundef %ar, ptr noundef nonnull %cfg.i, i32 noundef %fw_mode, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %tgt_cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %ath10k_snoc_wlan_enable.exit.if.then7_crit_edge

ath10k_snoc_wlan_enable.exit.if.then7_crit_edge:  ; preds = %ath10k_snoc_wlan_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %ath10k_snoc_wlan_enable.exit.if.then7_crit_edge, %ath10k_snoc_wlan_enable.exit.thread
  %retval.0.i46 = phi i32 [ -22, %ath10k_snoc_wlan_enable.exit.thread ], [ %call.i, %ath10k_snoc_wlan_enable.exit.if.then7_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i46) #7
  br label %err_hw_power_off

if.end8:                                          ; preds = %ath10k_snoc_wlan_enable.exit
  call void @ath10k_ce_alloc_rri(ptr noundef %ar) #7
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %31 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_values.i, align 4
  %ce_count12.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ce_count12.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ce_count12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp14.not.i = icmp eq i8 %34, 0
  br i1 %cmp14.not.i, label %if.end8.cleanup_crit_edge, label %if.end8.for.body.i34_crit_edge

if.end8.for.body.i34_crit_edge:                   ; preds = %if.end8
  br label %for.body.i34

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i34:                                     ; preds = %for.inc.i.for.body.i34_crit_edge, %if.end8.for.body.i34_crit_edge
  %i.015.i = phi i32 [ %inc.i35, %for.inc.i.for.body.i34_crit_edge ], [ 0, %if.end8.for.body.i34_crit_edge ]
  %arrayidx.i32 = getelementptr [12 x %struct.ce_attr], ptr @host_ce_config_wlan, i32 0, i32 %i.015.i
  %call.i33 = call i32 @ath10k_ce_init_pipe(ptr noundef %ar, i32 noundef %i.015.i, ptr noundef %arrayidx.i32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then11

for.inc.i:                                        ; preds = %for.body.i34
  %inc.i35 = add nuw nsw i32 %i.015.i, 1
  %35 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %38 to i32
  %cmp.i = icmp ult i32 %inc.i35, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i34_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.for.body.i34_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i34

if.then11:                                        ; preds = %for.body.i34
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.45, i32 noundef %i.015.i, i32 noundef %call.i33) #7
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.42, i32 noundef %call.i33) #7
  call void @ath10k_ce_free_rri(ptr noundef %ar) #7
  %dev_flags.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %39 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dev_flags.i, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i37 = icmp eq i32 %41, 0
  br i1 %tobool.not.i37, label %if.then11.if.then.i39_crit_edge, label %lor.lhs.false.i

if.then11.if.then.i39_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i39

lor.lhs.false.i:                                  ; preds = %if.then11
  %flags.i38 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 11
  %42 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i38, align 4
  %44 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.not.i = icmp eq i32 %44, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then.i39_crit_edge, label %lor.lhs.false.i.err_hw_power_off_crit_edge

lor.lhs.false.i.err_hw_power_off_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hw_power_off

lor.lhs.false.i.if.then.i39_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i39

if.then.i39:                                      ; preds = %lor.lhs.false.i.if.then.i39_crit_edge, %if.then11.if.then.i39_crit_edge
  %call4.i = call i32 @ath10k_qmi_wlan_disable(ptr noundef %ar) #7
  br label %err_hw_power_off

err_hw_power_off:                                 ; preds = %if.then.i39, %lor.lhs.false.i.err_hw_power_off_crit_edge, %if.then7
  %ret.0 = phi i32 [ %retval.0.i46, %if.then7 ], [ %call.i33, %lor.lhs.false.i.err_hw_power_off_crit_edge ], [ %call.i33, %if.then.i39 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %45 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i40, label %lor.lhs.false.i41, label %err_hw_power_off.if.then.i42_crit_edge

err_hw_power_off.if.then.i42_crit_edge:           ; preds = %err_hw_power_off
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i42

lor.lhs.false.i41:                                ; preds = %err_hw_power_off
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_power_up, %if.then.i42)) #7
          to label %ath10k_hw_power_off.exit [label %if.then.i42], !srcloc !262

if.then.i42:                                      ; preds = %lor.lhs.false.i41, %err_hw_power_off.if.then.i42_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.46) #7
  br label %ath10k_hw_power_off.exit

ath10k_hw_power_off.exit:                         ; preds = %if.then.i42, %lor.lhs.false.i41
  %num_clks.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 2
  %46 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 1
  %48 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clks.i, align 4
  call void @clk_bulk_disable(i32 noundef %47, ptr noundef %49) #7
  call void @clk_bulk_unprepare(i32 noundef %47, ptr noundef %49) #7
  %num_vregs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6
  %50 = ptrtoint ptr %num_vregs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_vregs.i, align 4
  %vregs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 5, i32 1, i32 1
  %52 = ptrtoint ptr %vregs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vregs.i, align 4
  %call2.i = call i32 @regulator_bulk_disable(i32 noundef %51, ptr noundef %53) #7
  br label %cleanup

cleanup:                                          ; preds = %ath10k_hw_power_off.exit, %for.inc.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %ret.0, %ath10k_hw_power_off.exit ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_hif_power_down(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_power_down, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.47) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %dev_flags.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %1 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %dev_flags.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.end.if.then.i_crit_edge, label %lor.lhs.false.i

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end
  %flags.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.ath10k_snoc_wlan_disable.exit_crit_edge

lor.lhs.false.i.ath10k_snoc_wlan_disable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_wlan_disable.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.end.if.then.i_crit_edge
  %call4.i = tail call i32 @ath10k_qmi_wlan_disable(ptr noundef %ar) #7
  br label %ath10k_snoc_wlan_disable.exit

ath10k_snoc_wlan_disable.exit:                    ; preds = %if.then.i, %lor.lhs.false.i.ath10k_snoc_wlan_disable.exit_crit_edge
  tail call void @ath10k_ce_free_rri(ptr noundef %ar) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %7 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i5 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i5, label %lor.lhs.false.i6, label %ath10k_snoc_wlan_disable.exit.if.then.i7_crit_edge

ath10k_snoc_wlan_disable.exit.if.then.i7_crit_edge: ; preds = %ath10k_snoc_wlan_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i7

lor.lhs.false.i6:                                 ; preds = %ath10k_snoc_wlan_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_power_down, %if.then.i7)) #7
          to label %ath10k_hw_power_off.exit [label %if.then.i7], !srcloc !262

if.then.i7:                                       ; preds = %lor.lhs.false.i6, %ath10k_snoc_wlan_disable.exit.if.then.i7_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.46) #7
  br label %ath10k_hw_power_off.exit

ath10k_hw_power_off.exit:                         ; preds = %if.then.i7, %lor.lhs.false.i6
  %num_clks.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 2
  %8 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 1
  %10 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %9, ptr noundef %11) #7
  tail call void @clk_bulk_unprepare(i32 noundef %9, ptr noundef %11) #7
  %num_vregs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6
  %12 = ptrtoint ptr %num_vregs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_vregs.i, align 4
  %vregs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %vregs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vregs.i, align 4
  %call2.i = tail call i32 @regulator_bulk_disable(i32 noundef %13, ptr noundef %15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_hif_suspend(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.end

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %arrayidx = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.48, i32 noundef %call.i) #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %7 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %do.body.if.then7_crit_edge

do.body.if.then7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_suspend, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !262

if.then7:                                         ; preds = %lor.lhs.false, %do.body.if.then7_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.49) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %lor.lhs.false, %if.then3, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then3 ], [ -1, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %lor.lhs.false ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_hif_resume(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.end

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %arrayidx = getelementptr %struct.ath10k, ptr %ar, i32 1, i32 0, i32 31, i32 5, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.50, i32 noundef %call.i) #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %7 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %do.body.if.then7_crit_edge

do.body.if.then7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_hif_resume, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !262

if.then7:                                         ; preds = %lor.lhs.false, %do.body.if.then7_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.51) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %lor.lhs.false, %if.then3, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then3 ], [ -1, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %lor.lhs.false ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ath10k_snoc_hif_get_target_info(ptr nocapture noundef readnone %ar, ptr nocapture noundef writeonly %target_info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %target_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %target_info, align 4
  %type = getelementptr inbounds %struct.bmi_target_info, ptr %target_info, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %type, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_hif_set_target_log_mode(ptr noundef %ar, i8 noundef zeroext %fw_log_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fw_log_mode)
  %tobool.not = icmp ne i8 %fw_log_mode, 0
  %. = zext i1 %tobool.not to i8
  %call = tail call i32 @ath10k_qmi_set_fw_log_mode(ptr noundef %ar, i8 noundef zeroext %.) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_send_nolock(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_ce_send_revert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_enable_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_snoc_rx_post_pipe(ptr nocapture noundef readonly %pipe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_ce_state = getelementptr inbounds %struct.ath10k_snoc_pipe, ptr %pipe, i32 0, i32 2
  %0 = ptrtoint ptr %hif_ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_ce_state, align 4
  %ce_priv.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 131
  %2 = ptrtoint ptr %ce_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce_priv.i, align 4
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe, align 4
  %buf_sz = getelementptr inbounds %struct.ath10k_snoc_pipe, ptr %pipe, i32 0, i32 3
  %6 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dest_ring = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %dest_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dest_ring, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #7
  %call4 = tail call i32 @__ath10k_ce_rx_num_free_bufs(ptr noundef %5) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #7
  br label %while.cond

while.cond:                                       ; preds = %__ath10k_snoc_rx_post_buf.exit.while.cond_crit_edge, %if.end3
  %num.0 = phi i32 [ %call4, %if.end3 ], [ %dec, %__ath10k_snoc_rx_post_buf.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0)
  %tobool6.not = icmp eq i32 %num.0, 0
  br i1 %tobool6.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %dec = add i32 %num.0, -1
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe, align 4
  %12 = ptrtoint ptr %hif_ce_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hif_ce_state, align 4
  %ce_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %13, i32 0, i32 131
  %14 = ptrtoint ptr %ce_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ce_priv.i.i, align 4
  %16 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_sz, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %17, i32 noundef 2592) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %while.body.if.end12_crit_edge, label %if.end.i

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.i:                                         ; preds = %while.body
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end32.i_crit_edge, label %land.rhs.i

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b94.i = load i1, ptr @__ath10k_snoc_rx_post_buf.__already_done, align 1
  br i1 %.b94.i, label %land.rhs.i.if.end32.i_crit_edge, label %if.then10.i, !prof !268

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__ath10k_snoc_rx_post_buf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 9, ptr noundef nonnull @.str.28) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then10.i, %land.rhs.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %dev.i = getelementptr inbounds %struct.ath10k, ptr %13, i32 0, i32 3
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end32.i.skb_tailroom.exit.i_crit_edge

if.end32.i.skb_tailroom.exit.i_crit_edge:         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end32.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end32.i.skb_tailroom.exit.i_crit_edge ]
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #7
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %skb_tailroom.exit.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !268

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %22) #7
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %36, %if.end.i.i.i ], [ %34, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #7
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef -1) #7
  br label %if.then52.i

dma_map_single_attrs.exit.i:                      ; preds = %skb_tailroom.exit.i
  %add.i = add i32 %cond.i.i, %26
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %24, i32 noundef %add.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %40 = ptrtoint ptr %24 to i32
  %sub.i.i = add i32 %40, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %39, i32 %shr.i.i
  %and.i.i = and i32 %40, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #7
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %42, i32 noundef %call41.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then52.i_crit_edge, label %if.end53.i

dma_map_single_attrs.exit.i.if.then52.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i

if.then52.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then52.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %13, ptr noundef nonnull @.str.29) #7
  br label %cleanup.sink.split.i

if.end53.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call41.i.i, ptr %cb.i.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %15) #7
  %ops.i = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %11, i32 0, i32 9
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %ce_rx_post_buf.i = getelementptr inbounds %struct.ath10k_ce_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %ce_rx_post_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ce_rx_post_buf.i, align 4
  %call56.i = tail call i32 %47(ptr noundef %11, ptr noundef nonnull %call.i.i.i, i32 noundef %call41.i.i) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool58.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool58.not.i, label %if.end53.i.__ath10k_snoc_rx_post_buf.exit_crit_edge, label %if.then59.i

if.end53.i.__ath10k_snoc_rx_post_buf.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ath10k_snoc_rx_post_buf.exit

if.then59.i:                                      ; preds = %if.end53.i
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  %52 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i96.i = icmp eq i32 %53, 0
  br i1 %tobool.i.not.i96.i, label %cond.false.i102.i, label %if.then59.i.skb_tailroom.exit104.i_crit_edge

if.then59.i.skb_tailroom.exit104.i_crit_edge:     ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit104.i

cond.false.i102.i:                                ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i97.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %54 = ptrtoint ptr %end.i97.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i97.i, align 4
  %tail.i98.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %56 = ptrtoint ptr %tail.i98.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i98.i, align 8
  %sub.ptr.lhs.cast.i99.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i100.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i101.i = sub i32 %sub.ptr.lhs.cast.i99.i, %sub.ptr.rhs.cast.i100.i
  br label %skb_tailroom.exit104.i

skb_tailroom.exit104.i:                           ; preds = %cond.false.i102.i, %if.then59.i.skb_tailroom.exit104.i_crit_edge
  %cond.i103.i = phi i32 [ %sub.ptr.sub.i101.i, %cond.false.i102.i ], [ 0, %if.then59.i.skb_tailroom.exit104.i_crit_edge ]
  %add63.i = add i32 %cond.i103.i, %51
  tail call void @dma_unmap_page_attrs(ptr noundef %49, i32 noundef %call41.i.i, i32 noundef %add63.i, i32 noundef 2, i32 noundef 0) #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %skb_tailroom.exit104.i, %if.then52.i
  %retval.0.ph.i = phi i32 [ %call56.i, %skb_tailroom.exit104.i ], [ -5, %if.then52.i ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #7
  br label %__ath10k_snoc_rx_post_buf.exit

__ath10k_snoc_rx_post_buf.exit:                   ; preds = %cleanup.sink.split.i, %if.end53.i.__ath10k_snoc_rx_post_buf.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end53.i.__ath10k_snoc_rx_post_buf.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %58 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %retval.0.i, label %__ath10k_snoc_rx_post_buf.exit.if.end12_crit_edge [
    i32 0, label %__ath10k_snoc_rx_post_buf.exit.while.cond_crit_edge
    i32 -28, label %__ath10k_snoc_rx_post_buf.exit.cleanup_crit_edge
  ]

__ath10k_snoc_rx_post_buf.exit.cleanup_crit_edge: ; preds = %__ath10k_snoc_rx_post_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__ath10k_snoc_rx_post_buf.exit.while.cond_crit_edge: ; preds = %__ath10k_snoc_rx_post_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

__ath10k_snoc_rx_post_buf.exit.if.end12_crit_edge: ; preds = %__ath10k_snoc_rx_post_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %__ath10k_snoc_rx_post_buf.exit.if.end12_crit_edge, %while.body.if.end12_crit_edge
  %retval.0.i30 = phi i32 [ %retval.0.i, %__ath10k_snoc_rx_post_buf.exit.if.end12_crit_edge ], [ -12, %while.body.if.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i30) #7
  %rx_post_retry = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %59, 50
  %call13 = tail call i32 @mod_timer(ptr noundef %rx_post_retry, i32 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %__ath10k_snoc_rx_post_buf.exit.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ath10k_ce_rx_num_free_bufs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

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
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_napi_sync_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_disable_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_tx_completion_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_per_engine_service(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_htc_tx_cb(ptr noundef %ce_state) #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #7
  %2 = getelementptr inbounds i8, ptr %list, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #7
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !269
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i, align 4
  %call8 = call i32 @ath10k_ce_completed_send_next(ptr noundef %ce_state, ptr noundef nonnull %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %entry.while.body_crit_edge, label %entry.while.cond2.preheader_crit_edge

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond2.preheader

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond2.preheader:                            ; preds = %while.cond.backedge.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %cmp.i.i10 = icmp eq ptr %9, %list
  %tobool.not.i1215 = icmp eq ptr %9, null
  %tobool.not.i12 = or i1 %cmp.i.i10, %tobool.not.i1215
  br i1 %tobool.not.i12, label %while.cond2.preheader.while.end6_crit_edge, label %while.cond2.preheader.while.body5_crit_edge

while.cond2.preheader.while.body5_crit_edge:      ; preds = %while.cond2.preheader
  br label %while.body5

while.cond2.preheader.while.end6_crit_edge:       ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end6

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %11, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %prev10.i.i.i, align 4
  store volatile ptr %11, ptr %prev.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %11, ptr %13, align 4
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @ath10k_ce_completed_send_next(ptr noundef %ce_state, ptr noundef nonnull %skb) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.cond2.preheader_crit_edge

while.cond.backedge.while.cond2.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond2.preheader

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %while.cond2.preheader.while.body5_crit_edge
  %spec.store.select.i.i13 = phi ptr [ %29, %while.body5.while.body5_crit_edge ], [ %9, %while.cond2.preheader.while.body5_crit_edge ]
  %19 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %21 = ptrtoint ptr %spec.store.select.i.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec.store.select.i.i13, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i13, i32 0, i32 1
  %23 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i13, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %prev17.i.i, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %24, align 8
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.store.select.i.i13, ptr %skb, align 4
  call void @ath10k_htc_tx_completion_handler(ptr noundef %1, ptr noundef nonnull %spec.store.select.i.i13) #7
  %28 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %29, %list
  %tobool.not.i16 = icmp eq ptr %29, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i16
  br i1 %tobool.not.i, label %while.body5.while.end6_crit_edge, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body5

while.body5.while.end6_crit_edge:                 ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end6

while.end6:                                       ; preds = %while.body5.while.end6_crit_edge, %while.cond2.preheader.while.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_htt_htc_rx_cb(ptr noundef %ce_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  tail call void @ath10k_ce_per_engine_service(ptr noundef %1, i32 noundef 4) #7
  tail call fastcc void @ath10k_snoc_process_rx_cb(ptr noundef %ce_state, ptr noundef nonnull @ath10k_htc_rx_completion_handler)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_htc_rx_cb(ptr noundef %ce_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath10k_snoc_process_rx_cb(ptr noundef %ce_state, ptr noundef nonnull @ath10k_htc_rx_completion_handler)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_htt_tx_cb(ptr noundef %ce_state) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #7
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !269
  %call5 = call i32 @ath10k_ce_completed_send_next(ptr noundef %ce_state, ptr noundef nonnull %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #7
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb, align 4
  call void @ath10k_htt_hif_tx_complete(ptr noundef %1, ptr noundef %13) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @ath10k_ce_completed_send_next(ptr noundef %ce_state, ptr noundef nonnull %skb) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_htt_rx_cb(ptr noundef %ce_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  tail call void @ath10k_ce_per_engine_service(ptr noundef %1, i32 noundef 4) #7
  tail call fastcc void @ath10k_snoc_process_rx_cb(ptr noundef %ce_state, ptr noundef nonnull @ath10k_snoc_htt_rx_deliver)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_pktlog_rx_cb(ptr noundef %ce_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath10k_snoc_process_rx_cb(ptr noundef %ce_state, ptr noundef nonnull @ath10k_htc_rx_completion_handler)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_completed_send_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_snoc_process_rx_cb(ptr noundef %ce_state, ptr nocapture noundef readonly %callback) unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  %transfer_context = alloca ptr, align 4
  %nbytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce_state, align 4
  %id = getelementptr inbounds %struct.ath10k_ce_pipe, ptr %ce_state, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #7
  %4 = getelementptr inbounds i8, ptr %list, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transfer_context) #7
  %6 = ptrtoint ptr %transfer_context to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %transfer_context, align 4, !annotation !269
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbytes) #7
  %7 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %nbytes, align 4, !annotation !269
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %list, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  %call338 = call i32 @ath10k_ce_completed_recv_next(ptr noundef %ce_state, ptr noundef nonnull %transfer_context, ptr noundef nonnull %nbytes) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %cmp39 = icmp eq i32 %call338, 0
  br i1 %cmp39, label %while.body.lr.ph, label %entry.while.cond9.preheader_crit_edge

entry.while.cond9.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond9.preheader

while.body.lr.ph:                                 ; preds = %entry
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  br label %while.body

while.cond9.preheader:                            ; preds = %while.cond.backedge.while.cond9.preheader_crit_edge, %entry.while.cond9.preheader_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %cmp.i.i40 = icmp eq ptr %12, %list
  %tobool.not.i3741 = icmp eq ptr %12, null
  %tobool.not.i42 = or i1 %cmp.i.i40, %tobool.not.i3741
  br i1 %tobool.not.i42, label %while.cond9.preheader.while.end19_crit_edge, label %while.cond9.preheader.do.body_crit_edge

while.cond9.preheader.do.body_crit_edge:          ; preds = %while.cond9.preheader
  br label %do.body

while.cond9.preheader.while.end19_crit_edge:      ; preds = %while.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %13 = ptrtoint ptr %transfer_context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_context, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %while.body.skb_tailroom.exit_crit_edge

while.body.skb_tailroom.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %while.body.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %while.body.skb_tailroom.exit_crit_edge ]
  %add = add i32 %cond.i, %16
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3
  %25 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cb.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %26, i32 noundef %add, i32 noundef 2, i32 noundef 0) #7
  %27 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp6 = icmp ult i32 %add, %28
  br i1 %cmp6, label %if.then, label %if.end, !prof !263

if.then:                                          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %28, i32 noundef %add) #7
  call void @__dev_kfree_skb_any(ptr noundef %14, i32 noundef 1) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %if.then
  %call3 = call i32 @ath10k_ce_completed_recv_next(ptr noundef %ce_state, ptr noundef nonnull %transfer_context, ptr noundef nonnull %nbytes) #7
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.cond9.preheader_crit_edge

while.cond.backedge.while.cond9.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond9.preheader

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end:                                           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call ptr @skb_put(ptr noundef %14, i32 noundef %28) #7
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list, ptr %14, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %14, i32 0, i32 1
  %32 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %prev10.i.i.i, align 4
  store volatile ptr %14, ptr %prev.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %14, ptr %30, align 4
  %34 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  br label %while.cond.backedge

do.body:                                          ; preds = %do.end.do.body_crit_edge, %while.cond9.preheader.do.body_crit_edge
  %36 = phi ptr [ %51, %do.end.do.body_crit_edge ], [ %12, %while.cond9.preheader.do.body_crit_edge ]
  %37 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %36, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %prev17.i.i, align 4
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %40, ptr %42, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %45 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %do.body.if.then15_crit_edge

do.body.if.then15_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_process_rx_cb, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !262

if.then15:                                        ; preds = %lor.lhs.false, %do.body.if.then15_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  %len17 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 6
  %48 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len17, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1048576, ptr noundef nonnull @.str.37, i32 noundef %47, i32 noundef %49) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %lor.lhs.false
  call void %callback(ptr noundef %1, ptr noundef nonnull %36) #7, !callees !270
  %50 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %51, %list
  %tobool.not.i37 = icmp eq ptr %51, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i37
  br i1 %tobool.not.i, label %do.end.while.end19_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end.while.end19_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.end19:                                      ; preds = %do.end.while.end19_crit_edge, %while.cond9.preheader.while.end19_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 142
  %arrayidx = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 8, i32 %3
  call fastcc void @ath10k_snoc_rx_post_pipe(ptr noundef %arrayidx)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbytes) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transfer_context) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_rx_completion_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_completed_recv_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_hif_tx_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_htt_rx_deliver(ptr noundef %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #7
  %call1 = tail call zeroext i1 @ath10k_htt_t2h_msg_handler(ptr noundef %ar, ptr noundef %skb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath10k_htt_t2h_msg_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_num_free_src_entries(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_hw_power_on(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_hw_power_on, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.43) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %num_vregs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6
  %1 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_vregs, align 4
  %vregs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 5, i32 1, i32 1
  %3 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vregs, align 4
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef %2, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %num_clks = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 2
  %5 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 1
  %7 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %6, ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.vreg_off_crit_edge

if.end5.vreg_off_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %vreg_off

if.end.i:                                         ; preds = %if.end5
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %6, ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef %6, ptr noundef %8) #7
  br label %vreg_off

vreg_off:                                         ; preds = %if.then3.i, %if.end5.vreg_off_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end5.vreg_off_crit_edge ]
  %9 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_vregs, align 4
  %11 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vregs, align 4
  %call12 = tail call i32 @regulator_bulk_disable(i32 noundef %10, ptr noundef %12) #7
  br label %cleanup

cleanup:                                          ; preds = %vreg_off, %if.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %vreg_off ], [ %call2, %do.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_alloc_rri(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_free_rri(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_qmi_wlan_enable(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_init_pipe(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_qmi_wlan_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_qmi_set_fw_log_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_snoc_rx_replenish_retry(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr i8, ptr %t, i32 -1404
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 142
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_values.i, align 4
  %ce_count5.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ce_count5.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ce_count5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7.not.i = icmp eq i8 %5, 0
  br i1 %cmp7.not.i, label %entry.ath10k_snoc_rx_post.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ath10k_snoc_rx_post.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_rx_post.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i.i, i32 0, i32 8, i32 %i.08.i
  tail call fastcc void @ath10k_snoc_rx_post_pipe(ptr noundef %arrayidx.i) #7
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %6 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %9 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath10k_snoc_rx_post.exit_crit_edge

for.body.i.ath10k_snoc_rx_post.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_rx_post.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ath10k_snoc_rx_post.exit:                         ; preds = %for.body.i.ath10k_snoc_rx_post.exit_crit_edge, %entry.ath10k_snoc_rx_post.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_ce_alloc_pipe(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_napi_poll(ptr noundef %ctx, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ctx, i32 -21120
  %dev_flags = getelementptr i8, ptr %ctx, i32 -15324
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  %hw_values = getelementptr i8, ptr %ctx, i32 -19996
  %3 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_values, align 4
  %ce_count32 = getelementptr inbounds %struct.ath10k_hw_values, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ce_count32 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ce_count32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp34.not = icmp eq i8 %6, 0
  br i1 %cmp34.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pending_ce_irqs = getelementptr i8, ptr %ctx, i32 1968
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ce_id.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef %ce_id.035, ptr noundef %pending_ce_irqs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ath10k_ce_per_engine_service(ptr noundef %add.ptr, i32 noundef %ce_id.035) #7
  tail call void @ath10k_ce_enable_interrupt(ptr noundef %add.ptr, i32 noundef %ce_id.035) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ce_id.035, 1
  %7 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_values, align 4
  %ce_count = getelementptr inbounds %struct.ath10k_hw_values, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ce_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ce_count, align 4
  %conv = zext i8 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call8 = tail call i32 @ath10k_htt_txrx_compl_task(ptr noundef %add.ptr, i32 noundef %budget) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %budget)
  %cmp9 = icmp slt i32 %call8, %budget
  br i1 %cmp9, label %for.end.cleanup.sink.split_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ %call8, %for.end.cleanup.sink.split_crit_edge ]
  %call.i31 = tail call zeroext i1 @napi_complete_done(ptr noundef %ctx, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_enable_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htt_txrx_compl_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_per_engine_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ath10k, ptr %arg, i32 0, i32 142
  %arrayidx.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp1.i = icmp eq i32 %1, %irq
  br i1 %cmp1.i, label %entry.if.end_crit_edge, label %for.inc.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp1.1.i = icmp eq i32 %3, %irq
  br i1 %cmp1.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp1.2.i = icmp eq i32 %5, %irq
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %irq)
  %cmp1.3.i = icmp eq i32 %7, %irq
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %irq)
  %cmp1.4.i = icmp eq i32 %9, %irq
  br i1 %cmp1.4.i, label %for.inc.3.i.if.end_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %irq)
  %cmp1.5.i = icmp eq i32 %11, %irq
  br i1 %cmp1.5.i, label %for.inc.4.i.if.end_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %irq)
  %cmp1.6.i = icmp eq i32 %13, %irq
  br i1 %cmp1.6.i, label %for.inc.5.i.if.end_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 5, i32 4, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %irq)
  %cmp1.7.i = icmp eq i32 %15, %irq
  br i1 %cmp1.7.i, label %for.inc.6.i.if.end_crit_edge, label %for.inc.7.i

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %arrayidx.8.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 5, i32 4, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %irq)
  %cmp1.8.i = icmp eq i32 %17, %irq
  br i1 %cmp1.8.i, label %for.inc.7.i.if.end_crit_edge, label %for.inc.8.i

for.inc.7.i.if.end_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %arrayidx.9.i = getelementptr %struct.ath10k_snoc, ptr %drv_priv.i, i32 0, i32 9, i32 9
  %18 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %irq)
  %cmp1.9.i = icmp eq i32 %19, %irq
  br i1 %cmp1.9.i, label %for.inc.8.i.if.end_crit_edge, label %for.inc.9.i

for.inc.8.i.if.end_crit_edge:                     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %arrayidx.10.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 5, i32 4, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %irq)
  %cmp1.10.i = icmp eq i32 %21, %irq
  br i1 %cmp1.10.i, label %for.inc.9.i.if.end_crit_edge, label %for.inc.10.i

for.inc.9.i.if.end_crit_edge:                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %arrayidx.11.i = getelementptr %struct.ath10k, ptr %arg, i32 1, i32 0, i32 31, i32 5, i32 6
  %22 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %irq)
  %cmp1.11.i = icmp eq i32 %23, %irq
  br i1 %cmp1.11.i, label %for.inc.10.i.if.end_crit_edge, label %if.then

for.inc.10.i.if.end_crit_edge:                    ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %arg, ptr noundef nonnull @.str.66, i32 noundef %irq) #7
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %arg, ptr noundef nonnull @.str.65, i32 noundef %irq, i32 noundef -22) #7
  br label %cleanup

if.end:                                           ; preds = %for.inc.10.i.if.end_crit_edge, %for.inc.9.i.if.end_crit_edge, %for.inc.8.i.if.end_crit_edge, %for.inc.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 11, %for.inc.10.i.if.end_crit_edge ], [ 10, %for.inc.9.i.if.end_crit_edge ], [ 9, %for.inc.8.i.if.end_crit_edge ], [ 8, %for.inc.7.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  tail call void @ath10k_ce_disable_interrupt(ptr noundef %arg, i32 noundef %retval.0.i.ph) #7
  %pending_ce_irqs = getelementptr inbounds %struct.ath10k, ptr %arg, i32 1, i32 41, i32 14
  tail call void @_set_bit(i32 noundef %retval.0.i.ph, ptr noundef %pending_ce_irqs) #7
  %napi = getelementptr inbounds %struct.ath10k, ptr %arg, i32 0, i32 126
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_disable_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_memremap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_snoc_modem_notify(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr i8, ptr %nb, i32 -1472
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 4
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %action, label %sw.default [
    i32 0, label %do.body
    i32 1, label %do.body3
    i32 2, label %do.body13
    i32 3, label %do.body30
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %3 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then_crit_edge

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_modem_notify, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %do.body.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1048576, ptr noundef nonnull @.str.101) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %flags = getelementptr i8, ptr %nb, i32 16
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #7
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and4 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %do.body3.if.then8_crit_edge

do.body3.if.then8_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

lor.lhs.false6:                                   ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_modem_notify, %if.then8)) #7
          to label %sw.epilog [label %if.then8], !srcloc !262

if.then8:                                         ; preds = %lor.lhs.false6, %do.body3.if.then8_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1048576, ptr noundef nonnull @.str.102) #7
  br label %sw.epilog

do.body13:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and14 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %do.body13.if.then18_crit_edge

do.body13.if.then18_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false16:                                  ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_modem_notify, %if.then18)) #7
          to label %do.end22 [label %if.then18], !srcloc !262

if.then18:                                        ; preds = %lor.lhs.false16, %do.body13.if.then18_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  %crashed = getelementptr inbounds %struct.qcom_ssr_notify_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %crashed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %crashed, align 4, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool19.not, ptr @.str.105, ptr @.str.104
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1048576, ptr noundef nonnull @.str.103, ptr noundef nonnull %cond) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %lor.lhs.false16
  %crashed23 = getelementptr inbounds %struct.qcom_ssr_notify_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %crashed23 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crashed23, align 4, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool24.not = icmp eq i8 %9, 0
  %flags26 = getelementptr i8, ptr %nb, i32 16
  br i1 %tobool24.not, label %if.then25, label %if.else

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags26) #7
  br label %sw.epilog

if.else:                                          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags26) #7
  br label %sw.epilog

do.body30:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %10 = load i32, ptr @ath10k_debug_mask, align 4
  %and31 = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %do.body30.if.then35_crit_edge

do.body30.if.then35_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

lor.lhs.false33:                                  ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_modem_notify, %if.then35)) #7
          to label %sw.epilog [label %if.then35], !srcloc !262

if.then35:                                        ; preds = %lor.lhs.false33, %do.body30.if.then35_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 1048576, ptr noundef nonnull @.str.106) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.107, i32 noundef %action) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then35, %lor.lhs.false33, %if.else, %if.then25, %if.then8, %lor.lhs.false6, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_register_ssr_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_ce_free_pipe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_snoc_free_resources(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_snoc_free_resources, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 1048576, ptr noundef nonnull @.str.110) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #7
  tail call void @ath10k_core_unregister(ptr noundef %ar) #7
  %fw.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 12
  %use_tz.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 8
  %1 = ptrtoint ptr %use_tz.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %use_tz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.ath10k_fw_deinit.exit_crit_edge

do.end.ath10k_fw_deinit.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_fw_deinit.exit

if.end.i:                                         ; preds = %do.end
  %mapped_mem_size.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 24
  %3 = ptrtoint ptr %mapped_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mapped_mem_size.i, align 4
  %iommu_domain.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 20
  %5 = ptrtoint ptr %iommu_domain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iommu_domain.i, align 4
  %fw_start_addr.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 143, i32 16
  %7 = ptrtoint ptr %fw_start_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_start_addr.i, align 4
  %call3.i = tail call i32 @iommu_unmap(ptr noundef %6, i32 noundef %8, i32 noundef %4) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %4)
  %cmp.not.i = icmp eq i32 %call3.i, %4
  br i1 %cmp.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.108, i32 noundef %call3.i) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %9 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw.i, align 4
  tail call void @iommu_detach_device(ptr noundef %6, ptr noundef %10) #7
  tail call void @iommu_domain_free(ptr noundef %6) #7
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr.i) #7
  br label %ath10k_fw_deinit.exit

ath10k_fw_deinit.exit:                            ; preds = %if.end5.i, %do.end.ath10k_fw_deinit.exit_crit_edge
  tail call fastcc void @ath10k_snoc_free_irq(ptr noundef %ar)
  %napi.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 126
  tail call void @__netif_napi_del(ptr noundef %napi.i) #7
  tail call void @synchronize_net() #7
  %hw_values.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 39
  %13 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_values.i, align 4
  %ce_count6.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ce_count6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ce_count6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp8.not.i = icmp eq i8 %16, 0
  br i1 %cmp8.not.i, label %ath10k_fw_deinit.exit.ath10k_snoc_release_resource.exit_crit_edge, label %ath10k_fw_deinit.exit.for.body.i_crit_edge

ath10k_fw_deinit.exit.for.body.i_crit_edge:       ; preds = %ath10k_fw_deinit.exit
  br label %for.body.i

ath10k_fw_deinit.exit.ath10k_snoc_release_resource.exit_crit_edge: ; preds = %ath10k_fw_deinit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_release_resource.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %ath10k_fw_deinit.exit.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %ath10k_fw_deinit.exit.for.body.i_crit_edge ]
  tail call void @ath10k_ce_free_pipe(ptr noundef %ar, i32 noundef %i.09.i) #7
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %17 = ptrtoint ptr %hw_values.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_values.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ath10k_hw_values, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ce_count.i, align 4
  %conv.i = zext i8 %20 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath10k_snoc_release_resource.exit_crit_edge

for.body.i.ath10k_snoc_release_resource.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_snoc_release_resource.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ath10k_snoc_release_resource.exit:                ; preds = %for.body.i.ath10k_snoc_release_resource.exit_crit_edge, %ath10k_fw_deinit.exit.ath10k_snoc_release_resource.exit_crit_edge
  %notifier.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 10
  %21 = ptrtoint ptr %notifier.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %notifier.i, align 4
  %nb.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 7
  %call1.i = tail call i32 @qcom_unregister_ssr_notifier(ptr noundef %22, ptr noundef %nb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i1 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i1, label %ath10k_snoc_release_resource.exit.ath10k_modem_deinit.exit_crit_edge, label %if.then.i

ath10k_snoc_release_resource.exit.ath10k_modem_deinit.exit_crit_edge: ; preds = %ath10k_snoc_release_resource.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ath10k_modem_deinit.exit

if.then.i:                                        ; preds = %ath10k_snoc_release_resource.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.111, i32 noundef %call1.i) #7
  br label %ath10k_modem_deinit.exit

ath10k_modem_deinit.exit:                         ; preds = %if.then.i, %ath10k_snoc_release_resource.exit.ath10k_modem_deinit.exit_crit_edge
  %call3 = tail call i32 @ath10k_qmi_deinit(ptr noundef %ar) #7
  tail call void @ath10k_core_destroy(ptr noundef %ar) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_unregister_ssr_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1361, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1372, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1471, i32 33}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1473, i32 33}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1475, i32 17}
!10 = !{ptr @__initcall__kmod_ath10k_snoc__433_1891_ath10k_snoc_driver_init6, !11, !"__initcall__kmod_ath10k_snoc__433_1891_ath10k_snoc_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1891, i32 1}
!12 = !{ptr @__exitcall_ath10k_snoc_driver_exit, !11, !"__exitcall_ath10k_snoc_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author434, !14, !"__UNIQUE_ID_author434", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1893, i32 1}
!15 = !{ptr @__UNIQUE_ID_file435, !16, !"__UNIQUE_ID_file435", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1894, i32 1}
!17 = !{ptr @__UNIQUE_ID_license436, !16, !"__UNIQUE_ID_license436", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description437, !19, !"__UNIQUE_ID_description437", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1895, i32 1}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1450, i32 19}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1887, i32 13}
!24 = !{ptr @ath10k_snoc_driver, !25, !"ath10k_snoc_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1882, i32 31}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1719, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ath10k_snoc_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @ath10k_snoc_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1725, i32 3}
!36 = !{ptr @ath10k_snoc_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ath10k_snoc_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1732, i32 3}
!40 = !{ptr @ath10k_snoc_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ath10k_snoc_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1748, i32 19}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1754, i32 19}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1759, i32 19}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1796, i32 19}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1802, i32 18}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1808, i32 19}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1816, i32 2}
!56 = !{ptr @ath10k_snoc_hif_ops, !57, !"ath10k_snoc_hif_ops", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1157, i32 36}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 700, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 936, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 552, i32 20}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 504, i32 2}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 510, i32 19}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 921, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 781, i32 2}
!77 = !{ptr @target_service_to_ce_map_wlan, !78, !"target_service_to_ce_map_wlan", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 364, i32 34}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 822, i32 2}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 762, i32 2}
!83 = !{ptr @host_ce_config_wlan, !84, !"host_ce_config_wlan", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 135, i32 23}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 590, i32 20}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 601, i32 3}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 752, i32 2}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1069, i32 2}
!93 = !{ptr @__func__.ath10k_snoc_hif_power_up, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1074, i32 18}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1080, i32 18}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1088, i32 18}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1012, i32 2}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 999, i32 18}
!104 = !{ptr @target_ce_config_wlan, !105, !"target_ce_config_wlan", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 242, i32 30}
!106 = !{ptr @target_shadow_reg_cfg_map, !107, !"target_shadow_reg_cfg_map", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 73, i32 37}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 948, i32 19}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1033, i32 2}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1057, i32 2}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1128, i32 18}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1132, i32 2}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1147, i32 18}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1151, i32 2}
!122 = !{ptr @ath10k_snoc_bus_ops, !123, !"ath10k_snoc_bus_ops", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1178, i32 36}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1337, i32 42}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1293, i32 59}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1295, i32 18}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1303, i32 18}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1311, i32 19}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1318, i32 45}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1320, i32 2}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1323, i32 3}
!140 = !{ptr @ath10k_snoc_setup_resource.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1386, i32 2}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ath10k_snoc_setup_resource.__key.61, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1387, i32 2}
!145 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1396, i32 19}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1261, i32 8}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1204, i32 19}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1192, i32 17}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 31, i32 2}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 32, i32 2}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 33, i32 2}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 34, i32 2}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 35, i32 2}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 36, i32 2}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 37, i32 2}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 38, i32 2}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 39, i32 2}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 40, i32 2}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 41, i32 2}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 42, i32 2}
!178 = !{ptr @ce_name, !179, !"ce_name", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 30, i32 20}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 46, i32 2}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 47, i32 2}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 48, i32 2}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 49, i32 2}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 50, i32 2}
!190 = !{ptr @ath10k_regulators, !191, !"ath10k_regulators", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 45, i32 27}
!192 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 54, i32 2}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 54, i32 21}
!196 = !{ptr @ath10k_clocks, !197, !"ath10k_clocks", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 53, i32 27}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1556, i32 40}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1560, i32 4}
!202 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ath10k_setup_msa_resources._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @ath10k_setup_msa_resources._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1571, i32 4}
!207 = !{ptr @ath10k_setup_msa_resources._entry.89, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @ath10k_setup_msa_resources._entry_ptr.91, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1580, i32 19}
!211 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1586, i32 2}
!213 = !{ptr @.str.94, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1603, i32 49}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1625, i32 18}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1633, i32 18}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1640, i32 18}
!221 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1651, i32 18}
!223 = !{ptr @.str.99, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1527, i32 40}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1530, i32 18}
!227 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1490, i32 3}
!229 = !{ptr @.str.102, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1495, i32 3}
!231 = !{ptr @.str.103, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1499, i32 3}
!233 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1508, i32 3}
!237 = !{ptr @.str.107, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1512, i32 18}
!239 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1687, i32 18}
!241 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1862, i32 2}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1842, i32 2}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1546, i32 18}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1878, i32 2}
!249 = !{ptr @ath10k_snoc_dt_match, !250, !"ath10k_snoc_dt_match", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 1698, i32 34}
!251 = !{ptr @drv_priv, !252, !"drv_priv", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ath10k/snoc.c", i32 64, i32 42}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{i64 2148766099, i64 2148766104, i64 2148766117, i64 2148766161, i64 2148766195, i64 2148766216}
!263 = !{!"branch_weights", i32 1, i32 2000}
!264 = !{i64 6022538}
!265 = !{i64 2153555397}
!266 = !{i64 2153556752}
!267 = !{i64 6022120}
!268 = !{!"branch_weights", i32 2000, i32 1}
!269 = !{!"auto-init"}
!270 = !{ptr @ath10k_htc_rx_completion_handler, ptr @ath10k_snoc_htt_rx_deliver}
!271 = !{i8 0, i8 2}
